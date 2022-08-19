

#import "ClassNames_MainView.h"
#import "ClassNames_AutoLoginView.h"
#import "ClassNames_LoginView.h"
#import "ClassNames_FindBackPasswordView.h"
#import "ClassNames_ResetPasswordView.h"
#import "ClassNames_NormalRegisterView.h"
#import "ClassNames_PhoneRegisterView.h"
#import "ClassNames_BindPhoneView.h"
#import "ClassNames_BindPersonIDView.h"
#import "ClassNames_QuickLoginView.h"
#import "ClassNames_PGHubView.h"
#import "ClassNames_PayView.h"
#import "ClassNames_NoticeView.h"

#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_DeviceConfigure.h"
#import "ClassNames_SecurityTool.h"
#import "ClassNames_ImageBackground.h"
#import "ClassNames_ImageErrorRight.h"
#import "ClassNames_Color.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_InitGamesConfigure.h"
#import "ClassNames_NotificationConfigure.h"

#import "ClassNames_MemberVisitorModel.h"
#import "ClassNames_ImageSkillButton.h"
#import "ClassNames_UserCenterView.h"
#import "ClassNames_CustomServerView.h"
#import "ClassNames_DelegateView.h"
#import "ClassNames_TipView.h"
#import "ClassNames_DetailCustomerServerView.h"


@interface ClassNames_MainView ()

@property (nonatomic, readwrite, strong) UIView *varNames_backgroundView;
@property (nonatomic, readwrite, strong) NSLayoutConstraint *varNames_backgroundViewConstraint;


@property (nonatomic, readwrite, strong) UIView *varNames_skillBtnView;

@property (nonatomic, readwrite, assign) BOOL varNames_isAutoLogin;
@property (nonatomic, readwrite, assign) BOOL varNames_canQuickLogin;
@property (nonatomic, readwrite, assign) BOOL varNames_quickLoginSuccess;


/// 各大页面
@property (nonatomic, readwrite, strong) ClassNames_LoginView *varNames_loginView;
@property (nonatomic, readwrite, strong) ClassNames_QuickLoginView *varNames_quickLoginView;
@property (nonatomic, readwrite, strong) ClassNames_FindBackPasswordView *varNames_findbackPasswordView;
@property (nonatomic, readwrite, strong) ClassNames_ResetPasswordView *varNames_resetPasswordView;
@property (nonatomic, readwrite, strong) ClassNames_NormalRegisterView *varNames_normalRegisterView;
@property (nonatomic, readwrite, strong) ClassNames_PhoneRegisterView *varNames_phoneRegisterView;
/// 单独页面
@property (nonatomic, readwrite, strong) ClassNames_AutoLoginView *varNames_autoLoginView;
@property (nonatomic, readwrite, strong) ClassNames_BindPhoneView *varNames_bindPhoneView;
@property (nonatomic, readwrite, strong) ClassNames_BindPersonIDView *varNames_bindPersonIDView;

@property (nonatomic, readwrite, strong) ClassNames_PayView *varNames_payView;

@property (nonatomic, readwrite, strong) ClassNames_NoticeView *varNames_noticeView;

// 提示手机验证页面
@property (nonatomic, readwrite, strong) ClassNames_TipView *varNames_bindPhoneTipView;

/// 是否绑定手机，是否绑定身份证
@property (nonatomic, readwrite, assign) BOOL varNames_isNeedBindPhone;
@property (nonatomic, readwrite, assign) BOOL varNames_isNeedBindPersonID;

/// 快速登陆
@property (nonatomic, readwrite, strong) ClassNames_MemberVisitorModel *varNames_visitorModel;

/// 是否正在执行动画
@property (nonatomic, readwrite, assign) BOOL varNames_isAnimating;
/// 当前处在的页面
@property (nonatomic, readwrite, assign) BOOL varNames_isLoginView;

@property (nonatomic, readwrite, strong) ClassNames_UserCenterView *varNames_userCenterView;

/// 客服 View
@property (nonatomic, readwrite, strong) ClassNames_CustomServerView *varNames_serverView;

/// 悬浮球中显示的客服页面
@property (nonatomic, readwrite, strong) ClassNames_DetailCustomerServerView *varNames_detailCustomerServerView;

// 协议页面
@property (nonatomic, readwrite, strong) ClassNames_DelegateView *varNames_delegateView;

// 用户手册页面
@property (nonatomic, readwrite, strong) ClassNames_DelegateView *varNames_handleBookView;

@end


@implementation ClassNames_MainView

+ (void)methodNames_cleanView {
    UIWindow *varNames_tmpWindow = methodNames_getCurrentWindow();
    NSLog(@"window中含有的子视图为:%@", varNames_tmpWindow.subviews);
    [varNames_tmpWindow.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj.class isEqual:ClassNames_MainView.class]) {
            [obj removeFromSuperview];
            *stop = YES;
        }
    }];
}

+ (instancetype)methodNames_instanceMainView {
    UIWindow *varNames_tmpWindow = methodNames_getCurrentWindow();
    ClassNames_MainView *varNames_mainView = [[ClassNames_MainView alloc]init];
    [varNames_tmpWindow addSubview:varNames_mainView];
    
    varNames_mainView.translatesAutoresizingMaskIntoConstraints = NO;
    [ClassNames_BaseViewLayout methodNames_layoutTop:varNames_mainView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:varNames_mainView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:varNames_mainView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:varNames_mainView methodNames_constriant:0];
    
    return varNames_mainView;
}
// 显示自动登录页面
- (void)methodNames_showAutoLoginView {
    self.varNames_backgroundViewConstraint.constant = 90;
    [self methodNames_createAutoLoginViewWithAccount:nil methodNames_password:nil];
    
}
// 显示手机号登录页
- (void)methodNames_showPhoneLoginView {
    [self methodNames_createPhoneRegisterView];
    [self methodNames_switchSkillViewWithDefaultButtonTap:10];
}

// 显示账号登陆页
- (void)methodNames_showLoginView {
    [self methodNames_createLoginView];
    [self methodNames_switchSkillViewWithDefaultButtonTap:11];
}
// 显示账号注册页
- (void)methodNames_showRegisterView {
    
    [self methodNames_createNormalRegisterView];
    [self methodNames_switchSkillViewWithDefaultButtonTap:12];
}

