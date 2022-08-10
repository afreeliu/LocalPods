

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClassNames_UserCenterView : UIView

+ (instancetype)methodNames_createUserCenterView;
// 关闭页面
@property (nonatomic, readwrite, copy) void (^methodNames_closeBlock)(void);
// 密码修改
@property (nonatomic, readwrite, copy) void(^methodNames_resetPassword)(void);
// 手机验证
@property (nonatomic, readwrite, copy) void(^methodNames_bindPhone)(void);
// 实名验证
@property (nonatomic, readwrite, copy) void(^methodNames_bindPersonID)(void);
// 退出登录
@property (nonatomic, readwrite, copy) void(^methodNames_logout)(void);


@end

NS_ASSUME_NONNULL_END
