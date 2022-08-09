

#import "ClassName_IAPMain.h"
#import "ClassName_AppStore.h"
#import "ClassName_IAPRepair.h"

#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_URLSessionConfigure.h"
#import "ClassNames_PGHubView.h"
#import "ClassNames_BaseModel.h"

#import "ClassNames_NotificationConfigure.h"

@interface ClassName_IAPMain ()


@property (nonatomic, readwrite, strong) ClassNames_BaseModel *varNames_baseModel;

@end



@implementation ClassName_IAPMain


+(instancetype)methodNames_iapMainDefaults{
    static ClassName_IAPMain *varNames_iapMain = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        varNames_iapMain = [[ClassName_IAPMain alloc] init];
    });
    return varNames_iapMain;
}
-(void)methodNames_starBuy:(ClassName_IAPInfo *)info{
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [ClassNames_PGHubView methodNames_showIndicatorWithTitlte:@"充值中..."];
    });
    NSSet *product = [[NSSet alloc] initWithObjects:info.varNames_productID, nil];
    __weak typeof(self) weakSelf = self;
    [[ClassName_AppStore defaultStore] requestProducts:product success:^(NSArray *products, NSArray *invalidProductIdentifiers) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
        });
        
        [[ClassName_AppStore defaultStore] addPayment:info.varNames_productID user:info.varNames_orderID success:^(SKPaymentTransaction *transaction) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [ClassNames_PGHubView methodNames_hide];
            });
            [weakSelf methodNames_checkTransaction:[transaction.transactionReceipt base64Encoding] withInfo:info];
            
        } failure:^(SKPaymentTransaction *transaction, NSError *error) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [ClassNames_PGHubView methodNames_hide];
            });
            [weakSelf methodNames_iapPayResult:NO andWith:@{} andWithMessage:error.localizedDescription];
        }];
        
        
    } failure:^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
        });
        [weakSelf methodNames_iapPayResult:NO andWith:@{} andWithMessage:error.localizedDescription];
    }];
}

-(void)methodNames_checkTransaction:(NSString*)transaction withInfo:(ClassName_IAPInfo*)info{
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [ClassNames_PGHubView methodNames_showIndicatorWithTitlte:@"验证订单信息..."];
    });
    NSDictionary *dict = @{@"order_code":info.varNames_orderID,@"RealMoney":info.varNames_orderMoney,@"apple_receipt":transaction};
    
    [ClassName_IAPRepair methodNames_addOrderId:info.varNames_orderID WithTransaction:dict];
    __weak typeof(self) weakSelf = self;
    [self.varNames_baseModel methodNames_fetchDataWithdURL:methodNames_appstoreURL() parameters:dict];
    self.varNames_baseModel.methodNames_completeFetchData = ^(ClassNames_BaseModel *object) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            if (object.varNames_code == 200) {
                [ClassName_IAPRepair methodNames_removeOrderId:[object.varNames_data objectForKey:@"order_no"] WithisAll:NO];
                [weakSelf methodNames_iapPayResult:YES andWith:object.varNames_data andWithMessage:@"支付成功"];
            } else {
                [weakSelf methodNames_iapPayResult:NO andWith:@{} andWithMessage:object.varNames_msg];
                if (object.varNames_msg) {
                    
                }
            }
        });
    };
    self.varNames_baseModel.methodNames_FetchError = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
        });
    };
}

-(void)methodNames_iapPayResult:(BOOL)isSuccess andWith:(NSDictionary*)info andWithMessage:(NSString*)msg{
    NSMutableDictionary *varNames_muTableDict = [NSMutableDictionary dictionary];
    [varNames_muTableDict setValue:[NSNumber numberWithBool:isSuccess] forKey:@"isResult"];
    if (info && [info count]) {
        [varNames_muTableDict setValue:info forKey:@"info"];
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            [ClassNames_PGHubView methodNames_showSuccessMessage:msg];
        });
    }else{
        [varNames_muTableDict setValue:msg forKey:@"msg"];
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            [ClassNames_PGHubView methodNames_showErrorMessage:msg];
        });
    }
    methodNames_postNotification(varNames_IapPayResultNoti, @"iapMain", varNames_muTableDict);
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

- (UIViewController*)methodNames_getRootView{
    UIWindow *varNames_keyWindow = [UIApplication sharedApplication].keyWindow;
    UIViewController *varNames_rootViewController = varNames_keyWindow.rootViewController;
    return varNames_rootViewController;
}


-(ClassNames_BaseModel *)varNames_baseModel {
    if (!_varNames_baseModel) {
        _varNames_baseModel = [[ClassNames_BaseModel alloc]init];
    }
    return _varNames_baseModel;
}

@end