// 显示用户中心页
- (void)methodNames_showUserCenterView {
    [self methodNames_createUserCenterView];
}






#pragma mark ---------- 登录成功，并不需要进入绑定任何内容
- (void)methodNames_loginFinishWithoutBind {
    self.hidden = YES;
    [self removeFromSuperview];
}

#pragma mark ---------- public methodNames
+ (instancetype)methodNames_showMainView {
    
    UIWindow *varNames_tmpWindow = methodNames_getCurrentWindow();
    ClassNames_MainView *varNames_mainView = [[ClassNames_MainView alloc]init];
    [varNames_tmpWindow addSubview:varNames_mainView];
    return varNames_mainView;
}


-(void)dealloc {
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

-(instancetype)init {
    self = [super init];
    if (self) {
        
        /// 是否能自动登录
        _varNames_isAutoLogin = methodNames_canAutoLogin();
        /// 是否支持快速登陆
        _varNames_canQuickLogin = methodNames_readFastLogin();
        
        [self methodNames_createBackgroundView];
        UITapGestureRecognizer *varNames_tmptap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(methodNames_endEditing:)];
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer:varNames_tmptap];
    }
    return self;
}

#pragma mark ---------- 结束编辑输入
- (void)methodNames_endEditing:(UITapGestureRecognizer *)noti {
    
    [self endEditing:YES];
    NSDictionary *varNames_tmpobject = @{
                             varNames_durationKey: @(0.25),
                             varNames_isUpWindowKey : @(NO),
                             varNames_moveValueKey : @(0)
                             };
    [[NSNotificationCenter defaultCenter]postNotificationName:varNames_moveWindowNoti object:varNames_tmpobject];
}

#pragma mark ---------- 主背景页面
- (void)methodNames_createBackgroundView {
    if (!self.varNames_backgroundView) {
        UIView *varNames_backgroundView = [[UIView alloc]init];
        varNames_backgroundView.layer.cornerRadius = 15;
        varNames_backgroundView.translatesAutoresizingMaskIntoConstraints = NO;
        varNames_backgroundView.backgroundColor = [UIColor whiteColor];
        self.varNames_backgroundView = varNames_backgroundView;
        
        [self addSubview:self.varNames_backgroundView];
    } else {
        self.varNames_backgroundView.hidden = NO;
    }
    
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_backgroundView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_backgroundView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_backgroundView methodNames_constriant:methodNames_getMainViewWidth()];
    self.varNames_backgroundViewConstraint = [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_backgroundView methodNames_constriant:methodNames_getMainViewHeight()];
    
    [self setNeedsLayout];
}




#pragma mark ---------- 自动登录页面  . 初始化进入则不需要 account，password。 各登录页面登录后，会进行页面的显示并最终在该页面实现登录
- (void)methodNames_createAutoLoginViewWithAccount:(NSString *)account methodNames_password:(NSString *)password {
    __weak typeof(self) weakSelf = self;
    if (!_varNames_autoLoginView) {
        _varNames_autoLoginView = [ClassNames_AutoLoginView methodNames_createAutoLoginView];
        _varNames_autoLoginView.methodNames_cancelAutoLoginBlock = ^{
            weakSelf.varNames_autoLoginView.hidden = YES;
            weakSelf.varNames_backgroundViewConstraint.constant = methodNames_getMainViewHeight();
            [weakSelf methodNames_showLoginView];
        };
        _varNames_autoLoginView.methodNames_autoLoginSuccess = ^(BOOL varNames_isNeedBindPhone, BOOL varNames_isNeedBindPersonID) {
            weakSelf.varNames_isNeedBindPhone = varNames_isNeedBindPhone;
            weakSelf.varNames_isNeedBindPersonID = varNames_isNeedBindPersonID;
            weakSelf.varNames_autoLoginView.hidden = YES;
            [weakSelf methodNames_createBindView];
        };
        _varNames_autoLoginView.methodNames_autoLoginFailure = ^{
            weakSelf.varNames_autoLoginView.hidden = YES;
            [weakSelf methodNames_createLoginView];
        };

        [_varNames_backgroundView addSubview:_varNames_autoLoginView];
    } else {
        self.varNames_autoLoginView.hidden = NO;
    }
    if (account.length && password.length) {
        [self.varNames_autoLoginView methodNames_loginAccount:account methodNames_password:password];
    }
    
    self.varNames_backgroundViewConstraint.constant = 90;
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:_varNames_autoLoginView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutTop:_varNames_autoLoginView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:_varNames_autoLoginView methodNames_constriant:260];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:_varNames_autoLoginView methodNames_constriant:90];
    
}

#pragma mark ---------- 绑定提示信息相关的 手机绑定和身份证绑定
- (void)methodNames_createBindView {
    
    if (_varNames_isNeedBindPhone) {
//        [self methodNames_createBindPhoeView];
        [self methodNames_createUserCenterView];
        return;
    }
    if (_varNames_isNeedBindPersonID) {
        [self methodNames_createBindPersonIDViewFromView:nil];
        return;
    }
    _varNames_backgroundView.hidden = YES;
    [self removeFromSuperview];
}

