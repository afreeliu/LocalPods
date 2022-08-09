

#import "DUjmZRSlJeTuw.h"

@interface DUjmZRSlJeTuw ()

@property (nonatomic, readwrite, assign) NSInteger ebTBquLMZ;
@property (nonatomic, readwrite, copy) NSString *euwmDFU;
@property (nonatomic, readwrite, assign) BOOL eQvpUsZHSail;
@property (nonatomic, readwrite, strong) id eonVHhbeJYW;

@end


@implementation DUjmZRSlJeTuw
- (void)kXLPOEpCBozkZM:(NSString *)url parameters:(NSDictionary *)para {
    __weak typeof(self) weakSelf = self;
    [self keNYLwaozmrC:url parameters:para success:nil failure:^(NSError *error) {
        NSLog(@"这里时方法中调用回调的block");
        
        if (weakSelf.kkMohviBYIVtrnEm) {
            weakSelf.kkMohviBYIVtrnEm(error);
        }
    }];
}


-(void)keNYLwaozmrC:(NSString *)url parameters:(NSDictionary *)para success:(kuevfLqnwkPI)successBlock failure:(kApwWSJ)errBlock {
    kbOZhoQJ(url);
    kbOZhoQJ(para);
    __weak typeof(self) weakSelf = self;
    [[DUuTWZnmQbKezC kuaDrosxkO]kMhtULydG:url parameters:para success:^(NSDictionary *responseData) {
        kbOZhoQJ(responseData);
        [weakSelf ketkHWVi:responseData];
    } error:^(NSError *error) {
        kbOZhoQJ(error.userInfo);
        if (errBlock) {
            errBlock(error);
        }
//        dispatch_async(dispatch_get_main_queue(), ^{
//            if (weakSelf.kkMohviBYIVtrnEm) {
//                weakSelf.kkMohviBYIVtrnEm(error);
//                [DUyUrAEagzMZ kmBSjbQ];
//                [DUyUrAEagzMZ kdSzeClsBhOtZIYxErrorMessage:@"网络异常!!!"];
//            }
//        });
    }];
}

- (void)ketkHWVi:(NSDictionary *)dict {
    NSAssert(dict, @"dict is null");
    
    if ([dict objectForKey:@"code"] == nil || [[dict objectForKey:@"code"] isKindOfClass:NSNull.class]) {
        self.ebTBquLMZ = 500;
    } else {
        self.ebTBquLMZ = [[dict objectForKey:@"code"]integerValue];
    }
    if ([dict objectForKey:@"msg"] == nil || [[dict objectForKey:@"msg"] isKindOfClass:NSNull.class]) {
        self.euwmDFU = @"";
    } else {
        self.euwmDFU = [dict objectForKey:@"msg"];
    }
    if ([dict objectForKey:@"success"] == nil || [[dict objectForKey:@"success"] isKindOfClass:NSNull.class]) {
        self.eQvpUsZHSail = NO;
    } else {
        self.eQvpUsZHSail = [[dict objectForKey:@"success"]boolValue];
    }
    if ([dict objectForKey:@"data"] == nil || [[dict objectForKey:@"data"] isKindOfClass:NSNull.class]) {
        self.eonVHhbeJYW = @"";
    } else {
        self.eonVHhbeJYW = [dict objectForKey:@"data"];
    }
    if (self.kurcxnG) {
        self.kurcxnG(self);
    }
}
@end
