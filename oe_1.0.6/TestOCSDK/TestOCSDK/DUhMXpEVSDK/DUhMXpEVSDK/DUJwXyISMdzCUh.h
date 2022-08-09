

#import <Foundation/Foundation.h>
#import <Security/Security.h>

#pragma mark ---------- 快速登陆相关
/// 快速登陆保存是否第一快速登陆
FOUNDATION_EXTERN NSString *const ezqnrMEtiucP;
/// 快速登陆是否绑定手机号 记录的key
FOUNDATION_EXTERN NSString *const eugdbfNWxF;
/// 快速登陆是否绑定身份证 记录的key
FOUNDATION_EXTERN NSString *const eMjItXwZ;

#pragma mark ---------- 登陆相关
/// 保存登陆过的账户的列表
FOUNDATION_EXTERN NSString *const ekpKgxMQidlSRhW;
FOUNDATION_EXTERN NSString *const ekOfrePVRQigpZC;
FOUNDATION_EXTERN NSString *const eOYTyQtNaMLC;
FOUNDATION_EXTERN NSString *const eqAmKwv;


/// 获取使用SDK项目bundleID
static inline NSString *kwskAYzGy() {
    NSString *bundleID = [[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString *)kCFBundleIdentifierKey];
    return bundleID;
}
/// 用于保存密码的serviceKey
static inline NSString *kknjczZhRrqA() {
    NSString *bundle = kwskAYzGy();
    NSString *keyChainService = [bundle stringByAppendingString:@"jfdklsa"];
    return keyChainService;
}

static inline NSMutableDictionary *kRitpChDbgZBz(NSString *account) {
    NSMutableDictionary *query = [NSMutableDictionary dictionary];
    query[(__bridge id)kSecClass] = (__bridge id)kSecClassGenericPassword;
    query[(__bridge id)kSecAttrService] = kknjczZhRrqA();
    if (account) {
        query[(__bridge id)kSecAttrAccount] = account;
    }
    return query;
}

/// 根据账号查找对应的密码
static inline NSString *kmuAocliCBYTW(NSString *account) {
    NSMutableDictionary *attributes = kRitpChDbgZBz(account);
    attributes[(__bridge id)kSecMatchLimit] = (__bridge id)(kSecMatchLimitOne);
    attributes[(__bridge id)kSecReturnAttributes] = (__bridge id _Nullable)(kCFBooleanTrue);
    attributes[(__bridge id)kSecReturnData] = (__bridge id _Nullable)(kCFBooleanTrue);
    CFMutableDictionaryRef queryResult = nil;
    OSStatus keychainError = noErr;
    keychainError = SecItemCopyMatching((__bridge CFDictionaryRef)attributes,(CFTypeRef *)&queryResult);
    if (keychainError == errSecItemNotFound) {
        if (queryResult) CFRelease(queryResult);
        return @"";
    }else if (keychainError == noErr) {
        
        if (queryResult == nil){return @"";}
        NSMutableDictionary *resultDict = (__bridge NSMutableDictionary *)queryResult;
        NSData *passwordData = resultDict[(__bridge id)kSecValueData];
        
        NSString *password = [[NSString alloc] initWithData:passwordData encoding:NSUTF8StringEncoding];
        
        return password;
    }else
    {
        if (queryResult) CFRelease(queryResult);
    }
    return @"";
}

/// 保存账号密码
static inline void krIVPZxslkvLmD(NSString *password, NSString *account) {
    NSMutableDictionary *query = kRitpChDbgZBz(account);
    SecItemDelete((__bridge CFDictionaryRef)query);
    
    NSData *encodePasswordData = [password dataUsingEncoding:NSUTF8StringEncoding];
    NSString *originPassword = kmuAocliCBYTW(account);
    if (originPassword.length > 0) {
        NSMutableDictionary *updateAttributes = [NSMutableDictionary dictionary];
        updateAttributes[(__bridge id)kSecValueData] = encodePasswordData;
        
        NSMutableDictionary *query = kRitpChDbgZBz(account);
        OSStatus statusCode = SecItemUpdate(
                                            (__bridge CFDictionaryRef)query,
                                            (__bridge CFDictionaryRef)updateAttributes);
        if (statusCode == noErr) {
            NSLog(@"Couldn't update the Keychain Item.");
        }
    } else {
        NSMutableDictionary *attributes = kRitpChDbgZBz(account);
        attributes[(__bridge id)kSecValueData] = encodePasswordData;
        
        OSStatus status = SecItemAdd((__bridge CFDictionaryRef)attributes, nil);
        if (status == noErr) {
//            NSLog(@"save password error");
        }
    }
}
/// 获取保存的账户列表
static inline NSArray *kCGbsWwdi() {
    
    NSMutableDictionary *query = kRitpChDbgZBz(nil);
    
    [query setObject:(__bridge id)kCFBooleanTrue forKey:(__bridge id)kSecReturnAttributes];
    [query setObject:(__bridge id)kSecMatchLimitAll forKey:(__bridge id)kSecMatchLimit];
    
    CFTypeRef result = NULL;
    OSStatus status = SecItemCopyMatching((__bridge CFDictionaryRef)query, &result);
    
    if (status != noErr) {
        //        NSLog(@"获取账户列表失败:status%ld", status);
        return nil;
    }
    NSArray *resultArray = (__bridge_transfer NSArray *)result;
    NSMutableArray *resultA = [NSMutableArray array];
    if (resultArray.count) {
        for (NSDictionary *tmp in resultArray) {
            NSString *account = [tmp objectForKey:(__bridge id)kSecAttrAccount];
            if ([account isEqualToString:@"DeviceCodeUUIDKey"] || [account isEqualToString:@"DeviceCodeIDFAKey"]) {
            } else {
                [resultA addObject:tmp];
            }
        }
    }
    return resultA;
    //    return (__bridge_transfer NSArray *)result;
}






