

#import "ClassNames_NormalRegisterView.h"
#import "ClassNames_NavigationBarView.h"
#import "ClassNames_Title.h"

#import "ClassNames_CommitButton.h"
#import "ClassNames_InputView.h"
#import "ClassNames_Color.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_InitGamesConfigure.h"
#import "ClassNames_RegularMatch.h"
#import "ClassNames_NotificationConfigure.h"

#import "ClassNames_ImageProtocol.h"
#import "ClassNames_DelegateView.h"
#import "ClassNames_URLSessionConfigure.h"
#import "ClassNames_ImageCommitButton.h"
#import "ClassNames_BaseParameters.h"
#import "ClassNames_MemberLoginModel.h"
@interface ClassNames_NormalRegisterView ()<UITextViewDelegate>

@property (nonatomic, readwrite, strong) ClassNames_NavigationBarView *varNames_naviView;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_firstInputView;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_secondInputView;

@property (nonatomic, readwrite, strong) ClassNames_CommitButton *varNames_firstCommitBtn;

@property (nonatomic, readwrite, assign) CGFloat varNames_topMarginValue;

@property (nonatomic, readwrite, strong) ClassNames_MemberLoginModel *varNames_normalRegisterModel;

// 协议相关
@property (nonatomic, readwrite, strong) UIView *varNames_delegateView;
@property (nonatomic, readwrite, strong) UIButton *varNames_agreeButton;
@property (nonatomic, readwrite, strong) UITextView *varNames_delegateTextView;


@end

@implementation ClassNames_NormalRegisterView

#pragma mark ---------- public methodNames
+(instancetype)methodNames_createNormalRegisterView {
    ClassNames_NormalRegisterView *varNames_tmpNormalRegisterView = [[ClassNames_NormalRegisterView alloc]init];
    varNames_tmpNormalRegisterView.translatesAutoresizingMaskIntoConstraints = NO;
    return varNames_tmpNormalRegisterView;
}
- (void)methodNames_resetContent {
    
    [_varNames_firstInputView methodNames_fillContent:@"" methodNames_canEditing:YES];
    [_varNames_secondInputView methodNames_fillContent:@"" methodNames_canEditing:YES];
    
}

#pragma mark --------------------------------------------------------------------------------

-(instancetype)init {
    self = [super init];
    if (self) {
        [self methodNames_createUI];
        [self methodNames_setData];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self methodNames_layoutSubViews];
}


- (void)methodNames_createUI {
    
    __weak typeof(self) weakSelf = self;
    ClassNames_NavigationBarView *varNames_tmpNaviView = [[ClassNames_NavigationBarView alloc]init];
    varNames_tmpNaviView.translatesAutoresizingMaskIntoConstraints = NO;
    [varNames_tmpNaviView methodNames_setTitle:@"账号注册"];
    [varNames_tmpNaviView methodNames_setRightButtonImage:@"" rightTitle:@"客服" btnAction:^{
        if (weakSelf.methodNames_servicceBlock) {
            weakSelf.methodNames_servicceBlock();
        }
    }];
    
    self.varNames_naviView = varNames_tmpNaviView;
    
    
    ClassNames_InputView *varNames_tmpFirstInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeNormalRegisterAccount];
    varNames_tmpFirstInputView.translatesAutoresizingMaskIntoConstraints = NO;
