

#import "ClassNames_AutoLoginView.h"

#import "ClassNames_SecurityTool.h"
#import "ClassNames_MemberLoginModel.h"
#import "ClassNames_Title.h"

#import "ClassNames_LoadingView.h"
#import "ClassNames_CommitButton.h"
#import "ClassNames_InputView.h"
#import "ClassNames_Color.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_InitGamesConfigure.h"
#import "ClassNames_NotificationConfigure.h"
#import "ClassNames_ImageCommitButton.h"
#import "ClassNames_BaseParameters.h"


@interface ClassNames_AutoLoginView ()


@property (nonatomic, readwrite, strong) UILabel *varNames_accountLabel;

@property (nonatomic, readwrite, strong) ClassNames_CommitButton *varNames_firstCommitBtn;

@property (nonatomic, readwrite, assign) CGFloat varNames_topMarginValue;

@property (nonatomic, readwrite, assign) BOOL varNames_cancelAutoLogin;

@property (nonatomic, readwrite, strong) NSString *varNames_userName;

@property (nonatomic, readwrite, strong) NSString *varNames_password;

@property (nonatomic, readwrite, assign) NSInteger varNames_timeout;

@property (nonatomic, readwrite, strong) ClassNames_MemberLoginModel *varNames_loginModel;

@end


@implementation ClassNames_AutoLoginView

#pragma mark ---------- public methodNames
+ (instancetype)methodNames_createAutoLoginView {
    ClassNames_AutoLoginView *varNames_autoLoginView = [[ClassNames_AutoLoginView alloc]init];
    varNames_autoLoginView.translatesAutoresizingMaskIntoConstraints = NO;
    return varNames_autoLoginView;
}

// 从其他登录页面中点击登录后，进入该页面进行登录操作
- (void)methodNames_loginAccount:(NSString *)account methodNames_password:(NSString *)password {
    self.varNames_userName = account;
    self.varNames_password = password;
    // 获取设定的自动登录等待时间
    self.varNames_timeout = methodNames_getAutoLoginViewDuration();
    [self methodNames_createUI];
    [self methodNames_refreshButtonTitle:self.varNames_timeout];
    [self methodNames_startTimer];
}


#pragma mark -----------------------------------------------------------------------------

-(instancetype)init {
    self = [super init];
    if (self) {
        [self methodNames_setData];
        [self methodNames_createUI];
        [self methodNames_startTimer];
//        __weak typeof(self) weakSelf = self;
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            if (!weakSelf.varNames_cancelAutoLogin) {
//                [weakSelf methodNames_commitAutoLoginAction:weakSelf.varNames_userName password:weakSelf.varNames_password];
//            }
//
//        });
    }
    return self;
}



- (void)methodNames_createUI {
    if (!self.varNames_accountLabel) {
        UILabel *varNames_tmpAccountLabel = [[UILabel alloc]init];
        varNames_tmpAccountLabel.translatesAutoresizingMaskIntoConstraints = NO;
        varNames_tmpAccountLabel.font = [UIFont systemFontOfSize:13];
        varNames_tmpAccountLabel.textColor = [UIColor blackColor];
        varNames_tmpAccountLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:varNames_tmpAccountLabel];
        self.varNames_accountLabel = varNames_tmpAccountLabel;
    }
    
    self.varNames_accountLabel.text = [NSString stringWithFormat:@"账号 %@ 登录中...", self.varNames_userName];
    NSString *varNames_title = [NSString stringWithFormat:@"切换账号( %ld s)", (long)self.varNames_timeout];
    if (!self.varNames_firstCommitBtn) {
        __weak typeof(self) weakSelf = self;
        ClassNames_CommitButton *varNames_tmpCommitBtn = [ClassNames_CommitButton methodNames_createCommitButtonWithTitle:varNames_title withTouchUpInsidBlock:^{
            [weakSelf methodNames_cancelAutoLoginAction:nil];
        }];
        [varNames_tmpCommitBtn methodNames_changeFont:15];
        self.varNames_firstCommitBtn = varNames_tmpCommitBtn;
        [self addSubview:varNames_tmpCommitBtn];
    }
    [self methodNames_layoutSubViews];
}

#pragma mark ---------- 填充内容
- (void)methodNames_setData {
    NSString *varNames_account = methodNames_readLastAccount();
    if (varNames_account && varNames_account.length) {
        NSString *varNames_password = methodNames_readPassword(varNames_account);
        self.varNames_userName = varNames_account;
        self.varNames_password = varNames_password;
    }
    
    // 获取设定的自动登录等待时间
    self.varNames_timeout = methodNames_getAutoLoginViewDuration();
}



- (void)methodNames_layoutSubViews {
    
    self.varNames_topMarginValue = methodNames_setMargin_base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_accountLabel methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_accountLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_accountLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_accountLabel methodNames_constriant:methodNames_getInputView_inputView_Height()];
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
    self.varNames_topMarginValue += methodNames_setMargin_base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_firstCommitBtn methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_firstCommitBtn methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_firstCommitBtn methodNames_constriant:methodNames_getInputView_inputView_Width()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_firstCommitBtn methodNames_constriant:methodNames_getInputView_inputView_Height()];
}


- (void)methodNames_startTimer {
    // 创建定时器
    NSTimer *varNames_tmptimer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(methodNmaes_changTitle:) userInfo:nil repeats:YES];
    // 将定时器添加到runloop中，否则定时器不会启动
    [[NSRunLoop mainRunLoop] addTimer:varNames_tmptimer forMode:NSRunLoopCommonModes];
}

