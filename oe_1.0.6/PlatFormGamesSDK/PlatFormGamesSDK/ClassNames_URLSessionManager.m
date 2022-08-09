

#import "ClassNames_URLSessionManager.h"
#import "ClassNames_URLSessionConfigure.h"
@interface ClassNames_URLSessionManager ()

@property (nonatomic, readwrite, strong) NSURLSessionDataTask *varNames_dataTask;

@property (nonatomic, readwrite, strong) NSURLSessionConfiguration *varNames_configuration;

@property (nonatomic, readwrite, strong) NSURLSession *varNames_session;

@end
@implementation ClassNames_URLSessionManager

+ (instancetype)methodNames_shareSessionManager {
    static ClassNames_URLSessionManager *varNames_sessionManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        varNames_sessionManager = [[ClassNames_URLSessionManager alloc]init];
    });
    return varNames_sessionManager;
}
- (instancetype)init {
    
    self = [super init];
    if (self) {
        [self initail];
    }
    return self;
}

- (void)initail {
    
    self.varNames_configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    //创建会话对象
    self.varNames_session = [NSURLSession sessionWithConfiguration:self.varNames_configuration];
    
}

/**
 *  post请求
 */
- (void)methodNames_requestWithUrl:(NSString *)urlString parameters:(NSDictionary *)parameters success:(methodNames_voidSuccessBlock)successBlock error:(methodNames_voidErrorBlock)errorBlock {
    
    NSAssert([parameters isKindOfClass:[NSDictionary class]], @"参数不是json格式");
    
    urlString = [urlString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *requestM = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:varNames_requestTimeOut];
    requestM.HTTPMethod = varNames_requestType_Post;
    [requestM setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:parameters options:NSJSONWritingPrettyPrinted error:nil];
    
    NSString *jsonS = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
    
    requestM.HTTPBody = [jsonS dataUsingEncoding:NSUTF8StringEncoding];
    
    NSLog(@"请求的接口：%@\n请求的参数:%@", urlString, parameters);
    
    //创建请求 Task
    NSURLSessionDataTask *dataTask = [self.varNames_session dataTaskWithRequest:requestM completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error) {
            
            if (errorBlock) {
                errorBlock(error);
            }
        } else {
            if (successBlock) {
                
                NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:(NSJSONReadingMutableLeaves) error:nil];
                NSLog(@"请求返回的内容:%@\n", dict);
                successBlock(dict);
            }
        }
    }];
    //发送请求
    [dataTask resume];
}


@end