#pragma mark ---------- 登录页面
- (void)methodNames_createLoginView {
    __weak typeof(self) weakSelf = self;
    if (!self.varNames_loginView) {
        self.varNames_loginView = [ClassNames_LoginView methodNames_createLoginView];
        self.varNames_loginView.clipsToBounds = YES;
        self.varNames_loginView.methodNames_commitBlock = ^(NSString *varNames_acc, NSString *varNames_pss) {
            weakSelf.varNames_loginView.hidden = YES;
            weakSelf.varNames_skillBtnView.hidden = YES;
            [weakSelf methodNames_createAutoLoginViewWithAccount:varNames_acc methodNames_password:varNames_pss];
        };
        self.varNames_loginView.methodNames_servicceBlock = ^{
//            [weakSelf methodNames_showCustomerServerView];
            //测试
            weakSelf.varNames_loginView.hidden = YES;
            [weakSelf methodNames_createBindPhoeViewFromView:nil];
        };
//        _varNames_loginView.methodNames_loginSuccess = ^(BOOL varNames_isNeedBindPhone, BOOL varNames_isNeedBindPersonID) {
//            weakSelf.varNames_isNeedBindPhone = varNames_isNeedBindPhone;
//            weakSelf.varNames_isNeedBindPersonID = varNames_isNeedBindPersonID;
//            weakSelf.varNames_loginView.hidden = YES;
//            [weakSelf.varNames_loginView removeFromSuperview];
//            [weakSelf methodNames_createBindView];
//        };
//        _varNames_loginView.methodNames_loginFailure = ^{
//            NSLog(@"login error");
//        };
        self.varNames_loginView.methodNames_delegateBlock = ^{
            [weakSelf methodNames_showDelegateView];
        };
        self.varNames_loginView.methodNames_handlebookBlock = ^{
            [weakSelf methodNames_showHandleBookView];
        };
        [self.varNames_backgroundView addSubview:self.varNames_loginView];
    } else {
        self.varNames_loginView.hidden = NO;
    }
    _varNames_isLoginView = YES;
    self.varNames_backgroundViewConstraint.constant = methodNames_getMainViewHeight();
    [ClassNames_BaseViewLayout methodNames_layoutTop:_varNames_loginView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:_varNames_loginView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:_varNames_loginView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:_varNames_loginView methodNames_constriant:235];
}




#pragma mark ---------- 切换到找回密码
//- (void)methodNames_changeToFindbackPasswordView {
//    __weak typeof(self) weakSelf = self;
//    _varNames_skillViewTopConstraint.constant = _varNames_skillViewTopMarginValue;
//    [UIView animateWithDuration:_varNames_skillViewAnimationDuration animations:^{
//        [weakSelf layoutIfNeeded];
//        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:weakSelf.varNames_backgroundView cache:YES];
//    } completion:^(BOOL finished) {
//        if (finished) {
//            [weakSelf methodNames_createFindBackPasswordView];
//            weakSelf.varNames_backgroundViewCenterYConstraint.constant = 0;
//            [UIView animateWithDuration:0.3 animations:^{
//                [weakSelf layoutIfNeeded];
//            }];
//        }
//    }];
//}
#pragma mark ---------- 切换到重置密码
//- (void)methodNames_changeToResetPasswordView {
//    __weak typeof(self) weakSelf = self;
//    _varNames_skillViewTopConstraint.constant = _varNames_skillViewTopMarginValue;
//    [UIView animateWithDuration:_varNames_skillViewAnimationDuration animations:^{
//        [weakSelf layoutIfNeeded];
//        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:weakSelf.varNames_backgroundView cache:YES];
//    } completion:^(BOOL finished) {
//        if (finished) {
//            [weakSelf methodNames_createResetPasswordView];
//            weakSelf.varNames_backgroundViewCenterYConstraint.constant = 0;
//            [UIView animateWithDuration:0.3 animations:^{
//                [weakSelf layoutIfNeeded];
//            }];
//        }
//    }];
//}


#pragma mark ---------- 功能按钮
- (void)methodNames_switchSkillViewWithDefaultButtonTap:(NSInteger)index {
    
    if (!_varNames_skillBtnView) {
        _varNames_skillBtnView = [[UIView alloc]init];
        _varNames_skillBtnView.layer.cornerRadius = 15;
        _varNames_skillBtnView.translatesAutoresizingMaskIntoConstraints = NO;
        [self.varNames_backgroundView addSubview:_varNames_skillBtnView];
    } else {
        self.varNames_skillBtnView.hidden = NO;
    }
    
    UIButton *varNames_selectBtn;
    
    CGFloat varNames_btnwidth = (320 - methodNames_setMargin_3base() * 2 - 20 * 2)/3.0;
    CGFloat varNames_btnY = 10;
    UIButton *varNames_tmptmpBtn = [self methodNames_createButton:CGRectMake(methodNames_setMargin_3base(), varNames_btnY, varNames_btnwidth, 35) methodNames_title:@"手机登录"];
    varNames_tmptmpBtn.tag = 10;
    [varNames_tmptmpBtn addTarget:self action:@selector(methodNames_switchSkillView:) forControlEvents:UIControlEventTouchUpInside];
    [_varNames_skillBtnView addSubview:varNames_tmptmpBtn];
    if (index == varNames_tmptmpBtn.tag) {
        varNames_selectBtn = varNames_tmptmpBtn;
    }
    
    UIButton *varNames_tmptmpBtn2 = [self methodNames_createButton:CGRectMake(CGRectGetMaxX(varNames_tmptmpBtn.frame) + 20, varNames_btnY, varNames_btnwidth, 35) methodNames_title:@"账号登录"];
    varNames_tmptmpBtn2.tag = 11;
    [varNames_tmptmpBtn2 addTarget:self action:@selector(methodNames_switchSkillView:) forControlEvents:UIControlEventTouchUpInside];
    [_varNames_skillBtnView addSubview:varNames_tmptmpBtn2];
    if (index == varNames_tmptmpBtn2.tag) {
        varNames_selectBtn = varNames_tmptmpBtn2;
    }
    
    UIButton *varNames_tmptmpBtn3 = [self methodNames_createButton:CGRectMake((CGRectGetMaxX(varNames_tmptmpBtn2.frame) + 20), varNames_btnY, varNames_btnwidth, 35) methodNames_title:@"账号注册"];
    varNames_tmptmpBtn3.tag = 12;
    [varNames_tmptmpBtn3 addTarget:self action:@selector(methodNames_switchSkillView:) forControlEvents:UIControlEventTouchUpInside];
    [_varNames_skillBtnView addSubview:varNames_tmptmpBtn3];
    if (index == varNames_tmptmpBtn3.tag) {
        varNames_selectBtn = varNames_tmptmpBtn3;
    }
    
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:_varNames_skillBtnView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:_varNames_skillBtnView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:_varNames_skillBtnView methodNames_constriant:320];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:_varNames_skillBtnView methodNames_constriant:55];// 上方10 按钮35 下方空白 10
    
    [self bringSubviewToFront:_varNames_backgroundView];
    
    [self methodNames_resetSkillButtonStatus:varNames_selectBtn];
}
// 创建单个功能按钮
- (UIButton *)methodNames_createButton:(CGRect)frame methodNames_title:(NSString *)varNames_title {
    UIColor *varNames_norColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()];
    UIColor *varNames_selColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_titleFontColor_config()];
    
    UIButton *varNames_tmptmpBtn = [[UIButton alloc]initWithFrame:frame];
    varNames_tmptmpBtn.backgroundColor = [UIColor whiteColor];
    varNames_tmptmpBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    [varNames_tmptmpBtn setTitle:varNames_title forState:UIControlStateNormal];
    [varNames_tmptmpBtn setTitleColor:varNames_norColor forState:UIControlStateNormal];
    [varNames_tmptmpBtn setTitleColor:varNames_selColor forState:UIControlStateSelected];
    varNames_tmptmpBtn.layer.borderWidth = 1.0;
    varNames_tmptmpBtn.layer.borderColor = varNames_norColor.CGColor;
    varNames_tmptmpBtn.layer.cornerRadius = 5.0;
    
    return varNames_tmptmpBtn;
}

