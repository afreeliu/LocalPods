

#import "ClassNames_BindPersonIDView.h"
#import "ClassNames_BaseModel.h"
#import "ClassNames_Title.h"

#import "ClassNames_InputView.h"
#import "ClassNames_CommitButton.h"
#import "ClassNames_Color.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_InitGamesConfigure.h"
#import "ClassNames_RegularMatch.h"
#import "ClassNames_ImageCommitButton.h"
#import "ClassNames_ImageErrorRight.h"

@interface ClassNames_BindPersonIDView ()

@property (nonatomic, readwrite, strong) UILabel *varNames_titleLabel;

@property (nonatomic, readwrite, strong) UIButton *varNames_closeBtn;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_firstInputView;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_secondInputView;

@property (nonatomic, readwrite, strong) ClassNames_CommitButton *varNames_firstCommitBtn;

@property (nonatomic, readwrite, assign) CGFloat varNames_topMarginValue;

@property (nonatomic, readwrite, strong) ClassNames_BaseModel *varNames_bindPersonIDModel;

@end


@implementation ClassNames_BindPersonIDView

#pragma mark ---------- public methodNames
+(instancetype)methodNames_createBindPersonIDView {
    ClassNames_BindPersonIDView *varNames_tmpBindPersonIDView = [[ClassNames_BindPersonIDView alloc]init];
    varNames_tmpBindPersonIDView.translatesAutoresizingMaskIntoConstraints = NO;
    return varNames_tmpBindPersonIDView;
}


#pragma mark ----------------------------------------------------------------------

-(instancetype)init {
    self = [super init];
    if (self) {
        [self methodNames_createUI];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self methodNames_layoutSubViews];
}


- (void)methodNames_createUI {
    
    UILabel *varNames_tmpTitleLabel = [[UILabel alloc]init];
    varNames_tmpTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpTitleLabel.text = methodNames_getTitle_BindPersonIDView_Title();
    varNames_tmpTitleLabel.textColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_titleFontColor_config()];
    varNames_tmpTitleLabel.textAlignment = NSTextAlignmentCenter;
    varNames_tmpTitleLabel.font = [UIFont systemFontOfSize:17];
    self.varNames_titleLabel = varNames_tmpTitleLabel;
    
    UIButton *varNames_closeBtn = [[UIButton alloc]init];
    varNames_closeBtn.translatesAutoresizingMaskIntoConstraints = NO;
    [varNames_closeBtn addTarget:self action:@selector(methodNames_closeAction:) forControlEvents:UIControlEventTouchUpInside];
    methodNames_drawImageError(varNames_closeBtn, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_titleFontColor_config()]);
    self.varNames_closeBtn = varNames_closeBtn;
    
    
    ClassNames_InputView *varNames_tmpFirstInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeBindPersonIDName];
    varNames_tmpFirstInputView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_firstInputView = varNames_tmpFirstInputView;
    
    ClassNames_InputView *varNames_tmpSecondInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeBindPersonIDCard];
    varNames_tmpSecondInputView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_secondInputView = varNames_tmpSecondInputView;
    
    ClassNames_CommitButton *varNames_tmpCommitBtn = [[ClassNames_CommitButton alloc]init];
    varNames_tmpCommitBtn.translatesAutoresizingMaskIntoConstraints = NO;
    methodNames_drawOKCommitImage(varNames_tmpCommitBtn, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_titleFontColor_config()]);
    [varNames_tmpCommitBtn addTarget:self action:@selector(methodNames_commitAction:) forControlEvents:UIControlEventTouchUpInside];
    self.varNames_firstCommitBtn = varNames_tmpCommitBtn;
    
    [self addSubview:self.varNames_titleLabel];
    [self addSubview:self.varNames_closeBtn];
    [self addSubview:self.varNames_firstInputView];
    [self addSubview:self.varNames_secondInputView];
    [self addSubview:self.varNames_firstCommitBtn];
    
    __weak typeof(self) weakSelf = self;
    [self.varNames_firstInputView methodNames_setInputViewKeyboardReutrnType:varNames_keyboardReturnNext];
    [self.varNames_secondInputView methodNames_setInputViewKeyboardReutrnType:varNames_keyboardReturnDefault];
    self.varNames_firstInputView.methodNames_nextInputView = ^{
        [weakSelf.varNames_secondInputView methodNames_becomeFirstResponder];
    };
    
}

