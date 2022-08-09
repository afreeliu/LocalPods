

#import "ClassNames_FindBackPasswordView.h"
#import "ClassNames_BaseModel.h"

#import "ClassNames_CommitButton.h"
#import "ClassNames_InputView.h"
#import "ClassNames_Color.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_RegularMatch.h"
#import "ClassNames_Title.h"
#import "ClassNames_ImageCommitButton.h"
#import "ClassNames_ImageBackButton.h"
@interface ClassNames_FindBackPasswordView ()

@property (nonatomic, readwrite, strong) UILabel *varNames_titleLabel;

@property (nonatomic, readwrite, strong) UIButton *varNames_backButton;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_firstInputView;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_secondInputView;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_thirdInputView;

@property (nonatomic, readwrite, strong) ClassNames_CommitButton *varNames_firstCommitBtn;

@property (nonatomic, readwrite, assign) CGFloat varNames_topMarginValue;

@property (nonatomic, readwrite, strong) ClassNames_BaseModel *varNames_findBackPasswordModel;
@end


@implementation ClassNames_FindBackPasswordView

#pragma mark ---------- public methodNames
+(instancetype)methodNames_createFindBackPasswordView {
    ClassNames_FindBackPasswordView *varNames_tmpFindBackPasswordView = [[ClassNames_FindBackPasswordView alloc]init];
    varNames_tmpFindBackPasswordView.translatesAutoresizingMaskIntoConstraints = NO;
    return varNames_tmpFindBackPasswordView;
}

-(void)methodNames_resetContent {
    
    [self.varNames_firstInputView methodNames_fillContent:@"" methodNames_canEditing:YES];
    [self.varNames_secondInputView methodNames_fillContent:@"" methodNames_canEditing:YES];
    [self.varNames_thirdInputView methodNames_fillContent:@"" methodNames_canEditing:YES];
    
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
    
    UILabel *varNames_tmpTitleLabel = [[UILabel alloc]init];
    varNames_tmpTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpTitleLabel.text = methodNames_getTitle_FindBackPasswordView_Title();
    varNames_tmpTitleLabel.textColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_titleFontColor_config()];
    varNames_tmpTitleLabel.textAlignment = NSTextAlignmentCenter;
    varNames_tmpTitleLabel.font = [UIFont systemFontOfSize:17];
    _varNames_titleLabel = varNames_tmpTitleLabel;
    
    UIButton *varNames_backButton = [[UIButton alloc]init];
    varNames_backButton.translatesAutoresizingMaskIntoConstraints = NO;
    methodNames_drawBackButtonImage(varNames_backButton, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_titleFontColor_config()]);
    [varNames_backButton addTarget:self action:@selector(methodNames_backAction:) forControlEvents:UIControlEventTouchUpInside];
    _varNames_backButton = varNames_backButton;
    
    ClassNames_InputView *varNames_tmpFirstInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeFindBackPasswordPhone];
    varNames_tmpFirstInputView.translatesAutoresizingMaskIntoConstraints = NO;
    _varNames_firstInputView = varNames_tmpFirstInputView;
    
    ClassNames_InputView *varNames_tmpSecondInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeFindBackPasswordCode];
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
                                   @"type": @(1)
                                   };
            return varNames_tmppara;
        }
        return nil;
    };
    _varNames_secondInputView = varNames_tmpSecondInputView;
    
    ClassNames_InputView *varNames_tmpThirdInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeFindBackPasswordPassword];
    varNames_tmpThirdInputView.translatesAutoresizingMaskIntoConstraints = NO;
    _varNames_thirdInputView = varNames_tmpThirdInputView;
    
    ClassNames_CommitButton *varNames_tmpCommitBtn = [[ClassNames_CommitButton alloc]init];
    varNames_tmpCommitBtn.translatesAutoresizingMaskIntoConstraints = NO;
    methodNames_drawOKCommitImage(varNames_tmpCommitBtn, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_titleFontColor_config()]);
    [varNames_tmpCommitBtn addTarget:self action:@selector(methodNames_commitAction:) forControlEvents:UIControlEventTouchUpInside];
    _varNames_firstCommitBtn = varNames_tmpCommitBtn;
    
    [self addSubview:_varNames_titleLabel];
    [self addSubview:_varNames_backButton];
    [self addSubview:_varNames_firstInputView];
    [self addSubview:_varNames_secondInputView];
    [self addSubview:_varNames_thirdInputView];
    [self addSubview:_varNames_firstCommitBtn];
    
    [_varNames_firstInputView methodNames_setInputViewKeyboardReutrnType:varNames_keyboardReturnNext];
    [_varNames_secondInputView methodNames_setInputViewKeyboardReutrnType:varNames_keyboardReturnNext];
    [_varNames_thirdInputView methodNames_setInputViewKeyboardReutrnType:varNames_keyboardReturnDefault];
    _varNames_firstInputView.methodNames_nextInputView = ^{
        [weakSelf.varNames_secondInputView methodNames_becomeFirstResponder];
    };
    _varNames_secondInputView.methodNames_nextInputView = ^{
        [weakSelf.varNames_thirdInputView methodNames_becomeFirstResponder];
    };
    
}

