

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
@interface ClassNames_AutoLoginView ()


@property (nonatomic, readwrite, strong) UILabel *varNames_titleLabel;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_firstInputView;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_secondInputView;

@property (nonatomic, readwrite, strong) UIView *varNames_animatView;
@property (nonatomic, readwrite, strong) ClassNames_LoadingView *varNames_loadingView;

@property (nonatomic, readwrite, strong) ClassNames_CommitButton *varNames_firstCommitBtn;

@property (nonatomic, readwrite, assign) CGFloat varNames_topMarginValue;

@property (nonatomic, readwrite, assign) BOOL varNames_cancelAutoLogin;

@property (nonatomic, readwrite, strong) ClassNames_MemberLoginModel *varNames_loginModel;

@end


@implementation ClassNames_AutoLoginView

#pragma mark ---------- public methodNames
+ (instancetype)methodNames_createAutoLoginView {
    ClassNames_AutoLoginView *varNames_autoLoginView = [[ClassNames_AutoLoginView alloc]init];
    varNames_autoLoginView.translatesAutoresizingMaskIntoConstraints = NO;
    return varNames_autoLoginView;
}




#pragma mark -----------------------------------------------------------------------------

-(instancetype)init {
    self = [super init];
    if (self) {
        [self methodNames_createUI];
        
        [self methodNames_setData];
        __weak typeof(self) weakSelf = self;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            if (!weakSelf.varNames_cancelAutoLogin) {
                [weakSelf methodNames_commitAutoLoginAction:weakSelf.varNames_firstInputView.varNames_textValue password:weakSelf.varNames_secondInputView.varNames_textValue];
            }
            
        });
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self methodNames_layoutSubViews];
    if (CGRectGetWidth(self.varNames_animatView.frame)) {
        self.varNames_loadingView = [ClassNames_LoadingView methodNames_showLoadingWith:self.varNames_animatView];
    }
}


- (void)methodNames_createUI {
    
    UILabel *varNames_tmpTitleLabel = [[UILabel alloc]init];
    varNames_tmpTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpTitleLabel.text = methodNames_getTitle_AutoLoginView_Title();
    varNames_tmpTitleLabel.textColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_titleFontColor_config()];
    varNames_tmpTitleLabel.textAlignment = NSTextAlignmentCenter;
    varNames_tmpTitleLabel.font = [UIFont systemFontOfSize:17];
    self.varNames_titleLabel = varNames_tmpTitleLabel;
    
    ClassNames_InputView *varNames_tmpFirstInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeAutoLoginAccount];
    varNames_tmpFirstInputView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_firstInputView = varNames_tmpFirstInputView;
    
    ClassNames_InputView *varNames_tmpSecondInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeAutoLoginPassword];
    varNames_tmpSecondInputView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_secondInputView = varNames_tmpSecondInputView;
    
    UIView *varNames_tmpView = [[UIView alloc]init];
    varNames_tmpView.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpView.backgroundColor = [UIColor clearColor];
    self.varNames_animatView = varNames_tmpView;
    
    
    ClassNames_CommitButton *varNames_tmpCommitBtn = [[ClassNames_CommitButton alloc]init];
    varNames_tmpCommitBtn.translatesAutoresizingMaskIntoConstraints = NO;
    methodNames_drawCancelCommitImage(varNames_tmpCommitBtn, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_titleFontColor_config()]);
    [varNames_tmpCommitBtn addTarget:self action:@selector(methodNames_cancelAutoLoginAction:) forControlEvents:UIControlEventTouchUpInside];
    self.varNames_firstCommitBtn = varNames_tmpCommitBtn;
    
    [self addSubview:self.varNames_titleLabel];
    [self addSubview:self.varNames_firstInputView];
    [self addSubview:self.varNames_secondInputView];
    [self addSubview:self.varNames_animatView];
    [self addSubview:self.varNames_firstCommitBtn];
}

