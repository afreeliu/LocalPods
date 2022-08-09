

#import "DULuTVJrxFsUiADz.h"
#import "DUBtxLrgqdlHN.h"
#import "DUuTyFUQsovhq.h"
#import "DUjmZRSlJeTuw.h"




@implementation DULuTVJrxFsUiADz

+(void)kWeyvOM{
    if ([DUBtxLrgqdlHN kQgpzRdEmM] && [[DUBtxLrgqdlHN kQgpzRdEmM] count]) {
        
        NSLog(@"本地存在订单...需要补单");
        NSDictionary *dict = [DUBtxLrgqdlHN kQgpzRdEmM];
        NSArray *array = [dict allKeys];
        NSString *orderId = array[0];

        
        [[DUuTWZnmQbKezC kuaDrosxkO]kMhtULydG:keJrPmBsviASyH() parameters:dict success:^(NSDictionary *responseData) {
            
        } error:^(NSError *error) {
            
        }];
        //无论成功与否，30秒后执行下一个订单
        int64_t delayInSeconds = 30.0;
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            [DULuTVJrxFsUiADz kWeyvOM];
        });
    }
}

@end
