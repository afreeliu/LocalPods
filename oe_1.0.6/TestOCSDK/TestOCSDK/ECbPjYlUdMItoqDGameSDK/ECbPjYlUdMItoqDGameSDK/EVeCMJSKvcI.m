
#import "EVeCMJSKvcI.h"

NSString *const EVeCMJSKvcIErrorDomain = @"net.robotmedia.store";
NSInteger const EVeCMJSKvcIErrorCodeDownloadCanceled = 300;
NSInteger const EVeCMJSKvcIErrorCodeUnknownProductIdentifier = 100;
NSInteger const EVeCMJSKvcIErrorCodeUnableToCompleteVerification = 200;

NSString* const RMSKDownloadCanceled = @"RMSKDownloadCanceled";
NSString* const RMSKDownloadFailed = @"RMSKDownloadFailed";
NSString* const RMSKDownloadFinished = @"RMSKDownloadFinished";
NSString* const RMSKDownloadPaused = @"RMSKDownloadPaused";
NSString* const RMSKDownloadUpdated = @"RMSKDownloadUpdated";
NSString* const RMSKPaymentTransactionDeferred = @"RMSKPaymentTransactionDeferred";
NSString* const RMSKPaymentTransactionFailed = @"RMSKPaymentTransactionFailed";
NSString* const RMSKPaymentTransactionFinished = @"RMSKPaymentTransactionFinished";
NSString* const RMSKProductsRequestFailed = @"RMSKProductsRequestFailed";
NSString* const RMSKProductsRequestFinished = @"RMSKProductsRequestFinished";
NSString* const RMSKRefreshReceiptFailed = @"RMSKRefreshReceiptFailed";
NSString* const RMSKRefreshReceiptFinished = @"RMSKRefreshReceiptFinished";
NSString* const RMSKRestoreTransactionsFailed = @"RMSKRestoreTransactionsFailed";
NSString* const RMSKRestoreTransactionsFinished = @"RMSKRestoreTransactionsFinished";

NSString* const EVeCMJSKvcINotificationInvalidProductIdentifiers = @"invalidProductIdentifiers";
NSString* const EVeCMJSKvcINotificationDownloadProgress = @"downloadProgress";
NSString* const EVeCMJSKvcINotificationProductIdentifier = @"productIdentifier";
NSString* const EVeCMJSKvcINotificationProducts = @"products";
NSString* const EVeCMJSKvcINotificationStoreDownload = @"storeDownload";
NSString* const EVeCMJSKvcINotificationStoreError = @"storeError";
NSString* const EVeCMJSKvcINotificationStoreReceipt = @"storeReceipt";
NSString* const EVeCMJSKvcINotificationTransaction = @"transaction";
NSString* const EVeCMJSKvcINotificationTransactions = @"transactions";

#if DEBUG
#define EVeCMJSKvcILog(...) NSLog(@"EVeCMJSKvcI: %@", [NSString stringWithFormat:__VA_ARGS__]);
#else
#define EVeCMJSKvcILog(...)
#endif

typedef void (^RMSKPaymentTransactionFailureBlock)(SKPaymentTransaction *transaction, NSError *error);
typedef void (^RMSKPaymentTransactionSuccessBlock)(SKPaymentTransaction *transaction);
typedef void (^RMSKProductsRequestFailureBlock)(NSError *error);
typedef void (^RMSKProductsRequestSuccessBlock)(NSArray *products, NSArray *invalidIdentifiers);
typedef void (^EVeCMJSKvcIFailureBlock)(NSError *error);
typedef void (^EVeCMJSKvcISuccessBlock)(void);

@implementation NSNotification(EVeCMJSKvcI)

- (float)rm_downloadProgress
{
    return [self.userInfo[EVeCMJSKvcINotificationDownloadProgress] floatValue];
}

- (NSArray*)rm_invalidProductIdentifiers
{
    return (self.userInfo)[EVeCMJSKvcINotificationInvalidProductIdentifiers];
}

- (NSString*)rm_productIdentifier
{
    return (self.userInfo)[EVeCMJSKvcINotificationProductIdentifier];
}

