

#import "ClassNames_LoginView.h"
#import "ClassNames_NavigationBarView.h"
#import "ClassNames_PGHubView.h"
#import "ClassNames_MemberLoginModel.h"

#import "ClassNames_CommitButton.h"
#import "ClassNames_InputView.h"
#import "ClassNames_Color.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_RegularMatch.h"
#import "ClassNames_InitGamesConfigure.h"
#import "ClassNames_NotificationConfigure.h"
#import "ClassNames_SecurityTool.h"
#import "ClassNames_Title.h"
#import "ClassNames_ImageCommitButton.h"
#import "ClassNames_BaseParameters.h"

@interface ClassNames_LoginView ()<UITextViewDelegate>

@property (nonatomic, readwrite, strong) ClassNames_NavigationBarView *varNames_naviView;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_firstInputView;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_secondInputView;

@property (nonatomic, readwrite, strong) ClassNames_CommitButton *varNames_firstCommitBtn;

@property (nonatomic, readwrite, assign) CGFloat varNames_topMarginValue;

@property (nonatomic, readwrite, strong) ClassNames_MemberLoginModel *varNames_loginModel;


// 协议相关
@property (nonatomic, readwrite, strong) UIView *varNames_delegateView;
@property (nonatomic, readwrite, strong) UIButton *varNames_agreeButton;
@property (nonatomic, readwrite, strong) UITextView *varNames_delegateTextView;

@end


@implementation ClassNames_LoginView

#pragma mark ---------- public methodNames
+(instancetype)methodNames_createLoginView {
    ClassNames_LoginView *varNames_tmpLoginView = [[ClassNames_LoginView alloc]init];
    varNames_tmpLoginView.translatesAutoresizingMaskIntoConstraints = NO;
    return varNames_tmpLoginView;
}


#pragma mark --------------------------------------------------------------------------------

-(instancetype)init {
    self = [super init];
    if (self) {
        self.layer.cornerRadius = 15;
        [self methodNames_createUI];
        [self methodNames_setData];
    }
    return self;;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self methodNames_layoutSubViews];
}


- (void)methodNames_createUI {
    __weak typeof(self) weakSelf = self;
    ClassNames_NavigationBarView *varNames_tmpNaviView = [[ClassNames_NavigationBarView alloc]init];
    varNames_tmpNaviView.translatesAutoresizingMaskIntoConstraints = NO;
    [varNames_tmpNaviView methodNames_setTitle:@"账号登录"];
    [varNames_tmpNaviView methodNames_setRightButtonImage:@"" rightTitle:@"客服" btnAction:^{
        if (weakSelf.methodNames_servicceBlock) {
            weakSelf.methodNames_servicceBlock();
        }
    }];
    
    self.varNames_naviView = varNames_tmpNaviView;
    
    
    ClassNames_InputView *varNames_tmpFirstInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeLoginAccount];
    varNames_tmpFirstInputView.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpFirstInputView.methodNames_changeAccount = ^(NSString *account) {
        NSString *password = methodNames_readPassword(account);
        [weakSelf.varNames_secondInputView methodNames_fillContent:password methodNames_canEditing:YES];
    };
    self.varNames_firstInputView = varNames_tmpFirstInputView;
    
    ClassNames_InputView *varNames_tmpSecondInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeLoginPassword];
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
    
    ClassNames_CommitButton *varNames_tmpCommitBtn = [ClassNames_CommitButton methodNames_createCommitButtonWithTitle:@"一键登录" withTouchUpInsidBlock:^{
        [weakSelf methodNames_commitAction:nil];
    }];
    
    
    
    self.varNames_firstCommitBtn = varNames_tmpCommitBtn;
    
    
    [self addSubview:self.varNames_naviView];
    [self addSubview:self.varNames_firstInputView];
    [self addSubview:self.varNames_secondInputView];
    [self addSubview:self.varNames_delegateView];
    [self addSubview:self.varNames_firstCommitBtn];
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
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_agreeButton methodNames_constriant:15];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_agreeButton methodNames_constriant:15];
    
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


