
#import <Foundation/Foundation.h>

#pragma mark ---------- 初始化SDK 相关
/// 初始化SDK时候得到的相关值进行保存的key
/// 是否需要绑定手机身份证 记录的key
FOUNDATION_EXTERN NSString *const evAohiKYHz;
/// 是否一键登陆 记录的key
FOUNDATION_EXTERN NSString *const edUWCZLrNfhks;
/// 游戏ID 记录的key
FOUNDATION_EXTERN NSString *const eANfRZn;
/// 子游戏ID 记录的key
FOUNDATION_EXTERN NSString *const exyCLgAsN;
/// 用户名 记录的key
FOUNDATION_EXTERN NSString *const eKExLbTirNRMvy;
/// 用户ID 记录的key
FOUNDATION_EXTERN NSString *const eEYJaeFRgdqC;
/// 渠道ID 记录的key
FOUNDATION_EXTERN NSString *const ecYbEPZlvi;
/// 广告ID 记录的key
FOUNDATION_EXTERN NSString *const eOcZjFhvrSlVo;

/// protocol 开关key
FOUNDATION_EXTERN NSString *const eHFLdIVKey;
/// protocolURL key
FOUNDATION_EXTERN NSString *const eHFLdIVURLKey;


/// appleCheck key
FOUNDATION_EXTERN NSString *const etdLcsJKey;



/// 保存初始化时候返回的是否需要绑定手机身份证类型
/// 0:手机身份证  1:都不需要  2:身份证  3:手机
static inline void kAPeNfy(NSString *connetPhoneType) {
    [[NSUserDefaults standardUserDefaults] setObject:connetPhoneType forKey:evAohiKYHz];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取初始化是否需要绑定手机身份证类型
static inline NSString *kloadNIHMzSJgBCO(){
    return [[NSUserDefaults standardUserDefaults] objectForKey:evAohiKYHz];
}
/// 保存初始化时候返回的是否需要一键登陆
static inline void kQSqyDRhaTC(NSString *connetPersonIDType) {
    /// 1 ： 不需要一键登陆
    
    [[NSUserDefaults standardUserDefaults] setObject:connetPersonIDType forKey:edUWCZLrNfhks];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取初始化是否需要一键登陆 快速登陆
static inline BOOL kyMFGiPQtIoqrL(){
    BOOL needFastLogin = YES;
    NSString *fastLogin = [[NSUserDefaults standardUserDefaults] objectForKey:edUWCZLrNfhks];
    if ([fastLogin isEqual:@"1"]) {
        needFastLogin = NO;
    }
    return needFastLogin;
}

/// 保存协议开关
static inline void kJDPdHBOSrhc(NSString *protocolswitch) {
    /// 1 表示关
    [[NSUserDefaults standardUserDefaults] setObject:protocolswitch forKey:eHFLdIVKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取初始化后协议开关
static inline NSString *kIrvOHcu() {
    return [[NSUserDefaults standardUserDefaults] objectForKey:eHFLdIVKey];
}
/// 保存协议的地址
static inline void kfybMdImjJz(NSString *protocolURL) {
    
    if (protocolURL) {
        [[NSUserDefaults standardUserDefaults] setObject:protocolURL forKey:eHFLdIVURLKey];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
}
/// 获取协议的地址
static inline NSString *kMTBQakZDx() {
    return [[NSUserDefaults standardUserDefaults] objectForKey:eHFLdIVURLKey];
}



/// 保存游戏的ID
static inline void kpRBmvdnrVzk(NSString *gid) {
    [[NSUserDefaults standardUserDefaults] setObject:gid forKey:eANfRZn];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取记录的游戏ID
static inline NSString *kEJsVuODloh() {
    NSString *gid = @"";
    gid = [[NSUserDefaults standardUserDefaults] objectForKey:eANfRZn];
    return gid;
}
/// 保存子游戏的ID
static inline void kaHriPwB(NSString *subgid) {
    [[NSUserDefaults standardUserDefaults] setObject:subgid forKey:exyCLgAsN];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取记录的子游戏的ID
static inline NSString *kOVNImM() {
    NSString *subgid = @"";
    subgid = [[NSUserDefaults standardUserDefaults] objectForKey:exyCLgAsN];
    return subgid;
}
/// 保存用户名
static inline void kZjvHqnW(NSString *userName) {
    [[NSUserDefaults standardUserDefaults] setObject:userName forKey:eKExLbTirNRMvy];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取用户名
static inline NSString *kgIYHJEOb() {
    return [[NSUserDefaults standardUserDefaults] objectForKey:eKExLbTirNRMvy];
}
/// 保存用户ID
static inline void kqsEGtorOQ(NSString *userID) {
    [[NSUserDefaults standardUserDefaults] setObject:userID forKey:eEYJaeFRgdqC];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取用户ID
static inline NSString *kRPbtqU() {
    return [[NSUserDefaults standardUserDefaults] objectForKey:eEYJaeFRgdqC];
}
/// platform ID
static inline NSString *kKQumhviO() {
    ///0:ios  1:andriod
    return @"0";
}
/// adv_id
static inline void knslcAyxqMEUkJ(NSString *adv_id) {
    [[NSUserDefaults standardUserDefaults]setObject:adv_id forKey:eOcZjFhvrSlVo];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
static inline NSString *kXsJmMxSNAyp() {
    return [[NSUserDefaults standardUserDefaults]objectForKey:eOcZjFhvrSlVo]?:@"0";
}
/// channel_id
static inline void kdzikNpEIYvZTL(NSString *channel_id) {
    [[NSUserDefaults standardUserDefaults]setObject:channel_id forKey:ecYbEPZlvi];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

static inline NSString *kGxWjgvIUlbJhFoO() {
    return [[NSUserDefaults standardUserDefaults]objectForKey:ecYbEPZlvi]?:@"0";
}
////获取项目版本号
//static inline NSString *kmtguVGSK() {
//    NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString *)kCFBundleVersionKey];
//    return version;
//    
//}





#pragma mark ---------- 为固定账号登录使用

/// 保存该游戏是否被a p p l e 审核通过
static inline void ksRopzFMmfcTqNy(NSString *etdLcsJ) {
    [[NSUserDefaults standardUserDefaults]setObject:etdLcsJ forKey:etdLcsJKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 获取是否正在审----------核 1:正在审-------核        0:通过
static inline BOOL kIvtCmpxbDJfeXMy() {
    return [[[NSUserDefaults standardUserDefaults]objectForKey:etdLcsJKey] boolValue] ?: NO;
}




