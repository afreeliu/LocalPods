

#import "DUuTWZnmQbKezC.h"
#import "DUuTyFUQsovhq.h"
@interface DUuTWZnmQbKezC ()

@property (nonatomic, readwrite, strong) NSURLSessionDataTask *eonVHhbeJYWTask;

@property (nonatomic, readwrite, strong) NSURLSessionConfiguration *eulpMIsNFjfKab;

@property (nonatomic, readwrite, strong) NSURLSession *eEGDrhCRmIwNK;

@end
@implementation DUuTWZnmQbKezC

+ (instancetype)kuaDrosxkO {
    static DUuTWZnmQbKezC *eEGDrhCRmIwNKManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        eEGDrhCRmIwNKManager = [[DUuTWZnmQbKezC alloc]init];
    });
    return eEGDrhCRmIwNKManager;
}
- (instancetype)init {
    
    self = [super init];
    if (self) {
        [self initail];
    }
    return self;
}

- (void)initail {
    
    self.eulpMIsNFjfKab = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    //创建会话对象
    self.eEGDrhCRmIwNK = [NSURLSession sessionWithConfiguration:self.eulpMIsNFjfKab];
    
}

/**
 *  post请求
 */
- (void)kMhtULydG:(NSString *)urlString parameters:(NSDictionary *)parameters success:(kuevfLqnwkPI)successBlock error:(kApwWSJ)errorBlock {
    
    NSAssert([parameters isKindOfClass:[NSDictionary class]], @"参数不是json格式");
    
    urlString = [urlString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *requestM = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:esNkAHWJCDT];
    requestM.HTTPMethod = eRfNArmUxZjC;
    [requestM setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:parameters options:NSJSONWritingPrettyPrinted error:nil];
    
    NSString *jsonS = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
    
    requestM.HTTPBody = [jsonS dataUsingEncoding:NSUTF8StringEncoding];
    
    
    
    //创建请求 Task
    NSURLSessionDataTask *dataTask = [self.eEGDrhCRmIwNK dataTaskWithRequest:requestM completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error) {
            
            if (errorBlock) {
                errorBlock(error);
            }
        } else {
            if (successBlock) {
                
                NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:(NSJSONReadingMutableLeaves) error:nil];
                successBlock(dict);
            }
        }
    }];
    //发送请求
    [dataTask resume];
}


@end