//    varNames_tmpFirstInputView.methodNames_changeAccount = ^(NSString *account) {
//        NSString *password = methodNames_readPassword(account);
//        [weakSelf.varNames_secondInputView methodNames_fillContent:password methodNames_canEditing:YES];
//    };
    self.varNames_firstInputView = varNames_tmpFirstInputView;
    
    ClassNames_InputView *varNames_tmpSecondInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeNormalRegisterPassword];
    varNames_tmpSecondInputView.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpSecondInputView.methodNames_loginViewPasswordInputViewBecomeFirstRespond = ^{
        [weakSelf.varNames_firstInputView methodNames_hidMoreAccountTableView];
    };
    
    self.varNames_secondInputView = varNames_tmpSecondInputView;
    
    self.varNames_delegateView = [[UIView alloc]init];
    self.varNames_delegateView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_agreeButton = [[UIButton alloc]init];
    self.varNames_agreeButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.varNames_agreeButton addTarget:self action:@selector(methodNames_agreeAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.varNames_agreeButton setBackgroundImage:methodNames_getImage(@"image_not_choose") forState:UIControlStateNormal];
    [self.varNames_agreeButton setBackgroundImage:methodNames_getImage(@"image_choose") forState:UIControlStateSelected];
    self.varNames_delegateTextView = [self methodNames_createDelegateTextview];
    [self.varNames_delegateView addSubview:self.varNames_agreeButton];
    [self.varNames_delegateView addSubview:self.varNames_delegateTextView];
    
    ClassNames_CommitButton *varNames_tmpCommitBtn = [ClassNames_CommitButton methodNames_createCommitButtonWithTitle:@"一键注册" withTouchUpInsidBlock:^{
        [weakSelf methodNames_commitAction:nil];
    }];
    self.varNames_firstCommitBtn = varNames_tmpCommitBtn;
    
    
    [self addSubview:self.varNames_naviView];
    [self addSubview:self.varNames_firstInputView];
    [self addSubview:self.varNames_secondInputView];
    [self addSubview:self.varNames_delegateView];
    [self addSubview:self.varNames_firstCommitBtn];
}

#pragma mark ---------- setData
- (void)methodNames_setData {
    __weak typeof(self) weakSelf = self;
    NSString *varNames_randString = methodNames_getRandAccountAndPwd(21);
    NSString *varNames_tmpAccount = [varNames_randString substringWithRange:NSMakeRange(0, 6)];
    NSString *varNames_tmpPassword = [varNames_randString substringWithRange:NSMakeRange(6, 16)];
    
    [self.varNames_firstInputView methodNames_fillContent:varNames_tmpAccount methodNames_canEditing:YES];
    [self.varNames_secondInputView methodNames_fillContent:varNames_tmpPassword methodNames_canEditing:YES];
    [self.varNames_firstInputView methodNames_setInputViewKeyboardReutrnType:varNames_keyboardReturnNext];
    [self.varNames_secondInputView methodNames_setInputViewKeyboardReutrnType:varNames_keyboardReturnDefault];
    self.varNames_firstInputView.methodNames_nextInputView = ^{
        [weakSelf.varNames_secondInputView methodNames_becomeFirstResponder];
    };
}