- (NSArray*)rm_products
{
    return (self.userInfo)[EVeCMJSKvcINotificationProducts];
}

- (SKDownload*)rm_storeDownload
{
    return (self.userInfo)[EVeCMJSKvcINotificationStoreDownload];
}

- (NSError*)rm_storeError
{
    return (self.userInfo)[EVeCMJSKvcINotificationStoreError];
}

- (SKPaymentTransaction*)rm_transaction
{
    return (self.userInfo)[EVeCMJSKvcINotificationTransaction];
}

- (NSArray*)rm_transactions {
    return (self.userInfo)[EVeCMJSKvcINotificationTransactions];
}

@end

@interface RMProductsRequestDelegate : NSObject<SKProductsRequestDelegate>

@property (nonatomic, strong) RMSKProductsRequestSuccessBlock successBlock;
@property (nonatomic, strong) RMSKProductsRequestFailureBlock failureBlock;
@property (nonatomic, weak) EVeCMJSKvcI *store;

@end

@interface RMAddPaymentParameters : NSObject

@property (nonatomic, strong) RMSKPaymentTransactionSuccessBlock successBlock;
@property (nonatomic, strong) RMSKPaymentTransactionFailureBlock failureBlock;

@end

@implementation RMAddPaymentParameters

@end

@interface EVeCMJSKvcI() <SKRequestDelegate>

@end

@implementation EVeCMJSKvcI {
    NSMutableDictionary *_addPaymentParameters; // HACK: We use a dictionary of product identifiers because the returned SKPayment is different from the one we add to the queue. Bad Apple.
    NSMutableDictionary *_products;
    NSMutableSet *_productsRequestDelegates;
    
    NSMutableArray *_restoredTransactions;
    
    NSInteger _pendingRestoredTransactionsCount;
    BOOL _restoredCompletedTransactionsFinished;
    
    SKReceiptRefreshRequest *_refreshReceiptRequest;
    void (^_refreshReceiptFailureBlock)(NSError* error);
    void (^_refreshReceiptSuccessBlock)(void);
    
    void (^_restoreTransactionsFailureBlock)(NSError* error);
    void (^_restoreTransactionsSuccessBlock)(NSArray* transactions);
}

- (id) init
{
    if (self = [super init])
    {
        _addPaymentParameters = [NSMutableDictionary dictionary];
        _products = [NSMutableDictionary dictionary];
        _productsRequestDelegates = [NSMutableSet set];
        _restoredTransactions = [NSMutableArray array];
        [[SKPaymentQueue defaultQueue] addTransactionObserver:self];
    }
    return self;
}

- (void)dealloc
{
    [[SKPaymentQueue defaultQueue] removeTransactionObserver:self];
}

+ (EVeCMJSKvcI *)defaultStore
{
    static EVeCMJSKvcI *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[[self class] alloc] init];
    });
    return sharedInstance;
}

#pragma mark StoreKit wrapper

+ (BOOL)canMakePayments
{
    return [SKPaymentQueue canMakePayments];
}

- (void)addPayment:(NSString*)productIdentifier
{
    [self addPayment:productIdentifier success:nil failure:nil];
}

- (void)addPayment:(NSString*)productIdentifier
           success:(void (^)(SKPaymentTransaction *transaction))successBlock
           failure:(void (^)(SKPaymentTransaction *transaction, NSError *error))failureBlock
{
    [self addPayment:productIdentifier user:nil success:successBlock failure:failureBlock];
}

