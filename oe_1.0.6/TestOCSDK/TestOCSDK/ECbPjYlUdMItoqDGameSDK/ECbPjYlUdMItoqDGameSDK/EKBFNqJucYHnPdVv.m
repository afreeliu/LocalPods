

#import "EKBFNqJucYHnPdVv.h"
#import "EVeCMJSKvcI.h"
#import "EVvHIbURFMx.h"

#import "EfKgqPeJzFs.h"
#import "EqSwBQKHajgrn.h"
#import "EGuXiaQqj.h"
#import "EIcBiraynuDe.h"

#import "EUpQnPOJm.h"

@interface EKBFNqJucYHnPdVv ()


@property (nonatomic, readwrite, strong) EIcBiraynuDe *eTMgDdVktQlJ;

@end



@implementation EKBFNqJucYHnPdVv


+(instancetype)nbrzxRu{
    static EKBFNqJucYHnPdVv *ewNpULZcCMQSb = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        ewNpULZcCMQSb = [[EKBFNqJucYHnPdVv alloc] init];
    });
    return ewNpULZcCMQSb;
}
-(void)nySwchOUVMfLdm:(EKVxZBzDYHpvktT *)info{
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [EGuXiaQqj nJVrDAcpuRWTMdbLIndicatorWithTitlte:@"充值中..."];
    });
    NSSet *product = [[NSSet alloc] initWithObjects:info.evWfJdcbepXHUiw, nil];
    __weak typeof(self) weakSelf = self;
    [[EVeCMJSKvcI defaultStore] requestProducts:product success:^(NSArray *products, NSArray *invalidProductIdentifiers) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [EGuXiaQqj nPjHvlQfar];
        });
        
        [[EVeCMJSKvcI defaultStore] addPayment:info.evWfJdcbepXHUiw user:info.ePorRTdaqNjEzyH success:^(SKPaymentTransaction *transaction) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [EGuXiaQqj nPjHvlQfar];
            });
            [weakSelf nvduznY:[transaction.transactionReceipt base64Encoding] withInfo:info];
            
        } failure:^(SKPaymentTransaction *transaction, NSError *error) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [EGuXiaQqj nPjHvlQfar];
            });
            [weakSelf nsNTRQq:NO andWith:@{} andWithMessage:error.localizedDescription];
        }];
        
        
    } failure:^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [EGuXiaQqj nPjHvlQfar];
        });
        [weakSelf nsNTRQq:NO andWith:@{} andWithMessage:error.localizedDescription];
    }];
}

-(void)nvduznY:(NSString*)transaction withInfo:(EKVxZBzDYHpvktT*)info{
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [EGuXiaQqj nJVrDAcpuRWTMdbLIndicatorWithTitlte:@"验证订单信息..."];
    });
    NSDictionary *dict = @{@"order_code":info.ePorRTdaqNjEzyH,@"RealMoney":info.eHGWhiUud,@"apple_receipt":transaction};
    
    [EVvHIbURFMx nUnPMDldL:info.ePorRTdaqNjEzyH WithTransaction:dict];
    __weak typeof(self) weakSelf = self;
    [self.eTMgDdVktQlJ nEaYmCfWwKqMTo:nWtOzIfFcAwRb() parameters:dict];
    self.eTMgDdVktQlJ.nroGdOFnthEjA = ^(EIcBiraynuDe *object) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [EGuXiaQqj nPjHvlQfar];
            if (object.erRfJDXKwhBGTxHn == 200) {
                [EVvHIbURFMx nbMlwFA:[object.eaJCgzTrU objectForKey:@"order_no"] WithisAll:NO];
                [weakSelf nsNTRQq:YES andWith:object.eaJCgzTrU andWithMessage:@"支付成功"];
            } else {
                [weakSelf nsNTRQq:NO andWith:@{} andWithMessage:object.eAmjYwM];
                if (object.eAmjYwM) {
                    
                }
            }
        });
    };
    self.eTMgDdVktQlJ.nNhPrOJC = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [EGuXiaQqj nPjHvlQfar];
        });
    };
}

-(void)nsNTRQq:(BOOL)isSuccess andWith:(NSDictionary*)info andWithMessage:(NSString*)msg{
    NSMutableDictionary *eBjtNogrCHLAe = [NSMutableDictionary dictionary];
    [eBjtNogrCHLAe setValue:[NSNumber numberWithBool:isSuccess] forKey:@"isResult"];
    if (info && [info count]) {
        [eBjtNogrCHLAe setValue:info forKey:@"info"];
        dispatch_async(dispatch_get_main_queue(), ^{
            [EGuXiaQqj nPjHvlQfar];
            [EGuXiaQqj nJVrDAcpuRWTMdbLSuccessMessage:msg];
        });
    }else{
        [eBjtNogrCHLAe setValue:msg forKey:@"msg"];
        dispatch_async(dispatch_get_main_queue(), ^{
            [EGuXiaQqj nPjHvlQfar];
            [EGuXiaQqj nHgTIahEeoP:msg];
        });
    }
    nQPXLfIKevpyzFVH(epGsFMhzEfQ, @"iapMain", eBjtNogrCHLAe);
}

// 获取当前VC
- (UIViewController *)getCurrentVC {
    UIViewController *result = nil;
    
    UIWindow * window = [[UIApplication sharedApplication] keyWindow];
    if (window.windowLevel != UIWindowLevelNormal) {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(UIWindow * tmpWin in windows) {
            if (tmpWin.windowLevel == UIWindowLevelNormal) {
                window = tmpWin;
                break;
            }
        }
    }
    
    UIView *frontView = [[window subviews] objectAtIndex:0];
    id nextResponder = [frontView nextResponder];
    
    if ([nextResponder isKindOfClass:[UIViewController class]])
        result = nextResponder;
    else
        result = window.rootViewController;
    
    return result;
}

- (UIViewController*)nAGolrPZOEpwMg{
    UIWindow *etXpuKkcjZHGSEWindow = [UIApplication sharedApplication].keyWindow;
    UIViewController *eKFzRvLtZeWxaJr = etXpuKkcjZHGSEWindow.rootViewController;
    return eKFzRvLtZeWxaJr;
}


-(EIcBiraynuDe *)eTMgDdVktQlJ {
    if (!_eTMgDdVktQlJ) {
        _eTMgDdVktQlJ = [[EIcBiraynuDe alloc]init];
    }
    return _eTMgDdVktQlJ;
}

@end
