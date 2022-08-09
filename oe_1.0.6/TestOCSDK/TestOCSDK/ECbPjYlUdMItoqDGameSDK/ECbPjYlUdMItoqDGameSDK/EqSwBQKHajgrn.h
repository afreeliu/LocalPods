

#import <Foundation/Foundation.h>

FOUNDATION_EXTERN NSString *const endyYXlPgR;
FOUNDATION_EXTERN NSString *const eysvewjZPbVAtY;
FOUNDATION_EXTERN NSString *const eYuGaEvNjWZrzJe;
FOUNDATION_EXTERN NSString *const eDFYgPVSvcabkCd;
FOUNDATION_EXTERN NSUInteger const evawBDqMoCuzcj;
FOUNDATION_EXTERN NSString *const ezHIxeV;
FOUNDATION_EXTERN NSString *const elRUQTuSoKZIOVzD;
FOUNDATION_EXTERN NSString *const eLaHoYxcpysM;
FOUNDATION_EXTERN NSString *const eOXclAwY;
FOUNDATION_EXTERN NSString *const exgMGeyPvhtq;
FOUNDATION_EXTERN NSString *const eqsUzeDfm;
FOUNDATION_EXTERN NSString *const exKgiPSQyarjDYO;
FOUNDATION_EXTERN NSString *const eavFmgJecR;
FOUNDATION_EXTERN NSString *const efixDKPUABtLHg;
FOUNDATION_EXTERN NSString *const eUDsXMOcZ;
FOUNDATION_EXTERN NSString *const ejnrDIefOMmZv;
FOUNDATION_EXTERN NSString *const eouxlhJARdnCb;
FOUNDATION_EXTERN NSString *const eWjEnyuXPAvVsfbuserpsw;
FOUNDATION_EXTERN NSString *const ezPmwbxHOERJ;
FOUNDATION_EXTERN NSString *const eArykndwcvKTtJ;
FOUNDATION_EXTERN NSString *const eVEJgeImF;




