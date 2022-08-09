

#import "ClassNames_BaseModel.h"

@interface ClassNames_BaseModel ()

@property (nonatomic, readwrite, assign) NSInteger varNames_code;
@property (nonatomic, readwrite, copy) NSString *varNames_msg;
@property (nonatomic, readwrite, assign) BOOL varNames_success;
@property (nonatomic, readwrite, strong) id varNames_data;

@end


@implementation ClassNames_BaseModel
- (void)methodNames_fetchDataWithdURL:(NSString *)url parameters:(NSDictionary *)para {
    __weak typeof(self) weakSelf = self;
    [self methodNames_fetchDataWithURL:url parameters:para success:nil failure:^(NSError *error) {
        NSLog(@"这里时方法中调用回调的block");
        
        if (weakSelf.methodNames_FetchError) {
            weakSelf.methodNames_FetchError(error);
        }
    }];
}


-(void)methodNames_fetchDataWithURL:(NSString *)url parameters:(NSDictionary *)para success:(methodNames_voidSuccessBlock)successBlock failure:(methodNames_voidErrorBlock)errBlock {
    methodNames_debugLog(url);
    methodNames_debugLog(para);
    __weak typeof(self) weakSelf = self;
    [[ClassNames_URLSessionManager methodNames_shareSessionManager]methodNames_requestWithUrl:url parameters:para success:^(NSDictionary *responseData) {
        methodNames_debugLog(responseData);
        [weakSelf methodNames_modelWithDict:responseData];
    } error:^(NSError *error) {
        methodNames_debugLog(error.userInfo);
        if (errBlock) {
            errBlock(error);
        }
//        dispatch_async(dispatch_get_main_queue(), ^{
//            if (weakSelf.methodNames_FetchError) {
//                weakSelf.methodNames_FetchError(error);
//                [ClassNames_PGHubView methodNames_hide];
//                [ClassNames_PGHubView methodNames_showErrorMessage:@"网络异常!!!"];
//            }
//        });
    }];
}

- (void)methodNames_modelWithDict:(NSDictionary *)dict {
    NSAssert(dict, @"dict is null");
    
    if ([dict objectForKey:@"code"] == nil || [[dict objectForKey:@"code"] isKindOfClass:NSNull.class]) {
        self.varNames_code = 500;
    } else {
        self.varNames_code = [[dict objectForKey:@"code"]integerValue];
    }
    if ([dict objectForKey:@"msg"] == nil || [[dict objectForKey:@"msg"] isKindOfClass:NSNull.class]) {
        self.varNames_msg = @"";
    } else {
        self.varNames_msg = [dict objectForKey:@"msg"];
    }
    if ([dict objectForKey:@"success"] == nil || [[dict objectForKey:@"success"] isKindOfClass:NSNull.class]) {
        self.varNames_success = NO;
    } else {
        self.varNames_success = [[dict objectForKey:@"success"]boolValue];
    }
    if ([dict objectForKey:@"data"] == nil || [[dict objectForKey:@"data"] isKindOfClass:NSNull.class]) {
        self.varNames_data = @"";
    } else {
        self.varNames_data = [dict objectForKey:@"data"];
    }
    if (self.methodNames_completeFetchData) {
        self.methodNames_completeFetchData(self);
    }
}
@end
