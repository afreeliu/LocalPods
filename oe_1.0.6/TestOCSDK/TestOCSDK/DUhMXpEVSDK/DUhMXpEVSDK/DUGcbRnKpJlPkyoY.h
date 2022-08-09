

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "DUAaXhHMroqv.h"
/// 一级
FOUNDATION_EXTERN NSString *const ejwshlT;
/// 二级
FOUNDATION_EXTERN NSString *const eCiMmgvasbzx;
FOUNDATION_EXTERN NSString *const eZNWgrCklyfnXmpFConfigKey;
FOUNDATION_EXTERN NSString *const enmsyfGAIqwNSBConfigKey;
FOUNDATION_EXTERN NSString *const eOClhTBConfigKey;
FOUNDATION_EXTERN NSString *const erCojUISckvgw;
FOUNDATION_EXTERN NSString *const eyiAVWuOKseL;
FOUNDATION_EXTERN NSString *const eAWnFMserJmxal;
FOUNDATION_EXTERN NSString *const eDGdpMwaCkConfigKey;
FOUNDATION_EXTERN NSString *const eJNFcVYhH;
FOUNDATION_EXTERN NSString *const eAjkDlFKRgnGmaXS;
/// 三级
FOUNDATION_EXTERN NSString *const eDCoOjIBhKey;
FOUNDATION_EXTERN NSString *const eVEyjiwDNTypeKey;
FOUNDATION_EXTERN NSString *const eRHGuZWCQUjgXfVKey;
FOUNDATION_EXTERN NSString *const eVEyjiwDNLineColorKey;
FOUNDATION_EXTERN NSString *const eAZTlIG;
FOUNDATION_EXTERN NSString *const eIsLiBuhqyzoKF;
FOUNDATION_EXTERN NSString *const eMlWtbmwk;
FOUNDATION_EXTERN NSString *const eQRZkmToOFG;
/// 四级
FOUNDATION_EXTERN NSString *const ekgHGDfSIcBtw;
FOUNDATION_EXTERN NSString *const ezHausejtG;
FOUNDATION_EXTERN NSString *const eqVkYjhoADJzuF;
FOUNDATION_EXTERN NSString *const eGXkjoMAHhZnCfK;
FOUNDATION_EXTERN NSString *const eZPhzSDMc;
FOUNDATION_EXTERN NSString *const ezBDICmWPSQ;
FOUNDATION_EXTERN NSString *const eltSrENzFybHudA;
FOUNDATION_EXTERN NSString *const elENOQcZiFwYL;
FOUNDATION_EXTERN NSString *const eyqPEWQR;
FOUNDATION_EXTERN NSString *const eENcmsuHUK;

#pragma mark ---------- 视频相关
FOUNDATION_EXTERN NSString *const esbqMGwlkjBKey;
FOUNDATION_EXTERN NSString *const ewtmOuDoKvKey;
FOUNDATION_EXTERN NSString *const ecVIGAOgF;
FOUNDATION_EXTERN NSString *const esbqMGwlkjBValue;

#pragma mark ---------- 固定账号登录使用
FOUNDATION_EXTERN NSString *const efOzkxJdDqbacrt;
FOUNDATION_EXTERN NSString *const eRxlmOALYvXzIWgE;
/// plist 中没有值时候取的默认值
FOUNDATION_EXTERN NSString *const eTEDRUfvLWjwpQ;
FOUNDATION_EXTERN NSString *const eQplosRBTmhNq;
FOUNDATION_EXTERN NSString *const eehuWVaSpyI;


/// plist中没有值时候取的默认值
FOUNDATION_EXTERN NSString *const eBnPfWgYTtMo;
FOUNDATION_EXTERN NSString *const edZhyORIfFrepNValue;
FOUNDATION_EXTERN NSString *const eSGszKJyBFoxQ;
FOUNDATION_EXTERN NSString *const evQePkHOl;
FOUNDATION_EXTERN NSString *const eaiPdIE;
FOUNDATION_EXTERN NSString *const eFrHNbPm;
FOUNDATION_EXTERN NSString *const eDabVyhO;
FOUNDATION_EXTERN NSString *const evteOKFI;
FOUNDATION_EXTERN NSString *const etzgQFSmMGus;
FOUNDATION_EXTERN NSString *const eOoLkdyCi;
FOUNDATION_EXTERN NSString *const eRHGuZWCQUjgXfVValue;
FOUNDATION_EXTERN NSString *const eCAVZxRgz;
FOUNDATION_EXTERN NSString *const eVEyjiwDNBackgroundColorValue;
FOUNDATION_EXTERN NSString *const ekWurXC;
FOUNDATION_EXTERN NSString *const eqihCTyQ;
FOUNDATION_EXTERN NSString *const ePmoWTCaZkj;