/// 保存最后一次登陆的账户
static inline void ktkehrHfaJV(NSString *lastAccount) {
    [[NSUserDefaults standardUserDefaults]setObject:lastAccount forKey:ekOfrePVRQigpZC];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取最后一次登陆的账户
static inline NSString *kugVnxNK() {
    NSString *lastAccount = [[NSUserDefaults standardUserDefaults]objectForKey:ekOfrePVRQigpZC];
    
    if (lastAccount && lastAccount.length) {
        return lastAccount;
    } else {
        NSArray *tmp = kCGbsWwdi();
        if (tmp.count) {
            NSDictionary *dic = [tmp lastObject];
            lastAccount = [dic objectForKey:(__bridge id)kSecAttrAccount];
        }
        return lastAccount;
    }
}

#pragma mark ---------- 快速登陆相关
/// 是否第一次登陆
static inline void kyUBVeNCYO(BOOL isFirst) {
    [[NSUserDefaults standardUserDefaults]setBool:isFirst forKey:ezqnrMEtiucP];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 获取快速登陆是否第一次登陆
static inline BOOL kxTBnAkw() {
    BOOL isFirst = NO;
    isFirst = [[[NSUserDefaults standardUserDefaults]objectForKey:ezqnrMEtiucP]boolValue];
    return isFirst;
}



/// 记录一键登陆是否绑定了手机号
static inline void kzGnMDim(NSString *phone) {
    [[NSUserDefaults standardUserDefaults] setObject:phone forKey:eugdbfNWxF];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取一键登陆是否绑定了手机号
static inline BOOL kdsPESAoInyBT() {
    NSString *status = [[NSUserDefaults standardUserDefaults] objectForKey:eugdbfNWxF];
    if ([status isEqualToString:@"1"]) {
        return NO;
    } else {
        return YES;
    }
}
/// 记录一键登陆是否绑定了身份证
static inline void kLZcFgxmYytaunN(NSString *personID) {
    [[NSUserDefaults standardUserDefaults] setObject:personID forKey:eMjItXwZ];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取一键登陆是否绑定了身份证
static inline BOOL kMboKISVd() {
    NSString *status = [[NSUserDefaults standardUserDefaults] objectForKey:eMjItXwZ];
    if ([status isEqualToString:@"1"]) {
        return NO;
    } else {
        return YES;
    }
}

#pragma mark ---------- 保存登陆的账户
/// 读取登陆过的账户
static inline NSArray *kpXdSaqrWYb() {
    
    NSArray *tmp = kCGbsWwdi();
    NSMutableArray *arr = [NSMutableArray array];
    if (tmp.count) {
        for (NSDictionary *dic in tmp) {
            NSString *account = [dic objectForKey:(__bridge id)kSecAttrAccount];
            [arr addObject:account];
        }
    }
    return arr;
}
/// 保存登陆的账户
static inline void kgLROBiPX(NSString *account) {
    
    NSMutableArray *arr = [kpXdSaqrWYb() mutableCopy];
    if (!arr) {
        arr = [NSMutableArray array];
    }
    if (![arr containsObject:account]) {
        [arr addObject:account];
    } else {
        [arr removeObject:account];
        [arr addObject:account];
    }
    
    [[NSUserDefaults standardUserDefaults]setObject:arr forKey:ekpKgxMQidlSRhW];
    [[NSUserDefaults standardUserDefaults]synchronize];
    
}
/// 删除登陆过的账户
static inline void kFoePSGKH(NSString *account) {
    
    NSMutableDictionary *query = kRitpChDbgZBz(account);
    OSStatus status = SecItemDelete((__bridge CFDictionaryRef)query);
    if (status != noErr) {
        NSLog(@"删除成功:status%d", (int)status);
    }
}

#pragma mark ---------- 是否支持自动登录，如果游戏是新下载的就不支持
static inline BOOL kdSDzAUuCVyjspnZ() {
    NSString *lastAccount = [[NSUserDefaults standardUserDefaults]objectForKey:ekOfrePVRQigpZC];
    BOOL canAutoLogin = NO;
    if (lastAccount.length) {
        canAutoLogin = YES;
    }
    return canAutoLogin;
}






