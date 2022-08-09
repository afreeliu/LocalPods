

#import <Foundation/Foundation.h>
#import <Security/Security.h>

#pragma mark ---------- 快速登陆相关
/// 快速登陆保存是否第一快速登陆
FOUNDATION_EXTERN NSString *const varNames_visitorFirstLoginKey;
/// 快速登陆是否绑定手机号 记录的key
FOUNDATION_EXTERN NSString *const varNames_visitorConnectPhoneKey;
/// 快速登陆是否绑定身份证 记录的key
FOUNDATION_EXTERN NSString *const varNames_visitorConnectPersonIDKey;

#pragma mark ---------- 登陆相关
/// 保存登陆过的账户的列表
FOUNDATION_EXTERN NSString *const varNames_haveLoginAccountKey;
FOUNDATION_EXTERN NSString *const varNames_lastAccountKey;
FOUNDATION_EXTERN NSString *const varNames_keychainservice;
FOUNDATION_EXTERN NSString *const varNames_keychainAccessGroup;


/// 获取使用SDK项目bundleID
static inline NSString *methodNames_readGameBundleID() {
    NSString *varNames_tmpbundleID = [[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString *)kCFBundleIdentifierKey];
    return varNames_tmpbundleID;
}
/// 用于保存密码的serviceKey
static inline NSString *methodNames_readKeyChainservice() {
    NSString *varNames_tmpbundle = methodNames_readGameBundleID();
    NSString *varNames_tmpkeyChainService = [varNames_tmpbundle stringByAppendingString:@"jfdklsa"];
    return varNames_tmpkeyChainService;
}

static inline NSMutableDictionary *methodNames_createKeyChainQuery(NSString *account) {
    NSMutableDictionary *varNames_tmpquery = [NSMutableDictionary dictionary];
    varNames_tmpquery[(__bridge id)kSecClass] = (__bridge id)kSecClassGenericPassword;
    varNames_tmpquery[(__bridge id)kSecAttrService] = methodNames_readKeyChainservice();
    if (account) {
        varNames_tmpquery[(__bridge id)kSecAttrAccount] = account;
    }
    return varNames_tmpquery;
}

/// 根据账号查找对应的密码
static inline NSString *methodNames_readPassword(NSString *account) {
    NSMutableDictionary *varNames_tmpattributes = methodNames_createKeyChainQuery(account);
    varNames_tmpattributes[(__bridge id)kSecMatchLimit] = (__bridge id)(kSecMatchLimitOne);
    varNames_tmpattributes[(__bridge id)kSecReturnAttributes] = (__bridge id _Nullable)(kCFBooleanTrue);
    varNames_tmpattributes[(__bridge id)kSecReturnData] = (__bridge id _Nullable)(kCFBooleanTrue);
    CFMutableDictionaryRef varNames_tmpqueryResult = nil;
    OSStatus varNames_tmpkeychainError = noErr;
    varNames_tmpkeychainError = SecItemCopyMatching((__bridge CFDictionaryRef)varNames_tmpattributes,(CFTypeRef *)&varNames_tmpqueryResult);
    if (varNames_tmpkeychainError == errSecItemNotFound) {
        if (varNames_tmpqueryResult) CFRelease(varNames_tmpqueryResult);
        return @"";
    }else if (varNames_tmpkeychainError == noErr) {
        
        if (varNames_tmpqueryResult == nil){return @"";}
        NSMutableDictionary *resultDict = (__bridge NSMutableDictionary *)varNames_tmpqueryResult;
        NSData *varNames_tmppasswordData = resultDict[(__bridge id)kSecValueData];
        
        NSString *varNames_tmppassword = [[NSString alloc] initWithData:varNames_tmppasswordData encoding:NSUTF8StringEncoding];
        
        return varNames_tmppassword;
    }else
    {
        if (varNames_tmpqueryResult) CFRelease(varNames_tmpqueryResult);
    }
    return @"";
}