/// SDK 版本
static inline NSString *kqghLJHpV() {
    NSString *efdwcsVqyYBku = @"oc_1.0.0";
    return efdwcsVqyYBku;
}


#pragma mark ---------- 获取plist中initConfig的配置
static inline NSDictionary *kjSPKupUiaH(NSString *eEnfPuYchzbJqAD) {
    if (!eEnfPuYchzbJqAD || !eEnfPuYchzbJqAD.length) {
        return [NSDictionary dictionary];
    }
    NSString *ebZfSnED = [[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:@"DUhMXpEVSDK.bundle"];
    NSBundle *evHUOyDPkpf = [NSBundle bundleWithPath:ebZfSnED];
    NSString *egxFAaOe = [evHUOyDPkpf pathForResource:@"DUhMXpEVSDK" ofType:@"plist"];
    NSDictionary *eTWyDbImAGujrlV = [NSDictionary dictionaryWithContentsOfFile:egxFAaOe];
    NSDictionary *eTUhzfMFinPKHkLw = [eTWyDbImAGujrlV objectForKey:ejwshlT];
    NSDictionary *eatCqPON = [eTUhzfMFinPKHkLw objectForKey:eEnfPuYchzbJqAD];
    if (!eatCqPON) {
        return [NSDictionary dictionary];
    }
    return eatCqPON;
}

#pragma mark ---------- 默认配置
/// 背景色
static inline NSString *kqbFUBMJuORd() {
    NSString *eatCqPON = eBnPfWgYTtMo;
    NSDictionary *eTWyDbImAGujrlV = kjSPKupUiaH(eCiMmgvasbzx);
    if (!eTWyDbImAGujrlV) {
        return eatCqPON;
    }
    NSDictionary *eTUhzfMFinPKHkLw = [eTWyDbImAGujrlV objectForKey:eDCoOjIBhKey];
    if (!eTUhzfMFinPKHkLw) {
        return eatCqPON;
    }
    eatCqPON = [eTUhzfMFinPKHkLw objectForKey:ezHausejtG];
    if (!eatCqPON.length) {
        eatCqPON = eBnPfWgYTtMo;
    }
    return eatCqPON;
}
/// 描边色
static inline NSString *kZCWtRBqo() {
    NSString *eatCqPON = edZhyORIfFrepNValue;
    NSDictionary *eTWyDbImAGujrlV = kjSPKupUiaH(eCiMmgvasbzx);
    if (!eTWyDbImAGujrlV) {
        return eatCqPON;
    }
    NSDictionary *eTUhzfMFinPKHkLw = [eTWyDbImAGujrlV objectForKey:eDCoOjIBhKey];
    if (!eTUhzfMFinPKHkLw) {
        return eatCqPON;
    }
    eatCqPON = [eTUhzfMFinPKHkLw objectForKey:eqVkYjhoADJzuF];
    if (!eatCqPON.length) {
        eatCqPON = edZhyORIfFrepNValue;
    }
    return eatCqPON;
}
/// 填充色
static inline NSString *kCNyZxJYlbqm() {
    NSString *eatCqPON = eSGszKJyBFoxQ;
    NSDictionary *eTWyDbImAGujrlV = kjSPKupUiaH(eCiMmgvasbzx);
    if (!eTWyDbImAGujrlV) {
        return eatCqPON;
    }
    NSDictionary *eTUhzfMFinPKHkLw = [eTWyDbImAGujrlV objectForKey:eDCoOjIBhKey];
    if (!eTUhzfMFinPKHkLw) {
        return eatCqPON;
    }
    eatCqPON = [eTUhzfMFinPKHkLw objectForKey:eGXkjoMAHhZnCfK];
    if (!eatCqPON.length) {
        eatCqPON = eSGszKJyBFoxQ;
    }
    return eatCqPON;
}
/// 标题字体颜色
static inline NSString *kCwNfzgtTG() {
    NSString *eatCqPON = evQePkHOl;
    NSDictionary *eTWyDbImAGujrlV = kjSPKupUiaH(eCiMmgvasbzx);
    if (!eTWyDbImAGujrlV) {
        return eatCqPON;
    }
    NSDictionary *eTUhzfMFinPKHkLw = [eTWyDbImAGujrlV objectForKey:eDCoOjIBhKey];
    if (!eTUhzfMFinPKHkLw) {
        return eatCqPON;
    }
    eatCqPON = [eTUhzfMFinPKHkLw objectForKey:eZPhzSDMc];
    if (!eatCqPON.length) {
        eatCqPON = evQePkHOl;
    }
    return eatCqPON;
}
/// 标题背景色
static inline NSString *kioCJKFkGMhjX() {
    NSString *eatCqPON = eaiPdIE;
    NSDictionary *eTWyDbImAGujrlV = kjSPKupUiaH(eCiMmgvasbzx);
    if (!eTWyDbImAGujrlV) {
        return eatCqPON;
    }
    NSDictionary *eTUhzfMFinPKHkLw = [eTWyDbImAGujrlV objectForKey:eDCoOjIBhKey];
    if (!eTUhzfMFinPKHkLw) {
        return eatCqPON;
    }
    eatCqPON = [eTUhzfMFinPKHkLw objectForKey:ezBDICmWPSQ];
    if (!eatCqPON.length) {
        eatCqPON = eaiPdIE;
    }
    return eatCqPON;
}

/// 默认的inputView的类型, 0的时候为文字，其他的为图标
static inline NSInteger kAgEJsUapM() {
    NSString *eatCqPON = eOoLkdyCi;
    NSDictionary *eTWyDbImAGujrlV = kjSPKupUiaH(eCiMmgvasbzx);
    if (!eTWyDbImAGujrlV) {
        return eatCqPON.integerValue;
    }
    eatCqPON = [eTWyDbImAGujrlV objectForKey:eVEyjiwDNTypeKey];
    if (!eatCqPON.length) {
        eatCqPON = eOoLkdyCi;
        return eatCqPON.integerValue;
    }
    return eatCqPON.integerValue;
}
/// 默认的inputViewBorder的类型
static inline NSInteger kHyrkAZVMNplOnhz() {
    NSString *eatCqPON = eRHGuZWCQUjgXfVValue;
    NSDictionary *eTWyDbImAGujrlV = kjSPKupUiaH(eCiMmgvasbzx);
    if (!eTWyDbImAGujrlV) {
        return eatCqPON.integerValue;
    }
    eatCqPON = [eTWyDbImAGujrlV objectForKey:eRHGuZWCQUjgXfVKey];
    if (!eatCqPON.length) {
        eatCqPON = eRHGuZWCQUjgXfVValue;
        return eatCqPON.integerValue;
    }
    return eatCqPON.integerValue;
}
/// 默认的inputViewLineColor
static inline NSString *kldJBGbmVq() {
    NSString *eatCqPON = eCAVZxRgz;
    NSDictionary *eTWyDbImAGujrlV = kjSPKupUiaH(eCiMmgvasbzx);
    if (!eTWyDbImAGujrlV) {
        return eatCqPON;
    }
    eatCqPON = [eTWyDbImAGujrlV objectForKey:eVEyjiwDNLineColorKey];
    if (!eatCqPON.length) {
        return eatCqPON = eCAVZxRgz;
    }
    return eatCqPON;
}
/// 默认inputViewBackgroundColor
static inline NSString *khdrUwfKL() {
    NSString *eatCqPON = eVEyjiwDNBackgroundColorValue;
    NSDictionary *eTWyDbImAGujrlV = kjSPKupUiaH(eCiMmgvasbzx);
    if (!eTWyDbImAGujrlV) {
        return eatCqPON;
    }
    eatCqPON = [eTWyDbImAGujrlV objectForKey:eAZTlIG];
    if (!eatCqPON.length) {
        return eatCqPON = eVEyjiwDNBackgroundColorValue;
    }
    return eatCqPON;
}

/// 默认inputViewTitleColor 为背景色
static inline NSString *ktQTyqN() {
    return kqbFUBMJuORd();
}

/// 提交按钮字体色
static inline NSString *krIBoUlVk() {
    NSString *eatCqPON = eFrHNbPm;
    NSDictionary *eTWyDbImAGujrlV = kjSPKupUiaH(eCiMmgvasbzx);
    if (!eTWyDbImAGujrlV) {
        return eatCqPON;
    }
    NSDictionary *eTUhzfMFinPKHkLw = [eTWyDbImAGujrlV objectForKey:eDCoOjIBhKey];
    if (!eTUhzfMFinPKHkLw) {
        return eatCqPON;
    }
    eatCqPON = [eTUhzfMFinPKHkLw objectForKey:eltSrENzFybHudA];
    if (!eatCqPON.length) {
        eatCqPON = eFrHNbPm;
    }
    return eatCqPON;
}

static inline NSString *krfNbcPjhmS() {
    NSString *eatCqPON = eDabVyhO;
    NSDictionary *eTWyDbImAGujrlV = kjSPKupUiaH(eCiMmgvasbzx);
    if (!eTWyDbImAGujrlV) {
        return eatCqPON;
    }
    NSDictionary *eTUhzfMFinPKHkLw = [eTWyDbImAGujrlV objectForKey:eDCoOjIBhKey];
    if (!eTUhzfMFinPKHkLw) {
        return eatCqPON;
    }
    eatCqPON = [eTUhzfMFinPKHkLw objectForKey:elENOQcZiFwYL];
    if (!eatCqPON.length) {
        eatCqPON = khdrUwfKL();
    }
    return eatCqPON;
}


#pragma mark ---------- 字体大小
static inline CGFloat kYJztkuGqdF() {
    CGFloat font = 11;
    if ([kWjxalrbD() isEqualToString:eRxdhgXswGPQD]) {
        font = 11;
    } else if ([kWjxalrbD() isEqualToString:ePnHvyQNuresRqL]) {
        font = 12;
    } else {
        font = 12;
    }
    return font;
}
#pragma mark ---------- 输入框的设置
static inline CGFloat kpQbYBEetOMPN() {
    return 40.0f;
}
static inline CGFloat kQwnLDEgevqK() {
    return 30.0f;
}
static inline CGFloat kDoRYcqQOnd() {
    return 25.0f;
}
static inline CGFloat kExuNVS() {
    return 230.0f;
}


static inline CGFloat kzrKvQemERlgdP() {
    return 20.0f;
}
static inline CGFloat kmaGeEPbBXHK() {
    return 30.0f;
}
static inline CGFloat kscqIOZYzATMF() {
    CGFloat font = 11;
    if ([kWjxalrbD() isEqualToString:eRxdhgXswGPQD]) {
        font = 11;
    } else if ([kWjxalrbD() isEqualToString:ePnHvyQNuresRqL]) {
        font = 12;
    } else {
        font = 12;
    }
    return font;
}


static inline CGFloat kcNsoFWewpBQT() {
    return 150.0f;
}
static inline CGFloat kiHIVjCQRJ() {
    return 35.0f;
}


#pragma mark ---------- 设置页面frame的数值
static inline CGFloat kPofSGniBdetAa() {
    return 5.0f;
}
static inline CGFloat ktaMSrs() {
    return 2.0 * kPofSGniBdetAa();
}
static inline CGFloat khSRvCsVT() {
    return 3.0 * kPofSGniBdetAa();
}
/// 自定义的navigationBar的高度
static inline CGFloat kAHqXWKaSlL() {
    return 44.0;
}
static inline CGFloat kBrskPKc() {
    return 30.0f;
}

/// 获取验证码显示的倒计时最大数字标题
static inline NSInteger kNlCKoqAHDei() {
    return 60;
}

#pragma mark ---------- Hub 遮罩相关
/// hub 遮罩view的宽高
static inline CGFloat kTmoCuacQIpAFgxk() {
    return 120.0f;
}
static inline CGFloat kciFEGvn() {
    return 30;
}
/// hub的圆角值
static inline CGFloat knkmWxIXN() {
    return 5.0f;
}
/// hub的背景色
static inline NSString *kmgHATjcQXJK() {
    return @"#000000";
}
/// hub的透明度
static inline CGFloat kSIERshy() {
    return 0.7f;
}
/// hub的整体色值
static inline NSString *kcirAnQqgafODjd() {
    return @"#ffffff";
}
/// hub loading的色值
static inline NSString *kaWPuowJpyxrkB() {
    return kcirAnQqgafODjd();
}
/// hub 文字的大小
static inline CGFloat kPJMcaATz() {
    return 14;
}
/// hub 文字的色值
static inline NSString *kmKEVTFei() {
    return kcirAnQqgafODjd();
}



#pragma mark ---------- 视频相关
/// 默认的现实跳过按钮的时间百分比
static inline CGFloat kFyhavoCduXwBPpg() {
    NSString *eatCqPON = esbqMGwlkjBValue;
    NSDictionary *eTWyDbImAGujrlV = kjSPKupUiaH(eCiMmgvasbzx);
    if (!eTWyDbImAGujrlV) {
        return eatCqPON.floatValue;
    }
    eatCqPON = [eTWyDbImAGujrlV objectForKey:esbqMGwlkjBKey];
    if (!eatCqPON.length) {
        eatCqPON = esbqMGwlkjBValue;
        return eatCqPON.floatValue;
    }
    return eatCqPON.floatValue;
}

/// 默认的现实跳过按钮的时间百分比
static inline NSString *kFEbqUBpyNxZ() {
    NSString *eatCqPON = @"";
    NSDictionary *eTWyDbImAGujrlV = kjSPKupUiaH(eCiMmgvasbzx);
    if (!eTWyDbImAGujrlV) {
        return eatCqPON;
    }
    eatCqPON = [eTWyDbImAGujrlV objectForKey:ewtmOuDoKvKey];
    if (!eatCqPON.length) {
        eatCqPON = @"";
        return eatCqPON;
    }
    return eatCqPON;
}

/// 默认的现实跳过按钮的时间百分比
static inline NSString *kQqzsRTulK() {
    NSString *eatCqPON = @"";
    NSDictionary *eTWyDbImAGujrlV = kjSPKupUiaH(eCiMmgvasbzx);
    if (!eTWyDbImAGujrlV) {
        return eatCqPON;
    }
    eatCqPON = [eTWyDbImAGujrlV objectForKey:ecVIGAOgF];
    if (!eatCqPON.length) {
        eatCqPON = @"";
        return eatCqPON;
    }
    return eatCqPON;
}


#pragma mark ---------- 提-------审 使用
/// 如果为YES 那么需要进行根据后台的appcheck进行判断
static inline BOOL kOLChpPmfzcwq() {
    BOOL eatCqPON = eTEDRUfvLWjwpQ.boolValue;
    NSDictionary *eTWyDbImAGujrlV = kjSPKupUiaH(eCiMmgvasbzx);
    if (!eTWyDbImAGujrlV) {
        return eatCqPON;
    }
    NSDictionary *eTUhzfMFinPKHkLw = [eTWyDbImAGujrlV objectForKey:efOzkxJdDqbacrt];
    if (!eTUhzfMFinPKHkLw) {
        return eatCqPON;
    }
    NSString *eQxEzLTVfKrYlC = [eTUhzfMFinPKHkLw objectForKey:eRxlmOALYvXzIWgE];
    eatCqPON = eQxEzLTVfKrYlC.boolValue;
    return eatCqPON;
}

static inline NSString *kdeUwSYBiGN() {
    NSString *eatCqPON = @"";
    NSDictionary *eTWyDbImAGujrlV = kjSPKupUiaH(eCiMmgvasbzx);
    if (!eTWyDbImAGujrlV) {
        return eatCqPON;
    }
    NSDictionary *eTUhzfMFinPKHkLw = [eTWyDbImAGujrlV objectForKey:efOzkxJdDqbacrt];
    if (!eTUhzfMFinPKHkLw) {
        return eatCqPON;
    }
    eatCqPON = [eTUhzfMFinPKHkLw objectForKey:eQplosRBTmhNq];
    return eatCqPON;
}

static inline NSString *kjxzpeV() {
    NSString *eatCqPON = @"";
    NSDictionary *eTWyDbImAGujrlV = kjSPKupUiaH(eCiMmgvasbzx);
    if (!eTWyDbImAGujrlV) {
        return eatCqPON;
    }
    NSDictionary *eTUhzfMFinPKHkLw = [eTWyDbImAGujrlV objectForKey:efOzkxJdDqbacrt];
    if (!eTUhzfMFinPKHkLw) {
        return eatCqPON;
    }
    eatCqPON = [eTUhzfMFinPKHkLw objectForKey:eehuWVaSpyI];
    return eatCqPON;
}