- (void)methodNames_layoutSubViews {
    
    self.varNames_topMarginValue = 0;
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_naviView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_naviView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_naviView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_naviView methodNames_constriant:methodNames_setNavigationBarHeight()];
    
    self.varNames_topMarginValue += methodNames_setNavigationBarHeight();
    self.varNames_topMarginValue += methodNames_setMargin_3base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_firstInputView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_firstInputView methodNames_constriant:methodNames_setMargin_2base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_firstInputView methodNames_constriant:methodNames_setMargin_2base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_firstInputView methodNames_constriant:methodNames_getInputView_inputView_Height()];
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
    self.varNames_topMarginValue += methodNames_setMargin_3base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_secondInputView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_secondInputView methodNames_constriant:methodNames_setMargin_2base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_secondInputView methodNames_constriant:methodNames_setMargin_2base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_secondInputView methodNames_constriant:methodNames_getInputView_inputView_Height()];
    
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
    
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_delegateView methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_delegateView methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_delegateView methodNames_constriant:self.varNames_topMarginValue + methodNames_setMargin_2base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_delegateView methodNames_constriant:methodNames_setMargin_3base() * 2];
    
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_agreeButton methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_agreeButton methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_agreeButton methodNames_constriant:22];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_agreeButton methodNames_constriant:22];
    
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_delegateTextView methodNames_constriant:methodNames_setMargin_base() * 5];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_delegateTextView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_delegateTextView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_delegateTextView methodNames_constriant:0];
    
    
    
    self.varNames_topMarginValue += (methodNames_setMargin_base() * 10);
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_firstCommitBtn methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_firstCommitBtn methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_firstCommitBtn methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_firstCommitBtn methodNames_constriant:methodNames_setCommitButtonHeight()];
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
    [self methodNames_caculateInputViewLocal];
}
#pragma mark ---------- 计算输入框的位置
- (void)methodNames_caculateInputViewLocal {
    if (CGRectGetHeight(self.varNames_firstInputView.bounds)) {
        [self methodNames_setInputViewMaxY:self.varNames_firstInputView];
    }
    if (CGRectGetHeight(self.varNames_secondInputView.bounds)) {
        [self methodNames_setInputViewMaxY:self.varNames_secondInputView];
    }
}
- (void)methodNames_setInputViewMaxY:(ClassNames_InputView *)varNames_view {
    UIWindow *varNames_tmpwindow = methodNames_getCurrentWindow();
    CGRect varNames_tmprect = [varNames_view convertRect:varNames_view.bounds toView:varNames_tmpwindow];
    CGFloat varNames_textFieldMaxY = CGRectGetMaxY(varNames_tmprect);
    [varNames_view methodNames_setInputViewMaxY:varNames_textFieldMaxY];
}
#pragma mark - 创建协议的富文本内容
- (UITextView *)methodNames_createDelegateTextview {
    UITextView *agreementTextView = [[UITextView alloc] init];
    agreementTextView.translatesAutoresizingMaskIntoConstraints = NO;
    agreementTextView.font = [UIFont systemFontOfSize:13];
    agreementTextView.text = @"我已阅读并同意 用户协议 及 隐私政策";
    agreementTextView.backgroundColor = [UIColor clearColor];
    agreementTextView.delegate=self;
    //必须禁止输入，否则点击将弹出输入键
    agreementTextView.editable=NO;
    agreementTextView.scrollEnabled=NO;
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing= 1;
    NSDictionary*attributes = @{NSFontAttributeName:[UIFont systemFontOfSize:13],
                                NSParagraphStyleAttributeName:paragraphStyle};
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:agreementTextView.text attributes:attributes];
    [attributedString addAttribute:NSUnderlineStyleAttributeName value:@(NSUnderlineStyleSingle) range:NSMakeRange(8,4)];
    [attributedString addAttribute:NSUnderlineStyleAttributeName value:@(NSUnderlineStyleSingle) range:NSMakeRange(15,4)];
    [attributedString addAttribute:NSLinkAttributeName value:@"yonghuxieyi://" range:NSMakeRange(8,4)];
    [attributedString addAttribute:NSLinkAttributeName value:@"yisizhengce://" range:NSMakeRange(15,4)];
    [attributedString addAttribute:NSForegroundColorAttributeName value:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_titleFontColor_config()] range:NSMakeRange(0,agreementTextView.text.length)];
    agreementTextView.attributedText= attributedString;
    //设置被点击字体颜色
    agreementTextView.linkTextAttributes = @{NSForegroundColorAttributeName:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()]};
    return agreementTextView;
}
#pragma mark 富文本点击事件
-(BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange {
    if ([[URL scheme] isEqualToString:@"yonghuxieyi"]) {
        if (self.methodNames_delegateBlock) {
            self.methodNames_delegateBlock();
        }
        
    }
    else if ([[URL scheme] isEqualToString:@"yisizhengce"]) {
        if (self.methodNames_handlebookBlock) {
            self.methodNames_handlebookBlock();
        }
        
    }
    return NO;
}
#pragma mark - 点击同意协议
- (void)methodNames_agreeAction:(UIButton *)sender {
    sender.selected = !sender.selected;
}
#pragma mark ---------- button Action
- (void)methodNames_commitAction:(UIButton *)sender {
    NSString *varNames_tmpaccount = _varNames_firstInputView.varNames_textValue;
    NSString *varNames_tmppassword = _varNames_secondInputView.varNames_textValue;
    
    if (!self.varNames_agreeButton.selected) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"请先阅读相关协议并勾选同意"];
        return;
    }
    
    if (!varNames_tmpaccount || !varNames_tmpaccount.length) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"请输入账号"];
        return;
    }
    if (!varNames_tmppassword || !varNames_tmppassword.length) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"请输入密码"];
        return;
    }
//    if (!methodNames_numberLetterRegular(varNames_tmppassword) || !methodNames_numberLetterRegular(varNames_tmppassword)) {
//        [ClassNames_PGHubView methodNames_showErrorMessage:@"密码格式有误"];
//        return;
//    }
    NSDictionary *varNames_tmppara = [ClassNames_BaseParameters methodNames_getBaseParameters];
    [varNames_tmppara setValue:varNames_tmpaccount forKey:@"uname"];
    [varNames_tmppara setValue:varNames_tmppassword forKey:@"pwd"];
