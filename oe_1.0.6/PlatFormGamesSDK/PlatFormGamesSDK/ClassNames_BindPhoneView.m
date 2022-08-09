

#import "ClassNames_BindPhoneView.h"
#import "ClassNames_Title.h"
#import "ClassNames_BaseModel.h"

#import "ClassNames_InputView.h"
#import "ClassNames_CommitButton.h"
#import "ClassNames_InitGamesConfigure.h"
#import "ClassNames_Color.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_ImagePhoneMessage.h"
#import "ClassNames_ImageErrorRight.h"

#import "ClassNames_ImageCommitButton.h"
#import "ClassNames_NavigationBarView.h"
@interface ClassNames_BindPhoneView ()

@property (nonatomic, readwrite, strong) ClassNames_NavigationBarView *varNames_naviView;

@property (nonatomic, readwrite, strong) UILabel *varNames_accountLabel;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_firstInputView;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_secondInputView;

@property (nonatomic, readwrite, strong) ClassNames_CommitButton *varNames_firstCommitBtn;

@property (nonatomic, readwrite, strong) UILabel *varNames_tipLabel;

@property (nonatomic, readwrite, assign) CGFloat varNames_topMarginValue;



@property (nonatomic, readwrite, strong) ClassNames_BaseModel *varNames_connectPhoneModel;

@end

@implementation ClassNames_BindPhoneView

#pragma mark ---------- public methodNames
+(instancetype)methodNames_createBindPhoneView {
    
    ClassNames_BindPhoneView *varNames_tmpBindPhoneView = [[ClassNames_BindPhoneView alloc]init];
    varNames_tmpBindPhoneView.translatesAutoresizingMaskIntoConstraints = NO;
    
    return varNames_tmpBindPhoneView;
}

#pragma mark --------------------------------------------------------------------------------

-(instancetype)init {
    self = [super init];
    if (self) {
        [self methodNames_createUI];
    }
    return self;;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self methodNames_layoutSubViews];
}


- (void)methodNames_createUI {
    
    
    [self methodNames_setNavi];
    [self methodNames_createAccountView];
    
    ClassNames_InputView *varNames_tmpFirstInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeBindPhonePhone];
    varNames_tmpFirstInputView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_firstInputView = varNames_tmpFirstInputView;
    
    ClassNames_InputView *varNames_tmpSecondInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeBindPhoneCode];
    varNames_tmpSecondInputView.translatesAutoresizingMaskIntoConstraints = NO;
    __weak typeof(self) weakSelf = self;
    varNames_tmpSecondInputView.methodNames_getPhoneNumber = ^NSDictionary *(BOOL enable) {
        if (!enable) {
            NSString *varNames_tmpphone = @"";
            if (weakSelf.varNames_firstInputView.varNames_textValue.length) {
                varNames_tmpphone = weakSelf.varNames_firstInputView.varNames_textValue;
            }
            NSDictionary *varNames_tmppara = @{
                                   @"phone": varNames_tmpphone,
                                   @"type": @(0)
                                   };
            return varNames_tmppara;
        }
        return nil;
    };
    
    
    self.varNames_secondInputView = varNames_tmpSecondInputView;
    
    ClassNames_CommitButton *varNames_tmpCommitBtn = [ClassNames_CommitButton methodNames_createCommitButtonWithTitle:@"绑定手机" withTouchUpInsidBlock:^{
        [weakSelf methodNames_commitAction:nil];
    }];
    
    self.varNames_firstCommitBtn = varNames_tmpCommitBtn;
    
    [self addSubview:self.varNames_firstInputView];
    [self addSubview:self.varNames_secondInputView];
    [self addSubview:self.varNames_firstCommitBtn];
    
    [self methodNames_createTipLabelView];
    
    
    [self.varNames_firstInputView methodNames_setInputViewKeyboardReutrnType:varNames_keyboardReturnNext];
    [self.varNames_secondInputView methodNames_setInputViewKeyboardReutrnType:varNames_keyboardReturnDefault];
    self.varNames_firstInputView.methodNames_nextInputView = ^{
        [weakSelf.varNames_secondInputView methodNames_becomeFirstResponder];
    };
}

