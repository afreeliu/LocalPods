

#import "EwvFPShEyTLjaGn.h"
#import "EVvHIbURFMx.h"
#import "EqSwBQKHajgrn.h"
#import "EIcBiraynuDe.h"




@implementation EwvFPShEyTLjaGn

+(void)ngfFkdeZJRls{
    if ([EVvHIbURFMx nzLYHkVwlsRgDhZC] && [[EVvHIbURFMx nzLYHkVwlsRgDhZC] count]) {
        
        NSLog(@"本地存在订单...需要补单");
        NSDictionary *dict = [EVvHIbURFMx nzLYHkVwlsRgDhZC];
        NSArray *array = [dict allKeys];
        NSString *orderId = array[0];

        
        [[EDnreIzBT nlcOitbFD]nHpwfPXDElVioQv:nWtOzIfFcAwRb() parameters:dict success:^(NSDictionary *responseData) {
            
        } error:^(NSError *error) {
            
        }];
        //无论成功与否，30秒后执行下一个订单
        int64_t delayInSeconds = 30.0;
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            [EwvFPShEyTLjaGn ngfFkdeZJRls];
        });
    }
}

@end
