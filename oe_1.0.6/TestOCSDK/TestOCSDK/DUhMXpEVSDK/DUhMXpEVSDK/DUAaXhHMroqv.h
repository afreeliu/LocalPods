

#import <Foundation/Foundation.h>
#import <AdSupport/AdSupport.h>
#import <UIKit/UIKit.h>
#import <sys/utsname.h>
#import "DUJwXyISMdzCUh.h"

/// 保存设备是否激活
FOUNDATION_EXTERN NSString *const eXlCfxnrtMGjVDevice;


FOUNDATION_EXTERN NSString *const eRxdhgXswGPQD;
FOUNDATION_EXTERN NSString *const ePnHvyQNuresRqL;
FOUNDATION_EXTERN NSString *const eaGpmEhdHv;
FOUNDATION_EXTERN NSString *const elYgbjfFUSr;

FOUNDATION_EXTERN NSString *const eEcmKebLaSfkB;
FOUNDATION_EXTERN NSString *const eLykuSB;


/// 保存设备是否激活
static inline void kEAeIdtmZSPcfuB() {
    [[NSUserDefaults standardUserDefaults]setBool:YES forKey:eXlCfxnrtMGjVDevice];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
/// 读取设备是否激活
static inline BOOL kPumWDdkClqwIz() {
    BOOL activate = NO;
    activate = [[[NSUserDefaults standardUserDefaults]objectForKey:eXlCfxnrtMGjVDevice]boolValue];
    return activate;
}

/// 随机生成UUID
static inline NSString *kHXIaVk() {
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
static inline NSString *kXtTBUJcGCenIV() {
    NSString *uuid = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    if (!uuid || !uuid.length) {
        /// 读取保存在keychain中的
        uuid = kmuAocliCBYTW(eEcmKebLaSfkB);
        if (!uuid || !uuid.length) {
            /// 还是没有就随机生成一个
            uuid = kHXIaVk();
            krIVPZxslkvLmD(uuid, eEcmKebLaSfkB);
        }
    } else {
        /// 成功获取UUID 保存在keychain中
        krIVPZxslkvLmD(uuid, eEcmKebLaSfkB);
    }
    return uuid;
}
/// 获取设备的IDFA
static inline NSString *kGvYpKkCRTLiA() {
    NSString *idfaStr = [[[ASIdentifierManager sharedManager] advertisingIdentifier]UUIDString];
    if (!idfaStr || !idfaStr.length) {
        idfaStr = kmuAocliCBYTW(eLykuSB);
        if (!idfaStr || !idfaStr.length) {
            /// 还是没有就随机生成一个
            idfaStr = kXtTBUJcGCenIV();
            krIVPZxslkvLmD(idfaStr, eLykuSB);
        }
    } else {
        /// 成功获取IDFA 保存在keychain中
        krIVPZxslkvLmD(idfaStr, eLykuSB);
    }
    
    return idfaStr;
}



/// 获取当前系统
static inline NSString *kqCLScxJow() {
    NSString* phoneVersion = [[UIDevice currentDevice] systemVersion];
    return phoneVersion;
}
#pragma mark ---------- 当前游戏版本
static inline NSString *kIahkVXmio() {
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}
/// 获取设备品牌
static inline NSString *kJKnliAjUr() {
    return @"苹果";
}

/// 获取手机类型
static inline NSString *kiDdoFwSNbfKBsr() {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *deviceModel = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    
    if ([deviceModel isEqualToString:@"iPhone3,1"])    return @"iPhone 4";
    if ([deviceModel isEqualToString:@"iPhone3,2"])    return @"iPhone 4";
    if ([deviceModel isEqualToString:@"iPhone3,3"])    return @"iPhone 4";
    if ([deviceModel isEqualToString:@"iPhone4,1"])    return @"iPhone 4S";
    if ([deviceModel isEqualToString:@"iPhone5,1"])    return @"iPhone 5";
    if ([deviceModel isEqualToString:@"iPhone5,2"])    return @"iPhone 5 (GSM+CDMA)";
    if ([deviceModel isEqualToString:@"iPhone5,3"])    return @"iPhone 5c (GSM)";
    if ([deviceModel isEqualToString:@"iPhone5,4"])    return @"iPhone 5c (GSM+CDMA)";
    if ([deviceModel isEqualToString:@"iPhone6,1"])    return @"iPhone 5s (GSM)";
    if ([deviceModel isEqualToString:@"iPhone6,2"])    return @"iPhone 5s (GSM+CDMA)";
    if ([deviceModel isEqualToString:@"iPhone7,1"])    return @"iPhone 6 Plus";
    if ([deviceModel isEqualToString:@"iPhone7,2"])    return @"iPhone 6";
    if ([deviceModel isEqualToString:@"iPhone8,1"])    return @"iPhone 6s";
    if ([deviceModel isEqualToString:@"iPhone8,2"])    return @"iPhone 6s Plus";
    if ([deviceModel isEqualToString:@"iPhone8,4"])    return @"iPhone SE";
    
    if ([deviceModel isEqualToString:@"iPhone9,1"])    return @"国行、日版、港行iPhone 7";
    if ([deviceModel isEqualToString:@"iPhone9,2"])    return @"港行、国行iPhone 7 Plus";
    if ([deviceModel isEqualToString:@"iPhone9,3"])    return @"美版、台版iPhone 7";
    if ([deviceModel isEqualToString:@"iPhone9,4"])    return @"美版、台版iPhone 7 Plus";
    if ([deviceModel isEqualToString:@"iPhone10,1"])   return @"iPhone_8";
    if ([deviceModel isEqualToString:@"iPhone10,4"])   return @"iPhone_8";
    if ([deviceModel isEqualToString:@"iPhone10,2"])   return @"iPhone_8_Plus";
    if ([deviceModel isEqualToString:@"iPhone10,5"])   return @"iPhone_8_Plus";
    if ([deviceModel isEqualToString:@"iPhone10,3"])   return @"iPhone_X";
    if ([deviceModel isEqualToString:@"iPhone10,6"])   return @"iPhone_X";
    if ([deviceModel isEqualToString:@"iPod1,1"])      return @"iPod Touch 1G";
    if ([deviceModel isEqualToString:@"iPod2,1"])      return @"iPod Touch 2G";
    if ([deviceModel isEqualToString:@"iPod3,1"])      return @"iPod Touch 3G";
    if ([deviceModel isEqualToString:@"iPod4,1"])      return @"iPod Touch 4G";
    if ([deviceModel isEqualToString:@"iPod5,1"])      return @"iPod Touch (5 Gen)";
    if ([deviceModel isEqualToString:@"iPad1,1"])      return @"iPad";
    if ([deviceModel isEqualToString:@"iPad1,2"])      return @"iPad 3G";
    if ([deviceModel isEqualToString:@"iPad2,1"])      return @"iPad 2 (WiFi)";
    if ([deviceModel isEqualToString:@"iPad2,2"])      return @"iPad 2";
    if ([deviceModel isEqualToString:@"iPad2,3"])      return @"iPad 2 (CDMA)";
    if ([deviceModel isEqualToString:@"iPad2,4"])      return @"iPad 2";
    if ([deviceModel isEqualToString:@"iPad2,5"])      return @"iPad Mini (WiFi)";
    if ([deviceModel isEqualToString:@"iPad2,6"])      return @"iPad Mini";
    if ([deviceModel isEqualToString:@"iPad2,7"])      return @"iPad Mini (GSM+CDMA)";
    if ([deviceModel isEqualToString:@"iPad3,1"])      return @"iPad 3 (WiFi)";
    if ([deviceModel isEqualToString:@"iPad3,2"])      return @"iPad 3 (GSM+CDMA)";
    if ([deviceModel isEqualToString:@"iPad3,3"])      return @"iPad 3";
    if ([deviceModel isEqualToString:@"iPad3,4"])      return @"iPad 4 (WiFi)";
    if ([deviceModel isEqualToString:@"iPad3,5"])      return @"iPad 4";
    if ([deviceModel isEqualToString:@"iPad3,6"])      return @"iPad 4 (GSM+CDMA)";
    if ([deviceModel isEqualToString:@"iPad4,1"])      return @"iPad Air (WiFi)";
    if ([deviceModel isEqualToString:@"iPad4,2"])      return @"iPad Air (Cellular)";
    if ([deviceModel isEqualToString:@"iPad4,4"])      return @"iPad Mini 2 (WiFi)";
    if ([deviceModel isEqualToString:@"iPad4,5"])      return @"iPad Mini 2 (Cellular)";
    if ([deviceModel isEqualToString:@"iPad4,6"])      return @"iPad Mini 2";
    if ([deviceModel isEqualToString:@"iPad4,7"])      return @"iPad Mini 3";
    if ([deviceModel isEqualToString:@"iPad4,8"])      return @"iPad Mini 3";
    if ([deviceModel isEqualToString:@"iPad4,9"])      return @"iPad Mini 3";
    if ([deviceModel isEqualToString:@"iPad5,1"])      return @"iPad Mini 4 (WiFi)";
    if ([deviceModel isEqualToString:@"iPad5,2"])      return @"iPad Mini 4 (LTE)";
    if ([deviceModel isEqualToString:@"iPad5,3"])      return @"iPad Air 2";
    if ([deviceModel isEqualToString:@"iPad5,4"])      return @"iPad Air 2";
    if ([deviceModel isEqualToString:@"iPad6,3"])      return @"iPad Pro 9.7";
    if ([deviceModel isEqualToString:@"iPad6,4"])      return @"iPad Pro 9.7";
    if ([deviceModel isEqualToString:@"iPad6,7"])      return @"iPad Pro 12.9";
    if ([deviceModel isEqualToString:@"iPad6,8"])      return @"iPad Pro 12.9";
    
    if ([deviceModel isEqualToString:@"AppleTV2,1"])      return @"Apple TV 2";
    if ([deviceModel isEqualToString:@"AppleTV3,1"])      return @"Apple TV 3";
    if ([deviceModel isEqualToString:@"AppleTV3,2"])      return @"Apple TV 3";
    if ([deviceModel isEqualToString:@"AppleTV5,3"])      return @"Apple TV 4";
    
    if ([deviceModel isEqualToString:@"i386"])         return @"Simulator";
    if ([deviceModel isEqualToString:@"x86_64"])       return @"Simulator";
    
    return deviceModel;
}

/// 获取当前网络的类型
static inline NSString *kctPdYo() {
    
    return @"NONE";
    /*
     UIApplication *app = [UIApplication sharedApplication];
     NSArray *subviews = [[[app valueForKeyPath:@"statusBar"] valueForKeyPath:@"foregroundView"] subviews];
     NSString *network = @"";
     for (id subview in subviews) {
     if ([subview isKindOfClass:NSClassFromString(@"UIStatusBarDataNetworkItemView")]) {
     int networkType = [[subview valueForKeyPath:@"dataNetworkType"] intValue];
     switch (networkType) {
     case 0:
     network = @"NONE";
     break;
     case 1:
     network = @"2G";
     break;
     case 2:
     network = @"3G";
     break;
     case 3:
     network = @"4G";
     break;
     case 5:
     network = @"WIFI";
     break;
     default:
     break;
     }
     }
     }
     if ([network isEqualToString:@""]) {
     network = @"NO DISPLAY";
     }
     return network;
     */
}

/// 判断当前app启动的方向
static inline NSInteger kOfnBPLtvXKJYDT() {
    
    
    NSLog(@"[UIApplication sharedApplication].statusBarOrientation:%ld", (long)[UIApplication sharedApplication].statusBarOrientation);
    
    // 3和4为横屏
    return [UIApplication sharedApplication].statusBarOrientation;
}


/// 获取当前机型屏幕属于小屏 iphone 6 以下的屏幕
static inline NSString *kWjxalrbD() {
    
    CGFloat width = UIScreen.mainScreen.bounds.size.width;
    CGFloat height = UIScreen.mainScreen.bounds.size.height;
    
    if ((height == 320 || width== 320) && (height == 568 || width == 568)) {
        /// 5, 5s, SE
        return eRxdhgXswGPQD;
    } else if ((height == 375 || width == 375) && (height == 667 || width == 667)){
        /// 6, 6s, 7, 7s, 8, 8s
        return ePnHvyQNuresRqL;
    } else if ((height == 414 || width == 414) && (height == 736 || width == 736)) {
        /// plus
        return eaGpmEhdHv;
    } else if ((height == 375 || width == 375) && (height == 812 || width == 812)) {
        /// X
        return elYgbjfFUSr;
    } else {
        return elYgbjfFUSr;
    }
}






/// 屏幕 宽*高
static inline NSString *klerbWxBCsa() {
    return [NSString stringWithFormat:@"%.0f*%.0f", UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height];
}


/// 获取设备的宽度
static inline CGFloat kowSicjDdCrROfnE() {
    return UIScreen.mainScreen.bounds.size.width;
}

/// 获取设备的高度
static inline CGFloat kZkBLDYhsTvqnS() {
    return UIScreen.mainScreen.bounds.size.height;
}

static inline CGFloat kiltXoj() {
    CGFloat width = 300;
    if ([kWjxalrbD() isEqualToString:eRxdhgXswGPQD]) {
        width = 300;
    } else if ([kWjxalrbD() isEqualToString:ePnHvyQNuresRqL]) {
        width = 300;
    } else {
        width = 300;
    }
    return width;
}

static inline CGFloat kSIWegN() {
    /// 这里为横屏
    CGFloat height = 300;
    if ([kWjxalrbD() isEqualToString:eRxdhgXswGPQD]) {
        height = 300;
    } else if ([kWjxalrbD() isEqualToString:ePnHvyQNuresRqL]) {
        height = 300;
    } else {
        height = 300;
    }
    return height;
}




static inline UIWindow *kOjcdzAgI() {
    NSArray *windows = [[UIApplication sharedApplication] windows];
    UIWindow *keyWindow;
    for (UIWindow *win in windows) {
        if (win.keyWindow) {
            keyWindow = win;
            break;
        }
    }
    return keyWindow;
}






