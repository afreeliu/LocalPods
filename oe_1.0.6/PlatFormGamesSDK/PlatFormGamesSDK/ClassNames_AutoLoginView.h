

#import <UIKit/UIKit.h>

@interface ClassNames_AutoLoginView : UIView

+ (instancetype)methodNames_createAutoLoginView;

// 从其他登录页面中点击登录后，进入该页面进行登录操作
- (void)methodNames_loginAccount:(NSString *)account methodNames_password:(NSString *)password;

@property (nonatomic, readwrite, copy) void (^methodNames_cancelAutoLoginBlock)(void);

@property (nonatomic, readwrite, copy) void (^methodNames_autoLoginSuccess)(BOOL varNames_isNeedBindPhone, BOOL varNames_isNeedBindPersonID);

@property (nonatomic, readwrite, copy) void (^methodNames_autoLoginFailure)(void);

@end
