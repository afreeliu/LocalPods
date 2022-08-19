

#import "ClassNames_DefaultThemeConfigure.h"

/// 一级
NSString *const varNames_initConfigKey                     =
@"initConfig";
/// 二级
NSString *const varNames_defaultConfigKey                  =
@"defaultConfig";
NSString *const varNames_autoLoginViewConfigKey            =
@"autoLoginViewConfig";
NSString *const varNames_loginViewConfigKey                =
@"loginViewConfig";
NSString *const varNames_quickLoginViewConfigKey           =
@"quickLoginViewConfig";
NSString *const varNames_findbackPasswordViewConfigKey     =
@"findbackPasswordViewConfig";
NSString *const varNames_resetPasswordViewConfigKey        =
@"resetPasswordViewConfig";
NSString *const varNames_normalRegisterViewConfigKey       =
@"normalRegisterViewConfig";
NSString *const varNames_phoneRegisterViewConfigKey        =
@"phoneRegisterViewConfig";
NSString *const varNames_bindPhoneViewConfigKey            =
@"bindPhoneViewConfig";
NSString *const varNames_bindPersonIDViewConfigKey         =
@"bindPersonIDViewConfig";
/// 三级
NSString *const varNames_colorKey                          =
@"color";
NSString *const varNames_inputViewTypeKey                  =
@"inputViewType";
NSString *const varNames_inputViewBorderTypeKey            =
@"inputViewBorderType";
NSString *const varNames_inputViewLineColorKey             =
@"inputViewLineColor";
NSString *const varNames_inputViewPlaceholderColorKey       =
@"inputViewPlaceholderColor";
NSString *const varNames_inputViewBackgroundColorKey            =
@"inputViewBackgroundColor";
NSString *const varNames_titleKey                          =
@"title";
NSString *const varNames_commitTitleKey                    =
@"commitTitle";
NSString *const varNames_secondCommitTitleKey              =
@"secondCommitTitle";
/// 四级
NSString *const varNames_themeColorKey                     =
@"themeColor";
NSString *const varNames_backgroundColorKey                =
@"backgroundColor";
NSString *const varNames_lineColorKey                      =
@"lineColor";
NSString *const varNames_fillColorKey                      =
@"fillColor";
NSString *const varNames_titleFontColorKey                 =
@"titleFontColor";
NSString *const varNames_titleBackgroundColorKey           =
@"titleBackgroundColor";
NSString *const varNames_commitBtnFontColorKey             =
@"commitBtnFontColor";
NSString *const varNames_commitBtnBackgroundColorKey       =
@"commitBtnBackgroundColor";
NSString *const varNames_secondCommitBtnFontColorKey       =
@"secondCommitBtnFontColor";
NSString *const varNames_secondCommitBtnBackgroundColorKey =
@"secondCommitBtnBackgroundColor";


#pragma mark ---------- 视频相关
NSString *const varNames_passVideoPresentKey = @"passVideoPresent";
NSString *const varNames_videoNameKey = @"videoName";
NSString *const varNames_videoTypeKey = @"videoType";
/// 根据视频长度百分比取值显示跳过按钮
NSString *const varNames_passVideoPresentValue                    =          @"0.2";

#pragma mark ---------- 固定账号登录使用
NSString *const varNames_passLoginConfigKey                =          @"passLoginConfig";
NSString *const varNames_isPassLoginKey                    =          @"isPassLogin";
#pragma mark ---------- 自动登录页面持续时间
NSString *const varNames_autoLoginDurationKey              =        @"autoLoginDuration";

/// plist 中没有值时候取的默认值
NSString *const varNames_isPassLoginValue                  =          @"0";
NSString *const varNames_defaultUidKey                     =          @"uid";
NSString *const varNames_defaultUsernameKey                =          @"username";



/// plist中没有值时候取的默认值
NSString *const varNames_backgroundColorValue              =          @"#999999";

/// 填充颜色，inputView的背景色，
NSString *const varNames_fillColorValue                    =          @"#8B4513";
/// 页面标题颜色
NSString *const varNames_titleFontColorValue               =          @"#ffffff";
/// 确定按钮，取消按钮颜色
NSString *const varNames_commitBtnFontColorValue           =          @"#333333";
/// 按钮的背景色
NSString *const varNames_commitBtnBackgroundColorValue     =          @"#FEF8C4";



NSString *const varNames_inputViewBackgroundColorValue        =          @"#ffffff";
NSString *const varNames_lineColorValue                    =          @"#ff0000";

NSString *const varNames_titleBackgroundColorValue         =          @"#ffffff";


NSString *const varNames_secondCommitBtnFontColorValue     =          @"#333333";
NSString *const varNames_secondCommitBtnBackgroundColorValue                        =          @"#ffffff";
/// 决定inputView使用文字还是图标
NSString *const varNames_inputViewTypeValue                =          @"1";

NSString *const varNames_inputViewBorderTypeValue          =          @"0";
NSString *const varNames_inputViewLineColorValue               =          @"#342310";

NSString *const varNames_titleValue                        =          @"设定标题";
NSString *const varNames_commitTitleValue                  =          @"确定";
NSString *const varNames_secondCommitTitleValue            =          @"进入游戏";



/// 建议绑定页面的内容
NSString *const varNames_suggestViewConfig = @"suggestConfig";
NSString *const varNames_suggestViewItem = @"Item";
NSString *const varNames_suggestViewTip = @"tip";


/// 悬浮球的内容配置
NSString *const varNames_suspensionBallConfig = @"suspensionBallConfig";
NSString *const varNames_suspensionBallshow = @"showball";
NSString *const varNames_suspensionBallshowtime = @"showtime";


/// 客服页面配置
NSString *const varNames_serverViewConfig = @"serverConfig";
NSString *const varNames_serverKouKouConfig = @"koukou";
NSString *const varNames_serverWechatConfig = @"gongzhonghao";
NSString *const varNames_serverTimeConfig = @"time";
