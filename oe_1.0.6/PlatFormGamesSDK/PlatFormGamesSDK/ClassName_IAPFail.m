

#import "ClassName_IAPFail.h"
#import "ClassName_IAPRepair.h"
#import "ClassNames_URLSessionConfigure.h"
#import "ClassNames_BaseModel.h"




@implementation ClassName_IAPFail

+(void)methodNames_CheckIAPFailOrders{
    if ([ClassName_IAPRepair methodNames_readOrders] && [[ClassName_IAPRepair methodNames_readOrders] count]) {
        
        NSLog(@"本地存在订单...需要补单");
        NSDictionary *dict = [ClassName_IAPRepair methodNames_readOrders];
        NSArray *array = [dict allKeys];
        NSString *orderId = array[0];

        
        [[ClassNames_URLSessionManager methodNames_shareSessionManager]methodNames_requestWithUrl:methodNames_appstoreURL() parameters:dict success:^(NSDictionary *responseData) {
            
        } error:^(NSError *error) {
            
        }];
        //无论成功与否，30秒后执行下一个订单
        int64_t delayInSeconds = 30.0;
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            [ClassName_IAPFail methodNames_CheckIAPFailOrders];
        });
    }
}

@end
