

#import "ClassNames_ResetPasswordView.h"
#import "ClassNames_Title.h"

#import "ClassNames_BaseModel.h"


#import "ClassNames_CommitButton.h"
#import "ClassNames_InputView.h"
#import "ClassNames_Color.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_RegularMatch.h"
#import "ClassNames_ImageCommitButton.h"
#import "ClassNames_ImageBackButton.h"
#import "ClassNames_NavigationBarView.h"

@interface ClassNames_ResetPasswordView ()
@property (nonatomic, readwrite, strong) ClassNames_NavigationBarView *varNames_naviView;

@property (nonatomic, readwrite, strong) UILabel *varNames_accountLabel;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_firstInputView;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_secondInputView;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_thirdInputView;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_fourthInputView;

@property (nonatomic, readwrite, strong) ClassNames_CommitButton *varNames_firstCommitBtn;

@property (nonatomic, readwrite, assign) CGFloat varNames_topMarginValue;

@property (nonatomic, readwrite, strong) ClassNames_BaseModel *varNames_resetPasswordModel;

@end


@implementation ClassNames_ResetPasswordView

#pragma mark ---------- public methodNames
+(instancetype)methodNames_createResetPasswordView {
    ClassNames_ResetPasswordView *varNames_tmpResetPasswordView = [[ClassNames_ResetPasswordView alloc]init];
    varNames_tmpResetPasswordView.translatesAutoresizingMaskIntoConstraints = NO;
    return varNames_tmpResetPasswordView;
}

-(void)methodNames_resetContent {
    
    [self.varNames_firstInputView methodNames_fillContent:@"" methodNames_canEditing:YES];
    [self.varNames_secondInputView methodNames_fillContent:@"" methodNames_canEditing:YES];
    [self.varNames_thirdInputView methodNames_fillContent:@"" methodNames_canEditing:YES];
    [self.varNames_fourthInputView methodNames_fillContent:@"" methodNames_canEditing:YES];
    
}


#pragma mark --------------------------------------------------------------------------------

