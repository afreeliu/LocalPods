

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
#import "ClassNames_NavigationBarView.h"
#import "ClassNames_BaseParameters.h"
@interface ClassNames_BindPersonIDView ()

@property (nonatomic, readwrite, weak) UIView *varNames_backView;

@property (nonatomic, readwrite, strong) ClassNames_NavigationBarView *varNames_naviView;

@property (nonatomic, readwrite, strong) UILabel *varNames_tipLabel;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_firstInputView;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_secondInputView;

@property (nonatomic, readwrite, strong) ClassNames_CommitButton *varNames_firstCommitBtn;

@property (nonatomic, readwrite, assign) CGFloat varNames_topMarginValue;

@property (nonatomic, readwrite, strong) ClassNames_BaseModel *varNames_bindPersonIDModel;

@end


@implementation ClassNames_BindPersonIDView

#pragma mark ---------- public methodNames
+(instancetype)methodNames_createBindPersonIDViewFromView:(UIView *)varNames_view {
    ClassNames_BindPersonIDView *varNames_tmpBindPersonIDView = [[ClassNames_BindPersonIDView alloc]init];
    varNames_tmpBindPersonIDView.translatesAutoresizingMaskIntoConstraints = NO;
    [varNames_tmpBindPersonIDView methodNames_addBackView:varNames_view];
    return varNames_tmpBindPersonIDView;
}

- (void)methodNames_changeFromView:(UIView *)varNames_view {
    [self methodNames_addBackView:varNames_view];
}

#pragma mark ----------------------------------------------------------------------

-(instancetype)init {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
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
    

    [self methodNames_setNavi];
    
    [self methodNames_createTipLabel];
    
    ClassNames_InputView *varNames_tmpFirstInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeBindPersonIDName];
    varNames_tmpFirstInputView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_firstInputView = varNames_tmpFirstInputView;
    
    ClassNames_InputView *varNames_tmpSecondInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeBindPersonIDCard];
    varNames_tmpSecondInputView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_secondInputView = varNames_tmpSecondInputView;
    
    __weak typeof(self) weakSelf = self;
    ClassNames_CommitButton *varNames_tmpCommitBtn = [ClassNames_CommitButton methodNames_createCommitButtonWithTitle:@"实名认证" withTouchUpInsidBlock:^{
        [weakSelf methodNames_commitAction:nil];
    }];
    
    self.varNames_firstCommitBtn = varNames_tmpCommitBtn;
    
    [self addSubview:self.varNames_firstInputView];
    [self addSubview:self.varNames_secondInputView];
    [self addSubview:self.varNames_firstCommitBtn];
    
    
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
    [varNames_tmpNaviView methodNames_setTitle:@"实名验证"];
    
    self.varNames_naviView = varNames_tmpNaviView;
    [self addSubview:varNames_tmpNaviView];
    
    if (DEBUG) {
        __weak typeof(self) weakSelf = self;
        [self.varNames_naviView methodNames_setRightButtonImage:@"image_close" rightTitle:@"" btnAction:^{
            if (weakSelf.methodNames_closeBlock) {
                weakSelf.methodNames_closeBlock();
            }
        }];
    }
    
}

- (void)methodNames_createTipLabel {
    UILabel *varNames_tipLabel = [[UILabel alloc]init];
    varNames_tipLabel.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tipLabel.numberOfLines = 3;
    varNames_tipLabel.textColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_fillColor_config()];
    varNames_tipLabel.textAlignment = NSTextAlignmentLeft;
    NSString *varNames_tip = @"温馨提示：\n根据国家规定，游戏用户需要进行实名验证。\n信息仅用于验证且绝对保密。";
    NSMutableParagraphStyle *varNames_paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    varNames_paragraphStyle.lineSpacing= 2;
    varNames_paragraphStyle.paragraphSpacing = methodNames_setMargin_base();
    varNames_paragraphStyle.alignment = NSTextAlignmentLeft;
    NSDictionary *varNames_attDic = @{NSFontAttributeName:[UIFont systemFontOfSize:13],
                                NSParagraphStyleAttributeName:varNames_paragraphStyle,
                                      NSForegroundColorAttributeName:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_fillColor_config()]
    };
    NSMutableAttributedString *varNames_attString = [[NSMutableAttributedString alloc] initWithString:varNames_tip attributes:varNames_attDic];
    varNames_tipLabel.attributedText = varNames_attString;
    self.varNames_tipLabel = varNames_tipLabel;
    
    [self addSubview:varNames_tipLabel];
    
}


- (void)methodNames_layoutSubViews {
    
    self.varNames_topMarginValue = 0;
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_naviView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_naviView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_naviView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_naviView methodNames_constriant:methodNames_setNavigationBarHeight()];
    
    self.varNames_topMarginValue += methodNames_setNavigationBarHeight();
    self.varNames_topMarginValue += methodNames_setMargin_2base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_tipLabel methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_tipLabel methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_tipLabel methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_tipLabel methodNames_constriant:methodNames_setMargin_3base() * 5];
    
    self.varNames_topMarginValue += methodNames_setMargin_3base() * 5;
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

- (void)methodNames_addBackView:(UIView *)varNames_view {
    if (varNames_view) {
        self.varNames_backView = varNames_view;
        __weak typeof(self) weakSelf = self;
        [self.varNames_naviView methodNames_setRightButtonImage:@"image_close" rightTitle:@"" btnAction:^{
            if (weakSelf.methodNames_closeBlock) {
                weakSelf.methodNames_closeBlock();
            }
        }];
        [self.varNames_naviView methodNames_setLeftButtonImage:@"image_back" lefttitle:@"" btnAction:^{
            if (weakSelf.methodNames_backBlock) {
                weakSelf.hidden = YES;
                weakSelf.methodNames_backBlock(weakSelf.varNames_backView);
            }
        }];
    }
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
//    if (!methodNames_chineseNameRegular(varNames_tmpname)) {
//        [ClassNames_PGHubView methodNames_showErrorMessage:@"姓名格式有误"];
//        return;
//    }
    if (!varNames_tmppersonid || !varNames_tmppersonid.length) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"请输入身份证号码"];
        return;
    }
    
//    if (!methodNames_personIDRegular(varNames_tmppersonid)) {
//        [ClassNames_PGHubView methodNames_showErrorMessage:@"身份证格式有误"];
//        return;
//    }
    NSDictionary *varNames_tmppara = [ClassNames_BaseParameters methodNames_getBaseParameters];
//    NSDictionary *varNames_tmppara = @{
//                           @"user_name": methodNames_readUserName(),
//                           @"real_name": varNames_tmpname,
//                           @"idcard": varNames_tmppersonid
//                           };
    [varNames_tmppara setValue:methodNames_readUserID() forKey:@"uid"];
    [varNames_tmppara setValue:methodNames_readUserName() forKey:@"uname"];
    [varNames_tmppara setValue:varNames_tmpname forKey:@"cn_name"];
    [varNames_tmppara setValue:varNames_tmppersonid forKey:@"id_card"];
    __weak typeof(self) weakSelf = self;
    [ClassNames_PGHubView methodNames_showIndicatorWithTitlte:@"正在绑定..."];
    [self.varNames_bindPersonIDModel methodNames_fetchDataWithdURL:methodNames_gameCbind() parameters:varNames_tmppara];
    self.varNames_bindPersonIDModel.methodNames_completeFetchData = ^(ClassNames_BaseModel *object) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            if (object.varNames_code == 200) {
                [ClassNames_PGHubView methodNames_showSuccessMessage:object.varNames_msg];
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
