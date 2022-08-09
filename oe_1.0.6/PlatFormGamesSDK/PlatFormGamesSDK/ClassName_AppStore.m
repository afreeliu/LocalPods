
#import "ClassName_AppStore.h"

NSString *const ClassName_AppStoreErrorDomain = @"net.robotmedia.store";
NSInteger const ClassName_AppStoreErrorCodeDownloadCanceled = 300;
NSInteger const ClassName_AppStoreErrorCodeUnknownProductIdentifier = 100;
NSInteger const ClassName_AppStoreErrorCodeUnableToCompleteVerification = 200;
NSString* const varNames_DownloadCanceled = @"varNames_DownloadCanceled";
NSString* const varNames_DownloadFailed = @"varNames_DownloadFailed";
NSString* const varNames_DownloadFinished = @"varNames_DownloadFinished";
NSString* const varNames_DownloadPaused = @"varNames_DownloadPaused";
NSString* const varNames_DownloadUpdated = @"varNames_DownloadUpdated";
NSString* const varNames_PaymentTransactionDeferred = @"varNames_PaymentTransactionDeferred";
NSString* const varNames_PaymentTransactionFailed = @"varNames_PaymentTransactionFailed";
NSString* const varNames_PaymentTransactionFinished = @"varNames_PaymentTransactionFinished";
NSString* const varNames_ProductsRequestFailed = @"varNames_ProductsRequestFailed";
NSString* const varNames_ProductsRequestFinished = @"varNames_ProductsRequestFinished";
NSString* const varNames_RefreshReceiptFailed = @"varNames_RefreshReceiptFailed";
NSString* const varNames_RefreshReceiptFinished = @"varNames_RefreshReceiptFinished";
NSString* const varNames_RestoreTransactionsFailed = @"varNames_RestoreTransactionsFailed";
NSString* const varNames_RestoreTransactionsFinished = @"varNames_RestoreTransactionsFinished";

NSString* const ClassName_AppStoreNotificationInvalidProductIdentifiers = @"invalidProductIdentifiers";
NSString* const ClassName_AppStoreNotificationDownloadProgress = @"downloadProgress";
NSString* const ClassName_AppStoreNotificationProductIdentifier = @"productIdentifier";
NSString* const ClassName_AppStoreNotificationProducts = @"products";
NSString* const ClassName_AppStoreNotificationStoreDownload = @"storeDownload";
NSString* const ClassName_AppStoreNotificationStoreError = @"storeError";
NSString* const ClassName_AppStoreNotificationStoreReceipt = @"storeReceipt";
NSString* const ClassName_AppStoreNotificationTransaction = @"transaction";
NSString* const ClassName_AppStoreNotificationTransactions = @"transactions";

#if DEBUG
#define ClassName_AppStoreLog(...) NSLog(@"ClassName_AppStore: %@", [NSString stringWithFormat:__VA_ARGS__]);
#else
#define ClassName_AppStoreLog(...)
#endif

typedef void (^methodNames_PaymentTransactionFailureBlock)(SKPaymentTransaction *transaction, NSError *error);
typedef void (^methodNames_PaymentTransactionSuccessBlock)(SKPaymentTransaction *transaction);
typedef void (^methodNames_ProductsRequestFailureBlock)(NSError *error);
typedef void (^methodNames_ProductsRequestSuccessBlock)(NSArray *products, NSArray *invalidIdentifiers);
typedef void (^ClassName_AppStoreFailureBlock)(NSError *error);
typedef void (^ClassName_AppStoreSuccessBlock)(void);

@implementation NSNotification(ClassName_AppStore)

- (float)methodNames_downloadProgress
{
    return [self.userInfo[ClassName_AppStoreNotificationDownloadProgress] floatValue];
}

- (NSArray*)methodNames_invalidProductIdentifiers
{
    return (self.userInfo)[ClassName_AppStoreNotificationInvalidProductIdentifiers];
}

- (NSString*)methodNames_productIdentifier
{
    return (self.userInfo)[ClassName_AppStoreNotificationProductIdentifier];
}

- (NSArray*)methodNames_products
{
    return (self.userInfo)[ClassName_AppStoreNotificationProducts];
}

- (SKDownload*)methodNames_storeDownload
{
    return (self.userInfo)[ClassName_AppStoreNotificationStoreDownload];
}

- (NSError*)methodNames_storeError
{
    return (self.userInfo)[ClassName_AppStoreNotificationStoreError];
}

- (SKPaymentTransaction*)methodNames_transaction
{
    return (self.userInfo)[ClassName_AppStoreNotificationTransaction];
}