- (void)methodNames_layoutSubViews {
    
    self.varNames_topMarginValue = methodNames_setMargin_2base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:_varNames_titleLabel methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:_varNames_titleLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:_varNames_titleLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:_varNames_titleLabel methodNames_constriant:methodNames_getInputView_inputView_Height() + 10];
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:_varNames_backButton methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:_varNames_backButton methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:_varNames_backButton methodNames_constriant:methodNames_getInputView_Image_Width()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:_varNames_backButton methodNames_constriant:methodNames_getInputView_Image_Width()];
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height() + 10;
    self.varNames_topMarginValue += methodNames_setMargin_base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_firstInputView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_firstInputView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_firstInputView methodNames_constriant:methodNames_getInputView_inputView_Width()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_firstInputView methodNames_constriant:methodNames_getInputView_inputView_Height()];
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
    self.varNames_topMarginValue += methodNames_setMargin_2base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_secondInputView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_secondInputView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_secondInputView methodNames_constriant:methodNames_getInputView_inputView_Width()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_secondInputView methodNames_constriant:methodNames_getInputView_inputView_Height()];
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
    self.varNames_topMarginValue += methodNames_setMargin_2base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_thirdInputView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_thirdInputView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_thirdInputView methodNames_constriant:methodNames_getInputView_inputView_Width()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_thirdInputView methodNames_constriant:methodNames_getInputView_inputView_Height()];
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
    self.varNames_topMarginValue += methodNames_setMargin_2base() * 2;
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_firstCommitBtn methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_firstCommitBtn methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_firstCommitBtn methodNames_constriant:methodNames_setCommitButtonWidth()];
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
    if (CGRectGetHeight(self.varNames_thirdInputView.bounds)) {
        [self methodNames_setInputViewMaxY:self.varNames_thirdInputView];
    }
}
- (void)methodNames_setInputViewMaxY:(ClassNames_InputView *)varNames_view {
    UIWindow *varNames_tmpwindow = methodNames_getCurrentWindow();
    CGRect varNames_tmprect = [varNames_view convertRect:varNames_view.bounds toView:varNames_tmpwindow];
    CGFloat varNames_textFieldMaxY = CGRectGetMaxY(varNames_tmprect);
    [varNames_view methodNames_setInputViewMaxY:varNames_textFieldMaxY];
}
#pragma mark ---------- back Action
-(void)methodNames_backAction:(UIButton *)sender {
    if (self.methodNames_backAction) {
        [self methodNames_resetContent];
        self.hidden = YES;
        self.methodNames_backAction();
        [self removeFromSuperview];
    }
}

#pragma mark ---------- button Action
- (void)methodNames_commitAction:(UIButton *)sener {
    NSString *varNames_tmpaccount = self.varNames_firstInputView.varNames_textValue;
    NSString *varNames_tmpcode = self.varNames_secondInputView.varNames_textValue;
    NSString *varNames_tmppassword = self.varNames_thirdInputView.varNames_textValue;
    if (!varNames_tmpaccount || !varNames_tmpaccount.length) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"请输入手机号"];
        return;
    }
    if (!varNames_tmpcode || !varNames_tmpcode.length) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"请输入验证码"];
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
    NSDictionary *varNames_tmppara = @{
                           @"phone": varNames_tmpaccount,
                           @"password": varNames_tmppassword,
                           @"code": varNames_tmpcode
                           };
    __weak typeof(self) weakSelf = self;
    [ClassNames_PGHubView methodNames_showIndicatorWithTitlte:@"正在找回..."];
    [self.varNames_findBackPasswordModel methodNames_fetchDataWithdURL:methodNames_backuserpswURL() parameters:varNames_tmppara];
    self.varNames_findBackPasswordModel.methodNames_completeFetchData = ^(ClassNames_BaseModel *object) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            if (object.varNames_code == 200) {
                [weakSelf methodNames_resetInputViewContent];
                if (weakSelf.methodNames_findBackPasswordSuccess) {
                    weakSelf.methodNames_findBackPasswordSuccess();
                }
            } else {
                [ClassNames_PGHubView methodNames_showErrorMessage:@"修改失败"];
            }
        });
    };
    self.varNames_findBackPasswordModel.methodNames_FetchError = ^(NSError *error) {
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
}




-(ClassNames_BaseModel *)varNames_findBackPasswordModel {
    if (!_varNames_findBackPasswordModel) {
        _varNames_findBackPasswordModel = [[ClassNames_BaseModel alloc]init];
    }
    return _varNames_findBackPasswordModel;
}

@end