#pragma mark ---------- 功能按钮的事件
- (void)methodNames_switchSkillView:(UIButton *)sender {
    
    [self endEditing:YES];
    [self.varNames_loginView methodNames_hidMoreAccountTableView];
    [self methodNames_resetSkillButtonStatus:sender];
    switch (sender.tag) {
        case 10:
        {
            [self methodNames_changeToPhoneRegisterView];
        }
            break;
        case 11:
        {
            [self methodNames_changeToLoginView];
        }
            break;
        case 12:
        {
            [self methodNames_changeToNormalRegisterView];
        }
            break;
            
        default:
            break;
    }
}



#pragma mark ---------- 切换到登陆
- (void)methodNames_changeToLoginView {
    
    self.varNames_phoneRegisterView.hidden = YES;
    self.varNames_normalRegisterView.hidden = YES;
    [self methodNames_createLoginView];
}

#pragma mark ---------- 切换到注册账号
- (void)methodNames_changeToNormalRegisterView {
    
    self.varNames_phoneRegisterView.hidden = YES;
    self.varNames_loginView.hidden = YES;
    [self methodNames_createNormalRegisterView];
}


#pragma mark ---------- 快速登陆按钮执行的事件
#pragma mark ---------- commitAction

- (void)methodNames_commitQuickLogin {
    NSDictionary *varNames_tmppara = @{
                           @"adv_id": methodNames_readAdvID(),
                           @"channel_id": methodNames_readChannelID(),
                           @"material_id": @"0",
                           @"gid": methodNames_readGameID(),
                           @"sub_gid": methodNames_readSubGameID(),
                           @"platform_id": methodNames_readPlatformID(),
                           @"device_code": methodNames_getDeviceIDFA()
                           };
    [ClassNames_PGHubView methodNames_showIndicatorWithTitlte:@"登陆中..."];
    __weak typeof(self) weakSelf = self;
    [self.varNames_visitorModel methodNames_fetchDataWithdURL:methodNames_memberVisitorURL() parameters:varNames_tmppara];
    self.varNames_visitorModel.methodNames_completeFetchData = ^(ClassNames_MemberVisitorModel *object) {
        dispatch_async(dispatch_get_main_queue(), ^{
            
            [ClassNames_PGHubView methodNames_hide];
            if (object.varNames_code == 200) {
                [weakSelf methodNames_visitorLoginSuccess:object];
            } else {
                if (object.varNames_msg) {
                    [ClassNames_PGHubView methodNames_showErrorMessage:object.varNames_msg];
                    weakSelf.varNames_isAnimating = NO;
                    [weakSelf methodNames_visitorLoginFailureForNoNet];
//                    [weakSelf methodNames_showSkillView:^{
//                        [weakSelf methodNames_visitorLoginFailureForNoNet];
//                    }];
                }
            }
            
        });
    };
    self.varNames_visitorModel.methodNames_FetchError = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            [ClassNames_PGHubView methodNames_showErrorMessage:@"网络出了小差!!!"];
            weakSelf.varNames_isAnimating = NO;
            [weakSelf methodNames_visitorLoginFailureForNoNet];
//            [weakSelf methodNames_showSkillView:^{
//                [weakSelf methodNames_visitorLoginFailureForNoNet];
//            }];
        });
    };
}
- (void)methodNames_showQuickLoginView:(UIView *)varNames_view methodNames_account:(NSString *)varNames_account methodNames_password:(NSString *)varNames_password{
    __weak typeof(self) weakSelf = self;
    if (!_varNames_quickLoginView) {
        _varNames_quickLoginView = [ClassNames_QuickLoginView methodNames_createQuickLoginView];
        _varNames_quickLoginView.clipsToBounds = YES;
        _varNames_quickLoginView.methodNames_enterGame = ^{
            weakSelf.varNames_isNeedBindPhone = NO;
            weakSelf.varNames_isNeedBindPersonID = NO;
            [weakSelf methodNames_createBindView];
        };
        self.varNames_quickLoginView.methodNames_bindPhone = ^{
            weakSelf.varNames_quickLoginView.hidden = YES;
            [weakSelf methodNames_createBindView];
            
        };
        [_varNames_backgroundView addSubview:_varNames_quickLoginView];
    }
    
    [self.varNames_quickLoginView methodNames_fillAccount:varNames_account methodNames_fillPassword:varNames_password];
    [self.varNames_quickLoginView methodNames_canBindPhone:self.varNames_isNeedBindPhone];
    
    
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:_varNames_quickLoginView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutTop:_varNames_quickLoginView methodNames_constriant:methodNames_setMargin_2base() * 2];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:_varNames_quickLoginView methodNames_constriant:methodNames_getMainViewWidth()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:_varNames_quickLoginView methodNames_constriant:methodNames_getMainViewHeight()];
    
}
/// 快速登陆成功
- (void)methodNames_visitorLoginSuccess:(ClassNames_MemberVisitorModel *)model {
    methodNames_saveUserID(model.varNames_uid);
    methodNames_saveUserName(model.varNames_username);
    methodNames_saveVisitorFirstLogin(model.varNames_password.length? YES : NO);
    methodNames_saveVisitorConnectPhone(model.varNames_isbind);
    methodNames_saveVisitorConnectPersonID(model.varNames_isRealName);
    self.varNames_isNeedBindPhone = [model.varNames_isbind isEqualToString:@"1"];
    self.varNames_isNeedBindPersonID = [model.varNames_isRealName isEqualToString:@"1"];
    NSDictionary *varNames_tmpuserInfo = @{
                               @"uid": model.varNames_uid,
                               @"username": model.varNames_username
                               };
    methodNames_postNotification(varNames_userLoginSuceessNoti, nil, varNames_tmpuserInfo);
    
    /// 设备为第一次快速登陆，然后需要保存账号密码，显示快速登陆页面
    if (model.varNames_password && model.varNames_password.length) {
        /// 保存账户
        methodNames_saveAccount(model.varNames_username);
        /// 保存最后登陆的账户
        methodNames_saveLastAccount(model.varNames_username);
        /// 保存账户密码
        methodNames_savePassword(model.varNames_password, model.varNames_username);

        [self methodNames_showQuickLoginView:nil methodNames_account:model.varNames_username methodNames_password:model.varNames_password];
    } else {
        [self methodNames_createBindView];
//        __weak typeof(self) weakSelf = self;
//        [self methodNames_hideSkillView:^{
//            [weakSelf methodNames_createBindView];
//        }];
    }
    
}
- (void)methodNames_visitorLoginFailureForNoNet{
    if (_varNames_isLoginView) {
        _varNames_isLoginView = YES;
        _varNames_loginView.hidden = NO;
        _varNames_normalRegisterView.hidden = YES;
    } else {
        _varNames_isLoginView = NO;
        _varNames_loginView.hidden = YES;
        if (_varNames_normalRegisterView) {
            _varNames_normalRegisterView.hidden = NO;
        } else {
            [self methodNames_createNormalRegisterView];
        }
    }
}

