

#import <Foundation/Foundation.h>

#import "ClassNames_URLSessionManager.h"
#import "ClassNames_URLSessionConfigure.h"
#import "ClassNames_URLProtocol.h"
#import "ClassNames_DebugLog.h"
#import "ClassNames_PGHubView.h"


typedef NS_ENUM(NSUInteger, ClassNames_FetchDataStatus) {
    ClassNames_FetchDataStatusNone,// 初始化了，但没进行网络请求
    ClassNames_FetchDataStatusIng,
    ClassNames_FetchDataStatusSuccess,
    ClassNames_FetchDataStatusError,
};

typedef void(^methodNames_successCompleteFetchData)(id object);

@interface ClassNames_BaseModel : NSObject <ClassNames_URLProtocol>

@property (nonatomic, readonly, assign) ClassNames_FetchDataStatus varNames_status;

@property (nonatomic, readonly, assign) NSInteger varNames_code;
@property (nonatomic, readonly, copy) NSString *varNames_msg;
@property (nonatomic, readonly, assign) BOOL varNames_success;
@property (nonatomic, readonly, strong) id varNames_data;

@property (nonatomic, readwrite, copy) void (^methodNames_completeFetchData)(id object);
@property (nonatomic, readwrite, copy) void (^methodNames_FetchError)(NSError *error);

- (void)methodNames_fetchDataWithdURL:(NSString *)url parameters:(NSDictionary *)para;




@end
