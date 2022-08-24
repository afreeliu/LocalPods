

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
#import "ClassNames_BaseParameters.h"
@interface ClassNames_BindPhoneView ()

@property (nonatomic, readwrite, copy) NSString *varNames_naviTitle;

@property (nonatomic, readwrite, copy) NSString *varNames_commitTitle;


@property (nonatomic, readwrite, weak) UIView *varNames_fview;

@property (nonatomic, readwrite, strong) ClassNames_NavigationBarView *varNames_naviView;

@property (nonatomic, readwrite, strong) UILabel *varNames_accountLabel;

@property (nonatomic, readwrite, strong) UILabel *varNames_showPhoneLabel;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_firstInputView;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_secondInputView;

@property (nonatomic, readwrite, strong) ClassNames_CommitButton *varNames_firstCommitBtn;

@property (nonatomic, readwrite, strong) UILabel *varNames_tipLabel;

@property (nonatomic, readwrite, assign) CGFloat varNames_topMarginValue;



@property (nonatomic, readwrite, strong) ClassNames_BaseModel *varNames_connectPhoneModel;

@end

@implementation ClassNames_BindPhoneView

#pragma mark ---------- public methodNames
+(instancetype)methodNames_createBindPhoneViewFromView:(UIView *)varNames_view {
    
    ClassNames_BindPhoneView *varNames_tmpBindPhoneView = [[ClassNames_BindPhoneView alloc]init];
    varNames_tmpBindPhoneView.translatesAutoresizingMaskIntoConstraints = NO;
    if (varNames_view) {
        [varNames_tmpBindPhoneView methodNames_showFromView:varNames_view];
//        varNames_tmpBindPhoneView.varNames_fview = varNames_view;
//        [varNames_tmpBindPhoneView methodNames_addLeftButton];
    }
    return varNames_tmpBindPhoneView;
}
- (void)methodNames_changeFromView:(UIView *)varNames_view {
    if (varNames_view) {
        self.varNames_fview = varNames_view;
    }
}
#pragma mark --------------------------------------------------------------------------------

-(instancetype)init {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.layer.cornerRadius = 15;
        [self methodNames_initData];
        [self methodNames_createUI];
    }
    return self;;
}

