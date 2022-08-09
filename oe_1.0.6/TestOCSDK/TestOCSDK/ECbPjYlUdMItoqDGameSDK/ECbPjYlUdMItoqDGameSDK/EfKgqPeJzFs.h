
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "EXlNnwRDGEsF.h"
/// 一级
FOUNDATION_EXTERN NSString *const ejOAGkaTFzQiY;
/// 二级
FOUNDATION_EXTERN NSString *const eGlCwdoTLAEb;
FOUNDATION_EXTERN NSString *const eBYlwuIConfigKey;
FOUNDATION_EXTERN NSString *const evYzfTrQtSAeZyConfigKey;
FOUNDATION_EXTERN NSString *const eXTRGWySLomawConfigKey;
FOUNDATION_EXTERN NSString *const ejEKigBGodIcConfigKey;
FOUNDATION_EXTERN NSString *const eAWEKirdjYXk;
FOUNDATION_EXTERN NSString *const eMdSEOKXIFZa;
FOUNDATION_EXTERN NSString *const eGQoKtId;
FOUNDATION_EXTERN NSString *const efUZGRajplngV;
FOUNDATION_EXTERN NSString *const estacdzTVK;
/// 三级
FOUNDATION_EXTERN NSString *const eRyAZEMhlaeHVFp;
FOUNDATION_EXTERN NSString *const epBuSajqgkiEMWeC;
FOUNDATION_EXTERN NSString *const elUBdyZfKQKey;
FOUNDATION_EXTERN NSString *const enyNjKsqkTc;
FOUNDATION_EXTERN NSString *const eidxhsNyMgLTv;
FOUNDATION_EXTERN NSString *const eNLyGrDdpTSPwhKey;
FOUNDATION_EXTERN NSString *const eLGfYNjneKJmzckVTitleKey;
FOUNDATION_EXTERN NSString *const eOZtGbJqmNwegF;

/// 四级
FOUNDATION_EXTERN NSString *const efHuVBshRwgbXtYN;
FOUNDATION_EXTERN NSString *const eWjEnyuXPAvVsfbgroundColorKey;
FOUNDATION_EXTERN NSString *const eqpTzcLJjmftKsgKey;
FOUNDATION_EXTERN NSString *const eBIMXwmYdNWitaHJ;
FOUNDATION_EXTERN NSString *const esWlyLhYtJQjTB;
FOUNDATION_EXTERN NSString *const epktzCeQa;
FOUNDATION_EXTERN NSString *const eNLyGrDdpTSPwhBackgroundColorKey;
FOUNDATION_EXTERN NSString *const eLGfYNjneKJmzckVBtnFontColorKey;
FOUNDATION_EXTERN NSString *const eLGfYNjneKJmzckVBtnBackgroundColorKey;
FOUNDATION_EXTERN NSString *const egdbDxMiqRoBXGev;
FOUNDATION_EXTERN NSString *const ebQxMatnEkOpFTdRBackgroundColorKey;

#pragma mark ---------- 视频相关
FOUNDATION_EXTERN NSString *const ezdwlFemt;
FOUNDATION_EXTERN NSString *const eTouiEXylWDbFcKey;
FOUNDATION_EXTERN NSString *const eGLaWsXYKmKey;
FOUNDATION_EXTERN NSString *const eEseiTYNH;

#pragma mark ---------- 固定账号登录使用
FOUNDATION_EXTERN NSString *const eNuTJsnC;
FOUNDATION_EXTERN NSString *const eGYjBQDRA;
/// plist 中没有值时候取的默认值
FOUNDATION_EXTERN NSString *const eoLtApXCkMOfhbBI;
FOUNDATION_EXTERN NSString *const eiWGtug;
FOUNDATION_EXTERN NSString *const eEhOgHCtW;