- (void)methodNames_setNavi {
    
    __weak typeof(self) weakSelf = self;
    ClassNames_NavigationBarView *varNames_tmpNaviView = [[ClassNames_NavigationBarView alloc]init];
    varNames_tmpNaviView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [varNames_tmpNaviView methodNames_setTitle:@"绑定手机" rightButtonImage:@"image_close" rightTitle:@"" btnAction:^{
        if (weakSelf.methodNames_closeBindPhoneView) {
            weakSelf.hidden = YES;
            weakSelf.methodNames_closeBindPhoneView();
        }
    }];
    
    self.varNames_naviView = varNames_tmpNaviView;
    [self addSubview:varNames_tmpNaviView];
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
// 安全提示
- (void)methodNames_createTipLabelView {
    UILabel *varNames_tmpLabel = [[UILabel alloc]init];
    varNames_tmpLabel.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpLabel.numberOfLines = 3;
    varNames_tmpLabel.font = [UIFont systemFontOfSize:12];
    varNames_tmpLabel.textColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_fillColor_config()];
    varNames_tmpLabel.textAlignment = NSTextAlignmentCenter;
    varNames_tmpLabel.text = @"为了您的账号安全，请进行手机绑定\n\n绑定之后可以自行找回密码，保护账号安全";
    self.varNames_tipLabel = varNames_tmpLabel;
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
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_firstCommitBtn methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_firstCommitBtn methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_firstCommitBtn methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_firstCommitBtn methodNames_constriant:methodNames_setCommitButtonHeight()];
    
    self.varNames_topMarginValue += methodNames_setCommitButtonHeight();
    self.varNames_topMarginValue += methodNames_setMargin_3base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_tipLabel methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_tipLabel methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_tipLabel methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_tipLabel methodNames_constriant:methodNames_setMargin_2base()];
    
    
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

#pragma mark ---------- button Action
- (void)methodNames_closeAction:(UIButton *)sender {
    if (self.methodNames_closeBindPhoneView) {
        self.hidden = YES;
        [self removeFromSuperview];
        self.methodNames_closeBindPhoneView();
    }
}

- (void)methodNames_commitAction:(UIButton *)sender {
    NSString *varNames_tmpaccount = self.varNames_firstInputView.varNames_textValue;
    NSString *varNames_tmpcode = self.varNames_secondInputView.varNames_textValue;
    
    if (!varNames_tmpaccount || !varNames_tmpaccount.length) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"请输入手机号码"];
        return;
    }
    if (!varNames_tmpcode || !varNames_tmpcode.length) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"请输入验证码"];
        return;
    }
    NSDictionary *varNames_tmppara = @{
                           @"user_name": methodNames_readUserName(),
                           @"phone": varNames_tmpaccount,
                           @"code": varNames_tmpcode
                           };
    
    __weak typeof(self) weakSelf = self;
    [ClassNames_PGHubView methodNames_showIndicatorWithTitlte:@"正在绑定..."];
    [self.varNames_connectPhoneModel methodNames_fetchDataWithdURL:methodNames_bindphoneURL() parameters:varNames_tmppara];
    self.varNames_connectPhoneModel.methodNames_completeFetchData = ^(ClassNames_BaseModel *object) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            if (object.varNames_code == 200) { 
                if (weakSelf.methodNames_bindPhoneSuccess) {
                    weakSelf.methodNames_bindPhoneSuccess();
                }
            } else {
                if (object.varNames_msg) {
                    [ClassNames_PGHubView methodNames_showErrorMessage:object.varNames_msg];
                }
            }
        });
        
    };
    self.varNames_connectPhoneModel.methodNames_FetchError = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            [ClassNames_PGHubView methodNames_showErrorMessage:@"网络出了小差!!!"];
        });
        
    };
}





-(ClassNames_BaseModel *)varNames_connectPhoneModel {
    if (!_varNames_connectPhoneModel) {
        _varNames_connectPhoneModel = [[ClassNames_BaseModel alloc]init];
    }
    return _varNames_connectPhoneModel;
    
}


@end
