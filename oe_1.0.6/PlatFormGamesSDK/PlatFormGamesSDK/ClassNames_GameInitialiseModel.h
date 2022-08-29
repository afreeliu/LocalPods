

#import "ClassNames_BaseModel.h"

@interface ClassNames_GameInitialiseModel : ClassNames_BaseModel

/*
@property (nonatomic, readonly, copy) NSString *varNames_channel_id;
@property (nonatomic, readonly, copy) NSString *varNames_format;
@property (nonatomic, readonly, copy) NSString *varNames_game_ver;
@property (nonatomic, readonly, copy) NSString *varNames_gid;
@property (nonatomic, readonly, copy) NSString *varNames_is_ball;
@property (nonatomic, readonly, copy) NSString *varNames_is_protocol;
@property (nonatomic, readonly, copy) NSString *varNames_lang;
@property (nonatomic, readonly, copy) NSString *varNames_set_url;
@property (nonatomic, readonly, copy) NSString *varNames_sub_gid;
@property (nonatomic, readonly, copy) NSString *varNames_switch_1login;
@property (nonatomic, readonly, copy) NSString *varNames_switch_appleCheck;
@property (nonatomic, readonly, copy) NSString *varNames_switch_bind;
@property (nonatomic, readonly, copy) NSString *varNames_switch_password;
@property (nonatomic, readonly, copy) NSString *varNames_url;

 */
 
//"pay_notify_url": "",    // 支付回调地址
@property (nonatomic, readonly, copy) NSString *varNames_pay_notify_url;
//        "h5_url": "h5game_url",
@property (nonatomic, readonly, copy) NSString *varNames_h5_url;
//        "quick_login": 1,   // 是否开启快速登陆 1 为关闭 ， 2 为开启,
@property (nonatomic, readonly, copy) NSString *varNames_quick_login;
//        "bind_phone": 1,    // 是否绑定手机号 1 为关闭 ， 2 为开启,
@property (nonatomic, readonly, copy) NSString *varNames_bind_phone;
//        "bind_idcard": 1,   // 是否实名制 1 为关闭 ， 2 为开启,
@property (nonatomic, readonly, copy) NSString *varNames_bind_idcard;
//        "apple_check": "",  // 苹果校验
@property (nonatomic, readonly, copy) NSString *varNames_apple_check;
//        "is_vertical": 1,   // 版式  1:横版 2：竖版,
@property (nonatomic, readonly, copy) NSString *varNames_is_vertical;
//        "layout": 1,        // 网页自动适配 1 自适应 2 手动适配，如水滴屏 、 刘海屏 这种
@property (nonatomic, readonly, copy) NSString *varNames_layout;
//        "show_init": 1,     // 1 为关闭 ， 2 为开启,
@property (nonatomic, readonly, copy) NSString *varNames_show_init;
//        "soft_ball": 1,      // 悬浮球 1 为关闭 ， 2 为开启,
@property (nonatomic, readonly, copy) NSString *varNames_soft_ball;
//        "lang": "",          // 语言，国外使用
@property (nonatomic, readonly, copy) NSString *varNames_lang;
//        "follow_wechat_url":"", //公众号关注二维码图片地址
@property (nonatomic, readonly, copy) NSString *varNames_follow_wechat_url;
//        "qqId": "", //QQ客服Q号
@property (nonatomic, readonly, copy) NSString *varNames_qqId;
//        "wxId": "", //微信客服微信号
@property (nonatomic, readonly, copy) NSString *varNames_wxId;
//        "mpId": "", //公众号账号ID
@property (nonatomic, readonly, copy) NSString *varNames_mpId;
//        "mpName": "", //公众号名字
@property (nonatomic, readonly, copy) NSString *varNames_mpName;
//        "can_reg": "1", //注册限制：1允许注册；2禁止注册
@property (nonatomic, readonly, copy) NSString *varNames_can_reg;
// 公告
@property (nonatomic, readonly, copy) NSDictionary *varNames_notice;


@end