#pragma mark ---------- 找回密码按钮事件
- (void)methodNames_createFindBackPasswordView{
    __weak typeof(self) weakSelf = self;
    if (!_varNames_findbackPasswordView) {
        _varNames_findbackPasswordView = [ClassNames_FindBackPasswordView methodNames_createFindBackPasswordView];
        _varNames_findbackPasswordView.clipsToBounds = YES;
        _varNames_findbackPasswordView.methodNames_findBackPasswordSuccess = ^{
            weakSelf.varNames_findbackPasswordView.hidden = YES;
//            [weakSelf methodNames_changeLoginViewFormFindbackPasswordView];
        };
        _varNames_findbackPasswordView.methodNames_backAction = ^{
//            [weakSelf methodNames_changeLoginViewFormFindbackPasswordView];
        };
    } else {
        _varNames_findbackPasswordView.hidden = NO;
    }
    [_varNames_backgroundView addSubview:_varNames_findbackPasswordView];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:_varNames_findbackPasswordView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutTop:_varNames_findbackPasswordView methodNames_constriant:methodNames_setMargin_2base() * 2];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:_varNames_findbackPasswordView methodNames_constriant:methodNames_getMainViewWidth()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:_varNames_findbackPasswordView methodNames_constriant:methodNames_getMainViewHeight()];
    [self setNeedsLayout];
}
#pragma mark ---------- 从找回密码返回到登陆页面
//- (void)methodNames_changeLoginViewFormFindbackPasswordView {
//    __weak typeof(self) weakSelf = self;
//
//    _varNames_backgroundViewCenterYConstraint.constant = _varNames_backgroundViewCenterYMarginValue;
//    [UIView animateWithDuration:_varNames_skillViewAnimationDuration animations:^{
//        [weakSelf layoutIfNeeded];
//        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:weakSelf.varNames_backgroundView cache:YES];
//    } completion:^(BOOL finished) {
//        if (finished) {
//            [weakSelf methodNames_createLoginView];
//            weakSelf.varNames_skillViewTopConstraint.constant = 0;
//            [UIView animateWithDuration:0.3 animations:^{
//                [weakSelf layoutIfNeeded];
//            }];
//        }
//    }];
//}
#pragma mark ---------- 重置密码按钮事件
- (void)methodNames_createResetPasswordView{
    __weak typeof(self) weakSelf = self;
    if (!self.varNames_resetPasswordView) {
        self.varNames_resetPasswordView = [ClassNames_ResetPasswordView methodNames_createResetPasswordView];
        self.varNames_resetPasswordView.clipsToBounds = YES;
        self.varNames_resetPasswordView.hidden = NO;
        self.varNames_resetPasswordView.methodNames_resetPasswordSuccess = ^{
            weakSelf.varNames_resetPasswordView.hidden = YES;
//            [weakSelf methodNames_changeLoginViewFormResetPasswordView];
        };
        self.varNames_resetPasswordView.methodNames_backBlock = ^{
            [weakSelf methodNames_showUserCenterView];
        };
        self.varNames_resetPasswordView.methodNames_closeBlock = ^{
            [weakSelf removeFromSuperview];
        };
        
        [self.varNames_backgroundView addSubview:self.varNames_resetPasswordView];
    } else {
        self.varNames_resetPasswordView.hidden = NO;
        
    }
    
    self.varNames_backgroundViewConstraint.constant = 340;
    
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:_varNames_resetPasswordView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:_varNames_resetPasswordView methodNames_constriant:methodNames_getMainViewWidth()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:_varNames_resetPasswordView methodNames_constriant:340];
    [self setNeedsLayout];
}
//- (void)methodNames_changeLoginViewFormResetPasswordView {
//    __weak typeof(self) weakSelf = self;
//    _varNames_backgroundViewCenterYConstraint.constant = _varNames_backgroundViewCenterYMarginValue;
//    [UIView animateWithDuration:_varNames_skillViewAnimationDuration animations:^{
//        // 详见UIViewAnimationCurve
//        [weakSelf layoutIfNeeded];
//        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:weakSelf.varNames_backgroundView cache:YES];
//    } completion:^(BOOL finished) {
//        if (finished) {
//            [weakSelf methodNames_createLoginView];
//            weakSelf.varNames_skillViewTopConstraint.constant = 0;
//            [UIView animateWithDuration:0.3 animations:^{
//                [weakSelf layoutIfNeeded];
//            }];
//        }
//    }];
//}
#pragma mark ---------- 账号注册View
- (void)methodNames_createNormalRegisterView {
    __weak typeof(self) weakSelf = self;
    if (!_varNames_normalRegisterView) {
        _varNames_normalRegisterView = [ClassNames_NormalRegisterView methodNames_createNormalRegisterView];
        _varNames_normalRegisterView.methodNames_normalRegisterSuccess = ^(BOOL varNames_isNeedBindPhone, BOOL varNames_isNeedBindPersonID) {
            weakSelf.varNames_isNeedBindPhone = varNames_isNeedBindPhone;
            weakSelf.varNames_isNeedBindPersonID = varNames_isNeedBindPersonID;
            [weakSelf methodNames_createBindView];
//            [weakSelf methodNames_hideSkillView:^{
//                [weakSelf methodNames_createBindView];
//            }];
        };
        _varNames_normalRegisterView.methodNames_servicceBlock = ^{
            [weakSelf methodNames_showCustomerServerView];
        };
        _varNames_normalRegisterView.methodNames_delegateBlock = ^{
            [weakSelf methodNames_showDelegateView];
        };
        _varNames_normalRegisterView.methodNames_handlebookBlock = ^{
            [weakSelf methodNames_showHandleBookView];
        };
        _varNames_normalRegisterView.clipsToBounds = YES;
        
        [_varNames_backgroundView addSubview:_varNames_normalRegisterView];
    } else {
        _varNames_normalRegisterView.hidden = NO;
    }
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:_varNames_normalRegisterView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:_varNames_normalRegisterView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:_varNames_normalRegisterView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:_varNames_normalRegisterView methodNames_constriant:235];
    
    
    
    [self setNeedsLayout];
}
#pragma mark ---------- 切换到手机
- (void)methodNames_changeToPhoneRegisterView {
    self.varNames_loginView.hidden = YES;
    self.varNames_normalRegisterView.hidden = YES;
    [self methodNames_createPhoneRegisterView];
}


