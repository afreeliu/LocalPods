

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ClassNames_DeviceConfigure.h"
/// 一级
FOUNDATION_EXTERN NSString *const varNames_initConfigKey;
/// 二级
FOUNDATION_EXTERN NSString *const varNames_defaultConfigKey;
FOUNDATION_EXTERN NSString *const varNames_autoLoginViewConfigKey;
FOUNDATION_EXTERN NSString *const varNames_loginViewConfigKey;
FOUNDATION_EXTERN NSString *const varNames_quickLoginViewConfigKey;
FOUNDATION_EXTERN NSString *const varNames_findbackPasswordViewConfigKey;
FOUNDATION_EXTERN NSString *const varNames_resetPasswordViewConfigKey;
FOUNDATION_EXTERN NSString *const varNames_normalRegisterViewConfigKey;
FOUNDATION_EXTERN NSString *const varNames_phoneRegisterViewConfigKey;
FOUNDATION_EXTERN NSString *const varNames_bindPhoneViewConfigKey;
FOUNDATION_EXTERN NSString *const varNames_bindPersonIDViewConfigKey;
/// 三级
FOUNDATION_EXTERN NSString *const varNames_colorKey;
FOUNDATION_EXTERN NSString *const varNames_inputViewTypeKey;
FOUNDATION_EXTERN NSString *const varNames_inputViewBorderTypeKey;
FOUNDATION_EXTERN NSString *const varNames_inputViewLineColorKey;
FOUNDATION_EXTERN NSString *const varNames_inputViewPlaceholderColorKey;
FOUNDATION_EXTERN NSString *const varNames_inputViewBackgroundColorKey;
FOUNDATION_EXTERN NSString *const varNames_titleKey;
FOUNDATION_EXTERN NSString *const varNames_commitTitleKey;
FOUNDATION_EXTERN NSString *const varNames_secondCommitTitleKey;
/// 四级
FOUNDATION_EXTERN NSString *const varNames_themeColorKey;
FOUNDATION_EXTERN NSString *const varNames_backgroundColorKey;
FOUNDATION_EXTERN NSString *const varNames_lineColorKey;
FOUNDATION_EXTERN NSString *const varNames_fillColorKey;
FOUNDATION_EXTERN NSString *const varNames_titleFontColorKey;
FOUNDATION_EXTERN NSString *const varNames_titleBackgroundColorKey;
FOUNDATION_EXTERN NSString *const varNames_commitBtnFontColorKey;
FOUNDATION_EXTERN NSString *const varNames_commitBtnBackgroundColorKey;
FOUNDATION_EXTERN NSString *const varNames_secondCommitBtnFontColorKey;
FOUNDATION_EXTERN NSString *const varNames_secondCommitBtnBackgroundColorKey;


#pragma mark ---------- 视频相关
FOUNDATION_EXTERN NSString *const varNames_passVideoPresentKey;
FOUNDATION_EXTERN NSString *const varNames_videoNameKey;
FOUNDATION_EXTERN NSString *const varNames_videoTypeKey;
FOUNDATION_EXTERN NSString *const varNames_passVideoPresentValue;

#pragma mark ---------- 固定账号登录使用
FOUNDATION_EXTERN NSString *const varNames_passLoginConfigKey;
FOUNDATION_EXTERN NSString *const varNames_isPassLoginKey;

#pragma mark ---------- 自动登录页面持续时间
FOUNDATION_EXTERN NSString *const varNames_autoLoginDurationKey;
/// plist 中没有值时候取的默认值
FOUNDATION_EXTERN NSString *const varNames_isPassLoginValue;
FOUNDATION_EXTERN NSString *const varNames_defaultUidKey;
FOUNDATION_EXTERN NSString *const varNames_defaultUsernameKey;