- (void)methodNames_initData {
    if (!methodNames_readUserPhone()) {
        self.varNames_naviTitle = @"绑定手机";
        self.varNames_commitTitle = @"绑定手机";
    } else {
        // 绑定了手机
        self.varNames_naviTitle = @"手机验证";
        self.varNames_commitTitle = @"修改绑定";
    }
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
    
    ClassNames_CommitButton *varNames_tmpCommitBtn = [ClassNames_CommitButton methodNames_createCommitButtonWithTitle:self.varNames_naviTitle withTouchUpInsidBlock:^{
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
    
    if (!methodNames_readUserPhone()) {
        // 没有绑定手机
        self.varNames_firstInputView.hidden = NO;
        self.varNames_showPhoneLabel.hidden = YES;
    } else {
        // 绑定了手机
        self.varNames_firstInputView.hidden = YES;
        self.varNames_showPhoneLabel.hidden = NO;
    }
        
    
}

- (void)methodNames_setNavi {
    
    __weak typeof(self) weakSelf = self;
    ClassNames_NavigationBarView *varNames_tmpNaviView = [[ClassNames_NavigationBarView alloc]init];
    varNames_tmpNaviView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [varNames_tmpNaviView methodNames_setTitle:self.varNames_commitTitle];
    [varNames_tmpNaviView methodNames_setRightButtonImage:@"image_close" rightTitle:@"" btnAction:^{
        
        if (weakSelf.varNames_fview) {
            // 从其他页面进入的，那么关闭的时候直接关闭
            if (weakSelf.methodNames_closeBlock) {
                weakSelf.methodNames_closeBlock();
            }
        } else {
            if (weakSelf.methodNames_nextBlock) {
                weakSelf.methodNames_nextBlock();
            }
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
    varNames_tmpLabel.text = [NSString stringWithFormat:@"账户ID:%@", methodNames_readUserID()];
    self.varNames_accountLabel = varNames_tmpLabel;
    [self addSubview:varNames_tmpLabel];
}

// 绑定的手机号
- (void)methodNames_createShowPhoneLabel {
    UILabel *varNames_tmpLabel = [[UILabel alloc]init];
    varNames_tmpLabel.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpLabel.font = [UIFont systemFontOfSize:12];
    varNames_tmpLabel.textColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_fillColor_config()];
    varNames_tmpLabel.textAlignment = NSTextAlignmentCenter;
    varNames_tmpLabel.text = [NSString stringWithFormat:@"手机已绑定:%@", methodNames_readUserPhoneHide()];
    self.varNames_showPhoneLabel = varNames_tmpLabel;
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
    
    
    
    
    if (!methodNames_readUserBindPhone()) {
        // 没绑定手机
        [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_firstInputView methodNames_constriant:self.varNames_topMarginValue];
        [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_firstInputView methodNames_constriant:methodNames_setMargin_2base()];
        [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_firstInputView methodNames_constriant:methodNames_setMargin_2base()];
        [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_firstInputView methodNames_constriant:methodNames_getInputView_inputView_Height()];
    } else {
        [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_showPhoneLabel methodNames_constriant:self.varNames_topMarginValue];
        [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_showPhoneLabel methodNames_constriant:methodNames_setMargin_2base()];
        [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_showPhoneLabel methodNames_constriant:methodNames_setMargin_2base()];
        [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_showPhoneLabel methodNames_constriant:methodNames_getInputView_inputView_Height()];
    }
   
    
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


- (void)methodNames_showFromView:(UIView *)view {
    [self methodNames_addLeftButton];
    self.varNames_fview = view;
    if ([methodNames_readUserBindPhone() isEqualToString:@"2"]) {
        // 没绑定手机
    } else {
        [self methodNames_createShowPhoneLabel];
    }
    
}

- (void)methodNames_addLeftButton {
    __weak typeof(self) weakSelf = self;
    [self.varNames_naviView methodNames_setLeftButtonImage:@"image_back" lefttitle:@"" btnAction:^{
        if (weakSelf.methodNames_backBlock) {
            weakSelf.hidden = YES;
            weakSelf.varNames_fview.hidden =NO;
            weakSelf.methodNames_backBlock();
        }
    }];
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
    NSDictionary *varNames_tmppara = [ClassNames_BaseParameters methodNames_getBaseParameters];

    
    NSString *varNames_tmpUrl = methodNames_gamePbind();
    if ([methodNames_readUserBindPhone() isEqualToString:@"2"]) {
        // 没有绑定，这时候不能换绑
    } else {
        // 已经绑定过手机了
        varNames_tmpUrl = methodNames_gameVerifyphone();
    }
    
    [varNames_tmppara setValue:varNames_tmpaccount forKey:@"phone"];
    [varNames_tmppara setValue:varNames_tmpcode forKey:@"captcha"];
    [varNames_tmppara setValue:methodNames_readUserID() forKey:@"uid"];
    [varNames_tmppara setValue:methodNames_readUserName() forKey:@"uname"];
    
    __weak typeof(self) weakSelf = self;
    [ClassNames_PGHubView methodNames_showIndicatorWithTitlte:@"正在绑定..."];
    [self.varNames_connectPhoneModel methodNames_fetchDataWithdURL:varNames_tmpUrl parameters:varNames_tmppara];
    self.varNames_connectPhoneModel.methodNames_completeFetchData = ^(ClassNames_BaseModel *object) {
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            if (object.varNames_code == 200) {
                [ClassNames_PGHubView methodNames_showErrorMessage:object.varNames_msg];
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.8 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    if (weakSelf.methodNames_bindPhoneSuccess) {
                        weakSelf.methodNames_bindPhoneSuccess();
                    }
                });
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
