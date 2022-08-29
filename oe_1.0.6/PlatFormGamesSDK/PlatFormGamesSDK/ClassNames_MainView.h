

#import <UIKit/UIKit.h>




@interface ClassNames_MainView : UIView

+ (instancetype)methodNames_showMainView;

+ (void)methodNames_cleanView;

+ (instancetype)methodNames_instanceMainView;
// 显示自动登录页面
- (void)methodNames_showAutoLoginView;
// 显示手机号登录页
- (void)methodNames_showPhoneLoginView;
// 显示账号登录页
- (void)methodNames_showLoginView;
// 显示账号注册页
- (void)methodNames_showRegisterView;


// 显示用户中心页
- (void)methodNames_showUserCenterView;
// 显示悬浮球中的客服
- (void)methodNames_showDetailCustomerView;
// 礼包中心
- (void)methodNames_showCustomerGiftView;

- (void)methodNames_showPayView;

- (void)methodNames_showNoticeViewWithTitle:(NSString *)title methodNames_content:(NSString *)content;

@end
