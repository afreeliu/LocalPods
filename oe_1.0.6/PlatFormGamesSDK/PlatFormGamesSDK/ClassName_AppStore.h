
#import <Foundation/Foundation.h>
#import <StoreKit/StoreKit.h>

@protocol ClassName_AppStoreContentDownloader;
@protocol ClassName_AppStoreReceiptVerifier;
@protocol ClassName_AppStoreTransactionPersistor;
@protocol ClassName_AppStoreObserver;

extern NSString *const ClassName_AppStoreErrorDomain;
extern NSInteger const ClassName_AppStoreErrorCodeDownloadCanceled;
extern NSInteger const ClassName_AppStoreErrorCodeUnknownProductIdentifier;
extern NSInteger const ClassName_AppStoreErrorCodeUnableToCompleteVerification;


@interface ClassName_AppStore : NSObject<SKPaymentTransactionObserver>

+ (ClassName_AppStore*)defaultStore;


+ (BOOL)canMakePayments;

- (void)addPayment:(NSString*)productIdentifier;


- (void)addPayment:(NSString*)productIdentifier
           success:(void (^)(SKPaymentTransaction *transaction))successBlock
           failure:(void (^)(SKPaymentTransaction *transaction, NSError *error))failureBlock;

- (void)addPayment:(NSString*)productIdentifier
              user:(NSString*)userIdentifier
           success:(void (^)(SKPaymentTransaction *transaction))successBlock
           failure:(void (^)(SKPaymentTransaction *transaction, NSError *error))failureBlock __attribute__((availability(ios,introduced=7.0)));

- (void)requestProducts:(NSSet*)identifiers;

- (void)requestProducts:(NSSet*)identifiers
                success:(void (^)(NSArray *products, NSArray *invalidProductIdentifiers))successBlock
                failure:(void (^)(NSError *error))failureBlock;

- (void)restoreTransactions;

- (void)restoreTransactionsOnSuccess:(void (^)(NSArray *transactions))successBlock
                             failure:(void (^)(NSError *error))failureBlock;


- (void)restoreTransactionsOfUser:(NSString*)userIdentifier
                        onSuccess:(void (^)(NSArray *transactions))successBlock
                          failure:(void (^)(NSError *error))failureBlock __attribute__((availability(ios,introduced=7.0)));


+ (NSURL*)receiptURL __attribute__((availability(ios,introduced=7.0)));


- (void)refreshReceipt __attribute__((availability(ios,introduced=7.0)));


- (void)refreshReceiptOnSuccess:(void (^)(void))successBlock
                        failure:(void (^)(NSError *error))failureBlock __attribute__((availability(ios,introduced=7.0)));


@property (nonatomic, weak) id<ClassName_AppStoreContentDownloader> contentDownloader;

@property (nonatomic, weak) id<ClassName_AppStoreReceiptVerifier> receiptVerifier;


@property (nonatomic, weak) id<ClassName_AppStoreTransactionPersistor> transactionPersistor;

- (SKProduct*)productForIdentifier:(NSString*)productIdentifier;

+ (NSString*)localizedPriceOfProduct:(SKProduct*)product;

- (void)addStoreObserver:(id<ClassName_AppStoreObserver>)observer;

- (void)removeStoreObserver:(id<ClassName_AppStoreObserver>)observer;

@end

@protocol ClassName_AppStoreContentDownloader <NSObject>

- (void)downloadContentForTransaction:(SKPaymentTransaction*)transaction
                              success:(void (^)(void))successBlock
                             progress:(void (^)(float progress))progressBlock
                              failure:(void (^)(NSError *error))failureBlock;

@end

@protocol ClassName_AppStoreTransactionPersistor<NSObject>

- (void)persistTransaction:(SKPaymentTransaction*)transaction;

@end

@protocol ClassName_AppStoreReceiptVerifier <NSObject>

- (void)verifyTransaction:(SKPaymentTransaction*)transaction
                  success:(void (^)(void))successBlock
                  failure:(void (^)(NSError *error))failureBlock;

@end

@protocol ClassName_AppStoreObserver<NSObject>
@optional

- (void)storeDownloadCanceled:(NSNotification*)notification __attribute__((availability(ios,introduced=6.0)));

- (void)storeDownloadFailed:(NSNotification*)notification __attribute__((availability(ios,introduced=6.0)));

- (void)storeDownloadFinished:(NSNotification*)notification __attribute__((availability(ios,introduced=6.0)));


- (void)storeDownloadPaused:(NSNotification*)notification __attribute__((availability(ios,introduced=6.0)));

- (void)storeDownloadUpdated:(NSNotification*)notification __attribute__((availability(ios,introduced=6.0)));

- (void)storePaymentTransactionDeferred:(NSNotification*)notification __attribute__((availability(ios,introduced=8.0)));
- (void)storePaymentTransactionFailed:(NSNotification*)notification;
- (void)storePaymentTransactionFinished:(NSNotification*)notification;
- (void)storeProductsRequestFailed:(NSNotification*)notification;
- (void)storeProductsRequestFinished:(NSNotification*)notification;
- (void)storeRefreshReceiptFailed:(NSNotification*)notification __attribute__((availability(ios,introduced=7.0)));
- (void)storeRefreshReceiptFinished:(NSNotification*)notification __attribute__((availability(ios,introduced=7.0)));
- (void)storeRestoreTransactionsFailed:(NSNotification*)notification;
- (void)storeRestoreTransactionsFinished:(NSNotification*)notification;

@end


@interface NSNotification(ClassName_AppStore)

@property (nonatomic, readonly) float methodNames_downloadProgress;

@property (nonatomic, readonly) NSArray *methodNames_invalidProductIdentifiers;

@property (nonatomic, readonly) NSString *methodNames_productIdentifier;


@property (nonatomic, readonly) NSArray *methodNames_products;

@property (nonatomic, readonly) SKDownload *methodNames_storeDownload __attribute__((availability(ios,introduced=6.0)));


@property (nonatomic, readonly) NSError *methodNames_storeError;


@property (nonatomic, readonly) SKPaymentTransaction *methodNames_transaction;


@property (nonatomic, readonly) NSArray *methodNames_transactions;

@end
