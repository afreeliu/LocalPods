

#import <Foundation/Foundation.h>


FOUNDATION_EXTERN NSString *const varNames_initConnectPhonePersonIDKey;

FOUNDATION_EXTERN NSString *const varNames_initFastLoginKey;

FOUNDATION_EXTERN NSString *const varNames_initGameIDKey;

FOUNDATION_EXTERN NSString *const varNames_initSubGameIDKey;

FOUNDATION_EXTERN NSString *const varNames_userNameKey;

FOUNDATION_EXTERN NSString *const varNames_userIDKey;

FOUNDATION_EXTERN NSString *const varNames_channelIDKey;

FOUNDATION_EXTERN NSString *const varNames_advIDKey;


FOUNDATION_EXTERN NSString *const varNames_protocolKey;

FOUNDATION_EXTERN NSString *const varNames_protocolURLKey;

FOUNDATION_EXTERN NSString *const varNames_appleCheckKey;





/// 保存初始化时候返回的是否需要绑定手机身份证类型
/// 0:手机身份证  1:都不需要  2:身份证  3:手机
static inline void methodNames_saveNeedConnectPhone(NSString *connetPhoneType) {
    [[NSUserDefaults standardUserDefaults] setObject:connetPhoneType forKey:varNames_initConnectPhonePersonIDKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取初始化是否需要绑定手机身份证类型
static inline NSString *methodNames_readConnectPhoneType(){
    return [[NSUserDefaults standardUserDefaults] objectForKey:varNames_initConnectPhonePersonIDKey];
}
/// 保存初始化时候返回的是否需要一键登陆
static inline void methodNames_saveNeedFastLogin(NSString *connetPersonIDType) {
    /// 1 ： 不需要一键登陆
    
    [[NSUserDefaults standardUserDefaults] setObject:connetPersonIDType forKey:varNames_initFastLoginKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取初始化是否需要一键登陆 快速登陆
static inline BOOL methodNames_readFastLogin(){
    BOOL varNames_tmpneedFastLogin = YES;
    NSString *varNames_tmpfastLogin = [[NSUserDefaults standardUserDefaults] objectForKey:varNames_initFastLoginKey];
    if ([varNames_tmpfastLogin isEqual:@"1"]) {
        varNames_tmpneedFastLogin = NO;
    }
    return varNames_tmpneedFastLogin;
}

/// 保存协议开关
static inline void methodNames_saveProtocolSwitch(NSString *protocolswitch) {
    /// 1 表示关
    [[NSUserDefaults standardUserDefaults] setObject:protocolswitch forKey:varNames_protocolKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取初始化后协议开关
static inline NSString *methodNames_readProtocolSwitch() {
    return [[NSUserDefaults standardUserDefaults] objectForKey:varNames_protocolKey];
}
/// 保存协议的地址
static inline void methodNames_saveProtocolURL(NSString *protocolURL) {
    
    if (protocolURL) {
        [[NSUserDefaults standardUserDefaults] setObject:protocolURL forKey:varNames_protocolURLKey];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
}
/// 获取协议的地址
static inline NSString *methodNames_readProtocolURL() {
    return [[NSUserDefaults standardUserDefaults] objectForKey:varNames_protocolURLKey];
}



/// 保存游戏的ID
static inline void methodNames_saveGameID(NSString *gid) {
    [[NSUserDefaults standardUserDefaults] setObject:gid forKey:varNames_initGameIDKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取记录的游戏ID
static inline NSString *methodNames_readGameID() {
    NSString *varNames_tmpgid = @"";
    varNames_tmpgid = [[NSUserDefaults standardUserDefaults] objectForKey:varNames_initGameIDKey];
    return varNames_tmpgid;
}
/// 保存子游戏的ID
static inline void methodNames_saveSubGameID(NSString *subgid) {
    [[NSUserDefaults standardUserDefaults] setObject:subgid forKey:varNames_initSubGameIDKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取记录的子游戏的ID
static inline NSString *methodNames_readSubGameID() {
    NSString *varNames_tmpsubgid = @"";
    varNames_tmpsubgid = [[NSUserDefaults standardUserDefaults] objectForKey:varNames_initSubGameIDKey];
    return varNames_tmpsubgid;
}
/// 保存用户名
static inline void methodNames_saveUserName(NSString *userName) {
    [[NSUserDefaults standardUserDefaults] setObject:userName forKey:varNames_userNameKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取用户名
static inline NSString *methodNames_readUserName() {
    return [[NSUserDefaults standardUserDefaults] objectForKey:varNames_userNameKey];
}
/// 保存用户ID
static inline void methodNames_saveUserID(NSString *userID) {
    [[NSUserDefaults standardUserDefaults] setObject:userID forKey:varNames_userIDKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取用户ID
static inline NSString *methodNames_readUserID() {
    return [[NSUserDefaults standardUserDefaults] objectForKey:varNames_userIDKey];
}
/// platform ID
static inline NSString *methodNames_readPlatformID() {
    ///0:ios  1:andriod
    return @"0";
}
/// adv_id
static inline void methodNames_saveAdvID(NSString *adv_id) {
    [[NSUserDefaults standardUserDefaults]setObject:adv_id forKey:varNames_advIDKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
static inline NSString *methodNames_readAdvID() {
    return [[NSUserDefaults standardUserDefaults]objectForKey:varNames_advIDKey]?:@"0";
}
/// channel_id
static inline void methodNames_saveChannelID(NSString *channel_id) {
    [[NSUserDefaults standardUserDefaults]setObject:channel_id forKey:varNames_channelIDKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

static inline NSString *methodNames_readChannelID() {
    return [[NSUserDefaults standardUserDefaults]objectForKey:varNames_channelIDKey]?:@"0";
}






#pragma mark ---------- 为固定账号登录使用

/// 保存该游戏是否被a p p l e 审核通过
static inline void methodNames_saveAppleCheck(NSString *varNames_appleCheck) {
    [[NSUserDefaults standardUserDefaults]setObject:varNames_appleCheck forKey:varNames_appleCheckKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 获取是否正在审----------核 1:正在审-------核        0:通过
static inline BOOL methodNames_readAppleCheck() {
    return [[[NSUserDefaults standardUserDefaults]objectForKey:varNames_appleCheckKey] boolValue] ?: NO;
}