-(instancetype)init {
    self = [super init];
    if (self) {
        
        self.backgroundColor = UIColor.whiteColor;
        self.layer.cornerRadius = 15;
        [self methodNames_createUI];
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
    [varNames_tmpNaviView methodNames_setTitle:@"修改密码"];
    [self.varNames_naviView methodNames_setLeftButtonImage:@"image_back" lefttitle:@"" btnAction:^{
        if (weakSelf.methodNames_backBlock) {
            weakSelf.hidden = YES;
            weakSelf.methodNames_backBlock();
        }
    }];
    [varNames_tmpNaviView methodNames_setLeftButtonImage:@"image_back" lefttitle:@"" btnAction:^{
        if (weakSelf.methodNames_backBlock) {
            weakSelf.hidden = YES;
            weakSelf.methodNames_backBlock();
        }
    }];
    [varNames_tmpNaviView methodNames_setRightButtonImage:@"image_close" rightTitle:@"" btnAction:^{
        if (weakSelf.methodNames_closeBlock) {
            weakSelf.hidden = YES;
            weakSelf.methodNames_closeBlock();
        }
    }];
    
    self.varNames_naviView = varNames_tmpNaviView;
    
    ClassNames_InputView *varNames_tmpFirstInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeResetPasswordAccount];
    varNames_tmpFirstInputView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_firstInputView = varNames_tmpFirstInputView;
    
    ClassNames_InputView *varNames_tmpSecondInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeFindBackPasswordCode];
    varNames_tmpSecondInputView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_secondInputView = varNames_tmpSecondInputView;
    
    ClassNames_InputView *varNames_tmpThirdInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeResetPasswordNewPassword];
    varNames_tmpThirdInputView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_thirdInputView = varNames_tmpThirdInputView;
    
    ClassNames_InputView *varNames_tmpFourthInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeResetPasswordRenewPassword];
    varNames_tmpFourthInputView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_fourthInputView = varNames_tmpFourthInputView;
    
    ClassNames_CommitButton *varNames_tmpCommitBtn = [ClassNames_CommitButton methodNames_createCommitButtonWithTitle:@"提交" withTouchUpInsidBlock:^{
        [weakSelf methodNames_commitAction:nil];
    }];
    
    self.varNames_firstCommitBtn = varNames_tmpCommitBtn;
    
    [self addSubview:self.varNames_naviView];
    
    [self methodNames_createAccountView];
    
    [self addSubview:self.varNames_firstInputView];
    [self addSubview:self.varNames_secondInputView];
    [self addSubview:self.varNames_thirdInputView];
    [self addSubview:self.varNames_fourthInputView];
    [self addSubview:self.varNames_firstCommitBtn];
    
    
    [self.varNames_firstInputView methodNames_setInputViewKeyboardReutrnType:varNames_keyboardReturnNext];
    [self.varNames_secondInputView methodNames_setInputViewKeyboardReutrnType:varNames_keyboardReturnNext];
    [self.varNames_thirdInputView methodNames_setInputViewKeyboardReutrnType:varNames_keyboardReturnNext];
    [self.varNames_fourthInputView methodNames_setInputViewKeyboardReutrnType:varNames_keyboardReturnDefault];
    self.varNames_firstInputView.methodNames_nextInputView = ^{
        [weakSelf.varNames_secondInputView methodNames_becomeFirstResponder];
    };
    self.varNames_secondInputView.methodNames_nextInputView = ^{
        [weakSelf.varNames_thirdInputView methodNames_becomeFirstResponder];
    };
    self.varNames_thirdInputView.methodNames_nextInputView = ^{
        [weakSelf.varNames_fourthInputView methodNames_becomeFirstResponder];
    };
}
// 账户ID
- (void)methodNames_createAccountView {
    UILabel *varNames_tmpLabel = [[UILabel alloc]init];
    varNames_tmpLabel.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpLabel.font = [UIFont systemFontOfSize:12];
    varNames_tmpLabel.textColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_fillColor_config()];
    varNames_tmpLabel.textAlignment = NSTextAlignmentCenter;
    varNames_tmpLabel.text = @"账户ID:1234567890";
    self.varNames_accountLabel = varNames_tmpLabel;
    [self addSubview:varNames_tmpLabel];
}

- (void)methodNames_layoutSubViews {
    
    self.varNames_topMarginValue = 0;
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_naviView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_naviView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_naviView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_naviView methodNames_constriant:methodNames_setNavigationBarHeight()];
    
    self.varNames_topMarginValue += methodNames_setNavigationBarHeight();
    self.varNames_topMarginValue += methodNames_setMargin_2base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_accountLabel methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_accountLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_accountLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_accountLabel methodNames_constriant:methodNames_setMargin_3base()];
    
    self.varNames_topMarginValue += methodNames_setMargin_3base();
    self.varNames_topMarginValue += methodNames_setMargin_2base();
    
    
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
    self.varNames_topMarginValue += methodNames_setMargin_3base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_thirdInputView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_thirdInputView methodNames_constriant:methodNames_setMargin_2base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_thirdInputView methodNames_constriant:methodNames_setMargin_2base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_thirdInputView methodNames_constriant:methodNames_getInputView_inputView_Height()];
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
    self.varNames_topMarginValue += methodNames_setMargin_3base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_fourthInputView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_fourthInputView methodNames_constriant:methodNames_setMargin_2base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_fourthInputView methodNames_constriant:methodNames_setMargin_2base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_fourthInputView methodNames_constriant:methodNames_getInputView_inputView_Height()];
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
    self.varNames_topMarginValue += methodNames_setMargin_2base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_firstCommitBtn methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_firstCommitBtn methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_firstCommitBtn methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_firstCommitBtn methodNames_constriant:methodNames_setCommitButtonHeight()];
    
    
    
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
    if (CGRectGetHeight(self.varNames_thirdInputView.bounds)) {
        [self methodNames_setInputViewMaxY:self.varNames_thirdInputView];
    }
    if (CGRectGetHeight(self.varNames_fourthInputView.bounds)) {
        [self methodNames_setInputViewMaxY:self.varNames_fourthInputView];
    }
}
- (void)methodNames_setInputViewMaxY:(ClassNames_InputView *)varNames_view {
    UIWindow *varNames_tmpwindow = methodNames_getCurrentWindow();
    CGRect varNames_tmprect = [varNames_view convertRect:varNames_view.bounds toView:varNames_tmpwindow];
    CGFloat varNames_textFieldMaxY = CGRectGetMaxY(varNames_tmprect);
    [varNames_view methodNames_setInputViewMaxY:varNames_textFieldMaxY];
}

