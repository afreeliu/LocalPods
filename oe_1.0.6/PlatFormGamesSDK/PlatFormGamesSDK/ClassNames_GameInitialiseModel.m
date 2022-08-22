

#import "ClassNames_GameInitialiseModel.h"

@interface ClassNames_GameInitialiseModel ()

/*
@property (nonatomic, readwrite, copy) NSString *varNames_channel_id;
@property (nonatomic, readwrite, copy) NSString *varNames_format;
@property (nonatomic, readwrite, copy) NSString *varNames_game_ver;
@property (nonatomic, readwrite, copy) NSString *varNames_gid;
@property (nonatomic, readwrite, copy) NSString *varNames_is_ball;
@property (nonatomic, readwrite, copy) NSString *varNames_is_protocol;
@property (nonatomic, readwrite, copy) NSString *varNames_lang;
@property (nonatomic, readwrite, copy) NSString *varNames_set_url;
@property (nonatomic, readwrite, copy) NSString *varNames_sub_gid;
@property (nonatomic, readwrite, copy) NSString *varNames_switch_1login;
@property (nonatomic, readwrite, copy) NSString *varNames_switch_appleCheck;
@property (nonatomic, readwrite, copy) NSString *varNames_switch_bind;
@property (nonatomic, readwrite, copy) NSString *varNames_switch_password;
@property (nonatomic, readwrite, copy) NSString *varNames_url;

*/
//"pay_notify_url": "",    // 支付回调地址
@property (nonatomic, readwrite, copy) NSString *varNames_pay_notify_url;
//        "h5_url": "h5game_url",
@property (nonatomic, readwrite, copy) NSString *varNames_h5_url;
//        "quick_login": 1,   // 是否开启快速登陆 1 为关闭 ， 2 为开启,
@property (nonatomic, readwrite, copy) NSString *varNames_quick_login;
//        "bind_phone": 1,    // 是否绑定手机号 1 为关闭 ， 2 为开启,
@property (nonatomic, readwrite, copy) NSString *varNames_bind_phone;
//        "bind_idcard": 1,   // 是否实名制 1 为关闭 ， 2 为开启,
@property (nonatomic, readwrite, copy) NSString *varNames_bind_idcard;
//        "apple_check": "",  // 苹果校验
@property (nonatomic, readwrite, copy) NSString *varNames_apple_check;
//        "is_vertical": 1,   // 版式  1:横版 2：竖版,
@property (nonatomic, readwrite, copy) NSString *varNames_is_vertical;
//        "layout": 1,        // 网页自动适配 1 自适应 2 手动适配，如水滴屏 、 刘海屏 这种
@property (nonatomic, readwrite, copy) NSString *varNames_layout;
//        "show_init": 1,     // 1 为关闭 ， 2 为开启,
@property (nonatomic, readwrite, copy) NSString *varNames_show_init;
//        "soft_ball": 1,      // 悬浮球 1 为关闭 ， 2 为开启,
@property (nonatomic, readwrite, copy) NSString *varNames_soft_ball;
//        "lang": "",          // 语言，国外使用
@property (nonatomic, readwrite, copy) NSString *varNames_lang;
//        "follow_wechat_url":"", //公众号关注二维码图片地址
@property (nonatomic, readwrite, copy) NSString *varNames_follow_wechat_url;
//        "qqId": "", //QQ客服Q号
@property (nonatomic, readwrite, copy) NSString *varNames_qqId;
//        "wxId": "", //微信客服微信号
@property (nonatomic, readwrite, copy) NSString *varNames_wxId;
//        "mpId": "", //公众号账号ID
@property (nonatomic, readwrite, copy) NSString *varNames_mpId;
//        "mpName": "", //公众号名字
@property (nonatomic, readwrite, copy) NSString *varNames_mpName;
//        "can_reg": "1", //注册限制：1允许注册；2禁止注册
@property (nonatomic, readwrite, copy) NSString *varNames_can_reg;



