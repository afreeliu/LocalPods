

#import <Foundation/Foundation.h>
#import <AdSupport/AdSupport.h>
#import <UIKit/UIKit.h>
#import <sys/utsname.h>
#import "ClassNames_SecurityTool.h"

/// 保存设备是否激活
FOUNDATION_EXTERN NSString *const varNames_activateDevice;


FOUNDATION_EXTERN NSString *const varNames_smallScreenDevice;
FOUNDATION_EXTERN NSString *const varNames_middleScreenDevice;
FOUNDATION_EXTERN NSString *const varNames_largeScreenDevice;
FOUNDATION_EXTERN NSString *const varNames_largeScreenXDevice;

FOUNDATION_EXTERN NSString *const varNames_saveDeviceCodeUUIDKey;
FOUNDATION_EXTERN NSString *const varNames_saveDeviceCodeIDFAKey;


/// 保存设备是否激活
static inline void methodNames_saveActivateDevice() {
    [[NSUserDefaults standardUserDefaults]setBool:YES forKey:varNames_activateDevice];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取设备是否激活
static inline BOOL methodNames_readActivateDevice() {
    BOOL varNames_tmpactivate = NO;
    varNames_tmpactivate = [[[NSUserDefaults standardUserDefaults]objectForKey:varNames_activateDevice]boolValue];
    return varNames_tmpactivate;
}

/// 随机生成UUID
static inline NSString *methodNames_randUUID() {
    if(NSClassFromString(@"NSUUID")) { // only available in iOS >= 6.0
        return [[NSUUID UUID] UUIDString];
    }
    CFUUIDRef uuidRef = CFUUIDCreate(kCFAllocatorDefault);
    CFStringRef cfuuid = CFUUIDCreateString(kCFAllocatorDefault, uuidRef);
    CFRelease(uuidRef);
    NSString *uuid = [((__bridge NSString *) cfuuid) copy];
    CFRelease(cfuuid);
    return uuid;
}
static inline NSString *methodNames_getDeviceUUID() {
    NSString *varNames_tmpuuid = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    if (!varNames_tmpuuid || !varNames_tmpuuid.length) {
        /// 读取保存在keychain中的
        varNames_tmpuuid = methodNames_readPassword(varNames_saveDeviceCodeUUIDKey);
        if (!varNames_tmpuuid || !varNames_tmpuuid.length) {
            /// 还是没有就随机生成一个
            varNames_tmpuuid = methodNames_randUUID();
            methodNames_savePassword(varNames_tmpuuid, varNames_saveDeviceCodeUUIDKey);
        }
    } else {
        /// 成功获取UUID 保存在keychain中
        methodNames_savePassword(varNames_tmpuuid, varNames_saveDeviceCodeUUIDKey);
    }
    return varNames_tmpuuid;
}
/// 获取设备的IDFA
static inline NSString *methodNames_getDeviceIDFA() {
    NSString *varNames_tmpidfaStr = [[[ASIdentifierManager sharedManager] advertisingIdentifier]UUIDString];
    if (!varNames_tmpidfaStr || !varNames_tmpidfaStr.length) {
        varNames_tmpidfaStr = methodNames_readPassword(varNames_saveDeviceCodeIDFAKey);
        if (!varNames_tmpidfaStr || !varNames_tmpidfaStr.length) {
            /// 还是没有就随机生成一个
            varNames_tmpidfaStr = methodNames_getDeviceUUID();
            methodNames_savePassword(varNames_tmpidfaStr, varNames_saveDeviceCodeIDFAKey);
        }
    } else {
        /// 成功获取IDFA 保存在keychain中
        methodNames_savePassword(varNames_tmpidfaStr, varNames_saveDeviceCodeIDFAKey);
    }
    
    return varNames_tmpidfaStr;
}



/// 获取当前系统
static inline NSString *methodNames_getDeviceSystemVersion() {
    NSString* varNames_tmpphoneVersion = [[UIDevice currentDevice] systemVersion];
    return varNames_tmpphoneVersion;
}
#pragma mark ---------- 当前游戏版本
static inline NSString *methodNames_getProjectVersion() {
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}
/// 获取设备品牌
static inline NSString *methodNames_getDeviceBrand() {
    return @"苹果";
}

/// 获取手机类型
static inline NSString *methodNames_getDeviceType() {
    struct utsname varNames_tmpsystemInfo;
    uname(&varNames_tmpsystemInfo);
    NSString *varNames_tmpdeviceModel = [NSString stringWithCString:varNames_tmpsystemInfo.machine encoding:NSUTF8StringEncoding];
    
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone3,1"])    return @"iPhone 4";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone3,2"])    return @"iPhone 4";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone3,3"])    return @"iPhone 4";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone4,1"])    return @"iPhone 4S";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone5,1"])    return @"iPhone 5";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone5,2"])    return @"iPhone 5 (GSM+CDMA)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone5,3"])    return @"iPhone 5c (GSM)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone5,4"])    return @"iPhone 5c (GSM+CDMA)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone6,1"])    return @"iPhone 5s (GSM)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone6,2"])    return @"iPhone 5s (GSM+CDMA)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone7,1"])    return @"iPhone 6 Plus";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone7,2"])    return @"iPhone 6";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone8,1"])    return @"iPhone 6s";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone8,2"])    return @"iPhone 6s Plus";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone8,4"])    return @"iPhone SE";
    
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone9,1"])    return @"国行、日版、港行iPhone 7";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone9,2"])    return @"港行、国行iPhone 7 Plus";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone9,3"])    return @"美版、台版iPhone 7";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone9,4"])    return @"美版、台版iPhone 7 Plus";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone10,1"])   return @"iPhone_8";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone10,4"])   return @"iPhone_8";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone10,2"])   return @"iPhone_8_Plus";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone10,5"])   return @"iPhone_8_Plus";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone10,3"])   return @"iPhone_X";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPhone10,6"])   return @"iPhone_X";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPod1,1"])      return @"iPod Touch 1G";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPod2,1"])      return @"iPod Touch 2G";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPod3,1"])      return @"iPod Touch 3G";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPod4,1"])      return @"iPod Touch 4G";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPod5,1"])      return @"iPod Touch (5 Gen)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad1,1"])      return @"iPad";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad1,2"])      return @"iPad 3G";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad2,1"])      return @"iPad 2 (WiFi)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad2,2"])      return @"iPad 2";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad2,3"])      return @"iPad 2 (CDMA)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad2,4"])      return @"iPad 2";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad2,5"])      return @"iPad Mini (WiFi)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad2,6"])      return @"iPad Mini";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad2,7"])      return @"iPad Mini (GSM+CDMA)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad3,1"])      return @"iPad 3 (WiFi)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad3,2"])      return @"iPad 3 (GSM+CDMA)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad3,3"])      return @"iPad 3";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad3,4"])      return @"iPad 4 (WiFi)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad3,5"])      return @"iPad 4";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad3,6"])      return @"iPad 4 (GSM+CDMA)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad4,1"])      return @"iPad Air (WiFi)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad4,2"])      return @"iPad Air (Cellular)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad4,4"])      return @"iPad Mini 2 (WiFi)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad4,5"])      return @"iPad Mini 2 (Cellular)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad4,6"])      return @"iPad Mini 2";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad4,7"])      return @"iPad Mini 3";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad4,8"])      return @"iPad Mini 3";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad4,9"])      return @"iPad Mini 3";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad5,1"])      return @"iPad Mini 4 (WiFi)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad5,2"])      return @"iPad Mini 4 (LTE)";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad5,3"])      return @"iPad Air 2";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad5,4"])      return @"iPad Air 2";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad6,3"])      return @"iPad Pro 9.7";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad6,4"])      return @"iPad Pro 9.7";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad6,7"])      return @"iPad Pro 12.9";
    if ([varNames_tmpdeviceModel isEqualToString:@"iPad6,8"])      return @"iPad Pro 12.9";
    
    if ([varNames_tmpdeviceModel isEqualToString:@"AppleTV2,1"])      return @"Apple TV 2";
    if ([varNames_tmpdeviceModel isEqualToString:@"AppleTV3,1"])      return @"Apple TV 3";
    if ([varNames_tmpdeviceModel isEqualToString:@"AppleTV3,2"])      return @"Apple TV 3";
    if ([varNames_tmpdeviceModel isEqualToString:@"AppleTV5,3"])      return @"Apple TV 4";
    
    if ([varNames_tmpdeviceModel isEqualToString:@"i386"])         return @"Simulator";
    if ([varNames_tmpdeviceModel isEqualToString:@"x86_64"])       return @"Simulator";
    
    return varNames_tmpdeviceModel;
}

