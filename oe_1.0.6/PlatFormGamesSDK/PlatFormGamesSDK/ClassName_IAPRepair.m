

#import "ClassName_IAPRepair.h"

@implementation ClassName_IAPRepair
+(NSString *)methodNames_TransactionsPath
{
    NSArray *varNames_paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *varNames_documentsDirectory=[varNames_paths objectAtIndex:0];//Documents目录
    NSString *varNames_path = [varNames_documentsDirectory stringByAppendingPathComponent:@"varNames_iapPayCache.plist"];
    return varNames_path;
}
+ (void)methodNames_addOrderId:(NSString *)orderId WithTransaction:(NSDictionary *)transaction{
    NSString *path = [ClassName_IAPRepair methodNames_TransactionsPath];
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
+ (void)methodNames_removeOrderId:(NSString *)orderId WithisAll:(BOOL)allBl{
    NSString *path = [ClassName_IAPRepair methodNames_TransactionsPath];
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

+ (NSDictionary *)methodNames_readOrders{
    NSString *path = [ClassName_IAPRepair methodNames_TransactionsPath];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    if (dict) {
        return dict;
    }
    return @{};
}

@end