- (void)addPayment:(NSString*)productIdentifier
              user:(NSString*)userIdentifier
           success:(void (^)(SKPaymentTransaction *transaction))successBlock
           failure:(void (^)(SKPaymentTransaction *transaction, NSError *error))failureBlock
{
    SKProduct *product = [self productForIdentifier:productIdentifier];
    if (product == nil)
    {
        EVeCMJSKvcILog(@"unknown product id %@", productIdentifier)
        if (failureBlock != nil)
        {
            NSError *error = [NSError errorWithDomain:EVeCMJSKvcIErrorDomain code:EVeCMJSKvcIErrorCodeUnknownProductIdentifier userInfo:@{NSLocalizedDescriptionKey: NSLocalizedStringFromTable(@"Unknown product identifier", @"EVeCMJSKvcI", @"Error description")}];
            failureBlock(nil, error);
        }
        return;
    }
    SKMutablePayment *payment = [SKMutablePayment paymentWithProduct:product];
    if ([payment respondsToSelector:@selector(setApplicationUsername:)])
    {
        payment.applicationUsername = userIdentifier;
    }
    
    RMAddPaymentParameters *parameters = [[RMAddPaymentParameters alloc] init];
    parameters.successBlock = successBlock;
    parameters.failureBlock = failureBlock;
    _addPaymentParameters[productIdentifier] = parameters;
    
    [[SKPaymentQueue defaultQueue] addPayment:payment];
}

- (void)requestProducts:(NSSet*)identifiers
{
    [self requestProducts:identifiers success:nil failure:nil];
}

- (void)requestProducts:(NSSet*)identifiers
                success:(RMSKProductsRequestSuccessBlock)successBlock
                failure:(RMSKProductsRequestFailureBlock)failureBlock
{
    RMProductsRequestDelegate *delegate = [[RMProductsRequestDelegate alloc] init];
    delegate.store = self;
    delegate.successBlock = successBlock;
    delegate.failureBlock = failureBlock;
    [_productsRequestDelegates addObject:delegate];
 
    SKProductsRequest *productsRequest = [[SKProductsRequest alloc] initWithProductIdentifiers:identifiers];
	productsRequest.delegate = delegate;
    
    [productsRequest start];
}

- (void)restoreTransactions
{
    [self restoreTransactionsOnSuccess:nil failure:nil];
}

- (void)restoreTransactionsOnSuccess:(void (^)(NSArray *transactions))successBlock
                             failure:(void (^)(NSError *error))failureBlock
{
    _restoredCompletedTransactionsFinished = NO;
    _pendingRestoredTransactionsCount = 0;
    _restoredTransactions = [NSMutableArray array];
    _restoreTransactionsSuccessBlock = successBlock;
    _restoreTransactionsFailureBlock = failureBlock;
    [[SKPaymentQueue defaultQueue] restoreCompletedTransactions];
}

- (void)restoreTransactionsOfUser:(NSString*)userIdentifier
                        onSuccess:(void (^)(NSArray *transactions))successBlock
                          failure:(void (^)(NSError *error))failureBlock
{
    NSAssert([[SKPaymentQueue defaultQueue] respondsToSelector:@selector(restoreCompletedTransactionsWithApplicationUsername:)], @"restoreCompletedTransactionsWithApplicationUsername: not supported in this iOS version. Use restoreTransactionsOnSuccess:failure: instead.");
    _restoredCompletedTransactionsFinished = NO;
    _pendingRestoredTransactionsCount = 0;
    _restoreTransactionsSuccessBlock = successBlock;
    _restoreTransactionsFailureBlock = failureBlock;
    [[SKPaymentQueue defaultQueue] restoreCompletedTransactionsWithApplicationUsername:userIdentifier];
}

#pragma mark Receipt

+ (NSURL*)receiptURL
{
    // The general best practice of weak linking using the respondsToSelector: method cannot be used here. Prior to iOS 7, the method was implemented as private API, but that implementation called the doesNotRecognizeSelector: method.
    NSAssert(floor(NSFoundationVersionNumber) > NSFoundationVersionNumber_iOS_6_1, @"appStoreReceiptURL not supported in this iOS version.");
    NSURL *url = [[NSBundle mainBundle] appStoreReceiptURL];
    return url;
}

- (void)refreshReceipt
{
    [self refreshReceiptOnSuccess:nil failure:nil];
}

- (void)refreshReceiptOnSuccess:(EVeCMJSKvcISuccessBlock)successBlock
                        failure:(EVeCMJSKvcIFailureBlock)failureBlock
{
    _refreshReceiptFailureBlock = failureBlock;
    _refreshReceiptSuccessBlock = successBlock;
    _refreshReceiptRequest = [[SKReceiptRefreshRequest alloc] initWithReceiptProperties:@{}];
    _refreshReceiptRequest.delegate = self;
    [_refreshReceiptRequest start];
}