/// plist中没有值时候取的默认值
FOUNDATION_EXTERN NSString *const varNames_backgroundColorValue;
FOUNDATION_EXTERN NSString *const varNames_lineColorValue;
FOUNDATION_EXTERN NSString *const varNames_fillColorValue;
FOUNDATION_EXTERN NSString *const varNames_titleFontColorValue;
FOUNDATION_EXTERN NSString *const varNames_titleBackgroundColorValue;
FOUNDATION_EXTERN NSString *const varNames_commitBtnFontColorValue;
FOUNDATION_EXTERN NSString *const varNames_commitBtnBackgroundColorValue;
FOUNDATION_EXTERN NSString *const varNames_secondCommitBtnFontColorValue;
FOUNDATION_EXTERN NSString *const varNames_secondCommitBtnBackgroundColorValue;
FOUNDATION_EXTERN NSString *const varNames_inputViewTypeValue;
FOUNDATION_EXTERN NSString *const varNames_inputViewBorderTypeValue;
FOUNDATION_EXTERN NSString *const varNames_inputViewLineColorValue;
FOUNDATION_EXTERN NSString *const varNames_inputViewBackgroundColorValue;
FOUNDATION_EXTERN NSString *const varNames_titleValue;
FOUNDATION_EXTERN NSString *const varNames_commitTitleValue;
FOUNDATION_EXTERN NSString *const varNames_secondCommitTitleValue;
/// 建议绑定页面的内容
FOUNDATION_EXTERN NSString *const varNames_suggestViewConfig;
FOUNDATION_EXTERN NSString *const varNames_suggestViewItem;
FOUNDATION_EXTERN NSString *const varNames_suggestViewTip;

/// 悬浮球的内容配置
FOUNDATION_EXTERN NSString *const varNames_suspensionBallConfig;
FOUNDATION_EXTERN NSString *const varNames_suspensionBallshow;
FOUNDATION_EXTERN NSString *const varNames_suspensionBallshowtime;
/// 客服页面配置
FOUNDATION_EXTERN NSString *const varNames_serverViewConfig;
FOUNDATION_EXTERN NSString *const varNames_serverKouKouConfig;
FOUNDATION_EXTERN NSString *const varNames_serverTimeConfig;




/// SDK 版本
static inline NSString *methodNames_getSDKVersion_config() {
    NSString *varNames_varlueReturn = @"oe_1.0.6";
    return varNames_varlueReturn;
}