#pragma mark ---------- 手机注册View
- (void)methodNames_createPhoneRegisterView {
    __weak typeof(self) weakSelf = self;
    if (!_varNames_phoneRegisterView) {
        _varNames_phoneRegisterView = [ClassNames_PhoneRegisterView methodNames_createPhoneRegisterView];
        _varNames_phoneRegisterView.methodNames_phoneRegisterSuccess = ^(BOOL varNames_isNeedBindPersonID) {
            weakSelf.varNames_isNeedBindPhone = NO;
            weakSelf.varNames_isNeedBindPersonID = varNames_isNeedBindPersonID;
            [weakSelf methodNames_createBindView];
        };
        _varNames_phoneRegisterView.methodNames_backAction = ^{
//            [weakSelf methodNames_changeNormalViewFormPhoneRegisterView];
        };
        _varNames_phoneRegisterView.methodNames_servicceBlock = ^{
//            [weakSelf methodNames_showCustomerServerView];
            [weakSelf methodNames_showDetailCustomerServerView];
        };
        _varNames_phoneRegisterView.methodNames_delegateBlock = ^{
            [weakSelf methodNames_showDelegateView];
        };
        _varNames_phoneRegisterView.methodNames_handlebookBlock = ^{
            [weakSelf methodNames_showHandleBookView];
        };
        _varNames_phoneRegisterView.clipsToBounds = YES;
        [_varNames_backgroundView addSubview:_varNames_phoneRegisterView];
    } else {
        _varNames_phoneRegisterView.hidden = NO;
        [_varNames_backgroundView addSubview:_varNames_phoneRegisterView];
    }
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:_varNames_phoneRegisterView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:_varNames_phoneRegisterView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:_varNames_phoneRegisterView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:_varNames_phoneRegisterView methodNames_constriant:235];
    [self setNeedsLayout];
    
}
#pragma mark ---------- 返回账号注册view
//- (void)methodNames_changeNormalViewFormPhoneRegisterView {
//    __weak typeof(self) weakSelf = self;
//
//    _varNames_backgroundViewCenterYConstraint.constant = _varNames_backgroundViewCenterYMarginValue;
//    [UIView animateWithDuration:_varNames_skillViewAnimationDuration animations:^{
//        [weakSelf layoutIfNeeded];
//        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:weakSelf.varNames_backgroundView cache:YES];
//    } completion:^(BOOL finished) {
//        if (finished) {
//            [weakSelf methodNames_createNormalRegisterView];
//            weakSelf.varNames_skillViewTopConstraint.constant = 0;
//            [UIView animateWithDuration:0.3 animations:^{
//                [weakSelf layoutIfNeeded];
//            }];
//        }
//    }];
//}

#pragma mark ---------- 绑定手机号
- (void)methodNames_createBindPhoeViewFromView:(UIView *)varNames_view {
    self.varNames_skillBtnView.hidden = YES;
    __weak typeof(self) weakSelf = self;
    if (!self.varNames_bindPhoneView) {
        self.varNames_bindPhoneView = [ClassNames_BindPhoneView methodNames_createBindPhoneViewFromView:varNames_view];
        self.varNames_bindPhoneView.clipsToBounds = YES;
        self.varNames_bindPhoneView.methodNames_bindPhoneSuccess = ^{
            weakSelf.varNames_isNeedBindPhone = NO;
            [weakSelf methodNames_createBindView];
        };
        self.varNames_bindPhoneView.methodNames_closeBlock = ^{
            [weakSelf removeFromSuperview];
        };
        self.varNames_bindPhoneView.methodNames_nextBlock = ^{
            weakSelf.varNames_isNeedBindPhone = NO;
            weakSelf.varNames_isNeedBindPersonID = YES;
            [weakSelf methodNames_createBindView];
        };
        self.varNames_bindPhoneView.methodNames_backBlock = ^{
            NSLog(@"返回");
        };
        [self.varNames_backgroundView addSubview:self.varNames_bindPhoneView];
    } else {
        [self.varNames_bindPhoneView methodNames_changeFromView:varNames_view];
        self.varNames_bindPhoneView.hidden = NO;
    }
    
    self.varNames_backgroundViewConstraint.constant = 290;
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_bindPhoneView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_bindPhoneView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_bindPhoneView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_bindPhoneView methodNames_constriant:290];
    [self setNeedsLayout];
}
#pragma mark ---------- 绑定身份证
- (void)methodNames_createBindPersonIDViewFromView:(UIView *)varNames_view {
    __weak typeof(self) weakSelf = self;
    if (!_varNames_bindPersonIDView) {
        _varNames_bindPersonIDView = [ClassNames_BindPersonIDView methodNames_createBindPersonIDViewFromView:varNames_view];
        _varNames_bindPersonIDView.clipsToBounds = YES;
        _varNames_bindPersonIDView.methodNames_backBlock = ^(UIView *backView) {
            backView.hidden = NO;
        };
        _varNames_bindPersonIDView.methodNames_bindPersonIDSuccess = ^{
            
        };
        _varNames_bindPersonIDView.methodNames_closeBindPersonIDView = ^{
            weakSelf.varNames_isNeedBindPersonID = NO;
            [weakSelf methodNames_createBindView];
        };
        [_varNames_backgroundView addSubview:_varNames_bindPersonIDView];
    } else {
        self.varNames_bindPersonIDView.hidden = NO;
        [self.varNames_bindPersonIDView methodNames_changeFromView:varNames_view];
    }
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:_varNames_bindPersonIDView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:_varNames_bindPersonIDView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:_varNames_bindPersonIDView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:_varNames_bindPersonIDView methodNames_constriant:290];
    [self setNeedsLayout];
}