- (NSArray*)methodNames_transactions {
    return (self.userInfo)[ClassName_AppStoreNotificationTransactions];
}

@end

@interface ClassName_ProductsRequestDelegate : NSObject<SKProductsRequestDelegate>

@property (nonatomic, strong) methodNames_ProductsRequestSuccessBlock successBlock;
@property (nonatomic, strong) methodNames_ProductsRequestFailureBlock failureBlock;
@property (nonatomic, weak) ClassName_AppStore *store;

@end

@interface ClassName_AddPaymentParameters : NSObject

@property (nonatomic, strong) methodNames_PaymentTransactionSuccessBlock successBlock;
@property (nonatomic, strong) methodNames_PaymentTransactionFailureBlock failureBlock;

@end

@implementation ClassName_AddPaymentParameters

@end

@interface ClassName_AppStore() <SKRequestDelegate>

@end

@implementation ClassName_AppStore {
    NSMutableDictionary *_addPaymentParameters;
    
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

+ (ClassName_AppStore *)defaultStore
{
    static ClassName_AppStore *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[[self class] alloc] init];
    });
    return sharedInstance;
}


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
        ClassName_AppStoreLog(@"unknown product id %@", productIdentifier)
        if (failureBlock != nil)
        {
            NSError *error = [NSError errorWithDomain:ClassName_AppStoreErrorDomain code:ClassName_AppStoreErrorCodeUnknownProductIdentifier userInfo:@{NSLocalizedDescriptionKey: NSLocalizedStringFromTable(@"Unknown product identifier", @"ClassName_AppStore", @"Error description")}];
            failureBlock(nil, error);
        }
        return;
    }
    SKMutablePayment *payment = [SKMutablePayment paymentWithProduct:product];

    if (userIdentifier && userIdentifier.length) {
        payment.applicationUsername = userIdentifier;
    }
    
    ClassName_AddPaymentParameters *parameters = [[ClassName_AddPaymentParameters alloc] init];
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
                success:(methodNames_ProductsRequestSuccessBlock)successBlock
                failure:(methodNames_ProductsRequestFailureBlock)failureBlock
{
    ClassName_ProductsRequestDelegate *delegate = [[ClassName_ProductsRequestDelegate alloc] init];
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


+ (NSURL*)receiptURL
{
    NSAssert(floor(NSFoundationVersionNumber) > NSFoundationVersionNumber_iOS_6_1, @"appStoreReceiptURL not supported in this iOS version.");
    NSURL *url = [[NSBundle mainBundle] appStoreReceiptURL];
    return url;
}

- (void)refreshReceipt
{
    [self refreshReceiptOnSuccess:nil failure:nil];
}

- (void)refreshReceiptOnSuccess:(ClassName_AppStoreSuccessBlock)successBlock
                        failure:(ClassName_AppStoreFailureBlock)failureBlock
{
    _refreshReceiptFailureBlock = failureBlock;
    _refreshReceiptSuccessBlock = successBlock;
    _refreshReceiptRequest = [[SKReceiptRefreshRequest alloc] initWithReceiptProperties:@{}];
    _refreshReceiptRequest.delegate = self;
    [_refreshReceiptRequest start];
}


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

- (void)addStoreObserver:(id<ClassName_AppStoreObserver>)observer
{
    [self addStoreObserver:observer selector:@selector(storeDownloadCanceled:) notificationName:varNames_DownloadCanceled];
    [self addStoreObserver:observer selector:@selector(storeDownloadFailed:) notificationName:varNames_DownloadFailed];
    [self addStoreObserver:observer selector:@selector(storeDownloadFinished:) notificationName:varNames_DownloadFinished];
    [self addStoreObserver:observer selector:@selector(storeDownloadPaused:) notificationName:varNames_DownloadPaused];
    [self addStoreObserver:observer selector:@selector(storeDownloadUpdated:) notificationName:varNames_DownloadUpdated];
    [self addStoreObserver:observer selector:@selector(storeProductsRequestFailed:) notificationName:varNames_ProductsRequestFailed];
    [self addStoreObserver:observer selector:@selector(storeProductsRequestFinished:) notificationName:varNames_ProductsRequestFinished];
    [self addStoreObserver:observer selector:@selector(storePaymentTransactionDeferred:) notificationName:varNames_PaymentTransactionDeferred];
    [self addStoreObserver:observer selector:@selector(storePaymentTransactionFailed:) notificationName:varNames_PaymentTransactionFailed];
    [self addStoreObserver:observer selector:@selector(storePaymentTransactionFinished:) notificationName:varNames_PaymentTransactionFinished];
    [self addStoreObserver:observer selector:@selector(storeRefreshReceiptFailed:) notificationName:varNames_RefreshReceiptFailed];
    [self addStoreObserver:observer selector:@selector(storeRefreshReceiptFinished:) notificationName:varNames_RefreshReceiptFinished];
    [self addStoreObserver:observer selector:@selector(storeRestoreTransactionsFailed:) notificationName:varNames_RestoreTransactionsFailed];
    [self addStoreObserver:observer selector:@selector(storeRestoreTransactionsFinished:) notificationName:varNames_RestoreTransactionsFinished];
}

- (void)removeStoreObserver:(id<ClassName_AppStoreObserver>)observer
{
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:varNames_DownloadCanceled object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:varNames_DownloadFailed object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:varNames_DownloadFinished object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:varNames_DownloadPaused object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:varNames_DownloadUpdated object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:varNames_ProductsRequestFailed object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:varNames_ProductsRequestFinished object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:varNames_PaymentTransactionDeferred object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:varNames_PaymentTransactionFailed object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:varNames_PaymentTransactionFinished object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:varNames_RefreshReceiptFailed object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:varNames_RefreshReceiptFinished object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:varNames_RestoreTransactionsFailed object:self];
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:varNames_RestoreTransactionsFinished object:self];
}


