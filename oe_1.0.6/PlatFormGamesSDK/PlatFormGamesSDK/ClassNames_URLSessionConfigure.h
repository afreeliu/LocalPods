

#import <Foundation/Foundation.h>
#import "ClassNames_loadFileManager.h"
FOUNDATION_EXTERN NSString *const varNames_requestConfigKey;
FOUNDATION_EXTERN NSString *const varNames_baseURL;
FOUNDATION_EXTERN NSString *const varNames_requestType_Post;
FOUNDATION_EXTERN NSString *const varNames_requestType_Get;
FOUNDATION_EXTERN NSUInteger const varNames_requestTimeOut;
FOUNDATION_EXTERN NSString *const varNames_requestConfiguration;
FOUNDATION_EXTERN NSString *const varNames_interFace;
FOUNDATION_EXTERN NSString *const varNames_type;
FOUNDATION_EXTERN NSString *const varNames_activate;
FOUNDATION_EXTERN NSString *const varNames_gameinitialise;
FOUNDATION_EXTERN NSString *const varNames_memberorder;
FOUNDATION_EXTERN NSString *const varNames_updateuserlogin;
FOUNDATION_EXTERN NSString *const varNames_memberole;
FOUNDATION_EXTERN NSString *const varNames_member;
FOUNDATION_EXTERN NSString *const varNames_updatepsw;
FOUNDATION_EXTERN NSString *const varNames_bindphone;
FOUNDATION_EXTERN NSString *const varNames_bindidcard;
FOUNDATION_EXTERN NSString *const varNames_backuserpsw;
FOUNDATION_EXTERN NSString *const varNames_phonetest;
FOUNDATION_EXTERN NSString *const varNames_verify;
FOUNDATION_EXTERN NSString *const varNames_appstore;

FOUNDATION_EXTERN NSString *const varNames_customqq;
FOUNDATION_EXTERN NSString *const varNames_walkthrough;