/// 保存账号密码
static inline void methodNames_savePassword(NSString *password, NSString *account) {
    NSMutableDictionary *varNames_tmpquery = methodNames_createKeyChainQuery(account);
    SecItemDelete((__bridge CFDictionaryRef)varNames_tmpquery);
    
    NSData *varNames_tmpencodePasswordData = [password dataUsingEncoding:NSUTF8StringEncoding];
    NSString *varNames_tmporiginPassword = methodNames_readPassword(account);
    if (varNames_tmporiginPassword.length > 0) {
        NSMutableDictionary *varNames_tmpupdateAttributes = [NSMutableDictionary dictionary];
        varNames_tmpupdateAttributes[(__bridge id)kSecValueData] = varNames_tmpencodePasswordData;
        
        NSMutableDictionary *varNames_tmpquery = methodNames_createKeyChainQuery(account);
        OSStatus varNames_tmpstatusCode = SecItemUpdate(
                                            (__bridge CFDictionaryRef)varNames_tmpquery,
                                            (__bridge CFDictionaryRef)varNames_tmpupdateAttributes);
        if (varNames_tmpstatusCode == noErr) {
        }
    } else {
        NSMutableDictionary *varNames_tmpattributes = methodNames_createKeyChainQuery(account);
        varNames_tmpattributes[(__bridge id)kSecValueData] = varNames_tmpencodePasswordData;
        
        OSStatus varNames_tmpstatus = SecItemAdd((__bridge CFDictionaryRef)varNames_tmpattributes, nil);
        if (varNames_tmpstatus == noErr) {
        }
    }
}
/// 获取保存的账户列表
static inline NSArray *methodNames_getAllAccount() {
    
    NSMutableDictionary *varNames_tmpquery = methodNames_createKeyChainQuery(nil);
    
    [varNames_tmpquery setObject:(__bridge id)kCFBooleanTrue forKey:(__bridge id)kSecReturnAttributes];
    [varNames_tmpquery setObject:(__bridge id)kSecMatchLimitAll forKey:(__bridge id)kSecMatchLimit];
    
    CFTypeRef varNames_tmpresult = NULL;
    OSStatus varNames_tmpstatus = SecItemCopyMatching((__bridge CFDictionaryRef)varNames_tmpquery, &varNames_tmpresult);
    
    if (varNames_tmpstatus != noErr) {
        //        NSLog(@"获取账户列表失败:status%ld", status);
        return nil;
    }
    NSArray *varNames_tmpresultArray = (__bridge_transfer NSArray *)varNames_tmpresult;
    NSMutableArray *varNames_tmpresultA = [NSMutableArray array];
    if (varNames_tmpresultArray.count) {
        for (NSDictionary *tmp in varNames_tmpresultArray) {
            NSString *varNames_tmpaccount = [tmp objectForKey:(__bridge id)kSecAttrAccount];
            if ([varNames_tmpaccount isEqualToString:@"DeviceCodeUUIDKey"] || [varNames_tmpaccount isEqualToString:@"DeviceCodeIDFAKey"]) {
            } else {
                [varNames_tmpresultA addObject:tmp];
            }
        }
    }
    return varNames_tmpresultA;
    //    return (__bridge_transfer NSArray *)result;
}