#pragma mark ---------- 获取plist中initConfig的配置
static inline NSDictionary *methodNames_getInit_config(NSString *varNames_key) {
    if (!varNames_key || !varNames_key.length) {
        return [NSDictionary dictionary];
    }
    NSString *varNames_tmpPath = [[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:@"PlatFormGamesSDK.bundle"];
    NSBundle *varNames_tmpBundle = [NSBundle bundleWithPath:varNames_tmpPath];
    NSString *varNames_tmpSecondPath = [varNames_tmpBundle pathForResource:@"PFGames" ofType:@"plist"];
    NSDictionary *varNames_tmpDic = [NSDictionary dictionaryWithContentsOfFile:varNames_tmpSecondPath];
    NSDictionary *varNames_tmpSecondDic = [varNames_tmpDic objectForKey:varNames_initConfigKey];
    NSDictionary *varNames_returnValue = [varNames_tmpSecondDic objectForKey:varNames_key];
    if (!varNames_returnValue) {
        return [NSDictionary dictionary];
    }
    return varNames_returnValue;
}

#pragma mark ---------- 默认配置
/// 主题色：整个SDK的主色调
static inline NSString *methodNames_getDefault_themeColor_config() {
    NSString *varNames_returnValue = varNames_backgroundColorValue;
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue;
    }
    NSDictionary *varNames_tmpSecondDic = [varNames_tmpDic objectForKey:varNames_colorKey];
    if (!varNames_tmpSecondDic) {
        return varNames_returnValue;
    }
    varNames_returnValue = [varNames_tmpSecondDic objectForKey:varNames_themeColorKey];
    if (!varNames_returnValue.length) {
        varNames_returnValue = varNames_backgroundColorValue;
    }
    return varNames_returnValue;
}
/// 页面背景色
static inline NSString *methodNames_getDefault_backgroundColor_config() {
    NSString *varNames_returnValue = varNames_backgroundColorValue;
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue;
    }
    NSDictionary *varNames_tmpSecondDic = [varNames_tmpDic objectForKey:varNames_colorKey];
    if (!varNames_tmpSecondDic) {
        return varNames_returnValue;
    }
    varNames_returnValue = [varNames_tmpSecondDic objectForKey:varNames_backgroundColorKey];
    if (!varNames_returnValue.length) {
        varNames_returnValue = varNames_backgroundColorValue;
    }
    return varNames_returnValue;
}
/// 描边色（页面如果有描边）
static inline NSString *methodNames_getDefault_lineColor_config() {
    NSString *varNames_returnValue = varNames_lineColorValue;
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue;
    }
    NSDictionary *varNames_tmpSecondDic = [varNames_tmpDic objectForKey:varNames_colorKey];
    if (!varNames_tmpSecondDic) {
        return varNames_returnValue;
    }
    varNames_returnValue = [varNames_tmpSecondDic objectForKey:varNames_lineColorKey];
    if (!varNames_returnValue.length) {
        varNames_returnValue = varNames_lineColorValue;
    }
    return varNames_returnValue;
}
/// 填充色
static inline NSString *methodNames_getDefault_fillColor_config() {
    NSString *varNames_returnValue = varNames_fillColorValue;
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue;
    }
    NSDictionary *varNames_tmpSecondDic = [varNames_tmpDic objectForKey:varNames_colorKey];
    if (!varNames_tmpSecondDic) {
        return varNames_returnValue;
    }
    varNames_returnValue = [varNames_tmpSecondDic objectForKey:varNames_fillColorKey];
    if (!varNames_returnValue.length) {
        varNames_returnValue = varNames_fillColorValue;
    }
    return varNames_returnValue;
}
/// 标题字体颜色
static inline NSString *methodNames_getDefault_titleFontColor_config() {
    NSString *varNames_returnValue = varNames_titleFontColorValue;
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue;
    }
    NSDictionary *varNames_tmpSecondDic = [varNames_tmpDic objectForKey:varNames_colorKey];
    if (!varNames_tmpSecondDic) {
        return varNames_returnValue;
    }
    varNames_returnValue = [varNames_tmpSecondDic objectForKey:varNames_titleFontColorKey];
    if (!varNames_returnValue.length) {
        varNames_returnValue = varNames_titleFontColorValue;
    }
    return varNames_returnValue;
}
/// 标题背景色
static inline NSString *methodNames_getDefault_titleBackgroundColor_config() {
    NSString *varNames_returnValue = varNames_titleBackgroundColorValue;
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue;
    }
    NSDictionary *varNames_tmpSecondDic = [varNames_tmpDic objectForKey:varNames_colorKey];
    if (!varNames_tmpSecondDic) {
        return varNames_returnValue;
    }
    varNames_returnValue = [varNames_tmpSecondDic objectForKey:varNames_titleBackgroundColorKey];
    if (!varNames_returnValue.length) {
        varNames_returnValue = varNames_titleBackgroundColorValue;
    }
    return varNames_returnValue;
}