#pragma mark ---------- url文件的名称
FOUNDATION_EXTERN NSString *const varNames_urlNames;
#pragma mark ---------- url文件的类型
FOUNDATION_EXTERN NSString *const varNames_urlType;
#pragma mark ---------- 接口
/// 获取bundle中plist的requestConfig配置
static inline NSDictionary *methodNames_getRequestConfig() {
    NSString *varNames_tmpbundlePath = [[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:@"PlatFormGamesSDK.bundle"];
    NSBundle *varNames_tmpbundle = [NSBundle bundleWithPath:varNames_tmpbundlePath];
    NSString *varNames_tmppath = [varNames_tmpbundle pathForResource:@"PFGames" ofType:@"plist"];
    NSDictionary *varNames_tmpdic = [NSDictionary dictionaryWithContentsOfFile:varNames_tmppath];
    NSDictionary *varNames_tmprequestConfig = [varNames_tmpdic objectForKey:varNames_requestConfigKey];
    return varNames_tmprequestConfig;
}
/// 根据key 从 plist 中获取value
static inline NSString *methodNames_getRequestConfigValueForKey(NSString *key) {
    if ([varNames_urlType isEqualToString:@".txt"]) {
        return [[ClassNames_loadFileManager shareLoadFileManager]methodNames_initLoadTxtFile:varNames_urlNames subMethodNames_getValueFromKey:key];
    } else if ([varNames_urlType isEqualToString:@".strings"]) {
        return [[ClassNames_loadFileManager shareLoadFileManager]methodNames_initLoadStringsFile:varNames_urlNames subMethodNames_getValueFromKey:key];
    } else if ([varNames_urlType isEqualToString:@".csv"]) {
        return [[ClassNames_loadFileManager shareLoadFileManager]methodNames_initLoadCsvFile:varNames_urlNames subMethodNames_getValueFromKey:key];
    } else if ([varNames_urlType isEqualToString:@".xml"]) {
        __block NSString *varNames_tmpValue = @"";
        [[ClassNames_loadFileManager shareLoadFileManager]methodNames_initLoadXmlFile:varNames_urlNames subMethodNames_argKey:key subMethodNames_:^(NSString *varNames_argValue) {
            varNames_tmpValue = varNames_argValue;
        }];
        return varNames_tmpValue;
    } else if ([varNames_urlType isEqualToString:@".json"]) {
        return [[ClassNames_loadFileManager shareLoadFileManager]methodNames_initLoadJsonFile:varNames_urlNames subMethodNames_getValueFromKey:key];
    } else {
        return [[ClassNames_loadFileManager shareLoadFileManager]methodNames_initLoadPlistFile:varNames_urlNames subMethodNames_getValueFromKey:key];
    }
}



/// 协议 delegate
static inline NSString *methodNames_httpDelegate() {
    NSString *varNames_tmpdelegate = methodNames_getRequestConfigValueForKey(@"http");
    return varNames_tmpdelegate? : @"http";
}
/// ipAddress
static inline NSString *methodNames_ipAddress() {
    NSString *varNames_tmpipAddress = methodNames_getRequestConfigValueForKey(@"ip");
    return varNames_tmpipAddress ? : @"101.132.113.84";
}
/// host port
static inline NSString *methodNames_hostPort() {
    NSString *varNames_tmpport = methodNames_getRequestConfigValueForKey(@"port");
    return varNames_tmpport ? : @"11002";
}
/// 根目录
static inline NSString *methodNames_indexAddress() {
    NSString *varNames_tmppath = methodNames_getRequestConfigValueForKey(varNames_interFace);
    
    return varNames_tmppath ? : @"userua";
}

static inline NSString *methodNames_memberType() {
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    return varNames_tmptype ? : @"login";
}

/// baseURL
static inline NSString *methodNames_baseURL() {
    return [NSString stringWithFormat:@"%@://%@:%@/%@", methodNames_httpDelegate(), methodNames_ipAddress(), methodNames_hostPort(), methodNames_indexAddress()];
}

/// 用户协议
static inline NSString *methodNames_protocolURL(NSString *varNames_protocol) {
    return [NSString stringWithFormat:@"%@://%@:%@/%@", methodNames_httpDelegate(), methodNames_ipAddress(), methodNames_hostPort(), varNames_protocol];
}


/// 获取手机验证码
static inline NSString *methodNames_verifyURL() {
    NSString *varNames_tmpverify = methodNames_getRequestConfigValueForKey(varNames_verify);
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    return [NSString stringWithFormat:@"%@/%@/%@/", methodNames_baseURL(), varNames_tmpverify?:@"verify", varNames_tmptype?:methodNames_memberType()];
}
/// 手机号检测
static inline NSString *methodNames_phonetestURL() {
    NSString *varNames_tmpphonetest = methodNames_getRequestConfigValueForKey(varNames_phonetest);
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    
    return [NSString stringWithFormat:@"%@/%@/%@/", methodNames_baseURL(), varNames_tmpphonetest?:@"ptest", varNames_tmptype?:methodNames_memberType()];
}
/// 绑定手机号码
static inline NSString *methodNames_bindphoneURL() {
    NSString *varNames_tmpbindphone = methodNames_getRequestConfigValueForKey(varNames_bindphone);
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    return [NSString stringWithFormat:@"%@/%@/%@/", methodNames_baseURL(), varNames_tmpbindphone?:@"bdphone", varNames_tmptype?:methodNames_memberType()];
}
/// 绑定身份证
static inline NSString *methodNames_bindidcardURL() {
    NSString *varNames_tmpbindidcard = methodNames_getRequestConfigValueForKey(varNames_bindidcard);
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    return [NSString stringWithFormat:@"%@/%@/%@/", methodNames_baseURL(), varNames_tmpbindidcard?:@"bindidcard", varNames_tmptype?:methodNames_memberType()];
}
/// 数据初始化
static inline NSString *methodNames_gameinitialiseURL() {
    NSString *varNames_tmpgameinitialise = methodNames_getRequestConfigValueForKey(varNames_gameinitialise);
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    return [NSString stringWithFormat:@"%@/%@/%@/", methodNames_baseURL(), varNames_tmpgameinitialise?:@"gameinitialise", varNames_tmptype?:methodNames_memberType()];
}
/// 设备激活
static inline NSString *methodNames_activateURL() {
    NSString *varNames_tmpactivate = methodNames_getRequestConfigValueForKey(varNames_activate);
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    return [NSString stringWithFormat:@"%@/%@/%@/", methodNames_baseURL(), varNames_tmpactivate?:@"activate", varNames_tmptype?:methodNames_memberType()];
}
/// 一键登录
static inline NSString *methodNames_memberVisitorURL() {
    NSString *varNames_tmpmember = methodNames_getRequestConfigValueForKey(varNames_member);
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    return [NSString stringWithFormat:@"%@/%@/%@/0", methodNames_baseURL(), varNames_tmpmember?:@"login", varNames_tmptype?:methodNames_memberType()];
}
/// 手机注册
static inline NSString *methodNames_memberPhoneURL() {
    NSString *varNames_tmpmember = methodNames_getRequestConfigValueForKey(varNames_member);
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    return [NSString stringWithFormat:@"%@/%@/%@/1", methodNames_baseURL(), varNames_tmpmember?:@"member", varNames_tmptype?:varNames_type];
}
/// 用户注册
static inline NSString *methodNames_memberRegisterURL() {
    NSString *varNames_tmpmember = methodNames_getRequestConfigValueForKey(varNames_member);
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    return [NSString stringWithFormat:@"%@/%@/%@/2", methodNames_baseURL(), varNames_tmpmember?:@"member", varNames_tmptype?:varNames_type];
}
/// 用户登录
static inline NSString *methodNames_memberLoginURL() {
    NSString *varNames_tmpmember = methodNames_getRequestConfigValueForKey(varNames_member);
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    return [NSString stringWithFormat:@"%@/%@/%@/3", methodNames_baseURL(), varNames_tmpmember?:@"member", varNames_tmptype?:methodNames_memberType()];
}
/// 用户修改密码
static inline NSString *methodNames_updatepswURL() {
    NSString *varNames_tmpupdatepsw = methodNames_getRequestConfigValueForKey(varNames_updatepsw);
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    return [NSString stringWithFormat:@"%@/%@/%@/", methodNames_baseURL(), varNames_tmpupdatepsw?:@"updatepsw", varNames_tmptype?:methodNames_memberType()];
}
/// 用户找回密码
static inline NSString *methodNames_backuserpswURL() {
    NSString *varNames_tmpbackuserpsw = methodNames_getRequestConfigValueForKey(varNames_backuserpsw);
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    return [NSString stringWithFormat:@"%@/%@/%@/", methodNames_baseURL(), varNames_tmpbackuserpsw?:@"backuserpsw", varNames_tmptype?:methodNames_memberType()];
}
/// 用户角色上报
static inline NSString *methodNames_memberoleURL() {
    NSString *varNames_tmpmemberole = methodNames_getRequestConfigValueForKey(varNames_memberole);
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    return [NSString stringWithFormat:@"%@/%@/%@/", methodNames_baseURL(), varNames_tmpmemberole?:@"memberole", varNames_tmptype?:methodNames_memberType()];
}
/// 用户登录信息上报
static inline NSString *methodNames_updateuserloginURL() {
    NSString *varNames_tmpupdateuserlogin = methodNames_getRequestConfigValueForKey(varNames_updateuserlogin);
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    return [NSString stringWithFormat:@"%@/%@/%@/", methodNames_baseURL(), varNames_tmpupdateuserlogin?:@"updateuserlogin", varNames_tmptype?:methodNames_memberType()];
}
/// 订单下单
static inline NSString *methodNames_memberorderURL() {
    NSString *varNames_tmpmemberorder = methodNames_getRequestConfigValueForKey(varNames_memberorder);
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    return [NSString stringWithFormat:@"%@/%@/%@/", methodNames_baseURL(), varNames_tmpmemberorder?:@"memberorder", varNames_tmptype?:methodNames_memberType()];
}
/// 校验Appstore内购信息
static inline NSString *methodNames_appstoreURL() {
    NSString *varNames_tmpappstore = methodNames_getRequestConfigValueForKey(varNames_appstore);
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    return [NSString stringWithFormat:@"%@/%@/%@/", methodNames_baseURL(), varNames_tmpappstore?:@"appstore", varNames_tmptype?:methodNames_memberType()];
}



/// 客服中心
static inline NSString *methodNames_suspensionCustomQQURL() {
    NSString *varNames_tmpcustomqq = methodNames_getRequestConfigValueForKey(varNames_customqq);
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    return [NSString stringWithFormat:@"%@/%@/%@", methodNames_baseURL(), varNames_tmpcustomqq?:@"customService", varNames_tmptype?:@"login"];
}
/// 攻略中心
static inline NSString *methodNames_suspensionWalkThroughURL() { 
    NSString *varNames_tmpwalkthrough = methodNames_getRequestConfigValueForKey(varNames_walkthrough);
    NSString *varNames_tmptype = methodNames_getRequestConfigValueForKey(varNames_type);
    return [NSString stringWithFormat:@"%@/%@/%@", methodNames_baseURL(), varNames_tmpwalkthrough?:@"walkThrough", varNames_tmptype?:@"login"];
}