- (void)addStoreObserver:(id<ClassName_AppStoreObserver>)observer selector:(SEL)aSelector notificationName:(NSString*)notificationName
{
    if ([observer respondsToSelector:aSelector])
    {
        [[NSNotificationCenter defaultCenter] addObserver:observer selector:aSelector name:notificationName object:self];
    }
}

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
    ClassName_AppStoreLog(@"restore transactions finished");
    _restoredCompletedTransactionsFinished = YES;
    
    [self notifyRestoreTransactionFinishedIfApplicableAfterTransaction:nil];
}

- (void)paymentQueue:(SKPaymentQueue *)queue restoreCompletedTransactionsFailedWithError:(NSError *)error
{
    ClassName_AppStoreLog(@"restored transactions failed with error %@", error.debugDescription);
    if (_restoreTransactionsFailureBlock != nil)
    {
        _restoreTransactionsFailureBlock(error);
        _restoreTransactionsFailureBlock = nil;
    }
    NSDictionary *userInfo = nil;
    if (error)
    { // error might be nil (e.g., on airplane mode)
        userInfo = @{ClassName_AppStoreNotificationStoreError: error};
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:varNames_RestoreTransactionsFailed object:self userInfo:userInfo];
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


- (void)didCancelDownload:(SKDownload*)download queue:(SKPaymentQueue*)queue
{
    SKPaymentTransaction *transaction = download.transaction;
    ClassName_AppStoreLog(@"download %@ for product %@ canceled", download.contentIdentifier, download.transaction.payment.productIdentifier);

    [self postNotificationWithName:varNames_DownloadCanceled download:download userInfoExtras:nil];

    NSError *error = [NSError errorWithDomain:ClassName_AppStoreErrorDomain code:ClassName_AppStoreErrorCodeDownloadCanceled userInfo:@{NSLocalizedDescriptionKey: NSLocalizedStringFromTable(@"Download canceled", @"ClassName_AppStore", @"Error description")}];

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
    ClassName_AppStoreLog(@"download %@ for product %@ failed with error %@", download.contentIdentifier, transaction.payment.productIdentifier, error.debugDescription);

    NSDictionary *extras = error ? @{ClassName_AppStoreNotificationStoreError : error} : nil;
    [self postNotificationWithName:varNames_DownloadFailed download:download userInfoExtras:extras];

    const BOOL hasPendingDownloads = [self.class hasPendingDownloadsInTransaction:transaction];
    if (!hasPendingDownloads)
    {
        [self didFailTransaction:transaction queue:queue error:error];
    }
}

- (void)didFinishDownload:(SKDownload*)download queue:(SKPaymentQueue*)queue
{
    SKPaymentTransaction *transaction = download.transaction;
    ClassName_AppStoreLog(@"download %@ for product %@ finished", download.contentIdentifier, transaction.payment.productIdentifier);
    
    [self postNotificationWithName:varNames_DownloadFinished download:download userInfoExtras:nil];

    const BOOL hasPendingDownloads = [self.class hasPendingDownloadsInTransaction:transaction];
    if (!hasPendingDownloads)
    {
        [self finishTransaction:download.transaction queue:queue];
    }
}

- (void)didPauseDownload:(SKDownload*)download queue:(SKPaymentQueue*)queue
{
    ClassName_AppStoreLog(@"download %@ for product %@ paused", download.contentIdentifier, download.transaction.payment.productIdentifier);
    [self postNotificationWithName:varNames_DownloadPaused download:download userInfoExtras:nil];
}

- (void)didUpdateDownload:(SKDownload*)download queue:(SKPaymentQueue*)queue
{
    ClassName_AppStoreLog(@"download %@ for product %@ updated", download.contentIdentifier, download.transaction.payment.productIdentifier);
    NSDictionary *extras = @{ClassName_AppStoreNotificationDownloadProgress : @(download.progress)};
    [self postNotificationWithName:varNames_DownloadUpdated download:download userInfoExtras:extras];
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

- (void)didPurchaseTransaction:(SKPaymentTransaction *)transaction queue:(SKPaymentQueue*)queue
{
    ClassName_AppStoreLog(@"transaction purchased with product %@", transaction.payment.productIdentifier);
    
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
        ClassName_AppStoreLog(@"WARNING: no receipt verification");
        [self didVerifyTransaction:transaction queue:queue];
    }
}

- (void)didFailTransaction:(SKPaymentTransaction *)transaction queue:(SKPaymentQueue*)queue error:(NSError*)error
{
    SKPayment *payment = transaction.payment;
	NSString* productIdentifier = payment.productIdentifier;
    ClassName_AppStoreLog(@"transaction failed with product %@ and error %@", productIdentifier, error.debugDescription);
    
    if (error.code != ClassName_AppStoreErrorCodeUnableToCompleteVerification)
    { // If we were unable to complete the verification we want StoreKit to keep reminding us of the transaction
        [queue finishTransaction:transaction];
    }
    
    ClassName_AddPaymentParameters *parameters = [self popAddPaymentParametersForIdentifier:productIdentifier];
    if (parameters.failureBlock != nil)
    {
        parameters.failureBlock(transaction, error);
    }
    
    NSDictionary *extras = error ? @{ClassName_AppStoreNotificationStoreError : error} : nil;
    [self postNotificationWithName:varNames_PaymentTransactionFailed transaction:transaction userInfoExtras:extras];
    
    if (transaction.transactionState == SKPaymentTransactionStateRestored)
    {
        [self notifyRestoreTransactionFinishedIfApplicableAfterTransaction:transaction];
    }
}

- (void)didRestoreTransaction:(SKPaymentTransaction *)transaction queue:(SKPaymentQueue*)queue
{
    ClassName_AppStoreLog(@"transaction restored with product %@", transaction.originalTransaction.payment.productIdentifier);
    
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
        ClassName_AppStoreLog(@"WARNING: no receipt verification");
        [self didVerifyTransaction:transaction queue:queue];
    }
}