#pragma mark ---------- 填充内容
- (void)methodNames_setData {
    NSString *varNames_account = methodNames_readLastAccount();
    if (varNames_account && varNames_account.length) {
        NSString *varNames_password = methodNames_readPassword(varNames_account);
        [self.varNames_firstInputView methodNames_fillContent:varNames_account methodNames_canEditing:NO];
        [self.varNames_secondInputView methodNames_fillContent:varNames_password methodNames_canEditing:NO];
    }
}



- (void)methodNames_layoutSubViews {
    
    self.varNames_topMarginValue = methodNames_setMargin_2base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_titleLabel methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_titleLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_titleLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_titleLabel methodNames_constriant:methodNames_getInputView_inputView_Height()];
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
    self.varNames_topMarginValue += methodNames_setMargin_base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_firstInputView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_firstInputView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_firstInputView methodNames_constriant:methodNames_getInputView_inputView_Width()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_firstInputView methodNames_constriant:methodNames_getInputView_inputView_Height()];
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
    self.varNames_topMarginValue += methodNames_setMargin_base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_secondInputView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_secondInputView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_secondInputView methodNames_constriant:methodNames_getInputView_inputView_Width()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_secondInputView methodNames_constriant:methodNames_getInputView_inputView_Height()];
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
    self.varNames_topMarginValue += methodNames_setMargin_2base();
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_animatView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_animatView methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_animatView methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_animatView methodNames_constriant:methodNames_getInputView_inputView_Height() + 10];
    
    self.varNames_topMarginValue += (methodNames_getInputView_inputView_Height() + 10);
    self.varNames_topMarginValue += methodNames_setMargin_3base();
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_firstCommitBtn methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_firstCommitBtn methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_firstCommitBtn methodNames_constriant:methodNames_setCommitButtonWidth()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_firstCommitBtn methodNames_constriant:methodNames_setCommitButtonHeight()];
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
}

#pragma mark ---------- autoLogin
- (void)methodNames_commitAutoLoginAction:(NSString *)account password:(NSString *)password {
    NSAssert(account, @"account nil");
    NSAssert(password, @"account nil");
    NSDictionary *varNames_tmppara = @{
                           @"user_name": account,
                           @"password": password,
                           @"adv_id": methodNames_readAdvID(),
                           @"channel_id": methodNames_readChannelID(),
                           @"material_id": @"0",
                           @"gid": methodNames_readGameID(),
                           @"sub_gid": methodNames_readSubGameID(),
                           @"platform_id": @"0",
                           @"device_code": methodNames_getDeviceIDFA()
                           };
    __weak typeof(self) weakSelf = self;
    [ClassNames_PGHubView methodNames_showIndicatorWithTitlte:@"登陆中..."];
    [self.varNames_loginModel methodNames_fetchDataWithdURL:methodNames_memberLoginURL() parameters:varNames_tmppara];
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
        methodNames_saveAccount(self.varNames_firstInputView.varNames_textValue);
        /// 保存最后登陆的账户
        methodNames_saveLastAccount(self.varNames_firstInputView.varNames_textValue);
        /// 保存账户密码
        methodNames_saveVisitorConnectPersonID(memberLoginModel.varNames_isRealName);
        methodNames_savePassword(self.varNames_secondInputView.varNames_textValue, self.varNames_firstInputView.varNames_textValue);

        NSDictionary *varNames_tmpuserInfo = @{
                                   @"uid": memberLoginModel.varNames_uid,
                                   @"username": memberLoginModel.varNames_username
                                   };
        methodNames_postNotification(varNames_userLoginSuceessNoti, nil, varNames_tmpuserInfo);
        BOOL varNames_needBindPhone = NO;
        BOOL varNames_needBindPersonID = NO;
        if ([memberLoginModel.varNames_isbind isEqualToString:@"1"]) {
            /// 没有绑定手机
            varNames_needBindPhone = YES;
        }
        if ([memberLoginModel.varNames_isRealName isEqualToString:@"1"]) {
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
