

#import "EDnreIzBT.h"
#import "EqSwBQKHajgrn.h"
@interface EDnreIzBT ()

@property (nonatomic, readwrite, strong) NSURLSessionDataTask *eQBJxIjODZ;

@property (nonatomic, readwrite, strong) NSURLSessionConfiguration *eLGParDXqluZy;

@property (nonatomic, readwrite, strong) NSURLSession *epmgsxET;

@end
@implementation EDnreIzBT

+ (instancetype)nlcOitbFD {
    static EDnreIzBT *epmgsxETManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        epmgsxETManager = [[EDnreIzBT alloc]init];
    });
    return epmgsxETManager;
}
- (instancetype)init {
    
    self = [super init];
    if (self) {
        [self initail];
    }
    return self;
}

- (void)initail {
    
    self.eLGParDXqluZy = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    //创建会话对象
    self.epmgsxET = [NSURLSession sessionWithConfiguration:self.eLGParDXqluZy];
    
}

/**
 *  post请求
 */
- (void)nHpwfPXDElVioQv:(NSString *)urlString parameters:(NSDictionary *)parameters success:(nDliSuCqFmkVvQ)successBlock error:(nsuGTXbhFtZ)errorBlock {
    
    NSAssert([parameters isKindOfClass:[NSDictionary class]], @"参数不是json格式");
    
    urlString = [urlString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *requestM = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:evawBDqMoCuzcj];
    requestM.HTTPMethod = eYuGaEvNjWZrzJe;
    [requestM setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:parameters options:NSJSONWritingPrettyPrinted error:nil];
    
    NSString *jsonS = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
    
    requestM.HTTPBody = [jsonS dataUsingEncoding:NSUTF8StringEncoding];
    
    
    
    //创建请求 Task
    NSURLSessionDataTask *dataTask = [self.epmgsxET dataTaskWithRequest:requestM completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
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