#pragma mark Product management

- (SKProduct*)productForIdentifier:(NSString*)productIdentifier
{
    return _products[productIdentifier];
}

+ (NSString*)localizedPriceOfProduct:(SKProduct*)product
{
	NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
	numberFormatter.numberStyle = NSNumberFormatterCurrencyStyle;
	numberFormatter.locale = product.priceLocale;
	NSString *formattedString = [numberFormatter stringFromNumber:product.price];
	return formattedString;
}

#pragma mark Observers

- (void)addStoreObserver:(id<EVeCMJSKvcIObserver>)observer
{
    [self addStoreObserver:observer selector:@selector(storeDownloadCanceled:) notificationName:RMSKDownloadCanceled];
    [self addStoreObserver:observer selector:@selector(storeDownloadFailed:) notificationName:RMSKDownloadFailed];
    [self addStoreObserver:observer selector:@selector(storeDownloadFinished:) notificationName:RMSKDownloadFinished];
    [self addStoreObserver:observer selector:@selector(storeDownloadPaused:) notificationName:RMSKDownloadPaused];
    [self addStoreObserver:observer selector:@selector(storeDownloadUpdated:) notificationName:RMSKDownloadUpdated];
    [self addStoreObserver:observer selector:@selector(storeProductsRequestFailed:) notificationName:RMSKProductsRequestFailed];
    [self addStoreObserver:observer selector:@selector(storeProductsRequestFinished:) notificationName:RMSKProductsRequestFinished];
    [self addStoreObserver:observer selector:@selector(storePaymentTransactionDeferred:) notificationName:RMSKPaymentTransactionDeferred];
    [self addStoreObserver:observer selector:@selector(storePaymentTransactionFailed:) notificationName:RMSKPaymentTransactionFailed];
    [self addStoreObserver:observer selector:@selector(storePaymentTransactionFinished:) notificationName:RMSKPaymentTransactionFinished];
    [self addStoreObserver:observer selector:@selector(storeRefreshReceiptFailed:) notificationName:RMSKRefreshReceiptFailed];
    [self addStoreObserver:observer selector:@selector(storeRefreshReceiptFinished:) notificationName:RMSKRefreshReceiptFinished];
    [self addStoreObserver:observer selector:@selector(storeRestoreTransactionsFailed:) notificationName:RMSKRestoreTransactionsFailed];
    [self addStoreObserver:observer selector:@selector(storeRestoreTransactionsFinished:) notificationName:RMSKRestoreTransactionsFinished];
}

- (void)removeStoreObserver:(id<EVeCMJSKvcIObserver>)observer
{
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:RMSKDownloadCanceled object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:RMSKDownloadFailed object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:RMSKDownloadFinished object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:RMSKDownloadPaused object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:RMSKDownloadUpdated object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:RMSKProductsRequestFailed object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:RMSKProductsRequestFinished object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:RMSKPaymentTransactionDeferred object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:RMSKPaymentTransactionFailed object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:RMSKPaymentTransactionFinished object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:RMSKRefreshReceiptFailed object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:RMSKRefreshReceiptFinished object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:RMSKRestoreTransactionsFailed object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:RMSKRestoreTransactionsFinished object:self];
}

// Private

- (void)addStoreObserver:(id<EVeCMJSKvcIObserver>)observer selector:(SEL)aSelector notificationName:(NSString*)notificationName
{
    if ([observer respondsToSelector:aSelector])
    {
        [[NSNotificationCenter defaultCenter] addObserver:observer selector:aSelector name:notificationName object:self];
    }
}

#pragma mark SKPaymentTransactionObserver

- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transactions
{
    for (SKPaymentTransaction *transaction in transactions)
    {
        switch (transaction.transactionState)
        {
            case SKPaymentTransactionStatePurchased:
                [self didPurchaseTransaction:transaction queue:queue];
                break;
            case SKPaymentTransactionStateFailed:
                [self didFailTransaction:transaction queue:queue error:transaction.error];
                break;
            case SKPaymentTransactionStateRestored:
                [self didRestoreTransaction:transaction queue:queue];
                break;
            case SKPaymentTransactionStateDeferred:
                [self didDeferTransaction:transaction];
                break;
            default:
                break;
        }
    }
}