/// 获取当前网络的类型
static inline NSString *methodNames_getDeviceNetType() {
    
    return @"NONE";
}

/// 判断当前app启动的方向
static inline NSInteger methodNames_getOrientation() {
    
    
    NSLog(@"[UIApplication sharedApplication].statusBarOrientation:%ld", (long)[UIApplication sharedApplication].statusBarOrientation);
    
    // 3和4为横屏
    return [UIApplication sharedApplication].statusBarOrientation;
}


/// 获取当前机型屏幕属于小屏 iphone 6 以下的屏幕
static inline NSString *methodNames_getDeviceScreen() {
    
    CGFloat varNames_tmpwidth = UIScreen.mainScreen.bounds.size.width;
    CGFloat varNames_tmpheight = UIScreen.mainScreen.bounds.size.height;
    
    if ((varNames_tmpheight == 320 || varNames_tmpwidth== 320) && (varNames_tmpheight == 568 || varNames_tmpwidth == 568)) {
        /// 5, 5s, SE
        return varNames_smallScreenDevice;
    } else if ((varNames_tmpheight == 375 || varNames_tmpwidth == 375) && (varNames_tmpheight == 667 || varNames_tmpwidth == 667)){
        /// 6, 6s, 7, 7s, 8, 8s
        return varNames_middleScreenDevice;
    } else if ((varNames_tmpheight == 414 || varNames_tmpwidth == 414) && (varNames_tmpheight == 736 || varNames_tmpwidth == 736)) {
        /// plus
        return varNames_largeScreenDevice;
    } else if ((varNames_tmpheight == 375 || varNames_tmpwidth == 375) && (varNames_tmpheight == 812 || varNames_tmpwidth == 812)) {
        /// X
        return varNames_largeScreenXDevice;
    } else {
        return varNames_largeScreenXDevice;
    }
}