//    NSDictionary *varNames_tmppara = @{
//                           @"user_name": varNames_tmpaccount,
//                           @"password": varNames_tmppassword,
//                           @"adv_id": methodNames_readAdvID(),
//                           @"channel_id": methodNames_readOpr_CID(),
//                           @"material_id": @"0",
//                           @"gid": methodNames_readGameID(),
//                           @"sub_gid": methodNames_readSubGameID(),
//                           @"platform_id": methodNames_readPlatformID(),
//                           @"device_code": methodNames_getDeviceIDFA()
//                           };
    __weak typeof(self) weakSelf = self;
    [ClassNames_PGHubView methodNames_showIndicatorWithTitlte:@"正在注册..."];
    [self.varNames_normalRegisterModel methodNames_fetchDataWithdURL:methodNames_gameAcctreg_2() parameters:varNames_tmppara];
    self.varNames_normalRegisterModel.methodNames_completeFetchData = ^(ClassNames_MemberLoginModel *object) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            if (object.varNames_code == 200) {
                if (object.varNames_username) {
                    [weakSelf methodNames_normalRegisterSuccess:object];
                }
            } else {
                if (object.varNames_msg) {
                    [ClassNames_PGHubView methodNames_showErrorMessage:object.varNames_msg];
                }
            }
        });
    };
    self.varNames_normalRegisterModel.methodNames_FetchError = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            [ClassNames_PGHubView methodNames_showErrorMessage:@"网络出了小差!!!"];
        });
    };
    
}

/// 注册成功返回执行的方法
- (void)methodNames_normalRegisterSuccess:(ClassNames_MemberLoginModel *)memberRegisterModel {
    
    // 保存登录的方式
    methodNames_saveLoginType(2);
    
    /// 保存账户
    methodNames_saveAccount(_varNames_firstInputView.varNames_textValue);
    /// 保存最后登陆的账户
    methodNames_saveLastAccount(_varNames_firstInputView.varNames_textValue);
    /// 保存账户密码
    methodNames_savePassword(_varNames_secondInputView.varNames_textValue, _varNames_firstInputView.varNames_textValue);
    /// 保存用户id
    methodNames_saveUserID(memberRegisterModel.varNames_uid);
    /// 保存用户名称
    methodNames_saveUserName(memberRegisterModel.varNames_username);
    methodNames_saveVisitorConnectPersonID(memberRegisterModel.varNames_isBindCard);
    
    methodNames_saveUserBindPhone(memberRegisterModel.varNames_isbindPhone);
    methodNames_saveUserBindPersonID(memberRegisterModel.varNames_isBindCard);
    
    methodNames_saveUserPhone(memberRegisterModel.varNames_phone);
    methodNames_saveUserPhoneHide(memberRegisterModel.varNames_phoneHide);
    
    NSDictionary *varNames_tmpuserInfo = @{
                               @"uid": memberRegisterModel.varNames_uid,
                               @"token": memberRegisterModel.varNames_token
                               };
    methodNames_postNotification(varNames_userLoginSuceessNoti, nil, varNames_tmpuserInfo);
    
    BOOL varNames_needBindPhone = NO;
    BOOL varNames_needBindPersonID = NO;
    if ([memberRegisterModel.varNames_isbindPhone isEqualToString:@"2"]) {
        /// 没有绑定手机
        ///  且初始化时候需要开启绑定手机功能
        varNames_needBindPhone = YES;
    }
    if ([memberRegisterModel.varNames_isBindCard isEqualToString:@"2"]) {
        /// 没有绑定身份证
        ///  且 初始化需要开启绑定身份证功能
        varNames_needBindPersonID = YES;
    }
    if (_methodNames_normalRegisterSuccess) {
        self.hidden = YES;
        [self removeFromSuperview];
        _methodNames_normalRegisterSuccess(varNames_needBindPhone, varNames_needBindPersonID);
    }
}






-(ClassNames_MemberLoginModel *)varNames_normalRegisterModel {
    if (!_varNames_normalRegisterModel) {
        _varNames_normalRegisterModel = [[ClassNames_MemberLoginModel alloc]init];
    }
    return _varNames_normalRegisterModel;
}


@end