/// plist中没有值时候取的默认值
FOUNDATION_EXTERN NSString *const eWjEnyuXPAvVsfbgroundColorValue;
FOUNDATION_EXTERN NSString *const eqpTzcLJjmftKsgValue;
FOUNDATION_EXTERN NSString *const ekbgeNxqGPArL;
FOUNDATION_EXTERN NSString *const ePGkApxS;
FOUNDATION_EXTERN NSString *const eNLyGrDdpTSPwhFontColorValue;
FOUNDATION_EXTERN NSString *const eNLyGrDdpTSPwhBackgroundColorValue;
FOUNDATION_EXTERN NSString *const eLGfYNjneKJmzckVBtnFontColorValue;
FOUNDATION_EXTERN NSString *const eLGfYNjneKJmzckVBtnBackgroundColorValue;
FOUNDATION_EXTERN NSString *const ebQxMatnEkOpFTdRFontColorValue;
FOUNDATION_EXTERN NSString *const enXmzTVSOMyLEWgc;
FOUNDATION_EXTERN NSString *const eZNqUsMDEcRwPpK;
FOUNDATION_EXTERN NSString *const elUBdyZfKQValue;
FOUNDATION_EXTERN NSString *const emXtKsFDpflvczjLineColorValue;
FOUNDATION_EXTERN NSString *const eaxiOLtofTVlgXs;
FOUNDATION_EXTERN NSString *const ekyxqDPYCWlwRmO;
FOUNDATION_EXTERN NSString *const eLGfYNjneKJmzckVTitleValue;
FOUNDATION_EXTERN NSString *const enJmtGE;





/// SDK 版本
static inline NSString *nZMldiNG() {
    NSString *ekNwqCFJjXHxSM = @"hj1_1.0.0";
    return ekNwqCFJjXHxSM;
}