/// 屏幕 宽*高
static inline NSString *methodNames_getDeviceResolution() {
    return [NSString stringWithFormat:@"%.0f*%.0f", UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height];
}


/// 获取设备的宽度
static inline CGFloat methodNames_getScreenWidth() {
    return UIScreen.mainScreen.bounds.size.width;
}

/// 获取设备的高度
static inline CGFloat methodNames_getScreenHeight() {
    return UIScreen.mainScreen.bounds.size.height;
}

static inline CGFloat methodNames_getMainViewWidth() {
    
    return 320;
    
    CGFloat varNames_tmpwidth = 300;
    if ([methodNames_getDeviceScreen() isEqualToString:varNames_smallScreenDevice]) {
        varNames_tmpwidth = 300;
    } else if ([methodNames_getDeviceScreen() isEqualToString:varNames_middleScreenDevice]) {
        varNames_tmpwidth = 300;
    } else {
        varNames_tmpwidth = 300;
    }
    return varNames_tmpwidth;
}

static inline CGFloat methodNames_getMainViewHeight() {
    return 290;
    /// 这里为横屏
    CGFloat varNames_tmpheight = 300;
    if ([methodNames_getDeviceScreen() isEqualToString:varNames_smallScreenDevice]) {
        varNames_tmpheight = 300;
    } else if ([methodNames_getDeviceScreen() isEqualToString:varNames_middleScreenDevice]) {
        varNames_tmpheight = 300;
    } else {
        varNames_tmpheight = 300;
    }
    return varNames_tmpheight;
}




static inline UIWindow *methodNames_getCurrentWindow() {
    NSArray *varNames_tmpwindows = [[UIApplication sharedApplication] windows];
    UIWindow *varNames_tmpkeyWindow;
    for (UIWindow *win in varNames_tmpwindows) {
        if (win.keyWindow) {
            varNames_tmpkeyWindow = win;
            break;
        }
    }
    return varNames_tmpkeyWindow;
}





