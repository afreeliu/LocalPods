

#import <Foundation/Foundation.h>

FOUNDATION_EXTERN NSString *const ePQdUzhRGmu;
FOUNDATION_EXTERN NSString *const eUkEbOroVicgZspq;
FOUNDATION_EXTERN NSString *const eRfNArmUxZjC;
FOUNDATION_EXTERN NSString *const eZMqWRKHXhYmkC;
FOUNDATION_EXTERN NSUInteger const esNkAHWJCDT;
FOUNDATION_EXTERN NSString *const eDmbPjlNzLguJ;
FOUNDATION_EXTERN NSString *const egQVTuIoqc;
FOUNDATION_EXTERN NSString *const eUoHcPyEAlh;
FOUNDATION_EXTERN NSString *const eXlCfxnrtMGjV;
FOUNDATION_EXTERN NSString *const esaClHph;
FOUNDATION_EXTERN NSString *const ehyEBdASpCM;
FOUNDATION_EXTERN NSString *const efIdibageXNUz;
FOUNDATION_EXTERN NSString *const eHieGAPObXmole;
FOUNDATION_EXTERN NSString *const eHieGAPObXm;
FOUNDATION_EXTERN NSString *const eEZYpjSWQwN;
FOUNDATION_EXTERN NSString *const eBVtsDkIENQqjKir;
FOUNDATION_EXTERN NSString *const egsjuBvERGLY;
FOUNDATION_EXTERN NSString *const eBazUpfJISLEPMum;
FOUNDATION_EXTERN NSString *const eVvQwPSK;
FOUNDATION_EXTERN NSString *const ewLoCGdqsltPaOZ;
FOUNDATION_EXTERN NSString *const eclRfiu;