- (void)methodNames_layoutSubViews {
    
    self.varNames_topMarginValue = methodNames_setMargin_3base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_titleLabel methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_titleLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_titleLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_titleLabel methodNames_constriant:methodNames_getInputView_inputView_Height()];
    
    /// closeBtn
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_closeBtn methodNames_constriant:self.varNames_topMarginValue - 5];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_closeBtn methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_closeBtn methodNames_constriant:methodNames_getInputView_ItemButton_Width()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_closeBtn methodNames_constriant:methodNames_getInputView_ItemButton_Width()];
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
    self.varNames_topMarginValue += methodNames_setMargin_3base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_firstInputView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_firstInputView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_firstInputView methodNames_constriant:methodNames_getInputView_inputView_Width()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_firstInputView methodNames_constriant:methodNames_getInputView_inputView_Height()];
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
    self.varNames_topMarginValue += methodNames_setMargin_3base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_secondInputView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_secondInputView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_secondInputView methodNames_constriant:methodNames_getInputView_inputView_Width()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_secondInputView methodNames_constriant:methodNames_getInputView_inputView_Height()];
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
    self.varNames_topMarginValue += (methodNames_setMargin_3base() * 2);
    
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
}
- (void)methodNames_setInputViewMaxY:(ClassNames_InputView *)varNames_view {
    UIWindow *varNames_tmpwindow = methodNames_getCurrentWindow();
    CGRect varNames_tmprect = [varNames_view convertRect:varNames_view.bounds toView:varNames_tmpwindow];
    CGFloat varNames_textFieldMaxY = CGRectGetMaxY(varNames_tmprect);
    [varNames_view methodNames_setInputViewMaxY:varNames_textFieldMaxY];
}


#pragma mark ---------- button Action
- (void)methodNames_closeAction:(UIButton *)sender {
    if (self.methodNames_closeBindPersonIDView) {
        self.hidden = YES;
        [self removeFromSuperview];
        self.methodNames_closeBindPersonIDView();
    }
}

- (void)methodNames_commitAction:(UIButton *)sender {
    NSString *varNames_tmpname = self.varNames_firstInputView.varNames_textValue;
    NSString *varNames_tmppersonid = self.varNames_secondInputView.varNames_textValue;
    
    if (!varNames_tmpname || !varNames_tmpname.length) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"请输入真实姓名"];
        return;
    }
    if (!methodNames_chineseNameRegular(varNames_tmpname)) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"姓名格式有误"];
        return;
    }
    if (!varNames_tmppersonid || !varNames_tmppersonid.length) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"请输入身份证号码"];
        return;
    }
    
    if (!methodNames_personIDRegular(varNames_tmppersonid)) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"身份证格式有误"];
        return;
    }
    NSDictionary *varNames_tmppara = @{
                           @"user_name": methodNames_readUserName(),
                           @"real_name": varNames_tmpname,
                           @"idcard": varNames_tmppersonid
                           };
    
    __weak typeof(self) weakSelf = self;
    [ClassNames_PGHubView methodNames_showIndicatorWithTitlte:@"正在绑定..."];
    [self.varNames_bindPersonIDModel methodNames_fetchDataWithdURL:methodNames_bindidcardURL() parameters:varNames_tmppara];
    self.varNames_bindPersonIDModel.methodNames_completeFetchData = ^(ClassNames_BaseModel *object) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            if (object.varNames_code == 200) { 
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.8 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    if (weakSelf.methodNames_bindPersonIDSuccess) {
                        weakSelf.methodNames_bindPersonIDSuccess();
                    }
                });
            } else {
                if (object.varNames_msg) {
                    [ClassNames_PGHubView methodNames_showErrorMessage:object.varNames_msg];
                }
            }
        });
        
    };
    self.varNames_bindPersonIDModel.methodNames_FetchError = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            [ClassNames_PGHubView methodNames_showErrorMessage:@"网络出了小差!!!"];
        });
    };
}





-(ClassNames_BaseModel *)varNames_bindPersonIDModel {
    if (!_varNames_bindPersonIDModel) {
        _varNames_bindPersonIDModel = [[ClassNames_BaseModel alloc]init];
    }
    return _varNames_bindPersonIDModel;
}


@end