#pragma mark ---------- setData
- (void)methodNames_setData {
    __weak typeof(self) weakSelf = self;
    NSString *varNames_tmpAccount = methodNames_readLastAccount();
    NSString *varNames_tmpPassword = @"";
    if (varNames_tmpAccount && varNames_tmpAccount.length) {
         varNames_tmpPassword = methodNames_readPassword(varNames_tmpAccount);
    } else {
        varNames_tmpAccount = methodNames_getRandAccountAndPwd(0);
        varNames_tmpPassword = methodNames_getRandAccountAndPwd(1);
    }
    
    [self.varNames_firstInputView methodNames_fillContent:varNames_tmpAccount methodNames_canEditing:YES];
    [self.varNames_secondInputView methodNames_fillContent:varNames_tmpPassword methodNames_canEditing:YES];
    [self.varNames_firstInputView methodNames_setInputViewKeyboardReutrnType:varNames_keyboardReturnNext];
    [self.varNames_secondInputView methodNames_setInputViewKeyboardReutrnType:varNames_keyboardReturnDefault];
    self.varNames_firstInputView.methodNames_nextInputView = ^{
        [weakSelf.varNames_secondInputView methodNames_becomeFirstResponder];
    };
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
        NSLog(@"富文本点击 用户协议");
        if (self.methodNames_delegateBlock) {
            self.methodNames_delegateBlock();
        }
    }
    else if ([[URL scheme] isEqualToString:@"yisizhengce"]) {
        NSLog(@"富文本点击 隐私政策");
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


#pragma mark ---------- CommitAction
- (void)methodNames_commitAction:(UIButton *)sender {
    [self methodNames_hidMoreAccountTableView];
    NSString *varNames_tmpaccount = self.varNames_firstInputView.varNames_textValue;
    NSString *varNames_tmppassword = self.varNames_secondInputView.varNames_textValue;
    
    if (!varNames_tmpaccount || !varNames_tmpaccount.length) {
//        [ClassNames_PGHubView methodNames_showErrorMessage:@"请输入用户名"];
        [ClassNames_PGHubView methodNames_showTip:@"请输入用户名"];
        return;
    }
    if (!varNames_tmppassword || !varNames_tmppassword.length) {
//        [ClassNames_PGHubView methodNames_showErrorMessage:@"请输入密码"];
        [ClassNames_PGHubView methodNames_showTip:@"请输入密码"];
        return;
    }
//    if (!methodNames_numberLetterRegular(varNames_tmppassword)) {
//        [ClassNames_PGHubView methodNames_showErrorMessage:@"密码格式有误"];
//        return;
//    }
    if (!self.varNames_agreeButton.selected) {
//        [ClassNames_PGHubView methodNames_showErrorMessage:@"请阅读并同意 用户协议 及 隐私政策"];
        [ClassNames_PGHubView methodNames_showTip:@"请阅读并同意 用户协议 及 隐私政策"];
        return;
    }
    if (self.methodNames_commitBlock) {
        self.methodNames_commitBlock(varNames_tmpaccount, varNames_tmppassword);
    }
    
    NSDictionary *varNames_tmppara = [ClassNames_BaseParameters methodNames_getBaseParameters];
    [varNames_tmppara setValue:varNames_tmpaccount forKey:@"uname"];
    [varNames_tmppara setValue:varNames_tmppassword forKey:@"pwd"];
//    NSDictionary *varNames_tmppara = @{
//                           @"user_name": varNames_tmpaccount,
//                           @"password": varNames_tmppassword,
//                           @"adv_id": methodNames_readAdvID(),
//                           @"channel_id": methodNames_readChannelID(),
//                           @"material_id": @"0",
//                           @"gid": methodNames_readGameID(),
//                           @"sub_gid": methodNames_readSubGameID(),
//                           @"platform_id": @"0",
//                           @"device_code": methodNames_getDeviceIDFA()
//                           };
    __weak typeof(self) weakSelf = self;
    [ClassNames_PGHubView methodNames_showIndicatorWithTitlte:@"登陆中..."];
    [self.varNames_loginModel methodNames_fetchDataWithdURL:methodNames_gameUlogin_a() parameters:varNames_tmppara];
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
        methodNames_saveVisitorConnectPersonID(memberLoginModel.varNames_isBindCard);
        methodNames_savePassword(self.varNames_secondInputView.varNames_textValue, self.varNames_firstInputView.varNames_textValue);
        
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
        if (self.methodNames_loginSuccess) {
            self.methodNames_loginSuccess(varNames_needBindPhone, varNames_needBindPersonID);
        }
    } else {
        if (memberLoginModel.varNames_msg) {
            [ClassNames_PGHubView methodNames_showErrorMessage:memberLoginModel.varNames_msg];
        }
        if (self.methodNames_loginSuccess) {
            self.methodNames_loginSuccess(YES, YES);
        }
        if (self.methodNames_loginFailure) {
            self.methodNames_loginFailure();
        }
    }
}




- (void)methodNames_hidMoreAccountTableView {
    [self.varNames_firstInputView methodNames_hidMoreAccountTableView];
}



-(ClassNames_MemberLoginModel *)varNames_loginModel {
    if (!_varNames_loginModel) {
        _varNames_loginModel = [[ClassNames_MemberLoginModel alloc]init];
    }
    return _varNames_loginModel;
}
@end