#pragma mark ----------------- 用户中心页面
- (void)methodNames_createUserCenterView {
    if (!self.varNames_userCenterView) {
        __weak typeof(self) weakSelf = self;
        self.varNames_userCenterView = [ClassNames_UserCenterView methodNames_createUserCenterView];
        [self.varNames_backgroundView addSubview:self.varNames_userCenterView];
        self.varNames_userCenterView.methodNames_closeBlock = ^{
            weakSelf.hidden = YES;
            weakSelf.varNames_backgroundView.hidden = YES;
            weakSelf.varNames_userCenterView.hidden = YES;
        };
        self.varNames_userCenterView.methodNames_resetPassword = ^{
            // 需要判断是否绑定了手机
            if (1) {
                // 绑定了手机，可以重置密码
                [weakSelf methodNames_createResetPasswordView];
            } else {
                [weakSelf methodNames_showBingPhoneTipViewFromView:weakSelf.varNames_userCenterView];
            }
            
        };
        
        self.varNames_userCenterView.methodNames_bindPhone = ^{
            [weakSelf methodNames_createBindPhoeViewFromView:weakSelf.varNames_userCenterView];
        };
        
        self.varNames_userCenterView.methodNames_bindPersonID = ^{
            [weakSelf methodNames_createBindPersonIDViewFromView:weakSelf.varNames_userCenterView];
        };
        
        self.varNames_userCenterView.methodNames_logout = ^{
            NSLog(@"退出登录");
            weakSelf.hidden = YES;
            
        };
    } else {
        self.varNames_userCenterView.hidden = NO;
    }
    self.varNames_backgroundViewConstraint.constant = 280;
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_userCenterView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_userCenterView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_userCenterView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_userCenterView methodNames_constriant:280];
}

#pragma mark ------------ 提示进行手机验证页面
- (void)methodNames_showBingPhoneTipViewFromView:(UIView *)varNames_fView {
    if (!self.varNames_bindPhoneTipView) {
        __weak typeof(self) weakSelf = self;
        ClassNames_TipView *varNames_bindPhoneTipView = [ClassNames_TipView methodNames_createTipViewFromView:varNames_fView];
        [self.varNames_backgroundView addSubview:varNames_bindPhoneTipView];
        self.varNames_bindPhoneTipView = varNames_bindPhoneTipView;
        
        self.varNames_bindPhoneTipView.methodNames_backBlock = ^{
            NSLog(@"返回======");
            [weakSelf methodNames_showUserCenterView];
        };
        self.varNames_bindPhoneTipView.methodNames_closeBlock = ^{
            weakSelf.hidden = YES;
            weakSelf.varNames_userCenterView.hidden = YES;
            weakSelf.varNames_backgroundView.hidden = YES;
        };
        self.varNames_bindPhoneTipView.methodNames_commitBlock = ^{
            [weakSelf methodNames_createBindPhoeViewFromView:weakSelf.varNames_userCenterView];
        };
    } else {
        self.varNames_bindPhoneTipView.hidden = NO;
        [self.varNames_bindPhoneTipView methodNames_changeFromView:varNames_fView];
    }
    
    self.varNames_backgroundViewConstraint.constant = 220;
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_bindPhoneTipView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_bindPhoneTipView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_bindPhoneTipView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_bindPhoneTipView methodNames_constriant:220];
}

#pragma mark ------------ 客服页面
- (void)methodNames_showCustomerServerView {
    if (!self.varNames_serverView) {
        __weak typeof(self) weakSelf = self;
        ClassNames_CustomServerView *varNames_serverView = [ClassNames_CustomServerView methodNames_showCustomServerViewWithContentJson:@{}];
        varNames_serverView.methodNames_closeBlock = ^{
            weakSelf.varNames_backgroundView.hidden = NO;
        };
        self.varNames_serverView = varNames_serverView;
        [self addSubview:varNames_serverView];
    } else {
        self.varNames_serverView.hidden = NO;
    }
    
    self.varNames_backgroundView.hidden = YES;
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_serverView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_serverView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_serverView methodNames_constriant:methodNames_getMainViewWidth()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_serverView methodNames_constriant:220];
}
#pragma mark -------------- 从悬浮球中点击的客服
- (void)methodNames_showDetailCustomerServerView {
    if (!self.varNames_detailCustomerServerView) {
        __weak typeof(self) weakSelf = self;
        ClassNames_DetailCustomerServerView *varNames_serverView = [ClassNames_DetailCustomerServerView methodNames_showCustomServerView];
        [self addSubview:varNames_serverView];
        self.varNames_detailCustomerServerView = varNames_serverView;
        self.varNames_detailCustomerServerView.methodNames_closeBlock = ^{
            [weakSelf removeFromSuperview];
        };
    } else {
        
        self.varNames_detailCustomerServerView.hidden = NO;
    }
    self.varNames_backgroundView.hidden = YES;
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_detailCustomerServerView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_detailCustomerServerView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_detailCustomerServerView methodNames_constriant:methodNames_getMainViewWidth()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_detailCustomerServerView methodNames_constriant:250];
}