- (void)paymentQueueRestoreCompletedTransactionsFinished:(SKPaymentQueue *)queue
{
    EVeCMJSKvcILog(@"restore transactions finished");
    _restoredCompletedTransactionsFinished = YES;
    
    [self notifyRestoreTransactionFinishedIfApplicableAfterTransaction:nil];
}

- (void)paymentQueue:(SKPaymentQueue *)queue restoreCompletedTransactionsFailedWithError:(NSError *)error
{
    EVeCMJSKvcILog(@"restored transactions failed with error %@", error.debugDescription);
    if (_restoreTransactionsFailureBlock != nil)
    {
        _restoreTransactionsFailureBlock(error);
        _restoreTransactionsFailureBlock = nil;
    }
    NSDictionary *userInfo = nil;
    if (error)
    { // error might be nil (e.g., on airplane mode)
        userInfo = @{EVeCMJSKvcINotificationStoreError: error};
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:RMSKRestoreTransactionsFailed object:self userInfo:userInfo];
}

- (void)paymentQueue:(SKPaymentQueue *)queue updatedDownloads:(NSArray *)downloads
{
    for (SKDownload *download in downloads)
    {
        switch (download.downloadState)
        {
            case SKDownloadStateActive:
                [self didUpdateDownload:download queue:queue];
                break;
            case SKDownloadStateCancelled:
                [self didCancelDownload:download queue:queue];
                break;
            case SKDownloadStateFailed:
                [self didFailDownload:download queue:queue];
                break;
            case SKDownloadStateFinished:
                [self didFinishDownload:download queue:queue];
                break;
            case SKDownloadStatePaused:
                [self didPauseDownload:download queue:queue];
                break;
            case SKDownloadStateWaiting:
                // Do nothing
                break;
        }
    }
}

#pragma mark Download State

- (void)didCancelDownload:(SKDownload*)download queue:(SKPaymentQueue*)queue
{
    SKPaymentTransaction *transaction = download.transaction;
    EVeCMJSKvcILog(@"download %@ for product %@ canceled", download.contentIdentifier, download.transaction.payment.productIdentifier);

    [self postNotificationWithName:RMSKDownloadCanceled download:download userInfoExtras:nil];

    NSError *error = [NSError errorWithDomain:EVeCMJSKvcIErrorDomain code:EVeCMJSKvcIErrorCodeDownloadCanceled userInfo:@{NSLocalizedDescriptionKey: NSLocalizedStringFromTable(@"Download canceled", @"EVeCMJSKvcI", @"Error description")}];

    const BOOL hasPendingDownloads = [self.class hasPendingDownloadsInTransaction:transaction];
    if (!hasPendingDownloads)
    {
        [self didFailTransaction:transaction queue:queue error:error];
    }
}

- (void)didFailDownload:(SKDownload*)download queue:(SKPaymentQueue*)queue
{
    NSError *error = download.error;
    SKPaymentTransaction *transaction = download.transaction;
    EVeCMJSKvcILog(@"download %@ for product %@ failed with error %@", download.contentIdentifier, transaction.payment.productIdentifier, error.debugDescription);

    NSDictionary *extras = error ? @{EVeCMJSKvcINotificationStoreError : error} : nil;
    [self postNotificationWithName:RMSKDownloadFailed download:download userInfoExtras:extras];

    const BOOL hasPendingDownloads = [self.class hasPendingDownloadsInTransaction:transaction];
    if (!hasPendingDownloads)
    {
        [self didFailTransaction:transaction queue:queue error:error];
    }
}

- (void)didFinishDownload:(SKDownload*)download queue:(SKPaymentQueue*)queue
{
    SKPaymentTransaction *transaction = download.transaction;
    EVeCMJSKvcILog(@"download %@ for product %@ finished", download.contentIdentifier, transaction.payment.productIdentifier);
    
    [self postNotificationWithName:RMSKDownloadFinished download:download userInfoExtras:nil];

    const BOOL hasPendingDownloads = [self.class hasPendingDownloadsInTransaction:transaction];
    if (!hasPendingDownloads)
    {
        [self finishTransaction:download.transaction queue:queue];
    }
}

