

#import "DURGvtkixp.h"
#import "DUjDbacgMfiohnASY.h"
#import "DUBtxLrgqdlHN.h"

#import "DUGcbRnKpJlPkyoY.h"
#import "DUuTyFUQsovhq.h"
#import "DUyUrAEagzMZ.h"
#import "DUjmZRSlJeTuw.h"

#import "DUmZjChQNHcbXvD.h"

@interface DURGvtkixp ()


@property (nonatomic, readwrite, strong) DUjmZRSlJeTuw *euaZebqEoDdIn;

@end



@implementation DURGvtkixp


+(instancetype)kULvlpbE{
    static DURGvtkixp *eDIvkVoY = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        eDIvkVoY = [[DURGvtkixp alloc] init];
    });
    return eDIvkVoY;
}
-(void)kcFRimaHVxwWKUXD:(DUBUucLDItTQF *)info{
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [DUyUrAEagzMZ kdSzeClsBhOtZIYxIndicatorWithTitlte:@"充值中..."];
    });
    NSSet *product = [[NSSet alloc] initWithObjects:info.eXZIHhGce, nil];
    __weak typeof(self) weakSelf = self;
    [[DUjDbacgMfiohnASY defaultStore] requestProducts:product success:^(NSArray *products, NSArray *invalidProductIdentifiers) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [DUyUrAEagzMZ kmBSjbQ];
        });
        
        [[DUjDbacgMfiohnASY defaultStore] addPayment:info.eXZIHhGce user:info.eynCKRtLQIOSj success:^(SKPaymentTransaction *transaction) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [DUyUrAEagzMZ kmBSjbQ];
            });
            [weakSelf kyODCzEgZYVUb:[transaction.transactionReceipt base64Encoding] withInfo:info];
            
        } failure:^(SKPaymentTransaction *transaction, NSError *error) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [DUyUrAEagzMZ kmBSjbQ];
            });
            [weakSelf klHBkFaWLPMdwXOo:NO andWith:@{} andWithMessage:error.localizedDescription];
        }];
        
        
    } failure:^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [DUyUrAEagzMZ kmBSjbQ];
        });
        [weakSelf klHBkFaWLPMdwXOo:NO andWith:@{} andWithMessage:error.localizedDescription];
    }];
}

-(void)kyODCzEgZYVUb:(NSString*)transaction withInfo:(DUBUucLDItTQF*)info{
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [DUyUrAEagzMZ kdSzeClsBhOtZIYxIndicatorWithTitlte:@"验证订单信息..."];
    });
    NSDictionary *dict = @{@"order_code":info.eynCKRtLQIOSj,@"RealMoney":info.eltoPruFHT,@"apple_receipt":transaction};
    
    [DUBtxLrgqdlHN kOBZrLKAIVvt:info.eynCKRtLQIOSj WithTransaction:dict];
    __weak typeof(self) weakSelf = self;
    [self.euaZebqEoDdIn kXLPOEpCBozkZM:keJrPmBsviASyH() parameters:dict];
    self.euaZebqEoDdIn.kurcxnG = ^(DUjmZRSlJeTuw *object) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [DUyUrAEagzMZ kmBSjbQ];
            if (object.ebTBquLMZ == 200) {
                [DUBtxLrgqdlHN kvUXMBVANhpKti:[object.eonVHhbeJYW objectForKey:@"order_no"] WithisAll:NO];
                [weakSelf klHBkFaWLPMdwXOo:YES andWith:object.eonVHhbeJYW andWithMessage:@"支付成功"];
            } else {
                [weakSelf klHBkFaWLPMdwXOo:NO andWith:@{} andWithMessage:object.euwmDFU];
                if (object.euwmDFU) {
                    
                }
            }
        });
    };
    self.euaZebqEoDdIn.kkMohviBYIVtrnEm = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [DUyUrAEagzMZ kmBSjbQ];
        });
    };
}

-(void)klHBkFaWLPMdwXOo:(BOOL)isSuccess andWith:(NSDictionary*)info andWithMessage:(NSString*)msg{
    NSMutableDictionary *eUDhGYlrqjSAi = [NSMutableDictionary dictionary];
    [eUDhGYlrqjSAi setValue:[NSNumber numberWithBool:isSuccess] forKey:@"isResult"];
    if (info && [info count]) {
        [eUDhGYlrqjSAi setValue:info forKey:@"info"];
        dispatch_async(dispatch_get_main_queue(), ^{
            [DUyUrAEagzMZ kmBSjbQ];
            [DUyUrAEagzMZ kqSsTXv:msg];
        });
    }else{
        [eUDhGYlrqjSAi setValue:msg forKey:@"msg"];
        dispatch_async(dispatch_get_main_queue(), ^{
            [DUyUrAEagzMZ kmBSjbQ];
            [DUyUrAEagzMZ kdSzeClsBhOtZIYxErrorMessage:msg];
        });
    }
    kXQPAZNUwrm(evTjyASpkdREBHsI, @"iapMain", eUDhGYlrqjSAi);
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

- (UIViewController*)kFdPseV{
    UIWindow *eHDrmSv = [UIApplication sharedApplication].keyWindow;
    UIViewController *eFMGhtlOesowAC = eHDrmSv.rootViewController;
    return eFMGhtlOesowAC;
}


-(DUjmZRSlJeTuw *)euaZebqEoDdIn {
    if (!_euaZebqEoDdIn) {
        _euaZebqEoDdIn = [[DUjmZRSlJeTuw alloc]init];
    }
    return _euaZebqEoDdIn;
}

@end
