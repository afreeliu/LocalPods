

#import <Foundation/Foundation.h>


FOUNDATION_EXTERN NSString *const varNames_initBindPhoneKey;
FOUNDATION_EXTERN NSString *const varNames_initBindPersonIDKey;

FOUNDATION_EXTERN NSString *const varNames_initFastLoginKey;

FOUNDATION_EXTERN NSString *const varNames_initGameIDKey;

FOUNDATION_EXTERN NSString *const varNames_initSubGameIDKey;

FOUNDATION_EXTERN NSString *const varNames_userNameKey;

FOUNDATION_EXTERN NSString *const varNames_userIDKey;

FOUNDATION_EXTERN NSString *const varNames_userPhoneKey;

FOUNDATION_EXTERN NSString *const varNames_userPhoneHideKey;

FOUNDATION_EXTERN NSString *const varNames_userBindPhoneKey;

FOUNDATION_EXTERN NSString *const varNames_userBindPersonIDKey;

FOUNDATION_EXTERN NSString *const varNames_channelIDKey;

FOUNDATION_EXTERN NSString *const varNames_advIDKey;


FOUNDATION_EXTERN NSString *const varNames_protocolKey;

FOUNDATION_EXTERN NSString *const varNames_protocolURLKey;

FOUNDATION_EXTERN NSString *const varNames_appleCheckKey;

FOUNDATION_EXTERN NSString *const varNames_verticalKey;

FOUNDATION_EXTERN NSString *const varNames_softBallKey;





/// 保存初始化时候返回的是否需要绑定手机类型
/// 是否绑定手机号 1 为关闭 ， 2 为开启,
static inline void methodNames_saveNeedBindPhone(NSString *varNames_type) {
    [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%@", varNames_type] forKey:varNames_initBindPhoneKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取初始化是否需要绑定手机类型
static inline NSString *methodNames_readBindPhoneType(){
    return [[NSUserDefaults standardUserDefaults] objectForKey:varNames_initBindPhoneKey];
}

/// 保存初始化时候返回的是否需要绑定身份证类型
/// 是否绑定手机号 1 为关闭 ， 2 为开启,
static inline void methodNames_saveNeedBindPersonID(NSString *varNames_type) {
    [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%@", varNames_type] forKey:varNames_initBindPersonIDKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取初始化是否需要绑定身份证类型
static inline NSString *methodNames_readBindPsersonIDType(){
    return [[NSUserDefaults standardUserDefaults] objectForKey:varNames_initBindPersonIDKey];
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

/// 保存用户手机
static inline void methodNames_saveUserPhone(NSString *userID) {
    [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%@", userID] forKey:varNames_userPhoneKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取用户手机
static inline NSString *methodNames_readUserPhone() {
    return [[NSUserDefaults standardUserDefaults] objectForKey:varNames_userPhoneKey];
}
/// 保存用户手机隐式
static inline void methodNames_saveUserPhoneHide(NSString *userID) {
    [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%@", userID] forKey:varNames_userPhoneHideKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取用户手机隐式
static inline NSString *methodNames_readUserPhoneHide() {
    return [[NSUserDefaults standardUserDefaults] objectForKey:varNames_userPhoneHideKey];
}





/// 保存用户绑定手机类型
static inline void methodNames_saveUserBindPhone(NSString *bphone) {
    [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%@", bphone] forKey:varNames_userBindPhoneKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取用户绑定手机类型
static inline NSString *methodNames_readUserBindPhone() {
    return [[NSUserDefaults standardUserDefaults] objectForKey:varNames_userBindPhoneKey];
}
/// 保存用户绑定身份证类型
static inline void methodNames_saveUserBindPersonID(NSString *bcardid) {
    [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%@", bcardid] forKey:varNames_userBindPersonIDKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取用户绑定身份证类型
static inline NSString *methodNames_readUserBindPersonID() {
    return [[NSUserDefaults standardUserDefaults] objectForKey:varNames_userBindPersonIDKey];
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


/// 版式  1:横版 2：竖版,
static inline void methodNames_saveVertical(NSString *varNames_vertical) {
    
    if (varNames_vertical) {
        [[NSUserDefaults standardUserDefaults] setObject:varNames_vertical forKey:varNames_verticalKey];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
}
/// 获取版式
static inline NSString *methodNames_readVertical() {
    return [[NSUserDefaults standardUserDefaults] objectForKey:varNames_verticalKey];
}

// 悬浮球 1 为关闭 ， 2 为开启,
static inline void methodNames_saveSoftBall(NSString *varNames_softBall) {
    
    if (varNames_softBall) {
        [[NSUserDefaults standardUserDefaults] setObject:varNames_softBall forKey:varNames_softBallKey];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
}
/// 获取版式
static inline NSString *methodNames_readSoftBall() {
    return [[NSUserDefaults standardUserDefaults] objectForKey:varNames_softBallKey];
}