- (void)didPauseDownload:(SKDownload*)download queue:(SKPaymentQueue*)queue
{
    EVeCMJSKvcILog(@"download %@ for product %@ paused", download.contentIdentifier, download.transaction.payment.productIdentifier);
    [self postNotificationWithName:RMSKDownloadPaused download:download userInfoExtras:nil];
}

- (void)didUpdateDownload:(SKDownload*)download queue:(SKPaymentQueue*)queue
{
    EVeCMJSKvcILog(@"download %@ for product %@ updated", download.contentIdentifier, download.transaction.payment.productIdentifier);
    NSDictionary *extras = @{EVeCMJSKvcINotificationDownloadProgress : @(download.progress)};
    [self postNotificationWithName:RMSKDownloadUpdated download:download userInfoExtras:extras];
}

+ (BOOL)hasPendingDownloadsInTransaction:(SKPaymentTransaction*)transaction
{
    for (SKDownload *download in transaction.downloads)
    {
        switch (download.downloadState)
        {
            case SKDownloadStateActive:
            case SKDownloadStatePaused:
            case SKDownloadStateWaiting:
                return YES;
            case SKDownloadStateCancelled:
            case SKDownloadStateFailed:
            case SKDownloadStateFinished:
                continue;
        }
    }
    return NO;
}

#pragma mark Transaction State

- (void)didPurchaseTransaction:(SKPaymentTransaction *)transaction queue:(SKPaymentQueue*)queue
{
    EVeCMJSKvcILog(@"transaction purchased with product %@", transaction.payment.productIdentifier);
    
    if (self.receiptVerifier != nil)
    {
        [self.receiptVerifier verifyTransaction:transaction success:^{
            [self didVerifyTransaction:transaction queue:queue];
        } failure:^(NSError *error) {
            [self didFailTransaction:transaction queue:queue error:error];
        }];
    }
    else
    {
        EVeCMJSKvcILog(@"WARNING: no receipt verification");
        [self didVerifyTransaction:transaction queue:queue];
    }
}

- (void)didFailTransaction:(SKPaymentTransaction *)transaction queue:(SKPaymentQueue*)queue error:(NSError*)error
{
    SKPayment *payment = transaction.payment;
	NSString* productIdentifier = payment.productIdentifier;
    EVeCMJSKvcILog(@"transaction failed with product %@ and error %@", productIdentifier, error.debugDescription);
    
    if (error.code != EVeCMJSKvcIErrorCodeUnableToCompleteVerification)
    { // If we were unable to complete the verification we want StoreKit to keep reminding us of the transaction
        [queue finishTransaction:transaction];
    }
    
    RMAddPaymentParameters *parameters = [self popAddPaymentParametersForIdentifier:productIdentifier];
    if (parameters.failureBlock != nil)
    {
        parameters.failureBlock(transaction, error);
    }
    
    NSDictionary *extras = error ? @{EVeCMJSKvcINotificationStoreError : error} : nil;
    [self postNotificationWithName:RMSKPaymentTransactionFailed transaction:transaction userInfoExtras:extras];
    
    if (transaction.transactionState == SKPaymentTransactionStateRestored)
    {
        [self notifyRestoreTransactionFinishedIfApplicableAfterTransaction:transaction];
    }
}

- (void)didRestoreTransaction:(SKPaymentTransaction *)transaction queue:(SKPaymentQueue*)queue
{
    EVeCMJSKvcILog(@"transaction restored with product %@", transaction.originalTransaction.payment.productIdentifier);
    
    _pendingRestoredTransactionsCount++;
    if (self.receiptVerifier != nil)
    {
        [self.receiptVerifier verifyTransaction:transaction success:^{
            [self didVerifyTransaction:transaction queue:queue];
        } failure:^(NSError *error) {
            [self didFailTransaction:transaction queue:queue error:error];
        }];
    }
    else
    {
        EVeCMJSKvcILog(@"WARNING: no receipt verification");
        [self didVerifyTransaction:transaction queue:queue];
    }
}