/// 默认的inputView的类型, 0的时候为文字，其他的为图标
static inline NSInteger methodNames_getDefault_inputViewType_config() {
    NSString *varNames_returnValue = varNames_inputViewTypeValue;
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue.integerValue;
    }
    varNames_returnValue = [varNames_tmpDic objectForKey:varNames_inputViewTypeKey];
    if (!varNames_returnValue.length) {
        varNames_returnValue = varNames_inputViewTypeValue;
        return varNames_returnValue.integerValue;
    }
    return varNames_returnValue.integerValue;
}
/// 默认的inputViewBorder的类型
static inline NSInteger methodNames_getDefault_inputViewBorderType_config() {
    NSString *varNames_returnValue = varNames_inputViewBorderTypeValue;
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue.integerValue;
    }
    varNames_returnValue = [varNames_tmpDic objectForKey:varNames_inputViewBorderTypeKey];
    if (!varNames_returnValue.length) {
        varNames_returnValue = varNames_inputViewBorderTypeValue;
        return varNames_returnValue.integerValue;
    }
    return varNames_returnValue.integerValue;
}
/// 默认的inputViewPlaceholderColor
static inline NSString *methodNames_getDefault_inputViewPlaceholderColor_config() {
    NSString *varNames_returnValue = varNames_inputViewLineColorValue;
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue;
    }
    NSDictionary *varNames_tmpSecondDic = [varNames_tmpDic objectForKey:varNames_colorKey];
    if (!varNames_tmpSecondDic) {
        return varNames_returnValue;
    }
    varNames_returnValue = [varNames_tmpSecondDic objectForKey:varNames_inputViewPlaceholderColorKey];
    if (!varNames_returnValue.length) {
        return varNames_returnValue = varNames_inputViewLineColorValue;
    }
    return varNames_returnValue;
}

/// 默认的inputViewLineColor
static inline NSString *methodNames_getDefault_inputViewLineColor_config() {
    NSString *varNames_returnValue = varNames_inputViewLineColorValue;
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue;
    }
    NSDictionary *varNames_tmpSecondDic = [varNames_tmpDic objectForKey:varNames_colorKey];
    if (!varNames_tmpSecondDic) {
        return varNames_returnValue;
    }
    varNames_returnValue = [varNames_tmpSecondDic objectForKey:varNames_inputViewLineColorKey];
    if (!varNames_returnValue.length) {
        return varNames_returnValue = varNames_inputViewLineColorValue;
    }
    return varNames_returnValue;
}
/// 默认inputViewBackgroundColor
static inline NSString *methodNames_getDefault_inputViewBackgroundColor_config() {
    NSString *varNames_returnValue = varNames_inputViewBackgroundColorValue;
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue;
    }
    varNames_returnValue = [varNames_tmpDic objectForKey:varNames_inputViewBackgroundColorKey];
    if (!varNames_returnValue.length) {
        return varNames_returnValue = varNames_inputViewBackgroundColorValue;
    }
    return varNames_returnValue;
}

/// 默认inputViewTitleColor 为背景色
static inline NSString *methodNames_getDefault_inputViewTitleColor_config() {
    return methodNames_getDefault_backgroundColor_config();
}

/// 提交按钮字体色
static inline NSString *methodNames_getDefault_commitBtnFontColor_config() {
    NSString *varNames_returnValue = varNames_commitBtnFontColorValue;
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue;
    }
    NSDictionary *varNames_tmpSecondDic = [varNames_tmpDic objectForKey:varNames_colorKey];
    if (!varNames_tmpSecondDic) {
        return varNames_returnValue;
    }
    varNames_returnValue = [varNames_tmpSecondDic objectForKey:varNames_commitBtnFontColorKey];
    if (!varNames_returnValue.length) {
        varNames_returnValue = varNames_commitBtnFontColorValue;
    }
    return varNames_returnValue;
}

static inline NSString *methodNames_getDefault_commitBtnBackgroundColor_config() {
    NSString *varNames_returnValue = varNames_commitBtnBackgroundColorValue;
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue;
    }
    NSDictionary *varNames_tmpSecondDic = [varNames_tmpDic objectForKey:varNames_colorKey];
    if (!varNames_tmpSecondDic) {
        return varNames_returnValue;
    }
    varNames_returnValue = [varNames_tmpSecondDic objectForKey:varNames_commitBtnBackgroundColorKey];
    if (!varNames_returnValue.length) {
        varNames_returnValue = methodNames_getDefault_inputViewBackgroundColor_config();
    }
    return varNames_returnValue;
}