#pragma mark ---------- 获取plist中initConfig的配置
static inline NSDictionary *nswzahGrYuDIklvj(NSString *etXpuKkcjZHGSE) {
    if (!etXpuKkcjZHGSE || !etXpuKkcjZHGSE.length) {
        return [NSDictionary dictionary];
    }
    NSString *ejSIkLinHG = [[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:@"ECbPjYlUdMItoqDGameSDK.bundle"];
    NSBundle *eJntLIpVhYXM = [NSBundle bundleWithPath:ejSIkLinHG];
    NSString *ecABpnHPrEgeCecondPath = [eJntLIpVhYXM pathForResource:@"ECbPjYlUdMItoqDGameSDK" ofType:@"plist"];
    NSDictionary *eLAJjtwSPusvXRr = [NSDictionary dictionaryWithContentsOfFile:ecABpnHPrEgeCecondPath];
    NSDictionary *ecABpnHPrEgeCecondDic = [eLAJjtwSPusvXRr objectForKey:ejOAGkaTFzQiY];
    NSDictionary *eiUjXYAqflPtwxOa = [ecABpnHPrEgeCecondDic objectForKey:etXpuKkcjZHGSE];
    if (!eiUjXYAqflPtwxOa) {
        return [NSDictionary dictionary];
    }
    return eiUjXYAqflPtwxOa;
}

#pragma mark ---------- 默认配置
/// 背景色
static inline NSString *nEBJiWSmlnUvVpIg() {
    NSString *eiUjXYAqflPtwxOa = eWjEnyuXPAvVsfbgroundColorValue;
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(eGlCwdoTLAEb);
    if (!eLAJjtwSPusvXRr) {
        return eiUjXYAqflPtwxOa;
    }
    NSDictionary *ecABpnHPrEgeCecondDic = [eLAJjtwSPusvXRr objectForKey:eRyAZEMhlaeHVFp];
    if (!ecABpnHPrEgeCecondDic) {
        return eiUjXYAqflPtwxOa;
    }
    eiUjXYAqflPtwxOa = [ecABpnHPrEgeCecondDic objectForKey:eWjEnyuXPAvVsfbgroundColorKey];
    if (!eiUjXYAqflPtwxOa.length) {
        eiUjXYAqflPtwxOa = eWjEnyuXPAvVsfbgroundColorValue;
    }
    return eiUjXYAqflPtwxOa;
}
/// 描边色
static inline NSString *nhjmlXb() {
    NSString *eiUjXYAqflPtwxOa = eqpTzcLJjmftKsgValue;
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(eGlCwdoTLAEb);
    if (!eLAJjtwSPusvXRr) {
        return eiUjXYAqflPtwxOa;
    }
    NSDictionary *ecABpnHPrEgeCecondDic = [eLAJjtwSPusvXRr objectForKey:eRyAZEMhlaeHVFp];
    if (!ecABpnHPrEgeCecondDic) {
        return eiUjXYAqflPtwxOa;
    }
    eiUjXYAqflPtwxOa = [ecABpnHPrEgeCecondDic objectForKey:eqpTzcLJjmftKsgKey];
    if (!eiUjXYAqflPtwxOa.length) {
        eiUjXYAqflPtwxOa = eqpTzcLJjmftKsgValue;
    }
    return eiUjXYAqflPtwxOa;
}
/// 填充色
static inline NSString *nCLemPabfKjQI() {
    NSString *eiUjXYAqflPtwxOa = ekbgeNxqGPArL;
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(eGlCwdoTLAEb);
    if (!eLAJjtwSPusvXRr) {
        return eiUjXYAqflPtwxOa;
    }
    NSDictionary *ecABpnHPrEgeCecondDic = [eLAJjtwSPusvXRr objectForKey:eRyAZEMhlaeHVFp];
    if (!ecABpnHPrEgeCecondDic) {
        return eiUjXYAqflPtwxOa;
    }
    eiUjXYAqflPtwxOa = [ecABpnHPrEgeCecondDic objectForKey:eBIMXwmYdNWitaHJ];
    if (!eiUjXYAqflPtwxOa.length) {
        eiUjXYAqflPtwxOa = ekbgeNxqGPArL;
    }
    return eiUjXYAqflPtwxOa;
}
/// 功能按钮选中颜色
static inline NSString *nMuACLOz() {
    NSString *eiUjXYAqflPtwxOa = ePGkApxS;
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(eGlCwdoTLAEb);
    if (!eLAJjtwSPusvXRr) {
        return eiUjXYAqflPtwxOa;
    }
    NSDictionary *ecABpnHPrEgeCecondDic = [eLAJjtwSPusvXRr objectForKey:eRyAZEMhlaeHVFp];
    if (!ecABpnHPrEgeCecondDic) {
        return eiUjXYAqflPtwxOa;
    }
    eiUjXYAqflPtwxOa = [ecABpnHPrEgeCecondDic objectForKey:esWlyLhYtJQjTB];
    if (!eiUjXYAqflPtwxOa.length) {
        eiUjXYAqflPtwxOa = ePGkApxS;
    }
    return eiUjXYAqflPtwxOa;
}



/// 标题字体颜色
static inline NSString *nTmdgFHqP() {
    NSString *eiUjXYAqflPtwxOa = eNLyGrDdpTSPwhFontColorValue;
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(eGlCwdoTLAEb);
    if (!eLAJjtwSPusvXRr) {
        return eiUjXYAqflPtwxOa;
    }
    NSDictionary *ecABpnHPrEgeCecondDic = [eLAJjtwSPusvXRr objectForKey:eRyAZEMhlaeHVFp];
    if (!ecABpnHPrEgeCecondDic) {
        return eiUjXYAqflPtwxOa;
    }
    eiUjXYAqflPtwxOa = [ecABpnHPrEgeCecondDic objectForKey:epktzCeQa];
    if (!eiUjXYAqflPtwxOa.length) {
        eiUjXYAqflPtwxOa = eNLyGrDdpTSPwhFontColorValue;
    }
    return eiUjXYAqflPtwxOa;
}
/// 标题背景色
static inline NSString *niwVMFEoJTh() {
    NSString *eiUjXYAqflPtwxOa = eNLyGrDdpTSPwhBackgroundColorValue;
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(eGlCwdoTLAEb);
    if (!eLAJjtwSPusvXRr) {
        return eiUjXYAqflPtwxOa;
    }
    NSDictionary *ecABpnHPrEgeCecondDic = [eLAJjtwSPusvXRr objectForKey:eRyAZEMhlaeHVFp];
    if (!ecABpnHPrEgeCecondDic) {
        return eiUjXYAqflPtwxOa;
    }
    eiUjXYAqflPtwxOa = [ecABpnHPrEgeCecondDic objectForKey:eNLyGrDdpTSPwhBackgroundColorKey];
    if (!eiUjXYAqflPtwxOa.length) {
        eiUjXYAqflPtwxOa = eNLyGrDdpTSPwhBackgroundColorValue;
    }
    return eiUjXYAqflPtwxOa;
}



/// 默认的inputView的类型, 0的时候为文字，其他的为图标
static inline NSInteger nxQWFvoLDmE() {
    NSString *eiUjXYAqflPtwxOa = eZNqUsMDEcRwPpK;
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(eGlCwdoTLAEb);
    if (!eLAJjtwSPusvXRr) {
        return eiUjXYAqflPtwxOa.integerValue;
    }
    eiUjXYAqflPtwxOa = [eLAJjtwSPusvXRr objectForKey:epBuSajqgkiEMWeC];
    if (!eiUjXYAqflPtwxOa.length) {
        eiUjXYAqflPtwxOa = eZNqUsMDEcRwPpK;
        return eiUjXYAqflPtwxOa.integerValue;
    }
    return eiUjXYAqflPtwxOa.integerValue;
}
/// 默认的inputViewBorder的类型
static inline NSInteger nEOczPJL() {
    NSString *eiUjXYAqflPtwxOa = elUBdyZfKQValue;
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(eGlCwdoTLAEb);
    if (!eLAJjtwSPusvXRr) {
        return eiUjXYAqflPtwxOa.integerValue;
    }
    eiUjXYAqflPtwxOa = [eLAJjtwSPusvXRr objectForKey:elUBdyZfKQKey];
    if (!eiUjXYAqflPtwxOa.length) {
        eiUjXYAqflPtwxOa = elUBdyZfKQValue;
        return eiUjXYAqflPtwxOa.integerValue;
    }
    return eiUjXYAqflPtwxOa.integerValue;
}
/// 默认的inputViewLineColor
static inline NSString *naRuYJfmwH() {
    NSString *eiUjXYAqflPtwxOa = emXtKsFDpflvczjLineColorValue;
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(eGlCwdoTLAEb);
    if (!eLAJjtwSPusvXRr) {
        return eiUjXYAqflPtwxOa;
    }
    eiUjXYAqflPtwxOa = [eLAJjtwSPusvXRr objectForKey:enyNjKsqkTc];
    if (!eiUjXYAqflPtwxOa.length) {
        return eiUjXYAqflPtwxOa = emXtKsFDpflvczjLineColorValue;
    }
    return eiUjXYAqflPtwxOa;
}
/// 默认inputViewBackgroundColor
static inline NSString *nirSqYtRWzPB() {
    NSString *eiUjXYAqflPtwxOa = eaxiOLtofTVlgXs;
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(eGlCwdoTLAEb);
    if (!eLAJjtwSPusvXRr) {
        return eiUjXYAqflPtwxOa;
    }
    eiUjXYAqflPtwxOa = [eLAJjtwSPusvXRr objectForKey:eidxhsNyMgLTv];
    if (!eiUjXYAqflPtwxOa.length) {
        return eiUjXYAqflPtwxOa = eaxiOLtofTVlgXs;
    }
    return eiUjXYAqflPtwxOa;
}

/// 默认inputViewTitleColor 为背景色
static inline NSString *nJKUgqRCXOQLH() {
    return nEBJiWSmlnUvVpIg();
}

/// 提交按钮字体色
static inline NSString *niQSeaPIBHfwRmD() {
    NSString *eiUjXYAqflPtwxOa = eLGfYNjneKJmzckVBtnFontColorValue;
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(eGlCwdoTLAEb);
    if (!eLAJjtwSPusvXRr) {
        return eiUjXYAqflPtwxOa;
    }
    NSDictionary *ecABpnHPrEgeCecondDic = [eLAJjtwSPusvXRr objectForKey:eRyAZEMhlaeHVFp];
    if (!ecABpnHPrEgeCecondDic) {
        return eiUjXYAqflPtwxOa;
    }
    eiUjXYAqflPtwxOa = [ecABpnHPrEgeCecondDic objectForKey:eLGfYNjneKJmzckVBtnFontColorKey];
    if (!eiUjXYAqflPtwxOa.length) {
        eiUjXYAqflPtwxOa = eLGfYNjneKJmzckVBtnFontColorValue;
    }
    return eiUjXYAqflPtwxOa;
}

static inline NSString *nknXCBPuGj() {
    NSString *eiUjXYAqflPtwxOa = eLGfYNjneKJmzckVBtnBackgroundColorValue;
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(eGlCwdoTLAEb);
    if (!eLAJjtwSPusvXRr) {
        return eiUjXYAqflPtwxOa;
    }
    NSDictionary *ecABpnHPrEgeCecondDic = [eLAJjtwSPusvXRr objectForKey:eRyAZEMhlaeHVFp];
    if (!ecABpnHPrEgeCecondDic) {
        return eiUjXYAqflPtwxOa;
    }
    eiUjXYAqflPtwxOa = [ecABpnHPrEgeCecondDic objectForKey:eLGfYNjneKJmzckVBtnBackgroundColorKey];
    if (!eiUjXYAqflPtwxOa.length) {
        eiUjXYAqflPtwxOa = nirSqYtRWzPB();
    }
    return eiUjXYAqflPtwxOa;
}


#pragma mark ---------- 字体大小
static inline CGFloat nOWfgEnre() {
    CGFloat font = 11;
    if ([nhBFxqZ() isEqualToString:eYVqrpGLvBiy]) {
        font = 11;
    } else if ([nhBFxqZ() isEqualToString:eFKEXSZfniIoY]) {
        font = 12;
    } else {
        font = 12;
    }
    return font;
}

#pragma mark ---------- 标题view的框高
static inline CGFloat nOdlHiR() {
    return 90;
}
static inline CGFloat nMaShjmCpeiZ() {
    return 23;
}
#pragma mark ---------- 绑定页面关闭按钮的大小
static inline CGFloat nTOCBSlHDLk() {
    return 15;
}
static inline CGFloat nIUtRia() {
    return 17.5;
}
static inline CGFloat nJjPNcqSYKltM() {
    return 18;
}
static inline CGFloat npiymbLGKxwRCOSf() {
    return 18;
}

#pragma mark ---------- 输入框的设置
static inline CGFloat nHUqduOL() {
    return 32.0f;
}
static inline CGFloat nNHqwETFgyCduZ() {
    return 30.0f;
}
static inline CGFloat nlQnSOKz() {
    return nNHqwETFgyCduZ() - 10;
}

static inline CGFloat ngYqajlRhIeUT() {
    return 200.0f;
}
static inline CGFloat nlYQvETRDiu() {
    return 27.5f;
}

static inline CGFloat nSrFoTyLkVJ() {
    return 15.0f;
}
static inline CGFloat nHuGOezMN() {
    return 30.0f;
}
static inline CGFloat nyPwZcoJaAtgqYS() {
    CGFloat font = 11;
//    if ([nhBFxqZ() isEqualToString:eYVqrpGLvBiy]) {
//        font = 11;
//    } else if ([nhBFxqZ() isEqualToString:eFKEXSZfniIoY]) {
//        font = 12;
//    } else {
//        font = 12;
//    }
    return font;
}
static inline NSString *nAGXPlnsowNIdr() {
    return @"#868584";
}

static inline CGFloat nTLmKYQoBRHX() {
    return 75.0f;
}
static inline CGFloat nASyHwmJvCnsVg() {
    return 35.0;
}


#pragma mark ---------- 设置页面frame的数值
static inline CGFloat nxoZcUBXRr() {
    return 5.0f;
}
static inline CGFloat nQuUqIovRAg() {
    return 2.0 * nxoZcUBXRr();
}
static inline CGFloat ngdbzvfscj() {
    return 3.0 * nxoZcUBXRr();
}
/// 自定义的navigationBar的高度
static inline CGFloat nsnzrdyZRfoPKmIxgationBarHeight() {
    return 44.0;
}

/// 获取验证码显示的倒计时最大数字标题
static inline NSInteger ncfdJYV() {
    return 60;
}

#pragma mark ---------- Hub 遮罩相关
/// hub 遮罩view的宽高
static inline CGFloat nZidXmHTUsOhJf() {
    return 120.0f;
}
static inline CGFloat nOvZQUCDSTmzG() {
    return 30;
}
/// hub的圆角值
static inline CGFloat nwndvbP() {
    return 5.0f;
}
/// hub的背景色
static inline NSString *nqLNTEUSZAhK() {
    return @"#000000";
}
/// hub的透明度
static inline CGFloat nHFSyIW() {
    return 0.7f;
}
/// hub的整体色值
static inline NSString *nwqugaKxXnBrS() {
    return @"#ffffff";
}
/// hub loading的色值
static inline NSString *nmfLuKZkvwh() {
    return nwqugaKxXnBrS();
}
/// hub 文字的大小
static inline CGFloat naRbLMcqHhnUxYVu() {
    return 14;
}
/// hub 文字的色值
static inline NSString *nXzJhTpidnv() {
    return nwqugaKxXnBrS();
}



#pragma mark ---------- 视频相关
/// 默认的现实跳过按钮的时间百分比
static inline CGFloat naVBOCsiQ() {
    NSString *eiUjXYAqflPtwxOa = eEseiTYNH;
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(eGlCwdoTLAEb);
    if (!eLAJjtwSPusvXRr) {
        return eiUjXYAqflPtwxOa.floatValue;
    }
    eiUjXYAqflPtwxOa = [eLAJjtwSPusvXRr objectForKey:ezdwlFemt];
    if (!eiUjXYAqflPtwxOa.length) {
        eiUjXYAqflPtwxOa = eEseiTYNH;
        return eiUjXYAqflPtwxOa.floatValue;
    }
    return eiUjXYAqflPtwxOa.floatValue;
}

/// 默认的现实跳过按钮的时间百分比
static inline NSString *nMsgDZFI() {
    NSString *eiUjXYAqflPtwxOa = @"";
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(eGlCwdoTLAEb);
    if (!eLAJjtwSPusvXRr) {
        return eiUjXYAqflPtwxOa;
    }
    eiUjXYAqflPtwxOa = [eLAJjtwSPusvXRr objectForKey:eTouiEXylWDbFcKey];
    if (!eiUjXYAqflPtwxOa.length) {
        eiUjXYAqflPtwxOa = @"";
        return eiUjXYAqflPtwxOa;
    }
    return eiUjXYAqflPtwxOa;
}

/// 默认的现实跳过按钮的时间百分比
static inline NSString *nMKCkAmTNXz() {
    NSString *eiUjXYAqflPtwxOa = @"";
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(eGlCwdoTLAEb);
    if (!eLAJjtwSPusvXRr) {
        return eiUjXYAqflPtwxOa;
    }
    eiUjXYAqflPtwxOa = [eLAJjtwSPusvXRr objectForKey:eGLaWsXYKmKey];
    if (!eiUjXYAqflPtwxOa.length) {
        eiUjXYAqflPtwxOa = @"";
        return eiUjXYAqflPtwxOa;
    }
    return eiUjXYAqflPtwxOa;
}


#pragma mark ---------- 提-------审 使用
/// 如果为YES 那么需要进行根据后台的appcheck进行判断
static inline BOOL nsULHxKNIGhXZjED() {
    BOOL eiUjXYAqflPtwxOa = eoLtApXCkMOfhbBI.boolValue;
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(eGlCwdoTLAEb);
    if (!eLAJjtwSPusvXRr) {
        return eiUjXYAqflPtwxOa;
    }
    NSDictionary *ecABpnHPrEgeCecondDic = [eLAJjtwSPusvXRr objectForKey:eNuTJsnC];
    if (!ecABpnHPrEgeCecondDic) {
        return eiUjXYAqflPtwxOa;
    }
    NSString *eJyzBSAfhsF = [ecABpnHPrEgeCecondDic objectForKey:eGYjBQDRA];
    eiUjXYAqflPtwxOa = eJyzBSAfhsF.boolValue;
    return eiUjXYAqflPtwxOa;
}

static inline NSString *naZFGSUI() {
    NSString *eiUjXYAqflPtwxOa = @"";
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(eGlCwdoTLAEb);
    if (!eLAJjtwSPusvXRr) {
        return eiUjXYAqflPtwxOa;
    }
    NSDictionary *ecABpnHPrEgeCecondDic = [eLAJjtwSPusvXRr objectForKey:eNuTJsnC];
    if (!ecABpnHPrEgeCecondDic) {
        return eiUjXYAqflPtwxOa;
    }
    eiUjXYAqflPtwxOa = [ecABpnHPrEgeCecondDic objectForKey:eiWGtug];
    return eiUjXYAqflPtwxOa;
}

static inline NSString *nSbDhLmypgjOYs() {
    NSString *eiUjXYAqflPtwxOa = @"";
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(eGlCwdoTLAEb);
    if (!eLAJjtwSPusvXRr) {
        return eiUjXYAqflPtwxOa;
    }
    NSDictionary *ecABpnHPrEgeCecondDic = [eLAJjtwSPusvXRr objectForKey:eNuTJsnC];
    if (!ecABpnHPrEgeCecondDic) {
        return eiUjXYAqflPtwxOa;
    }
    eiUjXYAqflPtwxOa = [ecABpnHPrEgeCecondDic objectForKey:eEhOgHCtW];
    return eiUjXYAqflPtwxOa;
}


#pragma mark ---------- 读取bundle中的图片资源
static inline NSBundle *nBSjbOCNdlsTEfqBunlde() {
    NSString *ejSIkLinHG = [[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:@"ECbPjYlUdMItoqDGameSDK.bundle"];
    NSBundle *eJntLIpVhYXM = [NSBundle bundleWithPath:ejSIkLinHG];
    return eJntLIpVhYXM;
}

static inline UIImage *nBSjbOCNdlsTEfq(NSString *eqLtTAvGB) {
    NSBundle *bundle = nBSjbOCNdlsTEfqBunlde();
    if (!bundle) {
        return [UIImage imageNamed:@""];
    }
    NSString *ejSIkLinHG = [bundle pathForResource:eqLtTAvGB ofType:@"png"];
    UIImage *ehlyeZR = [UIImage imageWithContentsOfFile:ejSIkLinHG];
    return ehlyeZR;
}

#pragma mark ---------- 配置图片内容
static inline NSDictionary *nBSjbOCNdlsTEfqConfig() {
    NSDictionary *eLAJjtwSPusvXRr = nswzahGrYuDIklvj(@"imageConfig");
    if (!eLAJjtwSPusvXRr) {
        eLAJjtwSPusvXRr = @{};
        return eLAJjtwSPusvXRr;
    }
    return eLAJjtwSPusvXRr;
}





