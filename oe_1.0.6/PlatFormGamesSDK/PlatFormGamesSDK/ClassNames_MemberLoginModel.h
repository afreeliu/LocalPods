

#import "ClassNames_BaseModel.h"

@interface ClassNames_MemberLoginModel : ClassNames_BaseModel


@property (nonatomic, readonly, copy) NSString *varNames_isbindPhone; // 2 表示绑定(即需要显示绑定页面)，1 为不绑定(不需要显示绑定页面)
@property (nonatomic, readonly, copy) NSString *varNames_isBindCard; // 2 表示绑定(即需要显示绑定页面)，1 为不绑定(不需要显示绑定页面)
@property (nonatomic, readonly, copy) NSString *varNames_username;  // 如果是手机登录的用户，该值为手机号
@property (nonatomic, readonly, copy) NSString *varNames_uid;


@property (nonatomic, readonly, copy) NSString *varNames_realName;
@property (nonatomic, readonly, copy) NSString *varNames_carId;

@property (nonatomic, readonly, copy) NSString *varNames_password; // 手机号登录的会返回密码
@property (nonatomic, readonly, copy) NSString *varNames_token;// 只有在 acctreg/2 的情况下返回




@end