#pragma mark ---------- 字体大小
static inline CGFloat methodNames_setFont() {
    CGFloat varNames_tmpfont = 11;
    if ([methodNames_getDeviceScreen() isEqualToString:varNames_smallScreenDevice]) {
        varNames_tmpfont = 11;
    } else if ([methodNames_getDeviceScreen() isEqualToString:varNames_middleScreenDevice]) {
        varNames_tmpfont = 12;
    } else {
        varNames_tmpfont = 12;
    }
    return varNames_tmpfont;
}
#pragma mark ---------- 输入框的设置
static inline CGFloat methodNames_getInputView_TitleLabel_Width() {
    return 40.0f;
}
static inline CGFloat methodNames_getInputView_Image_Width() {
    return 30.0f;
}
static inline CGFloat methodNames_getInputView_inputView_Height() {
    return 35.0f;
}
static inline CGFloat methodNames_getInputView_inputView_Width() {
    return 230.0f;
}


static inline CGFloat methodNames_getProtocolView_Height() {
    return 20.0f;
}
static inline CGFloat methodNames_getInputView_ItemButton_Width() {
    return 30.0f;
}
static inline CGFloat methodNames_getInputView_Font() {
    return 15;
    CGFloat varNames_tmpfont = 11;
    if ([methodNames_getDeviceScreen() isEqualToString:varNames_smallScreenDevice]) {
        varNames_tmpfont = 11;
    } else if ([methodNames_getDeviceScreen() isEqualToString:varNames_middleScreenDevice]) {
        varNames_tmpfont = 12;
    } else {
        varNames_tmpfont = 12;
    }
    return varNames_tmpfont;
}


static inline CGFloat methodNames_setCommitButtonWidth() {
    return 150.0f;
}
static inline CGFloat methodNames_setCommitButtonHeight() {
    return 38.0f;
}


#pragma mark ---------- 设置页面frame的数值
static inline CGFloat methodNames_setMargin_base() {
    return 5.0f;
}
static inline CGFloat methodNames_setMargin_2base() {
    return 2.0 * methodNames_setMargin_base();
}
static inline CGFloat methodNames_setMargin_3base() {
    return 3.0 * methodNames_setMargin_base();
}
/// 自定义的navigationBar的高度
static inline CGFloat methodNames_setNavigationBarHeight() {
    return 45.0;
}
static inline CGFloat methodNames_setCommitBtnHeight() {
    return 30.0f;
}

/// 获取验证码显示的倒计时最大数字标题
static inline NSInteger methodNames_setGetCodeBtnMaxTitle() {
    return 60;
}

#pragma mark ---------- Hub 遮罩相关
/// hub 遮罩view的宽高
static inline CGFloat methodNames_getHubViewWidthHeight() {
    return 120.0f;
}
static inline CGFloat methodNames_getErrSuccessBtnWidthHeight() {
    return 30;
}
/// hub的圆角值
static inline CGFloat methodNames_getHubViewcornerRadius() {
    return 5.0f;
}
/// hub的背景色
static inline NSString *methodNames_getHubViewBackgroundColor() {
    return @"#000000";
}
/// hub的透明度
static inline CGFloat methodNames_getHubViewAlpha() {
    return 0.7f;
}
/// hub的整体色值
static inline NSString *methodNames_getHubTintColor() {
    return @"#ffffff";
}
/// hub loading的色值
static inline NSString *methodNames_getHubLoadingColor() {
    return methodNames_getHubTintColor();
}
/// hub 文字的大小
static inline CGFloat methodNames_getHubTitleFont() {
    return 14;
}
/// hub 文字的色值
static inline NSString *methodNames_getHubLabelTextColor() {
    return methodNames_getHubTintColor();
}

