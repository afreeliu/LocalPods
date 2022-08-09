

#import "EIcBiraynuDe.h"

@interface EIcBiraynuDe ()

@property (nonatomic, readwrite, assign) NSInteger erRfJDXKwhBGTxHn;
@property (nonatomic, readwrite, copy) NSString *eAmjYwM;
@property (nonatomic, readwrite, assign) BOOL enDlbekI;
@property (nonatomic, readwrite, strong) id eaJCgzTrU;

@end


@implementation EIcBiraynuDe
- (void)nEaYmCfWwKqMTo:(NSString *)url parameters:(NSDictionary *)para {
    __weak typeof(self) weakSelf = self;
    [self nKSlFiCRmZGBwIqc:url parameters:para success:nil failure:^(NSError *error) {
        NSLog(@"这里时方法中调用回调的block");
        
        if (weakSelf.nNhPrOJC) {
            weakSelf.nNhPrOJC(error);
        }
    }];
}


-(void)nKSlFiCRmZGBwIqc:(NSString *)url parameters:(NSDictionary *)para success:(nDliSuCqFmkVvQ)successBlock failure:(nsuGTXbhFtZ)errBlock {
    nhdDGpskXLRwrS(url);
    nhdDGpskXLRwrS(para);
    __weak typeof(self) weakSelf = self;
    [[EDnreIzBT nlcOitbFD]nHpwfPXDElVioQv:url parameters:para success:^(NSDictionary *responseData) {
        nhdDGpskXLRwrS(responseData);
        [weakSelf nBKdrTomXLJQV:responseData];
    } error:^(NSError *error) {
        nhdDGpskXLRwrS(error.userInfo);
        if (errBlock) {
            errBlock(error);
        }
//        dispatch_async(dispatch_get_main_queue(), ^{
//            if (weakSelf.nNhPrOJC) {
//                weakSelf.nNhPrOJC(error);
//                [EGuXiaQqj nPjHvlQfar];
//                [EGuXiaQqj nHgTIahEeoP:@"网络异常!!!"];
//            }
//        });
    }];
}

- (void)nBKdrTomXLJQV:(NSDictionary *)dict {
    NSAssert(dict, @"dict is null");
    
    if ([dict objectForKey:@"code"] == nil || [[dict objectForKey:@"code"] isKindOfClass:NSNull.class]) {
        self.erRfJDXKwhBGTxHn = 500;
    } else {
        self.erRfJDXKwhBGTxHn = [[dict objectForKey:@"code"]integerValue];
    }
    if ([dict objectForKey:@"msg"] == nil || [[dict objectForKey:@"msg"] isKindOfClass:NSNull.class]) {
        self.eAmjYwM = @"";
    } else {
        self.eAmjYwM = [dict objectForKey:@"msg"];
    }
    if ([dict objectForKey:@"success"] == nil || [[dict objectForKey:@"success"] isKindOfClass:NSNull.class]) {
        self.enDlbekI = NO;
    } else {
        self.enDlbekI = [[dict objectForKey:@"success"]boolValue];
    }
    if ([dict objectForKey:@"data"] == nil || [[dict objectForKey:@"data"] isKindOfClass:NSNull.class]) {
        self.eaJCgzTrU = @"";
    } else {
        self.eaJCgzTrU = [dict objectForKey:@"data"];
    }
    if (self.nroGdOFnthEjA) {
        self.nroGdOFnthEjA(self);
    }
}
@end
