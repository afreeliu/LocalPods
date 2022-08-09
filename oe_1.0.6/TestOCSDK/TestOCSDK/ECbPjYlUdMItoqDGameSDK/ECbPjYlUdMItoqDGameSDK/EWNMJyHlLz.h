
#import <Foundation/Foundation.h>

#pragma mark ---------- 初始化SDK 相关
/// 初始化SDK时候得到的相关值进行保存的key
/// 是否需要绑定手机身份证 记录的key
FOUNDATION_EXTERN NSString *const enCZlPmfiIsHO;
/// 是否一键登录 记录的key
FOUNDATION_EXTERN NSString *const ekUIVmbQoqLiBx;
/// 游戏ID 记录的key
FOUNDATION_EXTERN NSString *const eDgmxXWJeTB;
/// 子游戏ID 记录的key
FOUNDATION_EXTERN NSString *const eSaIRZJp;
/// 用户名 记录的key
FOUNDATION_EXTERN NSString *const eytguKnlTPZkSCU;
/// 用户ID 记录的key
FOUNDATION_EXTERN NSString *const eYNLucRwUFxEWhy;
/// 渠道ID 记录的key
FOUNDATION_EXTERN NSString *const eEMCiZPazQVJHv;
/// 广告ID 记录的key
FOUNDATION_EXTERN NSString *const eGLFsbJHXvePdBl;

/// protocol 开关key
FOUNDATION_EXTERN NSString *const eJeRuXKv;
/// protocolURL key
FOUNDATION_EXTERN NSString *const eUVSgrIXBJWRqTZURLKey;
/// appleCheck key
FOUNDATION_EXTERN NSString *const esGVDyTWueAJXMcFKey;








/// 保存初始化时候返回的是否需要绑定手机身份证类型
/// 0:手机身份证  1:都不需要  2:身份证  3:手机
static inline void njQxBDTV(NSString *connetPhoneType) {
    [[NSUserDefaults standardUserDefaults] setObject:connetPhoneType forKey:enCZlPmfiIsHO];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取初始化是否需要绑定手机身份证类型
static inline NSString *nwodHgr(){
    return [[NSUserDefaults standardUserDefaults] objectForKey:enCZlPmfiIsHO];
}
/// 保存初始化时候返回的是否需要一键登录
static inline void nsmMuwIoURNzfPt(NSString *connetPersonIDType) {
    /// 1 ： 不需要一键登录
    
    [[NSUserDefaults standardUserDefaults] setObject:connetPersonIDType forKey:ekUIVmbQoqLiBx];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取初始化是否需要一键登录 快速登录
static inline BOOL naBbsmHFCn(){
    BOOL needFastLogin = YES;
    NSString *fastLogin = [[NSUserDefaults standardUserDefaults] objectForKey:ekUIVmbQoqLiBx];
    if ([fastLogin isEqual:@"1"]) {
        needFastLogin = NO;
    }
    return needFastLogin;
}

/// 保存协议开关
static inline void nPOwNam(NSString *protocolswitch) {
    /// 1 表示关
    [[NSUserDefaults standardUserDefaults] setObject:protocolswitch forKey:eJeRuXKv];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取初始化后协议开关
static inline NSString *nuNlFyOARGcjiHL() {
    return [[NSUserDefaults standardUserDefaults] objectForKey:eJeRuXKv];
}
/// 保存协议的地址
static inline void nPThieRgqNBXUEk(NSString *protocolURL) {
    
    if (protocolURL) {
        [[NSUserDefaults standardUserDefaults] setObject:protocolURL forKey:eUVSgrIXBJWRqTZURLKey];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
}
/// 获取协议的地址
static inline NSString *nnflUCNXh() {
    return [[NSUserDefaults standardUserDefaults] objectForKey:eUVSgrIXBJWRqTZURLKey];
}



/// 保存游戏的ID
static inline void nGRUFodZiyefYqr(NSString *gid) {
    [[NSUserDefaults standardUserDefaults] setObject:gid forKey:eDgmxXWJeTB];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取记录的游戏ID
static inline NSString *nqGpZjB() {
    NSString *gid = @"";
    gid = [[NSUserDefaults standardUserDefaults] objectForKey:eDgmxXWJeTB];
    return gid;
}
/// 保存子游戏的ID
static inline void npkfgNuLb(NSString *subgid) {
    [[NSUserDefaults standardUserDefaults] setObject:subgid forKey:eSaIRZJp];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取记录的子游戏的ID
static inline NSString *nRKtkwFIQTcuafb() {
    NSString *subgid = @"";
    subgid = [[NSUserDefaults standardUserDefaults] objectForKey:eSaIRZJp];
    return subgid;
}
/// 保存用户名
static inline void nytViXr(NSString *userName) {
    [[NSUserDefaults standardUserDefaults] setObject:userName forKey:eytguKnlTPZkSCU];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取用户名
static inline NSString *naXPOcZCyIRb() {
    return [[NSUserDefaults standardUserDefaults] objectForKey:eytguKnlTPZkSCU];
}
/// 保存用户ID
static inline void nCsAeiWGBT(NSString *userID) {
    [[NSUserDefaults standardUserDefaults] setObject:userID forKey:eYNLucRwUFxEWhy];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取用户ID
static inline NSString *nFINyVLOHYvxkAXz() {
    return [[NSUserDefaults standardUserDefaults] objectForKey:eYNLucRwUFxEWhy];
}
/// platform ID
static inline NSString *nJTbwZrLuDNGc() {
    ///0:ios  1:andriod
    return @"0";
}
/// adv_id
static inline void nQHgnLaRDKy(NSString *adv_id) {
    [[NSUserDefaults standardUserDefaults]setObject:adv_id forKey:eGLFsbJHXvePdBl];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
static inline NSString *nUQWvyCwLFpTlkE() {
    return [[NSUserDefaults standardUserDefaults]objectForKey:eGLFsbJHXvePdBl]?:@"0";
}
/// channel_id
static inline void noApYvVsymUB(NSString *channel_id) {
    [[NSUserDefaults standardUserDefaults]setObject:channel_id forKey:eEMCiZPazQVJHv];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

static inline NSString *nevRknysWHp() {
    return [[NSUserDefaults standardUserDefaults]objectForKey:eEMCiZPazQVJHv]?:@"0";
}
//获取项目版本号
static inline NSString *nozVnUwyWjM() {
    NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString *)kCFBundleVersionKey];
    return version;
    
}


#pragma mark ---------- 为固定账号登录使用

/// 保存该游戏是否被a p p l e 审核通过
static inline void nQTERGFSdg(NSString *esGVDyTWueAJXMcF) {
    [[NSUserDefaults standardUserDefaults]setObject:esGVDyTWueAJXMcF forKey:esGVDyTWueAJXMcFKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 获取是否正在审----------核 1:正在审-------核        0:通过
static inline BOOL ngrmtEoe() {
    return [[[NSUserDefaults standardUserDefaults]objectForKey:esGVDyTWueAJXMcFKey] boolValue] ?: NO;
}