#pragma mark ---------- 视频相关
/// 默认的现实跳过按钮的时间百分比
static inline CGFloat methodNames_getDefault_passVideoDuration_config() {
    NSString *varNames_returnValue = varNames_passVideoPresentValue;
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue.floatValue;
    }
    varNames_returnValue = [varNames_tmpDic objectForKey:varNames_passVideoPresentKey];
    if (!varNames_returnValue.length) {
        varNames_returnValue = varNames_passVideoPresentValue;
        return varNames_returnValue.floatValue;
    }
    return varNames_returnValue.floatValue;
}

/// 默认的现实跳过按钮的时间百分比
static inline NSString *methodNames_getDefault_videoName_config() {
    NSString *varNames_returnValue = @"";
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue;
    }
    varNames_returnValue = [varNames_tmpDic objectForKey:varNames_videoNameKey];
    if (!varNames_returnValue.length) {
        varNames_returnValue = @"";
        return varNames_returnValue;
    }
    return varNames_returnValue;
}

/// 默认的现实跳过按钮的时间百分比
static inline NSString *methodNames_getDefault_videoType_config() {
    NSString *varNames_returnValue = @"";
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue;
    }
    varNames_returnValue = [varNames_tmpDic objectForKey:varNames_videoTypeKey];
    if (!varNames_returnValue.length) {
        varNames_returnValue = @"";
        return varNames_returnValue;
    }
    return varNames_returnValue;
}


#pragma mark ---------- 提-------审 使用
/// 如果为YES 那么需要进行根据后台的appcheck进行判断
static inline BOOL methodNames_getDefault_isPassLogin_config() {
    BOOL varNames_returnValue = varNames_isPassLoginValue.boolValue;
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue;
    }
    NSDictionary *varNames_tmpSecondDic = [varNames_tmpDic objectForKey:varNames_passLoginConfigKey];
    if (!varNames_tmpSecondDic) {
        return varNames_returnValue;
    }
    NSString *varNames_tmpString = [varNames_tmpSecondDic objectForKey:varNames_isPassLoginKey];
    varNames_returnValue = varNames_tmpString.boolValue;
    return varNames_returnValue;
}

static inline NSString *methodNames_getDefault_uid() {
    NSString *varNames_returnValue = @"";
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue;
    }
    NSDictionary *varNames_tmpSecondDic = [varNames_tmpDic objectForKey:varNames_passLoginConfigKey];
    if (!varNames_tmpSecondDic) {
        return varNames_returnValue;
    }
    varNames_returnValue = [varNames_tmpSecondDic objectForKey:varNames_defaultUidKey];
    return varNames_returnValue;
}

static inline NSString *methodNames_getDefault_userName() {
    NSString *varNames_returnValue = @"";
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_tmpDic) {
        return varNames_returnValue;
    }
    NSDictionary *varNames_tmpSecondDic = [varNames_tmpDic objectForKey:varNames_passLoginConfigKey];
    if (!varNames_tmpSecondDic) {
        return varNames_returnValue;
    }
    varNames_returnValue = [varNames_tmpSecondDic objectForKey:varNames_defaultUsernameKey];
    return varNames_returnValue;
}