- (void)didDeferTransaction:(SKPaymentTransaction *)transaction
{
    [self postNotificationWithName:RMSKPaymentTransactionDeferred transaction:transaction userInfoExtras:nil];
}

- (void)didVerifyTransaction:(SKPaymentTransaction *)transaction queue:(SKPaymentQueue*)queue
{
    if (self.contentDownloader != nil)
    {
        [self.contentDownloader downloadContentForTransaction:transaction success:^{
            [self postNotificationWithName:RMSKDownloadFinished transaction:transaction userInfoExtras:nil];
            [self didDownloadSelfHostedContentForTransaction:transaction queue:queue];
        } progress:^(float progress) {
            NSDictionary *extras = @{EVeCMJSKvcINotificationDownloadProgress : @(progress)};
            [self postNotificationWithName:RMSKDownloadUpdated transaction:transaction userInfoExtras:extras];
        } failure:^(NSError *error) {
            NSDictionary *extras = error ? @{EVeCMJSKvcINotificationStoreError : error} : nil;
            [self postNotificationWithName:RMSKDownloadFailed transaction:transaction userInfoExtras:extras];
            [self didFailTransaction:transaction queue:queue error:error];
        }];
    }
    else
    {
        [self didDownloadSelfHostedContentForTransaction:transaction queue:queue];
    }
}

- (void)didDownloadSelfHostedContentForTransaction:(SKPaymentTransaction *)transaction queue:(SKPaymentQueue*)queue
{
    NSArray *downloads = [transaction respondsToSelector:@selector(downloads)] ? transaction.downloads : @[];
    if (downloads.count > 0)
    {
        EVeCMJSKvcILog(@"starting downloads for product %@ started", transaction.payment.productIdentifier);
        [queue startDownloads:downloads];
    }
    else
    {
        [self finishTransaction:transaction queue:queue];
    }
}

- (void)finishTransaction:(SKPaymentTransaction *)transaction queue:(SKPaymentQueue*)queue
{
    SKPayment *payment = transaction.payment;
	NSString* productIdentifier = payment.productIdentifier;
    [queue finishTransaction:transaction];
    [self.transactionPersistor persistTransaction:transaction];
    
    RMAddPaymentParameters *wrapper = [self popAddPaymentParametersForIdentifier:productIdentifier];
    if (wrapper.successBlock != nil)
    {
        wrapper.successBlock(transaction);
    }
    
    [self postNotificationWithName:RMSKPaymentTransactionFinished transaction:transaction userInfoExtras:nil];
    
    if (transaction.transactionState == SKPaymentTransactionStateRestored)
    {
        [self notifyRestoreTransactionFinishedIfApplicableAfterTransaction:transaction];
    }
}

- (void)notifyRestoreTransactionFinishedIfApplicableAfterTransaction:(SKPaymentTransaction*)transaction
{
    if (transaction != nil)
    {
        [_restoredTransactions addObject:transaction];
        _pendingRestoredTransactionsCount--;
    }
    if (_restoredCompletedTransactionsFinished && _pendingRestoredTransactionsCount == 0)
    { // Wait until all restored transations have been verified
        NSArray *restoredTransactions = [_restoredTransactions copy];
        if (_restoreTransactionsSuccessBlock != nil)
        {
            _restoreTransactionsSuccessBlock(restoredTransactions);
            _restoreTransactionsSuccessBlock = nil;
        }
        NSDictionary *userInfo = @{ EVeCMJSKvcINotificationTransactions : restoredTransactions };
        [[NSNotificationCenter defaultCenter] postNotificationName:RMSKRestoreTransactionsFinished object:self userInfo:userInfo];
    }
}

- (RMAddPaymentParameters*)popAddPaymentParametersForIdentifier:(NSString*)identifier
{
    RMAddPaymentParameters *parameters = _addPaymentParameters[identifier];
    [_addPaymentParameters removeObjectForKey:identifier];
    return parameters;
}

#pragma mark SKRequestDelegate

