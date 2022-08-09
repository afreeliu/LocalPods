
#import <Foundation/Foundation.h>
#import <Security/Security.h>

#pragma mark ---------- 快速登录相关
/// 快速登录保存是否第一快速登录
FOUNDATION_EXTERN NSString *const eFPSeAlN;
/// 快速登录是否绑定手机号 记录的key
FOUNDATION_EXTERN NSString *const eWDGUCLfOxHlrdz;
/// 快速登录是否绑定身份证 记录的key
FOUNDATION_EXTERN NSString *const ewyYrkvumtGN;

#pragma mark ---------- 登录相关
/// 保存登录过的账户的列表
FOUNDATION_EXTERN NSString *const efMuITKdzPerYasB;
FOUNDATION_EXTERN NSString *const epZWyeDEThLifV;
FOUNDATION_EXTERN NSString *const etXpuKkcjZHGSEchainservice;
FOUNDATION_EXTERN NSString *const etXpuKkcjZHGSEchainAccessGroup;


/// 获取使用SDK项目bundleID
static inline NSString *nbIcAMwdzLU() {
    NSString *bundleID = [[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString *)kCFBundleIdentifierKey];
    return bundleID;
}
/// 用于保存密码的serviceKey
static inline NSString *nCHzZXvF() {
    NSString *bundle = nbIcAMwdzLU();
    NSString *keyChainService = [bundle stringByAppendingString:@"jfdklsa"];
    return keyChainService;
}

static inline NSMutableDictionary *ntIqdvsRL(NSString *account) {
    NSMutableDictionary *query = [NSMutableDictionary dictionary];
    query[(__bridge id)kSecClass] = (__bridge id)kSecClassGenericPassword;
    query[(__bridge id)kSecAttrService] = nCHzZXvF();
    if (account) {
        query[(__bridge id)kSecAttrAccount] = account;
    }
    return query;
}

/// 根据账号查找对应的密码
static inline NSString *neVYdQWlDyHGfzS(NSString *account) {
    NSMutableDictionary *attributes = ntIqdvsRL(account);
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
static inline void ntqEHUVm(NSString *password, NSString *account) {
    NSMutableDictionary *query = ntIqdvsRL(account);
    SecItemDelete((__bridge CFDictionaryRef)query);
    
    NSData *encodePasswordData = [password dataUsingEncoding:NSUTF8StringEncoding];
    NSString *originPassword = neVYdQWlDyHGfzS(account);
    if (originPassword.length > 0) {
        NSMutableDictionary *updateAttributes = [NSMutableDictionary dictionary];
        updateAttributes[(__bridge id)kSecValueData] = encodePasswordData;
        
        NSMutableDictionary *query = ntIqdvsRL(account);
        OSStatus statusCode = SecItemUpdate(
                                            (__bridge CFDictionaryRef)query,
                                            (__bridge CFDictionaryRef)updateAttributes);
        if (statusCode == noErr) {
            NSLog(@"Couldn't update the Keychain Item.");
        }
    } else {
        NSMutableDictionary *attributes = ntIqdvsRL(account);
        attributes[(__bridge id)kSecValueData] = encodePasswordData;
        
        OSStatus status = SecItemAdd((__bridge CFDictionaryRef)attributes, nil);
        if (status == noErr) {
//            NSLog(@"save password error");
        }
    }
}
/// 获取保存的账户列表
static inline NSArray *nWjxRNUDod() {
    
    NSMutableDictionary *query = ntIqdvsRL(nil);
    
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






/// 保存最后一次登录的账户
static inline void nwJYlcmnI(NSString *lastAccount) {
    [[NSUserDefaults standardUserDefaults]setObject:lastAccount forKey:epZWyeDEThLifV];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取最后一次登录的账户
static inline NSString *nNrQXxUPJCtnTazq() {
    NSString *lastAccount = [[NSUserDefaults standardUserDefaults]objectForKey:epZWyeDEThLifV];
    
    if (lastAccount && lastAccount.length) {
        return lastAccount;
    } else {
        NSArray *tmp = nWjxRNUDod();
        if (tmp.count) {
            NSDictionary *dic = [tmp lastObject];
            lastAccount = [dic objectForKey:(__bridge id)kSecAttrAccount];
        }
        return lastAccount;
    }
}

#pragma mark ---------- 快速登录相关
/// 是否第一次登录
static inline void nYdouRUCvmeh(BOOL isFirst) {
    [[NSUserDefaults standardUserDefaults]setBool:isFirst forKey:eFPSeAlN];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 获取快速登录是否第一次登录
static inline BOOL nIMuCEZLgjhObBm() {
    BOOL isFirst = NO;
    isFirst = [[[NSUserDefaults standardUserDefaults]objectForKey:eFPSeAlN]boolValue];
    return isFirst;
}



/// 记录一键登录是否绑定了手机号
static inline void nnJCqacRLmHh(NSString *phone) {
    [[NSUserDefaults standardUserDefaults] setObject:phone forKey:eWDGUCLfOxHlrdz];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取一键登录是否绑定了手机号
static inline BOOL nqHkDlnvairewB() {
    NSString *status = [[NSUserDefaults standardUserDefaults] objectForKey:eWDGUCLfOxHlrdz];
    if ([status isEqualToString:@"1"]) {
        return NO;
    } else {
        return YES;
    }
}
/// 记录一键登录是否绑定了身份证
static inline void nvRJcAbKHVqarx(NSString *personID) {
    [[NSUserDefaults standardUserDefaults] setObject:personID forKey:ewyYrkvumtGN];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取一键登录是否绑定了身份证
static inline BOOL ngMirNXkQ() {
    NSString *status = [[NSUserDefaults standardUserDefaults] objectForKey:ewyYrkvumtGN];
    if ([status isEqualToString:@"1"]) {
        return NO;
    } else {
        return YES;
    }
}

#pragma mark ---------- 保存登录的账户
/// 读取登录过的账户
static inline NSArray *nIkyQLBtGH() {
    
    NSArray *tmp = nWjxRNUDod();
    NSMutableArray *arr = [NSMutableArray array];
    if (tmp.count) {
        for (NSDictionary *dic in tmp) {
            NSString *account = [dic objectForKey:(__bridge id)kSecAttrAccount];
            [arr addObject:account];
        }
    }
    return arr;
}
/// 保存登录的账户
static inline void nCRNGDXh(NSString *account) {
    
    NSMutableArray *arr = [nIkyQLBtGH() mutableCopy];
    if (!arr) {
        arr = [NSMutableArray array];
    }
    if (![arr containsObject:account]) {
        [arr addObject:account];
    } else {
        [arr removeObject:account];
        [arr addObject:account];
    }
    
    [[NSUserDefaults standardUserDefaults]setObject:arr forKey:efMuITKdzPerYasB];
    [[NSUserDefaults standardUserDefaults]synchronize];
    
}
/// 删除登录过的账户
static inline void nQNbdAcDOsln(NSString *account) {
    
    NSMutableDictionary *query = ntIqdvsRL(account);
    OSStatus status = SecItemDelete((__bridge CFDictionaryRef)query);
    if (status != noErr) {
        NSLog(@"删除成功:status%d", (int)status);
    }
}

#pragma mark ---------- 是否支持自动登录，如果游戏是新下载的就不支持
static inline BOOL nBpENnxljCua() {
    NSString *lastAccount = [[NSUserDefaults standardUserDefaults]objectForKey:epZWyeDEThLifV];
    BOOL canAutoLogin = NO;
    if (lastAccount.length) {
        canAutoLogin = YES;
    }
    return canAutoLogin;
}