/// 保存最后一次登陆的账户
static inline void methodNames_saveLastAccount(NSString *lastAccount) {
    [[NSUserDefaults standardUserDefaults]setObject:lastAccount forKey:varNames_lastAccountKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取最后一次登陆的账户
static inline NSString *methodNames_readLastAccount() {
    NSString *varNames_tmplastAccount = [[NSUserDefaults standardUserDefaults]objectForKey:varNames_lastAccountKey];
    
    if (varNames_tmplastAccount && varNames_tmplastAccount.length) {
        return varNames_tmplastAccount;
    } else {
        NSArray *varNames_tmptmp = methodNames_getAllAccount();
        if (varNames_tmptmp.count) {
            NSDictionary *varNames_tmpdic = [varNames_tmptmp lastObject];
            varNames_tmplastAccount = [varNames_tmpdic objectForKey:(__bridge id)kSecAttrAccount];
        }
        return varNames_tmplastAccount;
    }
}

#pragma mark ---------- 快速登陆相关
/// 是否第一次登陆
static inline void methodNames_saveVisitorFirstLogin(BOOL isFirst) {
    [[NSUserDefaults standardUserDefaults]setBool:isFirst forKey:varNames_visitorFirstLoginKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 获取快速登陆是否第一次登陆
static inline BOOL methodNames_readVisitorLogin() {
    BOOL varNames_tmpisFirst = NO;
    varNames_tmpisFirst = [[[NSUserDefaults standardUserDefaults]objectForKey:varNames_visitorFirstLoginKey]boolValue];
    return varNames_tmpisFirst;
}



/// 记录一键登陆是否绑定了手机号
static inline void methodNames_saveVisitorConnectPhone(NSString *phone) {
    [[NSUserDefaults standardUserDefaults] setObject:phone forKey:varNames_visitorConnectPhoneKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取一键登陆是否绑定了手机号
static inline BOOL methodNames_readVisitorConnectPhone() {
    NSString *varNames_tmpstatus = [[NSUserDefaults standardUserDefaults] objectForKey:varNames_visitorConnectPhoneKey];
    if ([varNames_tmpstatus isEqualToString:@"1"]) {
        return NO;
    } else {
        return YES;
    }
}
/// 记录一键登陆是否绑定了身份证
static inline void methodNames_saveVisitorConnectPersonID(NSString *personID) {
    [[NSUserDefaults standardUserDefaults] setObject:personID forKey:varNames_visitorConnectPersonIDKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取一键登陆是否绑定了身份证
static inline BOOL methodNames_readVisitorConnectPersonID() {
    NSString *varNames_tmpstatus = [[NSUserDefaults standardUserDefaults] objectForKey:varNames_visitorConnectPersonIDKey];
    if ([varNames_tmpstatus isEqualToString:@"1"]) {
        return NO;
    } else {
        return YES;
    }
}
#pragma mark ---------- 是否支持自动登录，如果游戏是新下载的就不支持
static inline void methodNames_saveAutoLogin(BOOL canAuto) {
    [[NSUserDefaults standardUserDefaults]setBool:canAuto forKey:@"varNames_CanAutoLogin"];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

static inline BOOL methodNames_canAutoLogin() {
    return [[NSUserDefaults standardUserDefaults]boolForKey:@"varNames_CanAutoLogin"];
}
#pragma mark ---------- 保存登陆的账户
/// 读取登陆过的账户
static inline NSArray *methodNames_readLoginedAccount() {
    
    NSArray *varNames_tmptmp = methodNames_getAllAccount();
    NSMutableArray *varNames_tmparr = [NSMutableArray array];
    if (varNames_tmptmp.count) {
        for (NSDictionary *varNames_tmpdic in varNames_tmptmp) {
            NSString *varNames_tmpaccount = [varNames_tmpdic objectForKey:(__bridge id)kSecAttrAccount];
            [varNames_tmparr addObject:varNames_tmpaccount];
        }
    }
    return varNames_tmparr;
}
/// 保存登陆的账户
static inline void methodNames_saveAccount(NSString *account) {
    
    NSMutableArray *varNames_tmparr = [methodNames_readLoginedAccount() mutableCopy];
    if (!varNames_tmparr) {
        varNames_tmparr = [NSMutableArray array];
    }
    if (account && [account length]) {
        methodNames_saveAutoLogin(YES);
    } else {
        methodNames_saveAutoLogin(NO);
    }
    if (![varNames_tmparr containsObject:account]) {
        [varNames_tmparr addObject:account];
    } else {
        [varNames_tmparr removeObject:account];
        [varNames_tmparr addObject:account];
    }
    
    [[NSUserDefaults standardUserDefaults]setObject:varNames_tmparr forKey:varNames_haveLoginAccountKey];
    [[NSUserDefaults standardUserDefaults]synchronize];
    
}
/// 删除登陆过的账户
static inline void methodNames_deleteAccount(NSString *account) {
    
    NSMutableDictionary *varNames_tmpquery = methodNames_createKeyChainQuery(account);
    OSStatus varNames_tmpstatus = SecItemDelete((__bridge CFDictionaryRef)varNames_tmpquery);
    if (varNames_tmpstatus != noErr) {
        NSLog(@"删除成功:status%d", (int)varNames_tmpstatus);
    }
}






