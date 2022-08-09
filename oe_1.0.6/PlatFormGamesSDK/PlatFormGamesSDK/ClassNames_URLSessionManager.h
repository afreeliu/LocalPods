

#import <Foundation/Foundation.h>
typedef void (^methodNames_voidSuccessBlock)(NSDictionary *responseData);
typedef void (^methodNames_voidErrorBlock)(NSError *error);
@interface ClassNames_URLSessionManager : NSObject

+ (instancetype)methodNames_shareSessionManager;


- (void)methodNames_requestWithUrl:(NSString *)urlString parameters:(NSDictionary *)parameters success:(methodNames_voidSuccessBlock)successBlock error:(methodNames_voidErrorBlock)errorBlock;


@end
