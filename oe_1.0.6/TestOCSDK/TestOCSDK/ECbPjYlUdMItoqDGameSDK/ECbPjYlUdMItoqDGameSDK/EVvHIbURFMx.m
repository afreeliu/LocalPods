

#import "EVvHIbURFMx.h"

@implementation EVvHIbURFMx
+(NSString *)nrszXNub
{
    NSArray *emvLhkfIJ = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *eALsNmiOTIE=[emvLhkfIJ objectAtIndex:0];//Documents目录
    NSString *eEIetUwx = [eALsNmiOTIE stringByAppendingPathComponent:@"ZSIAPPayCache.plist"];
    return eEIetUwx;
}
+ (void)nUnPMDldL:(NSString *)orderId WithTransaction:(NSDictionary *)transaction{
    NSString *path = [EVvHIbURFMx nrszXNub];
    NSFileManager *fm = [NSFileManager defaultManager];
    
    if (![fm fileExistsAtPath:path]) {
        [fm createFileAtPath:path contents:nil attributes:nil];
    }
    
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    NSMutableDictionary *muDict = [[NSMutableDictionary alloc] init];
    
    if ([dict count]) {
        [muDict addEntriesFromDictionary:dict];
    }
    [muDict setValue:transaction forKey:orderId];
    BOOL bl = [muDict writeToFile:path atomically:YES];
    if (bl) {
        
//        NSLog(@"Transactions Suc %@",[muDict allKeys]);
    }
}
+ (void)nbMlwFA:(NSString *)orderId WithisAll:(BOOL)allBl{
    NSString *path = [EVvHIbURFMx nrszXNub];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    if ([dict count]) {
        
        NSMutableDictionary *muDict = [[NSMutableDictionary alloc] initWithDictionary:dict];
        if (allBl) {
            
            [muDict removeAllObjects];
        }else
        {
            if (muDict[orderId]) {
                [muDict removeObjectForKey:orderId];
            }
            
        }
        BOOL bl = [muDict writeToFile:path atomically:YES];
        if (bl) {
            if ([muDict count]) {
                NSLog(@"orderId Del Suc。。。剩余订单 -- %@",[muDict allKeys]);
            }else
            {
                NSLog(@"orderId all Del Suc。。。本地无缓冲订单");
            }
        }
    }
}

+ (NSDictionary *)nzLYHkVwlsRgDhZC{
    NSString *path = [EVvHIbURFMx nrszXNub];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    if (dict) {
        return dict;
    }
    return @{};
}

@end