#pragma mark ---------- 接口
/// 获取bundle中plist的requestConfig配置
static inline NSDictionary *kkdySOVRe() {
    NSString *bundlePath = [[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:@"DUhMXpEVSDK.bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    NSString *path = [bundle pathForResource:@"DUhMXpEVSDK" ofType:@"plist"];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];
    NSDictionary *requestConfig = [dic objectForKey:ePQdUzhRGmu];
    return requestConfig;
}
/// 根据key 从 plist 中获取value
static inline NSString *kfGFCBQl(NSString *key) {
    NSDictionary *config = kkdySOVRe();
    NSString *value;
    if (config) {
        value = [config objectForKey:key];
    }
    //    NSString *value = [config objectForKey:key];
    return value;
}



/// 协议 delegate
static inline NSString *kiEjrzmgBqIbk() {
    NSString *delegate = kfGFCBQl(@"delegate");
    //    return @"http";
    return delegate? : @"http";
}
/// ipAddress
static inline NSString *kLYHvzpsEw() {
    NSString *ipAddress = kfGFCBQl(@"ip");
    return ipAddress ? : @"101.132.113.84";
    //    return @"101.132.113.84";
}
/// host port
static inline NSString *kowFgqin() {
    NSString *port = kfGFCBQl(@"port");
    return port ? : @"11002";
    //    return @"11002";
}
/// 根目录
static inline NSString *ktumCzRKdTgiZr() {
    NSString *path = kfGFCBQl(egQVTuIoqc);
    
    return path ? : @"userua";
    //    return @"ua";
}

static inline NSString *krIKycAFVoPfsBRM() {
    NSString *type = kfGFCBQl(eUoHcPyEAlh);
    return type ? : @"login";
}

/// baseURL
static inline NSString *kjnAUbrDyHtiPJc() {
    return [NSString stringWithFormat:@"%@://%@:%@/%@", kiEjrzmgBqIbk(), kLYHvzpsEw(), kowFgqin(), ktumCzRKdTgiZr()];
}

/// 用户协议
static inline NSString *kCKMHdimr(NSString *eHFLdIV) {
    return [NSString stringWithFormat:@"%@://%@:%@/%@", kiEjrzmgBqIbk(), kLYHvzpsEw(), kowFgqin(), eHFLdIV];
}


/// 获取手机验证码
static inline NSString *kxapYIAjUrPdhs() {
    NSString *verify = kfGFCBQl(ewLoCGdqsltPaOZ);
    NSString *type = kfGFCBQl(eUoHcPyEAlh);
    return [NSString stringWithFormat:@"%@/%@/%@/", kjnAUbrDyHtiPJc(), verify?:@"verify", type?:krIKycAFVoPfsBRM()];
}
/// 手机号检测
static inline NSString *kVAvotyZHa() {
    NSString *phonetest = kfGFCBQl(eVvQwPSK);
    NSString *type = kfGFCBQl(eUoHcPyEAlh);
    
    return [NSString stringWithFormat:@"%@/%@/%@/", kjnAUbrDyHtiPJc(), phonetest?:@"ptest", type?:krIKycAFVoPfsBRM()];
}
/// 绑定手机号码
static inline NSString *kHdbEfkjTW() {
    NSString *bindphone = kfGFCBQl(eBVtsDkIENQqjKir);
    NSString *type = kfGFCBQl(eUoHcPyEAlh);
    return [NSString stringWithFormat:@"%@/%@/%@/", kjnAUbrDyHtiPJc(), bindphone?:@"bdphone", type?:krIKycAFVoPfsBRM()];
}
/// 绑定身份证
static inline NSString *kMgeQSEVbIG() {
    NSString *bindidcard = kfGFCBQl(egsjuBvERGLY);
    NSString *type = kfGFCBQl(eUoHcPyEAlh);
    return [NSString stringWithFormat:@"%@/%@/%@/", kjnAUbrDyHtiPJc(), bindidcard?:@"bindidcard", type?:krIKycAFVoPfsBRM()];
}
/// 数据初始化
static inline NSString *kGJQLTCEcyhsPjOx() {
    NSString *gameinitialise = kfGFCBQl(esaClHph);
    NSString *type = kfGFCBQl(eUoHcPyEAlh);
    return [NSString stringWithFormat:@"%@/%@/%@/", kjnAUbrDyHtiPJc(), gameinitialise?:@"gameinitialise", type?:krIKycAFVoPfsBRM()];
}
/// 设备激活
static inline NSString *kPsVLbMvl() {
    NSString *activate = kfGFCBQl(eXlCfxnrtMGjV);
    NSString *type = kfGFCBQl(eUoHcPyEAlh);
    return [NSString stringWithFormat:@"%@/%@/%@/", kjnAUbrDyHtiPJc(), activate?:@"activate", type?:krIKycAFVoPfsBRM()];
}
/// 一键登录
static inline NSString *kpdXuNcPfvIhgFxz() {
    NSString *member = kfGFCBQl(eHieGAPObXm);
    NSString *type = kfGFCBQl(eUoHcPyEAlh);
    return [NSString stringWithFormat:@"%@/%@/%@/0", kjnAUbrDyHtiPJc(), member?:@"login", type?:krIKycAFVoPfsBRM()];
}
/// 手机注册
static inline NSString *kPcTuIGOy() {
    NSString *member = kfGFCBQl(eHieGAPObXm);
    NSString *type = kfGFCBQl(eUoHcPyEAlh);
    return [NSString stringWithFormat:@"%@/%@/%@/1", kjnAUbrDyHtiPJc(), member?:@"member", type?:eUoHcPyEAlh];
}
/// 用户注册
static inline NSString *kBICKPMdHjX() {
    NSString *member = kfGFCBQl(eHieGAPObXm);
    NSString *type = kfGFCBQl(eUoHcPyEAlh);
    return [NSString stringWithFormat:@"%@/%@/%@/2", kjnAUbrDyHtiPJc(), member?:@"member", type?:eUoHcPyEAlh];
}
/// 用户登录
static inline NSString *kdVsQXMLpqh() {
    NSString *member = kfGFCBQl(eHieGAPObXm);
    NSString *type = kfGFCBQl(eUoHcPyEAlh);
    return [NSString stringWithFormat:@"%@/%@/%@/3", kjnAUbrDyHtiPJc(), member?:@"member", type?:krIKycAFVoPfsBRM()];
}
/// 用户修改密码
static inline NSString *kLfTSgpe() {
    NSString *updatepsw = kfGFCBQl(eEZYpjSWQwN);
    NSString *type = kfGFCBQl(eUoHcPyEAlh);
    return [NSString stringWithFormat:@"%@/%@/%@/", kjnAUbrDyHtiPJc(), updatepsw?:@"updatepsw", type?:krIKycAFVoPfsBRM()];
}
/// 用户找回密码
static inline NSString *kkalWsz() {
    NSString *backuserpsw = kfGFCBQl(eBazUpfJISLEPMum);
    NSString *type = kfGFCBQl(eUoHcPyEAlh);
    return [NSString stringWithFormat:@"%@/%@/%@/", kjnAUbrDyHtiPJc(), backuserpsw?:@"backuserpsw", type?:krIKycAFVoPfsBRM()];
}
/// 用户角色上报
static inline NSString *kOupzXj() {
    NSString *memberole = kfGFCBQl(eHieGAPObXmole);
    NSString *type = kfGFCBQl(eUoHcPyEAlh);
    return [NSString stringWithFormat:@"%@/%@/%@/", kjnAUbrDyHtiPJc(), memberole?:@"memberole", type?:krIKycAFVoPfsBRM()];
}
/// 用户登录信息上报
static inline NSString *ktxpRLKAv() {
    NSString *updateuserlogin = kfGFCBQl(efIdibageXNUz);
    NSString *type = kfGFCBQl(eUoHcPyEAlh);
    return [NSString stringWithFormat:@"%@/%@/%@/", kjnAUbrDyHtiPJc(), updateuserlogin?:@"updateuserlogin", type?:krIKycAFVoPfsBRM()];
}
/// 订单下单
static inline NSString *kbwFygjqMf() {
    NSString *memberorder = kfGFCBQl(ehyEBdASpCM);
    NSString *type = kfGFCBQl(eUoHcPyEAlh);
    return [NSString stringWithFormat:@"%@/%@/%@/", kjnAUbrDyHtiPJc(), memberorder?:@"memberorder", type?:krIKycAFVoPfsBRM()];
}
/// 校验Appstore内购信息
static inline NSString *keJrPmBsviASyH() {
    NSString *appstore = kfGFCBQl(eclRfiu);
    NSString *type = kfGFCBQl(eUoHcPyEAlh);
    return [NSString stringWithFormat:@"%@/%@/%@/", kjnAUbrDyHtiPJc(), appstore?:@"appstore", type?:krIKycAFVoPfsBRM()];
}