@end

@implementation ClassNames_GameInitialiseModel

- (void)methodNames_fetchDataWithURL:(NSString *)url parameters:(NSDictionary *)para success:(methodNames_voidSuccessBlock)successBlock failure:(methodNames_voidErrorBlock)errBlock {
    __weak typeof(self) weakSelf = self;
    [[ClassNames_URLSessionManager methodNames_shareSessionManager]methodNames_requestWithUrl:url parameters:para success:^(NSDictionary *responseData) {
        [weakSelf methodNames_modelWithDict:responseData];
        if (successBlock) {
            successBlock(responseData);
        }
    } error:^(NSError *error) {
        if (errBlock) {
            errBlock(error);
        }
    }];
}

-(void)methodNames_modelWithDict:(NSDictionary *)dict {
    methodNames_debugLog(dict);
    if ([[dict objectForKey:@"data"] isKindOfClass:NSDictionary.class]) {
        NSDictionary *varNames_tmpDic = [dict objectForKey:@"data"];
        
        /*
        if ([varNames_tmpDic objectForKey:@"channel_id"] == nil || [[varNames_tmpDic objectForKey:@"channel_id"] isKindOfClass:NSNull.class]) {
            self.varNames_channel_id = @"";
        } else {
            self.varNames_channel_id = [varNames_tmpDic objectForKey:@"channel_id"];
        }
        if ([varNames_tmpDic objectForKey:@"format"] == nil || [[varNames_tmpDic objectForKey:@"format"] isKindOfClass:NSNull.class]) {
            self.varNames_format = @"";
        } else {
            self.varNames_format = [varNames_tmpDic objectForKey:@"format"];
        }
        if ([varNames_tmpDic objectForKey:@"game_ver"] == nil || [[varNames_tmpDic objectForKey:@"game_ver"] isKindOfClass:NSNull.class]) {
            self.varNames_game_ver = @"";
        } else {
            self.varNames_game_ver = [varNames_tmpDic objectForKey:@"game_ver"];
        }
        if ([varNames_tmpDic objectForKey:@"gid"] == nil || [[varNames_tmpDic objectForKey:@"gid"] isKindOfClass:NSNull.class]) {
            self.varNames_gid = @"";
        } else {
            self.varNames_gid = [varNames_tmpDic objectForKey:@"gid"];
        }
        if ([varNames_tmpDic objectForKey:@"is_ball"] == nil || [[varNames_tmpDic objectForKey:@"is_ball"] isKindOfClass:NSNull.class]) {
            self.varNames_is_ball = @"";
        } else {
            self.varNames_is_ball = [varNames_tmpDic objectForKey:@"is_ball"];
        }
        if ([varNames_tmpDic objectForKey:@"is_protocol"] == nil || [[varNames_tmpDic objectForKey:@"is_protocol"] isKindOfClass:NSNull.class]) {
            self.varNames_is_protocol = @"";
        } else {
            self.varNames_is_protocol = [varNames_tmpDic objectForKey:@"is_protocol"];
        }
        if ([varNames_tmpDic objectForKey:@"lang"] == nil || [[varNames_tmpDic objectForKey:@"lang"] isKindOfClass:NSNull.class]) {
            self.varNames_lang = @"";
        } else {
            self.varNames_lang = [varNames_tmpDic objectForKey:@"lang"];
        }
        if ([varNames_tmpDic objectForKey:@"set_url"] == nil || [[varNames_tmpDic objectForKey:@"set_url"] isKindOfClass:NSNull.class]) {
            self.varNames_set_url = @"";
        } else {
            self.varNames_set_url = [varNames_tmpDic objectForKey:@"set_url"];
        }
        if ([varNames_tmpDic objectForKey:@"sub_gid"] == nil || [[varNames_tmpDic objectForKey:@"sub_gid"] isKindOfClass:NSNull.class]) {
            self.varNames_sub_gid = @"";
        } else {
            self.varNames_sub_gid = [varNames_tmpDic objectForKey:@"sub_gid"];
        }
        if ([varNames_tmpDic objectForKey:@"switch_1login"] == nil || [[varNames_tmpDic objectForKey:@"switch_1login"] isKindOfClass:NSNull.class]) {
            self.varNames_switch_1login = @"";
        } else {
            self.varNames_switch_1login = [varNames_tmpDic objectForKey:@"switch_1login"];
        }
        if ([varNames_tmpDic objectForKey:@"switch_appleCheck"] == nil || [[varNames_tmpDic objectForKey:@"switch_appleCheck"] isKindOfClass:NSNull.class]) {
            self.varNames_switch_appleCheck = @"";
        } else {
            self.varNames_switch_appleCheck = [varNames_tmpDic objectForKey:@"switch_appleCheck"];
        }
        if ([varNames_tmpDic objectForKey:@"switch_bind"] == nil || [[varNames_tmpDic objectForKey:@"switch_bind"] isKindOfClass:NSNull.class]) {
            self.varNames_switch_bind = @"";
        } else {
            self.varNames_switch_bind = [varNames_tmpDic objectForKey:@"switch_bind"];
        }
        if ([varNames_tmpDic objectForKey:@"switch_password"] == nil || [[varNames_tmpDic objectForKey:@"switch_password"] isKindOfClass:NSNull.class]) {
            self.varNames_switch_password = @"";
        } else {
            self.varNames_switch_password = [varNames_tmpDic objectForKey:@"switch_password"];
        }
        if ([varNames_tmpDic objectForKey:@"url"] == nil || [[varNames_tmpDic objectForKey:@"url"] isKindOfClass:NSNull.class]) {
            self.varNames_url = @"";
        } else {
            self.varNames_url = [varNames_tmpDic objectForKey:@"url"];
        }
        
        */
        
        
        if ([varNames_tmpDic objectForKey:@"pay_notify_url"] == nil || [[varNames_tmpDic objectForKey:@"pay_notify_url"] isKindOfClass:NSNull.class]) {
            self.varNames_pay_notify_url = @"";
        } else {
            self.varNames_pay_notify_url = [varNames_tmpDic objectForKey:@"pay_notify_url"];
        }
        if ([varNames_tmpDic objectForKey:@"h5_url"] == nil || [[varNames_tmpDic objectForKey:@"h5_url"] isKindOfClass:NSNull.class]) {
            self.varNames_h5_url = @"";
        } else {
            self.varNames_h5_url = [varNames_tmpDic objectForKey:@"h5_url"];
        }
        if ([varNames_tmpDic objectForKey:@"quick_login"] == nil || [[varNames_tmpDic objectForKey:@"quick_login"] isKindOfClass:NSNull.class]) {
            self.varNames_quick_login = @"";
        } else {
            self.varNames_quick_login = [varNames_tmpDic objectForKey:@"quick_login"];
        }
        if ([varNames_tmpDic objectForKey:@"bind_phone"] == nil || [[varNames_tmpDic objectForKey:@"bind_phone"] isKindOfClass:NSNull.class]) {
            self.varNames_bind_phone = @"";
        } else {
            self.varNames_bind_phone = [varNames_tmpDic objectForKey:@"bind_phone"];
        }
        if ([varNames_tmpDic objectForKey:@"bind_idcard"] == nil || [[varNames_tmpDic objectForKey:@"bind_idcard"] isKindOfClass:NSNull.class]) {
            self.varNames_bind_idcard = @"";
        } else {
            self.varNames_bind_idcard = [varNames_tmpDic objectForKey:@"bind_idcard"];
        }
        if ([varNames_tmpDic objectForKey:@"apple_check"] == nil || [[varNames_tmpDic objectForKey:@"apple_check"] isKindOfClass:NSNull.class]) {
            self.varNames_apple_check = @"";
        } else {
            self.varNames_apple_check = [varNames_tmpDic objectForKey:@"apple_check"];
        }
        if ([varNames_tmpDic objectForKey:@"is_vertical"] == nil || [[varNames_tmpDic objectForKey:@"is_vertical"] isKindOfClass:NSNull.class]) {
            self.varNames_is_vertical = @"";
        } else {
            self.varNames_is_vertical = [varNames_tmpDic objectForKey:@"is_vertical"];
        }
        if ([varNames_tmpDic objectForKey:@"layout"] == nil || [[varNames_tmpDic objectForKey:@"layout"] isKindOfClass:NSNull.class]) {
            self.varNames_layout = @"";
        } else {
            self.varNames_layout = [varNames_tmpDic objectForKey:@"layout"];
        }
        if ([varNames_tmpDic objectForKey:@"show_init"] == nil || [[varNames_tmpDic objectForKey:@"show_init"] isKindOfClass:NSNull.class]) {
            self.varNames_show_init = @"";
        } else {
            self.varNames_show_init = [varNames_tmpDic objectForKey:@"show_init"];
        }
        if ([varNames_tmpDic objectForKey:@"soft_ball"] == nil || [[varNames_tmpDic objectForKey:@"soft_ball"] isKindOfClass:NSNull.class]) {
            self.varNames_soft_ball = @"";
        } else {
            self.varNames_soft_ball = [varNames_tmpDic objectForKey:@"soft_ball"];
        }
        if ([varNames_tmpDic objectForKey:@"lang"] == nil || [[varNames_tmpDic objectForKey:@"lang"] isKindOfClass:NSNull.class]) {
            self.varNames_lang = @"";
        } else {
            self.varNames_lang = [varNames_tmpDic objectForKey:@"lang"];
        }
        if ([varNames_tmpDic objectForKey:@"follow_wechat_url"] == nil || [[varNames_tmpDic objectForKey:@"follow_wechat_url"] isKindOfClass:NSNull.class]) {
            self.varNames_follow_wechat_url = @"";
        } else {
            self.varNames_follow_wechat_url = [varNames_tmpDic objectForKey:@"follow_wechat_url"];
        }
        if ([varNames_tmpDic objectForKey:@"qqId"] == nil || [[varNames_tmpDic objectForKey:@"qqId"] isKindOfClass:NSNull.class]) {
            self.varNames_qqId = @"";
        } else {
            self.varNames_qqId = [varNames_tmpDic objectForKey:@"qqId"];
        }
        if ([varNames_tmpDic objectForKey:@"wxId"] == nil || [[varNames_tmpDic objectForKey:@"wxId"] isKindOfClass:NSNull.class]) {
            self.varNames_wxId = @"";
        } else {
            self.varNames_wxId = [varNames_tmpDic objectForKey:@"wxId"];
        }
        if ([varNames_tmpDic objectForKey:@"mpId"] == nil || [[varNames_tmpDic objectForKey:@"mpId"] isKindOfClass:NSNull.class]) {
            self.varNames_mpId = @"";
        } else {
            self.varNames_mpId = [varNames_tmpDic objectForKey:@"mpId"];
        }
        if ([varNames_tmpDic objectForKey:@"mpName"] == nil || [[varNames_tmpDic objectForKey:@"mpName"] isKindOfClass:NSNull.class]) {
            self.varNames_mpName = @"";
        } else {
            self.varNames_mpName = [varNames_tmpDic objectForKey:@"mpName"];
        }
        if ([varNames_tmpDic objectForKey:@"can_reg"] == nil || [[varNames_tmpDic objectForKey:@"can_reg"] isKindOfClass:NSNull.class]) {
            self.varNames_can_reg = @"";
        } else {
            self.varNames_can_reg = [varNames_tmpDic objectForKey:@"can_reg"];
        }
        
        
        
        
        
        
        
        
        
        
    }
    [super methodNames_modelWithDict:dict];
}


@end