#pragma mark ---------- action
- (void)methodNames_commitAction:(UIButton *)sender {
    NSString *varNames_tmpaccount = self.varNames_firstInputView.varNames_textValue;
    NSString *varNames_tmppassword = self.varNames_secondInputView.varNames_textValue;
    NSString *varNames_tmpnewPassword = self.varNames_thirdInputView.varNames_textValue;
    NSString *varNames_tmprenewPassword = self.varNames_fourthInputView.varNames_textValue;
    if (!varNames_tmpaccount || !varNames_tmpaccount.length) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"请输入账号"];
        return;
    }
    if (!varNames_tmppassword || !varNames_tmppassword.length) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"请输入密码"];
        return;
    }
    if (!methodNames_numberLetterRegular(varNames_tmppassword)) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"密码格式有误"];
        return;
    }
    if (!varNames_tmpnewPassword || !varNames_tmpnewPassword.length) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"请输入新的密码"];
        return;
    }
    if (!varNames_tmprenewPassword || !varNames_tmprenewPassword.length) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"请再输入新的密码"];
        return;
    }
    if (![varNames_tmpnewPassword isEqualToString:varNames_tmprenewPassword]) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"两次输入的密码不正确"];
        return;
    }
    if (!methodNames_numberLetterRegular(varNames_tmpnewPassword) || !methodNames_numberLetterRegular(varNames_tmprenewPassword)) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"密码格式有误"];
        return;
    }
    NSDictionary *varNames_tmppara = @{
                           @"user_name": varNames_tmpaccount,
                           @"psw": varNames_tmppassword,
                           @"new_psw": varNames_tmpnewPassword,
                           @"confirm_psw": varNames_tmprenewPassword
                           };
    __weak typeof(self) weakSelf = self;
    [ClassNames_PGHubView methodNames_showIndicatorWithTitlte:@"正在重置..."];
    [self.varNames_resetPasswordModel methodNames_fetchDataWithdURL:methodNames_updatepswURL() parameters:varNames_tmppara];
    self.varNames_resetPasswordModel.methodNames_completeFetchData = ^(ClassNames_BaseModel *object) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            if (object.varNames_code == 200) {
                [weakSelf methodNames_resetInputViewContent];
                if (weakSelf.methodNames_resetPasswordSuccess) {
                    weakSelf.methodNames_resetPasswordSuccess();
                }
            } else {
                if (object.varNames_msg) {
                    [ClassNames_PGHubView methodNames_showErrorMessage:object.varNames_msg];
                } else {
                    [ClassNames_PGHubView methodNames_showErrorMessage:@"重置密码失败"];
                }
            }
        });
    };
    self.varNames_resetPasswordModel.methodNames_FetchError = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
           [ClassNames_PGHubView methodNames_hide];
            [ClassNames_PGHubView methodNames_showErrorMessage:@"网络出了小差!!!"];
        });
    };
}



#pragma mark ---------- 情况内容
- (void)methodNames_resetInputViewContent {
    [self.varNames_firstInputView methodNames_fillContent:@"" methodNames_canEditing:YES];
    [self.varNames_secondInputView methodNames_fillContent:@"" methodNames_canEditing:YES];
    [self.varNames_thirdInputView methodNames_fillContent:@"" methodNames_canEditing:YES];
    [self.varNames_fourthInputView methodNames_fillContent:@"" methodNames_canEditing:YES];
    
}



-(ClassNames_BaseModel *)varNames_resetPasswordModel {
    if (!_varNames_resetPasswordModel) {
        _varNames_resetPasswordModel = [[ClassNames_BaseModel alloc]init];
    }
    return _varNames_resetPasswordModel;
}


@end