#pragma mark ---------- 读取bundle中的图片资源
static inline NSBundle *methodNames_getImageBunlde() {
    NSString *varNames_tmpPath = [[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:@"PlatFormGamesSDK.bundle"];
    NSBundle *varNames_tmpBundle = [NSBundle bundleWithPath:varNames_tmpPath];
    return varNames_tmpBundle;
}

static inline UIImage *methodNames_getImage(NSString *varNames_img) {
    NSBundle *bundle = methodNames_getImageBunlde();
    if (!bundle) {
        return [UIImage imageNamed:@""];
    }
    NSString *varNames_tmpPath = [bundle pathForResource:varNames_img ofType:@"png"];
    UIImage *varNames_image = [UIImage imageWithContentsOfFile:varNames_tmpPath];
    return varNames_image;
}
static inline CGSize methodNames_getImageSize(UIImage *varNames_image) {
    return varNames_image? varNames_image.size: CGSizeMake(0, 0);
}

#pragma mark ---------- 专场动画时长
static inline CGFloat methodNames_getShowHideViewAnimateDuration() {
    return 0.1f;
}
#pragma mark ---------- 自动登录页面持续时间
static inline NSInteger methodNames_getAutoLoginViewDuration() {
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (varNames_tmpDic) {
        NSNumber *varNames_autoLogin = [varNames_tmpDic objectForKey:varNames_autoLoginDurationKey];
        if (varNames_autoLogin) {
            return varNames_autoLogin.integerValue;
        }
    }
    
    return 5;
}

#pragma mark ---------- 悬浮球的内容配置
static inline BOOL methodNames_showSuspensionBall() {
    BOOL varNames_showBall = YES;
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_suspensionBallConfig);
    varNames_showBall = [[varNames_tmpDic objectForKey:varNames_suspensionBallshow] boolValue];
    return varNames_showBall;
}
static inline NSInteger methodNames_willshowBallAfterSecond() {
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_suspensionBallConfig);
    NSNumber *varNames_shownumber = [varNames_tmpDic objectForKey:varNames_suspensionBallshowtime];
    return varNames_shownumber.integerValue;
}


#pragma mark ---------- 建议绑定手机页面的配置内容
static inline NSArray *methodNames_getSuggestViewItem() {
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_suggestViewConfig);
    NSArray *varNames_tmpArray = [varNames_tmpDic objectForKey:varNames_suggestViewItem];
    if (varNames_tmpArray && varNames_tmpArray.count) {
        return varNames_tmpArray;
    }
    return @[];
}

static inline NSString *methodNames_getSuggestViewTip() {
    NSDictionary *varNames_tmpDic = methodNames_getInit_config(varNames_suggestViewConfig);
    NSString *varNames_tmpTip = [varNames_tmpDic objectForKey:varNames_suggestViewTip];
    if (varNames_tmpTip && varNames_tmpTip.length) {
        return varNames_tmpTip;
    }
    return @"";
}

#pragma mark ---------- 客服页面的内容配置
static inline NSString *methodNames_getServerKouKou() {
    NSString *varNames_koukou = @"743911535";
    NSDictionary *varNames_defaultDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_defaultDic) {
        return varNames_koukou;
    }
    NSDictionary *varNames_tmpDic = [varNames_defaultDic objectForKey:varNames_serverViewConfig];
    if (varNames_tmpDic && [varNames_tmpDic objectForKey:varNames_serverKouKouConfig]) {
        varNames_koukou = [varNames_tmpDic objectForKey:varNames_serverKouKouConfig];
    }
    return varNames_koukou;
}
static inline NSString *methodNames_getServerTime() {
    NSString *varNames_time = @"10:00--19:00";
    NSDictionary *varNames_defaultDic = methodNames_getInit_config(varNames_defaultConfigKey);
    if (!varNames_defaultDic) {
        return varNames_time;
    }
    NSDictionary *varNames_tmpDic = [varNames_defaultDic objectForKey:varNames_serverViewConfig];
    if (varNames_tmpDic && [varNames_tmpDic objectForKey:varNames_serverTimeConfig]) {
        varNames_time = [varNames_tmpDic objectForKey:varNames_serverTimeConfig];
    }
    return varNames_time;
}


#pragma mark ---------- 标题view的框高
static inline CGFloat methodNames_getTitleView_Width() {
    return 100;
}
static inline CGFloat methodNames_getTitleView_Height() {
    return 40;
}
#pragma mark ---------- 绑定页面关闭按钮的大小
static inline CGFloat methodNames_getBackView_Width() {
    return 25;
}
static inline CGFloat methodNames_getBackView_Height() {
    return 25;
}
static inline CGFloat methodNames_getCloseView_Width() {
    return 25;
}
static inline CGFloat methodNames_getCloseView_Height() {
    return 25;
}
static inline CGFloat methodNames_getInputView_inputView_Margin() {
    return 27.5f;
}