- (void)methodNmaes_changTitle:(NSTimer *)timer {
    if (self.varNames_timeout == 0) {
        [timer invalidate];
        if (!self.varNames_cancelAutoLogin) {
            [self methodNames_commitAutoLoginAction:self.varNames_userName password:self.varNames_password];
        }
        
    } else {
        [self methodNames_refreshButtonTitle:self.varNames_timeout];
        self.varNames_timeout--;
    }
}

- (void)methodNames_refreshButtonTitle:(NSInteger)timeout {
    NSString *varNames_title = [NSString stringWithFormat:@"切换账号( %ld s)", (long)timeout];
    [self.varNames_firstCommitBtn setTitle:varNames_title forState:UIControlStateNormal];
    self.varNames_firstCommitBtn.titleLabel.text = varNames_title;
}


#pragma mark ---------- autoLogin
- (void)methodNames_commitAutoLoginAction:(NSString *)account password:(NSString *)password {
    NSAssert(account, @"account nil");
    NSAssert(password, @"account nil");
    
    
    NSDictionary *varNames_tmppara = [ClassNames_BaseParameters methodNames_getBaseParameters];
//                           @"user_name": account,
//                           @"password": password,
//                           @"adv_id": methodNames_readAdvID(),
//                           @"channel_id": methodNames_readChannelID(),
//                           @"material_id": @"0",
//                           @"gid": methodNames_readGameID(),
//                           @"sub_gid": methodNames_readSubGameID(),
//                           @"platform_id": @"0",
//                           @"device_code": methodNames_getDeviceIDFA()
//                           };
    [varNames_tmppara setValue:account forKey:@"uname"];
    [varNames_tmppara setValue:password forKey:@"pwd"];
    __weak typeof(self) weakSelf = self;
    [ClassNames_PGHubView methodNames_showIndicatorWithTitlte:@"登陆中..."];
    [self.varNames_loginModel methodNames_fetchDataWithdURL:methodNames_gameUlogin_f() parameters:varNames_tmppara];
    self.varNames_loginModel.methodNames_completeFetchData = ^(ClassNames_MemberLoginModel *object) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            [weakSelf methodNames_loginsuccess:object];
        });
    };
    self.varNames_loginModel.methodNames_FetchError = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
           
            [ClassNames_PGHubView methodNames_hide];
            [ClassNames_PGHubView methodNames_showErrorMessage:@"网络出了小差!!!"];
            if (weakSelf.methodNames_autoLoginFailure) {
                weakSelf.methodNames_autoLoginFailure();
            }
        });
    };
}

/// 登陆成功
- (void)methodNames_loginsuccess:(ClassNames_MemberLoginModel *)memberLoginModel {
    if (memberLoginModel.varNames_code == 200) {
        methodNames_saveUserID(memberLoginModel.varNames_uid);
        methodNames_saveUserName(memberLoginModel.varNames_username);
        /// 保存账户
        methodNames_saveAccount(self.varNames_userName);
        /// 保存最后登陆的账户
        methodNames_saveLastAccount(self.varNames_userName);
        /// 保存账户密码
        methodNames_saveVisitorConnectPersonID(memberLoginModel.varNames_isBindCard);
        methodNames_savePassword(self.varNames_password, self.varNames_userName);

        methodNames_saveUserBindPhone(memberLoginModel.varNames_isbindPhone);
        methodNames_saveUserBindPersonID(memberLoginModel.varNames_isBindCard);
        
        methodNames_saveUserPhone(memberLoginModel.varNames_phone);
        methodNames_saveUserPhoneHide(memberLoginModel.varNames_phoneHide); 
        
        
        NSDictionary *varNames_tmpuserInfo = @{
                                   @"uid": memberLoginModel.varNames_uid,
                                   @"username": memberLoginModel.varNames_username
                                   };
        methodNames_postNotification(varNames_userLoginSuceessNoti, nil, varNames_tmpuserInfo);
        BOOL varNames_needBindPhone = NO;
        BOOL varNames_needBindPersonID = NO;
        if ([memberLoginModel.varNames_isbindPhone isEqualToString:@"2"]) {
            /// 没有绑定手机
            varNames_needBindPhone = YES;
        }
        if ([memberLoginModel.varNames_isBindCard isEqualToString:@"2"]) {
            /// 没有绑定身份证
            varNames_needBindPersonID = YES;
        }
        if (self.methodNames_autoLoginSuccess) {
            self.methodNames_autoLoginSuccess(varNames_needBindPhone, varNames_needBindPersonID);
        }
    } else {
        if (memberLoginModel.varNames_msg) {
            [ClassNames_PGHubView methodNames_showErrorMessage:memberLoginModel.varNames_msg];
        }
        if (self.methodNames_autoLoginFailure) {
            self.methodNames_autoLoginFailure();
        }
    }
}



#pragma mark ---------- 取消自动登录
- (void)methodNames_cancelAutoLoginAction:(UIButton *)sender {
    if (self.methodNames_cancelAutoLoginBlock) {
        self.varNames_cancelAutoLogin = YES;
        self.methodNames_cancelAutoLoginBlock();
    }
}

-(ClassNames_MemberLoginModel *)varNames_loginModel {
    if (!_varNames_loginModel) {
        _varNames_loginModel = [[ClassNames_MemberLoginModel alloc]init];
    }
    return _varNames_loginModel;
}


@end