- (void)requestDidFinish:(SKRequest *)request
{
    EVeCMJSKvcILog(@"refresh receipt finished");
    _refreshReceiptRequest = nil;
    if (_refreshReceiptSuccessBlock)
    {
        _refreshReceiptSuccessBlock();
        _refreshReceiptSuccessBlock = nil;
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:RMSKRefreshReceiptFinished object:self];
}

- (void)request:(SKRequest *)request didFailWithError:(NSError *)error
{
    EVeCMJSKvcILog(@"refresh receipt failed with error %@", error.debugDescription);
    _refreshReceiptRequest = nil;
    if (_refreshReceiptFailureBlock)
    {
        _refreshReceiptFailureBlock(error);
        _refreshReceiptFailureBlock = nil;
    }
    NSDictionary *userInfo = nil;
    if (error)
    { // error might be nil (e.g., on airplane mode)
        userInfo = @{EVeCMJSKvcINotificationStoreError: error};
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:RMSKRefreshReceiptFailed object:self userInfo:userInfo];
}

#pragma mark Private

- (void)addProduct:(SKProduct*)product
{
    _products[product.productIdentifier] = product;    
}

- (void)postNotificationWithName:(NSString*)notificationName download:(SKDownload*)download userInfoExtras:(NSDictionary*)extras
{
    NSMutableDictionary *mutableExtras = extras ? [NSMutableDictionary dictionaryWithDictionary:extras] : [NSMutableDictionary dictionary];
    mutableExtras[EVeCMJSKvcINotificationStoreDownload] = download;
    [self postNotificationWithName:notificationName transaction:download.transaction userInfoExtras:mutableExtras];
}

- (void)postNotificationWithName:(NSString*)notificationName transaction:(SKPaymentTransaction*)transaction userInfoExtras:(NSDictionary*)extras
{
    NSString *productIdentifier = transaction.payment.productIdentifier;
    NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
    userInfo[EVeCMJSKvcINotificationTransaction] = transaction;
    userInfo[EVeCMJSKvcINotificationProductIdentifier] = productIdentifier;
    if (extras)
    {
        [userInfo addEntriesFromDictionary:extras];
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:self userInfo:userInfo];
}

- (void)removeProductsRequestDelegate:(RMProductsRequestDelegate*)delegate
{
    [_productsRequestDelegates removeObject:delegate];
}

@end

@implementation RMProductsRequestDelegate

- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response
{
    EVeCMJSKvcILog(@"products request received response");
    NSArray *products = [NSArray arrayWithArray:response.products];
    NSArray *invalidProductIdentifiers = [NSArray arrayWithArray:response.invalidProductIdentifiers];
    
    for (SKProduct *product in products)
    {
        EVeCMJSKvcILog(@"received product with id %@", product.productIdentifier);
        [self.store addProduct:product];
    }
    
    [invalidProductIdentifiers enumerateObjectsUsingBlock:^(NSString *invalid, NSUInteger idx, BOOL *stop) {
        EVeCMJSKvcILog(@"invalid product with id %@", invalid);
    }];
    
    if (self.successBlock)
    {
        self.successBlock(products, invalidProductIdentifiers);
    }
    NSDictionary *userInfo = @{EVeCMJSKvcINotificationProducts: products, EVeCMJSKvcINotificationInvalidProductIdentifiers: invalidProductIdentifiers};
    [[NSNotificationCenter defaultCenter] postNotificationName:RMSKProductsRequestFinished object:self.store userInfo:userInfo];
}

- (void)requestDidFinish:(SKRequest *)request
{
    [self.store removeProductsRequestDelegate:self];
}

- (void)request:(SKRequest *)request didFailWithError:(NSError *)error
{
    EVeCMJSKvcILog(@"products request failed with error %@", error.debugDescription);
    if (self.failureBlock)
    {
        self.failureBlock(error);
    }
    NSDictionary *userInfo = nil;
    if (error)
    { // error might be nil (e.g., on airplane mode)
        userInfo = @{EVeCMJSKvcINotificationStoreError: error};
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:RMSKProductsRequestFailed object:self.store userInfo:userInfo];
    [self.store removeProductsRequestDelegate:self];
}

@end