#pragma mark ---------- 接口
/// 获取bundle中plist的requestConfig配置
static inline NSDictionary *nJiTwaAVjRN() {
    NSString *bundlePath = [[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:@"ECbPjYlUdMItoqDGameSDK.bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    NSString *path = [bundle pathForResource:@"ECbPjYlUdMItoqDGameSDK" ofType:@"plist"];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];
    NSDictionary *requestConfig = [dic objectForKey:endyYXlPgR];
    return requestConfig;
}
/// 根据key 从 plist 中获取value
static inline NSString *nJiTwaAVjRNValueForKey(NSString *key) {
    NSDictionary *config = nJiTwaAVjRN();
    NSString *value;
    if (config) {
        value = [config objectForKey:key];
    }
    //    NSString *value = [config objectForKey:key];
    return value;
}



/// 协议 delegate
static inline NSString *nRvWklgxG() {
    NSString *delegate = nJiTwaAVjRNValueForKey(@"delegate");
    //    return @"http";
    return delegate? : @"http";
}
/// ipAddress
static inline NSString *nrmIFcf() {
    NSString *ipAddress = nJiTwaAVjRNValueForKey(@"ip");
    return ipAddress ? : @"101.132.113.84";
    //    return @"101.132.113.84";
}
/// host port
static inline NSString *nnfxsoMCUkVZyS() {
    NSString *port = nJiTwaAVjRNValueForKey(@"port");
    return port ? : @"11002";
    //    return @"11002";
}
/// 根目录
static inline NSString *njKrSWyscVNaxUA() {
    NSString *path = nJiTwaAVjRNValueForKey(elRUQTuSoKZIOVzD);
    
    return path ? : @"userua";
    //    return @"ua";
}

static inline NSString *nFujyiSbfz() {
    NSString *type = nJiTwaAVjRNValueForKey(eLaHoYxcpysM);
    return type ? : @"login";
}

/// baseURL
static inline NSString *nIczTSVKGJm() {
    return [NSString stringWithFormat:@"%@://%@:%@/%@", nRvWklgxG(), nrmIFcf(), nnfxsoMCUkVZyS(), njKrSWyscVNaxUA()];
}

/// 用户协议
static inline NSString *nwltKndPUixZg(NSString *eUVSgrIXBJWRqTZ) {
    return [NSString stringWithFormat:@"%@://%@:%@/%@", nRvWklgxG(), nrmIFcf(), nnfxsoMCUkVZyS(), eUVSgrIXBJWRqTZ];
}


/// 获取手机验证码
static inline NSString *nJAEgSXinsd() {
    NSString *verify = nJiTwaAVjRNValueForKey(eArykndwcvKTtJ);
    NSString *type = nJiTwaAVjRNValueForKey(eLaHoYxcpysM);
    return [NSString stringWithFormat:@"%@/%@/%@/", nIczTSVKGJm(), verify?:@"verify", type?:nFujyiSbfz()];
}
/// 手机号检测
static inline NSString *nPBVCeN() {
    NSString *phonetest = nJiTwaAVjRNValueForKey(ezPmwbxHOERJ);
    NSString *type = nJiTwaAVjRNValueForKey(eLaHoYxcpysM);
    
    return [NSString stringWithFormat:@"%@/%@/%@/", nIczTSVKGJm(), phonetest?:@"ptest", type?:nFujyiSbfz()];
}
/// 绑定手机号码
static inline NSString *nQpFCqzMa() {
    NSString *bindphone = nJiTwaAVjRNValueForKey(ejnrDIefOMmZv);
    NSString *type = nJiTwaAVjRNValueForKey(eLaHoYxcpysM);
    return [NSString stringWithFormat:@"%@/%@/%@/", nIczTSVKGJm(), bindphone?:@"bdphone", type?:nFujyiSbfz()];
}
/// 绑定身份证
static inline NSString *nisgMPILvBhFcxEk() {
    NSString *bindidcard = nJiTwaAVjRNValueForKey(eouxlhJARdnCb);
    NSString *type = nJiTwaAVjRNValueForKey(eLaHoYxcpysM);
    return [NSString stringWithFormat:@"%@/%@/%@/", nIczTSVKGJm(), bindidcard?:@"bindidcard", type?:nFujyiSbfz()];
}
/// 数据初始化
static inline NSString *nVPjfTQMxset() {
    NSString *gameinitialise = nJiTwaAVjRNValueForKey(exgMGeyPvhtq);
    NSString *type = nJiTwaAVjRNValueForKey(eLaHoYxcpysM);
    return [NSString stringWithFormat:@"%@/%@/%@/", nIczTSVKGJm(), gameinitialise?:@"gameinitialise", type?:nFujyiSbfz()];
}
/// 设备激活
static inline NSString *niWUHMuXVyhlqteB() {
    NSString *activate = nJiTwaAVjRNValueForKey(eOXclAwY);
    NSString *type = nJiTwaAVjRNValueForKey(eLaHoYxcpysM);
    return [NSString stringWithFormat:@"%@/%@/%@/", nIczTSVKGJm(), activate?:@"activate", type?:nFujyiSbfz()];
}
/// 一键登录
static inline NSString *nEDQlnRXF() {
    NSString *member = nJiTwaAVjRNValueForKey(efixDKPUABtLHg);
    NSString *type = nJiTwaAVjRNValueForKey(eLaHoYxcpysM);
    return [NSString stringWithFormat:@"%@/%@/%@/0", nIczTSVKGJm(), member?:@"login", type?:nFujyiSbfz()];
}
/// 手机注册
static inline NSString *nMASQTFe() {
    NSString *member = nJiTwaAVjRNValueForKey(efixDKPUABtLHg);
    NSString *type = nJiTwaAVjRNValueForKey(eLaHoYxcpysM);
    return [NSString stringWithFormat:@"%@/%@/%@/1", nIczTSVKGJm(), member?:@"member", type?:eLaHoYxcpysM];
}
/// 用户注册
static inline NSString *nJtTnSBUxWjZC() {
    NSString *member = nJiTwaAVjRNValueForKey(efixDKPUABtLHg);
    NSString *type = nJiTwaAVjRNValueForKey(eLaHoYxcpysM);
    return [NSString stringWithFormat:@"%@/%@/%@/2", nIczTSVKGJm(), member?:@"member", type?:eLaHoYxcpysM];
}
/// 用户登录
static inline NSString *nNdFTZxOzc() {
    NSString *member = nJiTwaAVjRNValueForKey(efixDKPUABtLHg);
    NSString *type = nJiTwaAVjRNValueForKey(eLaHoYxcpysM);
    return [NSString stringWithFormat:@"%@/%@/%@/3", nIczTSVKGJm(), member?:@"member", type?:nFujyiSbfz()];
}
/// 用户修改密码
static inline NSString *nrLPUKnfelWBCxM() {
    NSString *updatepsw = nJiTwaAVjRNValueForKey(eUDsXMOcZ);
    NSString *type = nJiTwaAVjRNValueForKey(eLaHoYxcpysM);
    return [NSString stringWithFormat:@"%@/%@/%@/", nIczTSVKGJm(), updatepsw?:@"updatepsw", type?:nFujyiSbfz()];
}
/// 用户找回密码
static inline NSString *nscSoAxzknMbuserpswURL() {
    NSString *backuserpsw = nJiTwaAVjRNValueForKey(eWjEnyuXPAvVsfbuserpsw);
    NSString *type = nJiTwaAVjRNValueForKey(eLaHoYxcpysM);
    return [NSString stringWithFormat:@"%@/%@/%@/", nIczTSVKGJm(), backuserpsw?:@"backuserpsw", type?:nFujyiSbfz()];
}
/// 用户角色上报
static inline NSString *nyVjruJwCqDBLQSX() {
    NSString *memberole = nJiTwaAVjRNValueForKey(eavFmgJecR);
    NSString *type = nJiTwaAVjRNValueForKey(eLaHoYxcpysM);
    return [NSString stringWithFormat:@"%@/%@/%@/", nIczTSVKGJm(), memberole?:@"memberole", type?:nFujyiSbfz()];
}
/// 用户登录信息上报
static inline NSString *nQRSVzDLW() {
    NSString *updateuserlogin = nJiTwaAVjRNValueForKey(exKgiPSQyarjDYO);
    NSString *type = nJiTwaAVjRNValueForKey(eLaHoYxcpysM);
    return [NSString stringWithFormat:@"%@/%@/%@/", nIczTSVKGJm(), updateuserlogin?:@"updateuserlogin", type?:nFujyiSbfz()];
}
/// 订单下单
static inline NSString *nsJTHQOE() {
    NSString *memberorder = nJiTwaAVjRNValueForKey(eqsUzeDfm);
    NSString *type = nJiTwaAVjRNValueForKey(eLaHoYxcpysM);
    return [NSString stringWithFormat:@"%@/%@/%@/", nIczTSVKGJm(), memberorder?:@"memberorder", type?:nFujyiSbfz()];
}
/// 校验Appstore内购信息
static inline NSString *nWtOzIfFcAwRb() {
    NSString *appstore = nJiTwaAVjRNValueForKey(eVEJgeImF);
    NSString *type = nJiTwaAVjRNValueForKey(eLaHoYxcpysM);
    return [NSString stringWithFormat:@"%@/%@/%@/", nIczTSVKGJm(), appstore?:@"appstore", type?:nFujyiSbfz()];
}