#pragma mark -------------- 协议和用户手册
- (void)methodNames_showDelegateView {
    if (!self.varNames_delegateView) {
        __weak typeof(self) weakSelf = self;
        ClassNames_DelegateView *varNames_delegateView = [ClassNames_DelegateView methodNames_showDelegateOrHandleBookViewWithFileName:@"ClassNames_delegateContent" methodNames_viewTitle:@"用户协议"];
        varNames_delegateView.translatesAutoresizingMaskIntoConstraints = NO;
        varNames_delegateView.layer.cornerRadius = 15;
        varNames_delegateView.methodNames_closeBlock = ^{
            weakSelf.varNames_backgroundView.hidden = NO;
        };
        self.varNames_delegateView = varNames_delegateView;
        [self addSubview:varNames_delegateView];
    } else {
        self.varNames_delegateView.hidden = NO;
    }
    self.varNames_backgroundView.hidden = YES;
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_delegateView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_delegateView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_delegateView methodNames_constriant:methodNames_getMainViewWidth()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_delegateView methodNames_constriant:375];
}
// 用户手册
- (void)methodNames_showHandleBookView {
    if (!self.varNames_handleBookView) {
        __weak typeof(self) weakSelf = self;
        ClassNames_DelegateView *varNames_handleBookView = [ClassNames_DelegateView methodNames_showDelegateOrHandleBookViewWithFileName:@"ClassNames_handlebook" methodNames_viewTitle:@"隐私政策"];
        varNames_handleBookView.translatesAutoresizingMaskIntoConstraints = NO;
        varNames_handleBookView.layer.cornerRadius = 15;
        varNames_handleBookView.methodNames_closeBlock = ^{
            weakSelf.varNames_backgroundView.hidden = NO;
        };
        self.varNames_handleBookView = varNames_handleBookView;
        [self addSubview:varNames_handleBookView];
    } else {
        self.varNames_handleBookView.hidden = NO;
    }
    self.varNames_backgroundView.hidden = YES;
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_handleBookView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_handleBookView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_handleBookView methodNames_constriant:methodNames_getMainViewWidth()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_handleBookView methodNames_constriant:375];
}

#pragma mark ---------- PaView
- (void)methodNames_showPayView {
    __weak typeof(self) weakSelf = self;
    if (!self.varNames_payView) {
        ClassNames_PayView *varNames_payView = [ClassNames_PayView methodNames_createPayViewWithUserName:@"辛平觉" payMoney:@"648.00"];
        
        varNames_payView.methodNames_closeBlock = ^{
            NSLog(@"关闭");
            [weakSelf removeFromSuperview];
        };
        
        varNames_payView.methodNames_commitBlock = ^{
            NSLog(@"付款");
        };
        
        [self.varNames_backgroundView addSubview:varNames_payView];
        
        
        self.varNames_payView = varNames_payView;
    } else {
        self.varNames_payView.hidden = NO;
    }
    
    self.varNames_backgroundViewConstraint.constant = 250;
    
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_payView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_payView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_payView methodNames_constriant:methodNames_getMainViewWidth()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_payView methodNames_constriant:250];

}

#pragma mark ---------- 公告页面
- (void)methodNames_showNoticeView {
    NSString *content = @"是领导看风景是领导会计法是领导看见弗雷斯科简单福利时间到房里睡大觉弗雷斯科大家弗雷斯科简单flask独领风骚看就懂了反抗精神独立分开就是领导减肥路上的加夫里什大家flask减肥了时间的翻领设计的浪费时间的浪费是代理反馈就是领导减肥是领导减肥是领导看风景是领导会计法联赛等级客服";
    if (!self.varNames_noticeView) {
        __weak typeof(self) weakSelf = self;
        ClassNames_NoticeView *varNames_tmpNoticeView = [ClassNames_NoticeView methodNames_createNoticeViewWithtitle:@"重大喜讯" methodNames_content:content];
        varNames_tmpNoticeView.methodNames_closeBlock = ^{
            [weakSelf removeFromSuperview];
        };
        self.varNames_noticeView = varNames_tmpNoticeView;
        
        [self addSubview:self.varNames_noticeView];
    }
    
    CGRect contentRect = [content boundingRectWithSize:CGSizeMake(methodNames_getMainViewWidth() - methodNames_setMargin_2base(), CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil];
    CGFloat contentHeight = CGRectGetHeight(contentRect);
    CGFloat viewHeight = contentHeight + methodNames_setMargin_2base() * 3 + methodNames_setNavigationBarHeight();
    self.varNames_backgroundViewConstraint.constant = viewHeight;
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_noticeView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_noticeView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_noticeView methodNames_constriant:methodNames_getMainViewWidth()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_noticeView methodNames_constriant:viewHeight];
}




#pragma mark ---------- 清空页面中的内容
- (void)methodNames_resetContent {
    if (self.varNames_findbackPasswordView) {
        [self.varNames_findbackPasswordView methodNames_resetContent];
    }
    if (self.varNames_resetPasswordView) {
        [self.varNames_resetPasswordView methodNames_resetContent];
    }
    if (self.varNames_normalRegisterView) {
        [self.varNames_normalRegisterView methodNames_resetContent];
    }
    if (self.varNames_phoneRegisterView) {
        [self.varNames_phoneRegisterView methodNames_resetContent];
    }
}

// 设置按钮的颜色状态
- (void)methodNames_resetSkillButtonStatus:(UIButton *)varNames_btn {
    NSArray *varNames_btnViews = self.varNames_skillBtnView.subviews;
    [varNames_btnViews enumerateObjectsUsingBlock:^(UIButton *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        obj.selected = NO;
        obj.layer.borderColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()].CGColor;
    }];
    
    varNames_btn.selected = YES;
    varNames_btn.layer.borderColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_titleFontColor_config()].CGColor;
    
}



-(ClassNames_MemberVisitorModel *)varNames_visitorModel {
    if (!_varNames_visitorModel) {
        _varNames_visitorModel = [[ClassNames_MemberVisitorModel alloc]init];
    }
    return _varNames_visitorModel;
}

@end