- (void)didDeferTransaction:(SKPaymentTransaction *)transaction
{
    [self postNotificationWithName:varNames_PaymentTransactionDeferred transaction:transaction userInfoExtras:nil];
}

- (void)didVerifyTransaction:(SKPaymentTransaction *)transaction queue:(SKPaymentQueue*)queue
{
    if (self.contentDownloader != nil)
    {
        [self.contentDownloader downloadContentForTransaction:transaction success:^{
            [self postNotificationWithName:varNames_DownloadFinished transaction:transaction userInfoExtras:nil];
            [self didDownloadSelfHostedContentForTransaction:transaction queue:queue];
        } progress:^(float progress) {
            NSDictionary *extras = @{ClassName_AppStoreNotificationDownloadProgress : @(progress)};
            [self postNotificationWithName:varNames_DownloadUpdated transaction:transaction userInfoExtras:extras];
        } failure:^(NSError *error) {
            NSDictionary *extras = error ? @{ClassName_AppStoreNotificationStoreError : error} : nil;
            [self postNotificationWithName:varNames_DownloadFailed transaction:transaction userInfoExtras:extras];
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
        ClassName_AppStoreLog(@"starting downloads for product %@ started", transaction.payment.productIdentifier);
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
    
    ClassName_AddPaymentParameters *wrapper = [self popAddPaymentParametersForIdentifier:productIdentifier];
    if (wrapper.successBlock != nil)
    {
        wrapper.successBlock(transaction);
    }
    
    [self postNotificationWithName:varNames_PaymentTransactionFinished transaction:transaction userInfoExtras:nil];
    
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
        NSDictionary *userInfo = @{ ClassName_AppStoreNotificationTransactions : restoredTransactions };
        [[NSNotificationCenter defaultCenter] postNotificationName:varNames_RestoreTransactionsFinished object:self userInfo:userInfo];
    }
}

- (ClassName_AddPaymentParameters*)popAddPaymentParametersForIdentifier:(NSString*)identifier
{
    ClassName_AddPaymentParameters *parameters = _addPaymentParameters[identifier];
    [_addPaymentParameters removeObjectForKey:identifier];
    return parameters;
}

- (void)requestDidFinish:(SKRequest *)request
{
    ClassName_AppStoreLog(@"refresh receipt finished");
    _refreshReceiptRequest = nil;
    if (_refreshReceiptSuccessBlock)
    {
        _refreshReceiptSuccessBlock();
        _refreshReceiptSuccessBlock = nil;
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:varNames_RefreshReceiptFinished object:self];
}

- (void)request:(SKRequest *)request didFailWithError:(NSError *)error
{
    ClassName_AppStoreLog(@"refresh receipt failed with error %@", error.debugDescription);
    _refreshReceiptRequest = nil;
    if (_refreshReceiptFailureBlock)
    {
        _refreshReceiptFailureBlock(error);
        _refreshReceiptFailureBlock = nil;
    }
    NSDictionary *userInfo = nil;
    if (error)
    { // error might be nil (e.g., on airplane mode)
        userInfo = @{ClassName_AppStoreNotificationStoreError: error};
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:varNames_RefreshReceiptFailed object:self userInfo:userInfo];
}

- (void)addProduct:(SKProduct*)product
{
    _products[product.productIdentifier] = product;    
}

- (void)postNotificationWithName:(NSString*)notificationName download:(SKDownload*)download userInfoExtras:(NSDictionary*)extras
{
    NSMutableDictionary *mutableExtras = extras ? [NSMutableDictionary dictionaryWithDictionary:extras] : [NSMutableDictionary dictionary];
    mutableExtras[ClassName_AppStoreNotificationStoreDownload] = download;
    [self postNotificationWithName:notificationName transaction:download.transaction userInfoExtras:mutableExtras];
}

- (void)postNotificationWithName:(NSString*)notificationName transaction:(SKPaymentTransaction*)transaction userInfoExtras:(NSDictionary*)extras
{
    NSString *productIdentifier = transaction.payment.productIdentifier;
    NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
    userInfo[ClassName_AppStoreNotificationTransaction] = transaction;
    userInfo[ClassName_AppStoreNotificationProductIdentifier] = productIdentifier;
    if (extras)
    {
        [userInfo addEntriesFromDictionary:extras];
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:self userInfo:userInfo];
}

- (void)removeProductsRequestDelegate:(ClassName_ProductsRequestDelegate*)delegate
{
    [_productsRequestDelegates removeObject:delegate];
}

@end

@implementation ClassName_ProductsRequestDelegate

- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response
{
    ClassName_AppStoreLog(@"products request received response");
    NSArray *products = [NSArray arrayWithArray:response.products];
    NSArray *invalidProductIdentifiers = [NSArray arrayWithArray:response.invalidProductIdentifiers];
    
    for (SKProduct *product in products)
    {
        ClassName_AppStoreLog(@"received product with id %@", product.productIdentifier);
        [self.store addProduct:product];
    }
    
    [invalidProductIdentifiers enumerateObjectsUsingBlock:^(NSString *invalid, NSUInteger idx, BOOL *stop) {
        ClassName_AppStoreLog(@"invalid product with id %@", invalid);
    }];
    
    if (self.successBlock)
    {
        self.successBlock(products, invalidProductIdentifiers);
    }
    NSDictionary *userInfo = @{ClassName_AppStoreNotificationProducts: products, ClassName_AppStoreNotificationInvalidProductIdentifiers: invalidProductIdentifiers};
    [[NSNotificationCenter defaultCenter] postNotificationName:varNames_ProductsRequestFinished object:self.store userInfo:userInfo];
}

- (void)requestDidFinish:(SKRequest *)request
{
    [self.store removeProductsRequestDelegate:self];
}

- (void)request:(SKRequest *)request didFailWithError:(NSError *)error
{
    ClassName_AppStoreLog(@"products request failed with error %@", error.debugDescription);
    if (self.failureBlock)
    {
        self.failureBlock(error);
    }
    NSDictionary *userInfo = nil;
    if (error)
    {
        userInfo = @{ClassName_AppStoreNotificationStoreError: error};
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:varNames_ProductsRequestFailed object:self.store userInfo:userInfo];
    [self.store removeProductsRequestDelegate:self];
}

@end
