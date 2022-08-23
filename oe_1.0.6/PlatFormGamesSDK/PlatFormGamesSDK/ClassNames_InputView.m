

#import "ClassNames_InputView.h"
#import "ClassNames_itemButton.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_DefaultThemeConfigure.h"

#import "ClassNames_Color.h"
#import "ClassNames_Title.h"
#import "ClassNames_ImageUser.h"
#import "ClassNames_ImageUpDown.h"
#import "ClassNames_ImageEyes.h"
#import "ClassNames_ImagePassword.h"
#import "ClassNames_ImagePhoneMessage.h"
#import "ClassNames_ImageCode.h"
#import "ClassNames_ImagePersonID.h"
#import "ClassNames_ImageResetPassword.h"
#import "ClassNames_AccountTableViewCell.h"

#import "ClassNames_RegularMatch.h"
#import "ClassNames_SecurityTool.h"
#import "ClassNames_DebugLog.h"
#import "ClassNames_NotificationConfigure.h"
#import "ClassNames_PGHubView.h"

#import "ClassNames_BaseModel.h"

/// 在键盘一直出现的时候使用
static CGFloat varNameS_CONTINUEVALUE = 0;
/// 键盘的Y轴位置
static CGFloat varNameS_KEYBOARDMINY = 0;

@interface ClassNames_InputView ()<UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, readwrite, strong) NSLayoutConstraint *varNames_iconWidthConstraint;

@property (nonatomic, readwrite, strong) NSLayoutConstraint *varNames_iconHeightConstraint;

@property (nonatomic, readwrite, strong) NSLayoutConstraint *varNames_textFieldLeft;

@property (nonatomic, readwrite, strong) NSLayoutConstraint *varNames_textFieldRight;

/// 哪个页面的输入框
@property (nonatomic, readwrite, assign) varNames_InputViewType varNames_inputViewType;
/// 输入框的背景样式
@property (nonatomic, readwrite, assign) varNames_InputViewBorderType varNames_inputViewBorderType;
/// 0 为文字， 其他为图标
@property (nonatomic, readwrite, assign) NSInteger varNames_inputViewTitleType;

@property (nonatomic, readwrite, assign) varNames_KeyboardReturnType varNames_returnType;

@property (nonatomic, readwrite, strong) UILabel *varNames_titleLabel;

@property (nonatomic, readwrite, strong) UIView *varNames_inputViewTypeImageContainView;
@property (nonatomic, readwrite, strong) UIImageView *varNames_inputViewTypeImage;

@property (nonatomic, readwrite, strong) UITextField *varNames_textField;

@property (nonatomic, readwrite, strong) UIView *varNames_lineView;/// 输入框下方的横线

@property (nonatomic, readwrite, strong) UIView *varNames_itemButtonContainView;
@property (nonatomic, readwrite, strong) ClassNames_itemButton *varNames_itemButton;

@property (nonatomic, readwrite, strong) NSLayoutConstraint *varNames_itemWidthConstraint;

@property (nonatomic, readwrite, strong) NSLayoutConstraint *varNames_itemHeightConstraint;

@property (nonatomic, readwrite, assign) NSInteger varNames_getCodeTitle;

@property (nonatomic, readwrite, strong) UIColor *varNames_lColor;
@property (nonatomic, readwrite, strong) UIColor *varNames_bColor;

@property (nonatomic, readwrite, assign) CGFloat varNames_textFieldMargin;



/// textfield 的值
@property (nonatomic, readwrite, copy) NSString *varNames_textValue;

@property (nonatomic, readwrite, assign) BOOL varNames_isSecurity;

@property (nonatomic, readwrite, strong) UITableView *varNames_accountTableView;

@property (nonatomic, readwrite, strong) NSArray *varNames_accountArray;

/// 获取验证码框中会使用到
@property (nonatomic, readwrite, strong) CAShapeLayer *varNames_codeLayer;

/// 密码输入框中会使用到
@property (nonatomic, readwrite, strong) CAShapeLayer *varNames_openEyesLayer;
@property (nonatomic, readwrite, strong) CAShapeLayer *varNames_closeEyesLayer;

@property (nonatomic, readwrite, strong) ClassNames_BaseModel *varNames_checkPhoneValidBasModel;
@property (nonatomic, readwrite, strong) ClassNames_BaseModel *varNames_getCodeModel;


@property (nonatomic, readwrite, assign) CGFloat varNames_keyBoardHeight;

@end


@implementation ClassNames_InputView
{
    CGFloat _varNames_textFieldMaxY;
    CGFloat _varNames_keyBoardMinY;
    CGFloat _varNames_upMoveValue;
    /// 移动的距离
    BOOL _varNames_isUpWindow;
}


#pragma mark ---------- public methodNames
+ (instancetype)methodNames_inputViewType:(varNames_InputViewType)varNames_type {
    ClassNames_InputView *varNames_inputView = [[ClassNames_InputView alloc]init];
    [varNames_inputView methodNames_setInputViewType:varNames_type];
    [varNames_inputView methodNames_setInputViewBorderType:varNames_inputViewBorderBottomLine];
    return varNames_inputView;
}

- (void)methodNames_fillContent:(NSString *)varNames_content methodNames_canEditing:(BOOL)varNames_canEditing {
    
    self.varNames_textField.text = varNames_content;
    self.varNames_textField.enabled = varNames_canEditing;
    self.varNames_textValue = varNames_content;
}

- (void)methodNames_becomeFirstResponder {
    [self.varNames_textField becomeFirstResponder];
}
- (void)methodNames_resignFirstResponder {
    [self.varNames_textField resignFirstResponder];
}




#pragma mark ----------------------------------------------------------------------------------------------------

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
    if (object == self && [keyPath isEqualToString:@"varNames_keyBoardHeight"]) {
        if (self.varNames_textField.isEditing) {
            [self methodNames_upKeyBoard];
        }
        
    }
    
}

-(void)dealloc {
    [self removeObserver:self forKeyPath:@"varNames_keyBoardHeight"];
    
}
-(instancetype)init {
    self = [super init];
    if (self) {
        
        self.varNames_getCodeTitle = methodNames_setGetCodeBtnMaxTitle();
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *varNames_tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(methodNames_beginEditing:)];
        [self addGestureRecognizer:varNames_tap];
        
        self.varNames_lColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_inputViewLineColor_config()];
        self.varNames_bColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_inputViewBackgroundColor_config()];
        self.varNames_inputViewBorderType = methodNames_getDefault_inputViewBorderType_config();
        self.varNames_inputViewTitleType = methodNames_getDefault_inputViewType_config();
        
        [self methodNames_setUI:self.varNames_inputViewTitleType];
        
        
        [self addObserver:self forKeyPath:@"varNames_keyBoardHeight" options:(NSKeyValueObservingOptionNew |NSKeyValueObservingOptionOld) context:nil];
        
        //监听当键盘将要出现时
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(methodNames_keyboardWillShow:)
                                                     name:UIKeyboardWillShowNotification
                                                   object:nil];
        
    }
    return self;
}


- (void)methodNames_setUI:(varNames_InputViewType)varNames_inputViewType {
    
    self.backgroundColor = [UIColor redColor];
    
    UILabel *varNames_tmpLabel = [[UILabel alloc]init];
    varNames_tmpLabel.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpLabel.adjustsFontSizeToFitWidth = YES;
    varNames_tmpLabel.textAlignment = NSTextAlignmentCenter;
    varNames_tmpLabel.font = [UIFont systemFontOfSize:methodNames_getInputView_Font()];
    varNames_tmpLabel.textColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_inputViewTitleColor_config()];
    self.varNames_titleLabel = varNames_tmpLabel;
    
    UIView *varNames_containView = [[UIView alloc]init];
    varNames_containView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_inputViewTypeImageContainView = varNames_containView;
    
    UIImageView *varNames_tmpView = [[UIImageView alloc]init];
    varNames_tmpView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_inputViewTypeImage = varNames_tmpView;
    
    UITextField *varNames_tmpTextField = [[UITextField alloc]init];
    varNames_tmpTextField.font = [UIFont boldSystemFontOfSize:methodNames_getInputView_Font()];
    varNames_tmpTextField.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpTextField.delegate = self;
    varNames_tmpTextField.adjustsFontSizeToFitWidth = YES;
    varNames_tmpTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    [varNames_tmpTextField addTarget:self action:@selector(methodNames_textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    varNames_tmpTextField.textColor = [UIColor blackColor];
    varNames_tmpTextField.tintColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()];
    self.varNames_textField = varNames_tmpTextField;
    
    
    UIView *varNames_itmContainView = [[UIView alloc]init];
    varNames_itmContainView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_itemButtonContainView = varNames_itmContainView;
    
    ClassNames_itemButton *varNames_tmpButton = [ClassNames_itemButton methodNames_setItemButton:varNames_ItemButtonTypeUp];
    varNames_tmpButton.translatesAutoresizingMaskIntoConstraints = NO;
    [varNames_tmpButton addTarget:self action:@selector(methodNames_inputViewItemButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    self.varNames_itemButton = varNames_tmpButton;
    
    UIView *varNames_tmpLineView = [[UIView alloc]init];
    varNames_tmpLineView.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpLineView.backgroundColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_inputViewLineColor_config()];
    self.varNames_lineView = varNames_tmpLineView;
    
    self.backgroundColor = self.varNames_bColor;
    
    [self addSubview:self.varNames_titleLabel];
    [self addSubview:self.varNames_inputViewTypeImageContainView];
    [self.varNames_inputViewTypeImageContainView addSubview:self.varNames_inputViewTypeImage];
    [self addSubview:self.varNames_textField];
    [self addSubview:self.varNames_itemButtonContainView];
    [self.varNames_itemButtonContainView addSubview:self.varNames_itemButton];
    [self addSubview:self.varNames_lineView];
    
    switch (varNames_inputViewType) {
        case 0:
        {
            self.varNames_titleLabel.hidden = NO;
            self.varNames_inputViewTypeImage.hidden = YES;
            self.varNames_textFieldMargin = methodNames_getInputView_TitleLabel_Width() + methodNames_setMargin_2base();
        }
            break;
            
        default:
        {
            self.varNames_titleLabel.hidden = YES;
            self.varNames_inputViewTypeImage.hidden = NO;
            self.varNames_textFieldMargin = methodNames_getInputView_ItemButton_Width() + methodNames_setMargin_2base();
        }
            break;
    }
    [self methodNames_setViewLayout:varNames_inputViewType];
}

#pragma mark ---------- 布局
- (void)methodNames_setViewLayout:(NSInteger)varNames_titleViewType {
    
    /// 左边文字
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_titleLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_titleLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_titleLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_titleLabel methodNames_constriant:methodNames_getInputView_TitleLabel_Width()];
    
    /// 左边图标icon
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_inputViewTypeImageContainView methodNames_constriant:methodNames_setMargin_2base()];
    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_inputViewTypeImageContainView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_inputViewTypeImageContainView methodNames_constriant:30];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_inputViewTypeImageContainView methodNames_constriant:30];
    
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_inputViewTypeImage methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_inputViewTypeImage methodNames_constriant:0];
    self.varNames_iconWidthConstraint = [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_inputViewTypeImage methodNames_constriant:30];
    self.varNames_iconHeightConstraint = [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_inputViewTypeImage methodNames_constriant:30];
    
    
    /// 输入框
    self.varNames_textFieldLeft = [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_textField methodNames_constriant:self.varNames_textFieldMargin];
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_textField methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_textField methodNames_constriant:0];
    self.varNames_textFieldRight =  [ClassNames_BaseViewLayout
                                     methodNames_layoutRight:self.varNames_textField methodNames_constriant:methodNames_setMargin_base()];
    
    /// 右边item
    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_itemButtonContainView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_itemButtonContainView methodNames_constriant:methodNames_setMargin_2base()];
    self.varNames_itemWidthConstraint =  [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_itemButtonContainView methodNames_constriant:25];
    self.varNames_itemHeightConstraint = [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_itemButtonContainView methodNames_constriant:25];
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_itemButton methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_itemButton methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_itemButton methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_itemButton methodNames_constriant:0];
//    self.varNames_itemWidthConstraint = [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_itemButton methodNames_constriant:80];
//    self.varNames_itemHeightConstraint = [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_itemButton methodNames_constriant:32];

    // 输入框下划线
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_lineView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_lineView methodNames_constriant:2];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_lineView methodNames_constriant:methodNames_setMargin_2base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_lineView methodNames_constriant:methodNames_setMargin_2base()];
    
    [self setNeedsLayout];
}


#pragma mark ---------- 绘制inputView的边框类型
- (void)methodNames_setInputViewBorderType:(varNames_InputViewBorderType)varNames_borderType {
    self.varNames_lineView.hidden = YES;
    switch (varNames_borderType) {
        case varNames_inputViewBorderNone:
        {
            
        }
            break;
        case varNames_inputViewBorderBottomLine:
        {
            self.varNames_lineView.hidden = NO;
        }
            break;
        case varNames_inputViewBorderAroundLine:
        {
            
        }
            break;
        case varNames_inputViewBorderImage1:
        {
            
        }
            break;
        case varNames_inputViewBorderImage2:
        {
            
        }
            break;
        case varNames_inputViewBorderImage3:
        {
            
        }
            break;
        default:

            break;
    }
}


#pragma mark ---------- 配置inputView的类型
- (void)methodNames_setInputViewType:(varNames_InputViewType)varNames_inputViewType {
    self.varNames_inputViewType = varNames_inputViewType;
    switch (varNames_inputViewType) {
        case varNames_inputViewTypeLoginAccount:
        {
            [self methodNames_setInputViewTypeLoginAccount];
        }
            break;
        case varNames_inputViewTypeLoginPassword:
        {
            [self methodNames_setInputViewTypeLoginPassword];
        }
            break;
        case varNames_inputViewTypeFindBackPasswordPhone:
        {
            [self methodNames_setInputViewTypeFindBackPasswordPhone];
        }
            break;
        case varNames_inputViewTypeFindBackPasswordCode:
        {
            [self methodNames_setInputViewTypeFindBackPasswordCode];
        }
            break;
        case varNames_inputViewTypeFindBackPasswordPassword:
        {
            [self methodNames_setInputViewTypeFindBackPasswordPassword];
        }
            break;
        case varNames_inputViewTypeResetPasswordAccount:
        {
            [self methodNames_setInputViewTypeResetPasswordAccount];
        }
            break;
        case varNames_inputViewTypeResetPasswordPassword:
        {
            [self methodNames_setInputViewTypeResetPasswordPassword];
        }
            break;
        case varNames_inputViewTypeResetPasswordNewPassword:
        {
            [self methodNames_setInputViewTypeResetPasswordNewPassword];
        }
            break;
        case varNames_inputViewTypeResetPasswordRenewPassword:
        {
            [self methodNames_setInputViewTypeResetPasswordRenewPassword];
        }
            break;
        case varNames_inputViewTypePhoneRegisterPhone:
        {
            [self methodNames_setInputViewTypePhoneRegisterPhone];
        }
            break;
        case varNames_inputViewTypePhoneRegisterCode:
        {
            [self methodNames_setInputViewTypePhoneRegisterCode];
        }
            break;
        case varNames_inputViewTypePhoneRegisterPassword:
        {
            [self methodNames_setInputViewTypePhoneRegisterPassword];
        }
            break;
        case varNames_inputViewTypeNormalRegisterAccount:
        {
            [self methodNames_setInputViewTypeNormalRegisterAccount];
        }
            break;
        case varNames_inputViewTypeNormalRegisterPassword:
        {
            [self methodNames_setInputViewTypeNormalRegisterPassword];
        }
            break;
        case varNames_inputViewTypeQuickLoginAccount:
        {
            [self methodNames_setInputViewTypeQuickLoginAccount];
        }
            break;
        case varNames_inputViewTypeQuickLoginPassword:
        {
            [self methodNames_setInputViewTypeQuickLoginPassword];
        }
            break;
        case varNames_inputViewTypeAutoLoginAccount:
        {
            [self methodNames_setInputViewTypeAutoLoginAccount];
        }
            break;
        case varNames_inputViewTypeAutoLoginPassword:
        {
            [self methodNames_setInputViewTypeAutoLoginPassword];
        }
            break;
        case varNames_inputViewTypeBindPhonePhone:
        {
            [self methodNames_setInputViewTypeBindPhonePhone];
        }
            break;
        case varNames_inputViewTypeBindPhoneCode:
        {
            [self methodNames_setInputViewTypeBindPhoneCode];
        }
            break;
        case varNames_inputViewTypeBindPersonIDName:
        {
            [self methodNames_setInputViewTypeBindPersonIDName];
        }
            break;
        case varNames_inputViewTypeBindPersonIDCard:
        {
            [self methodNames_setInputViewTypeBindPersonIDCard];
        }
            break;
        default:
            break;
    }
    [self setNeedsLayout];
}
#pragma mark --------------------------------------------------

#pragma mark ---------- 登陆页面的账号输入框
- (void)methodNames_setInputViewTypeLoginAccount {
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_LoginView_inputView_title1();
    } else {
        UIImage *varNames_img = methodNames_getImage(@"image_account");
        CGSize varNames_iconSize = methodNames_getImageSize(varNames_img);
        self.varNames_iconWidthConstraint.constant = varNames_iconSize.width/2.0;
        self.varNames_iconHeightConstraint.constant = varNames_iconSize.height/2.0;
        self.varNames_inputViewTypeImage.image = varNames_img;
    }
    
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_LoginView_inputView_placeholder1() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.returnKeyType = UIReturnKeyNext;
    self.varNames_returnType = varNames_keyboardReturnNext;
    
    NSArray *varNames_tmpAccountArray = methodNames_getAllAccount();
    UIImage *varNames_itImg = methodNames_getImage(@"image_drop_down");
    CGSize varNames_itSize = methodNames_getImageSize(varNames_itImg);
    self.varNames_itemWidthConstraint.constant = varNames_itSize.width/2.0;
    self.varNames_itemHeightConstraint.constant = varNames_itSize.height/2.0;
    [self.varNames_itemButton setImage:varNames_itImg forState:UIControlStateNormal];
    if (varNames_tmpAccountArray.count) {
        self.varNames_itemButtonContainView.hidden = NO;
//        self.varNames_itemButton.hidden = NO;
        self.varNames_textFieldRight.constant = methodNames_setMargin_2base() + varNames_itSize.width/2.0;
    } else {
//        self.varNames_itemButton.hidden = YES;
        self.varNames_itemButtonContainView.hidden = YES;
        self.varNames_textFieldRight.constant = methodNames_setMargin_base();
    }
}
#pragma mark ---------- 登陆页面的密码输入框
- (void)methodNames_setInputViewTypeLoginPassword {
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_LoginView_inputView_title2();
    } else {
        UIImage *varNames_img = methodNames_getImage(@"image_password");
        CGSize varNames_iconSize = methodNames_getImageSize(varNames_img);
        self.varNames_iconWidthConstraint.constant = varNames_iconSize.width/2.0;
        self.varNames_iconHeightConstraint.constant = varNames_iconSize.height/2.0;
        self.varNames_inputViewTypeImage.image = varNames_img;
    }
    
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_LoginView_inputView_placeholder2() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.secureTextEntry = YES;
    self.varNames_isSecurity = YES;
    self.varNames_textField.returnKeyType = UIReturnKeyDefault;
    self.varNames_returnType = varNames_keyboardReturnDefault;
    self.varNames_textFieldRight.constant = methodNames_setMargin_base();
    
    UIImage *varNames_itImg = methodNames_getImage(@"image_eye");
    UIImage *varNames_itImg_sel = methodNames_getImage(@"image_no_eye");
    CGSize varNames_itSize = methodNames_getImageSize(varNames_itImg);
    self.varNames_itemWidthConstraint.constant = varNames_itSize.width/2.0;
    self.varNames_itemHeightConstraint.constant = varNames_itSize.height/2.0;
    [self.varNames_itemButton setImage:varNames_itImg forState:UIControlStateNormal];
    [self.varNames_itemButton setImage:varNames_itImg_sel forState:UIControlStateSelected];
    
    self.varNames_textFieldRight.constant = methodNames_setMargin_2base() + varNames_itSize.width/2.0;
}
#pragma mark ---------- 找回密码的手机号输入框
- (void)methodNames_setInputViewTypeFindBackPasswordPhone {
    self.varNames_itemButton.hidden = YES;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_FindBackPasswordView_inputView_title1();
    }
//    self.varNames_textField.placeholder = methodNames_getTitle_FindBackPasswordView_inputView_placeholder1();
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_FindBackPasswordView_inputView_placeholder1() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.returnKeyType = UIReturnKeyNext;
    self.varNames_returnType = varNames_keyboardReturnNext;
    self.varNames_textFieldRight.constant = methodNames_setMargin_base();
    methodNames_drawImagePhone(self.varNames_inputViewTypeImage, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()]);
}
#pragma mark ---------- 找回密码的验证码输入框
- (void)methodNames_setInputViewTypeFindBackPasswordCode {
    self.varNames_itemButton.hidden = NO;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_FindBackPasswordView_inputView_title2();
    }
//    self.varNames_textField.placeholder = methodNames_getTitle_FindBackPasswordView_inputView_placeholder2();
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_FindBackPasswordView_inputView_placeholder2() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textFieldRight.constant = methodNames_setMargin_base() + methodNames_getInputView_ItemButton_Width();
    self.varNames_textField.returnKeyType = UIReturnKeyNext;
    self.varNames_returnType = varNames_keyboardReturnNext;
    self.varNames_codeLayer = methodNames_drawImageMessage(self.varNames_itemButton, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()]);
    methodNames_drawCode(self.varNames_inputViewTypeImage, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()]);
}
#pragma mark ---------- 找回密码的密码输入框
- (void)methodNames_setInputViewTypeFindBackPasswordPassword {
    self.varNames_itemButton.hidden = NO;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_FindBackPasswordView_inputView_title3();
    }
//    self.varNames_textField.placeholder = methodNames_getTitle_FindBackPasswordView_inputView_placeholder3();
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_FindBackPasswordView_inputView_placeholder3() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.secureTextEntry = YES;
    self.varNames_isSecurity = YES;
    self.varNames_textField.returnKeyType = UIReturnKeyDefault;
    self.varNames_returnType = varNames_keyboardReturnDefault;
    self.varNames_textFieldRight.constant = methodNames_setMargin_2base() + methodNames_getInputView_ItemButton_Width();
    
    self.varNames_openEyesLayer = methodNames_drawOpenEyes(self.varNames_itemButton, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()]);
    self.varNames_closeEyesLayer = methodNames_drawCloseEye(self.varNames_itemButton, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()]);
    self.varNames_openEyesLayer.hidden = YES;
    methodNames_drawImagePassword(self.varNames_inputViewTypeImage, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()]);
    
}
#pragma mark ---------- 重置密码的账户输入框
- (void)methodNames_setInputViewTypeResetPasswordAccount {
    self.varNames_itemButton.hidden = YES;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_ResetPasswordView_inputView_title1();
    } else {
        UIImage *varNames_img = methodNames_getImage(@"image_phone");
        CGSize varNames_iconSize = methodNames_getImageSize(varNames_img);
        self.varNames_iconWidthConstraint.constant = varNames_iconSize.width/2.0;
        self.varNames_iconHeightConstraint.constant = varNames_iconSize.height/2.0;
        self.varNames_inputViewTypeImage.image = varNames_img;
    }
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_ResetPasswordView_inputView_placeholder1() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.returnKeyType = UIReturnKeyNext;
    self.varNames_returnType = varNames_keyboardReturnNext;
    self.varNames_textFieldRight.constant = methodNames_setMargin_base();
}
#pragma mark ---------- 重置密码的原密码输入框
- (void)methodNames_setInputViewTypeResetPasswordPassword {
    self.varNames_itemButton.hidden = NO;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_LoginView_inputView_title2();
    } else {
        UIImage *varNames_img = methodNames_getImage(@"image_password");
        CGSize varNames_iconSize = methodNames_getImageSize(varNames_img);
        self.varNames_iconWidthConstraint.constant = varNames_iconSize.width/2.0;
        self.varNames_iconHeightConstraint.constant = varNames_iconSize.height/2.0;
        self.varNames_inputViewTypeImage.image = varNames_img;
    }
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_ResetPasswordView_inputView_placeholder2() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.secureTextEntry = YES;
    self.varNames_isSecurity = YES;
    self.varNames_textField.returnKeyType = UIReturnKeyNext;
    self.varNames_returnType = varNames_keyboardReturnNext;
    self.varNames_textFieldRight.constant = methodNames_setMargin_2base() + methodNames_getInputView_ItemButton_Width();
    
    UIImage *varNames_itImg = methodNames_getImage(@"image_eye");
    UIImage *varNames_itImg_sel = methodNames_getImage(@"image_no_eye");
    CGSize varNames_itSize = methodNames_getImageSize(varNames_itImg);
    self.varNames_itemWidthConstraint.constant = varNames_itSize.width/2.0;
    self.varNames_itemHeightConstraint.constant = varNames_itSize.height/2.0;
    [self.varNames_itemButton setImage:varNames_itImg forState:UIControlStateNormal];
    [self.varNames_itemButton setImage:varNames_itImg_sel forState:UIControlStateSelected];
    
    self.varNames_textFieldRight.constant = methodNames_setMargin_2base() + varNames_itSize.width/2.0;
    }
#pragma mark ---------- 重置密码的新密码输入框
- (void)methodNames_setInputViewTypeResetPasswordNewPassword {
    self.varNames_itemButton.hidden = NO;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_LoginView_inputView_title2();
    } else {
        UIImage *varNames_img = methodNames_getImage(@"image_password");
        CGSize varNames_iconSize = methodNames_getImageSize(varNames_img);
        self.varNames_iconWidthConstraint.constant = varNames_iconSize.width/2.0;
        self.varNames_iconHeightConstraint.constant = varNames_iconSize.height/2.0;
        self.varNames_inputViewTypeImage.image = varNames_img;
    }

    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_ResetPasswordView_inputView_placeholder3() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.secureTextEntry = YES;
    self.varNames_isSecurity = YES;
    self.varNames_textField.returnKeyType = UIReturnKeyNext;
    self.varNames_returnType = varNames_keyboardReturnNext;
    self.varNames_textFieldRight.constant = methodNames_setMargin_2base() + methodNames_getInputView_ItemButton_Width();
    
    UIImage *varNames_itImg = methodNames_getImage(@"image_eye");
    UIImage *varNames_itImg_sel = methodNames_getImage(@"image_no_eye");
    CGSize varNames_itSize = methodNames_getImageSize(varNames_itImg);
    self.varNames_itemWidthConstraint.constant = varNames_itSize.width/2.0;
    self.varNames_itemHeightConstraint.constant = varNames_itSize.height/2.0;
    [self.varNames_itemButton setImage:varNames_itImg forState:UIControlStateNormal];
    [self.varNames_itemButton setImage:varNames_itImg_sel forState:UIControlStateSelected];
    
    self.varNames_textFieldRight.constant = methodNames_setMargin_2base() + varNames_itSize.width/2.0;
}
#pragma mark ---------- 重置密码的重复新密码输入框
- (void)methodNames_setInputViewTypeResetPasswordRenewPassword {
    self.varNames_itemButton.hidden = NO;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_LoginView_inputView_title2();
    } else {
        UIImage *varNames_img = methodNames_getImage(@"image_password");
        CGSize varNames_iconSize = methodNames_getImageSize(varNames_img);
        self.varNames_iconWidthConstraint.constant = varNames_iconSize.width/2.0;
        self.varNames_iconHeightConstraint.constant = varNames_iconSize.height/2.0;
        self.varNames_inputViewTypeImage.image = varNames_img;
    }

    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_ResetPasswordView_inputView_placeholder4() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.secureTextEntry = YES;
    self.varNames_isSecurity = YES;
    self.varNames_textField.returnKeyType = UIReturnKeyDefault;
    self.varNames_returnType = varNames_keyboardReturnDefault;
    self.varNames_textFieldRight.constant = methodNames_setMargin_2base() + methodNames_getInputView_ItemButton_Width();
    
    UIImage *varNames_itImg = methodNames_getImage(@"image_eye");
    UIImage *varNames_itImg_sel = methodNames_getImage(@"image_no_eye");
    CGSize varNames_itSize = methodNames_getImageSize(varNames_itImg);
    self.varNames_itemWidthConstraint.constant = varNames_itSize.width/2.0;
    self.varNames_itemHeightConstraint.constant = varNames_itSize.height/2.0;
    [self.varNames_itemButton setImage:varNames_itImg forState:UIControlStateNormal];
    [self.varNames_itemButton setImage:varNames_itImg_sel forState:UIControlStateSelected];
    
    self.varNames_textFieldRight.constant = methodNames_setMargin_2base() + varNames_itSize.width/2.0;
}
#pragma mark ---------- 手机注册手机号输入框
- (void)methodNames_setInputViewTypePhoneRegisterPhone {
    self.varNames_itemButton.hidden = YES;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_PhoneRegisterView_inputView_title1();
    } else {
        UIImage *varNames_img = methodNames_getImage(@"image_phone");
        CGSize varNames_iconSize = methodNames_getImageSize(varNames_img);
        self.varNames_iconWidthConstraint.constant = varNames_iconSize.width/2.0;
        self.varNames_iconHeightConstraint.constant = varNames_iconSize.height/2.0;
        self.varNames_inputViewTypeImage.image = varNames_img;
    }
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_PhoneRegisterView_inputView_placeholder1() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.returnKeyType = UIReturnKeyNext;
    self.varNames_returnType = varNames_keyboardReturnNext;
    self.varNames_textFieldRight.constant = methodNames_setMargin_base();
}
#pragma mark ---------- 手机注册验证码号输入框
- (void)methodNames_setInputViewTypePhoneRegisterCode {
    self.varNames_itemButton.hidden = NO;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_PhoneRegisterView_inputView_title2();
    } else {
        UIImage *varNames_img = methodNames_getImage(@"image_code");
        CGSize varNames_iconSize = methodNames_getImageSize(varNames_img);
        self.varNames_iconWidthConstraint.constant = varNames_iconSize.width/2.0;
        self.varNames_iconHeightConstraint.constant = varNames_iconSize.height/2.0;
        self.varNames_inputViewTypeImage.image = varNames_img;
    }
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_PhoneRegisterView_inputView_placeholder2() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.returnKeyType = UIReturnKeyNext;
    self.varNames_returnType = varNames_keyboardReturnNext;
    self.varNames_textFieldRight.constant = methodNames_setMargin_2base() + methodNames_getInputView_ItemButton_Width();
    
    [self.varNames_itemButton setTitle:@"获取验证码" forState:UIControlStateNormal];
    self.varNames_itemButton.titleLabel.font = [UIFont systemFontOfSize:13];
    [self.varNames_itemButton setTitleColor:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()] forState:UIControlStateNormal];
    self.varNames_itemButton.layer.borderColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()].CGColor;
    self.varNames_itemButton.layer.borderWidth = 1.0;
    self.varNames_itemButton.layer.cornerRadius = 4.5;
    self.varNames_itemWidthConstraint.constant = 80;
    self.varNames_itemHeightConstraint.constant = 30;
}
#pragma mark ---------- 手机注册密码输入框
- (void)methodNames_setInputViewTypePhoneRegisterPassword {
    self.varNames_itemButton.hidden = NO;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_PhoneRegisterView_inputView_title3();
    }
//    self.varNames_textField.placeholder = methodNames_getTitle_PhoneRegisterView_inputView_placeholder3();
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_PhoneRegisterView_inputView_placeholder3() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.secureTextEntry = YES;
    self.varNames_isSecurity = YES;
    self.varNames_textField.returnKeyType = UIReturnKeyDefault;
    self.varNames_returnType = varNames_keyboardReturnDefault;
    self.varNames_textFieldRight.constant = methodNames_setMargin_2base() + methodNames_getInputView_ItemButton_Width();
    
    self.varNames_openEyesLayer = methodNames_drawOpenEyes(self.varNames_itemButton, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()]);
    self.varNames_closeEyesLayer = methodNames_drawCloseEye(self.varNames_itemButton, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()]);
    self.varNames_openEyesLayer.hidden = YES;
    
    methodNames_drawImagePassword(self.varNames_inputViewTypeImage, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()]);
}
#pragma mark ---------- 普通注册的账户输入框
- (void)methodNames_setInputViewTypeNormalRegisterAccount {
    self.varNames_itemButton.hidden = YES;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_NormalRegisterView_inputView_title1();
    }
//    self.varNames_textField.placeholder = methodNames_getTitle_NormalRegisterView_inputView_placeholder1();
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_NormalRegisterView_inputView_placeholder1() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.returnKeyType = UIReturnKeyNext;
    self.varNames_returnType = varNames_keyboardReturnNext;
    self.varNames_textFieldRight.constant = methodNames_setMargin_base();
    
    methodNames_drawImageUser(self.varNames_inputViewTypeImage, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()]);
}
#pragma mark ---------- 普通注册的密码输入框
- (void)methodNames_setInputViewTypeNormalRegisterPassword {
    self.varNames_itemButton.hidden = NO;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_NormalRegisterView_inputView_title2();
    }
//    self.varNames_textField.placeholder = methodNames_getTitle_NormalRegisterView_inputView_placeholder2();
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_NormalRegisterView_inputView_placeholder2() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.secureTextEntry = YES;
    self.varNames_isSecurity = YES;
    self.varNames_textField.returnKeyType = UIReturnKeyDefault;
    self.varNames_returnType = varNames_keyboardReturnDefault;
    self.varNames_textFieldRight.constant = methodNames_setMargin_2base() + methodNames_getInputView_ItemButton_Width();
    
    self.varNames_openEyesLayer = methodNames_drawOpenEyes(self.varNames_itemButton, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()]);
    self.varNames_closeEyesLayer = methodNames_drawCloseEye(self.varNames_itemButton, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()]);
    self.varNames_openEyesLayer.hidden = YES;
    
    methodNames_drawImagePassword(self.varNames_inputViewTypeImage, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()]);
}
#pragma mark ---------- 快速登陆账户输入框
- (void)methodNames_setInputViewTypeQuickLoginAccount {
    self.varNames_itemButton.hidden = YES;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_QuickLoginView_inputView_title1();
    }
//    self.varNames_textField.placeholder = methodNames_getTitle_QuickLoginView_inputView_placeholder1();
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_QuickLoginView_inputView_placeholder1() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.returnKeyType = UIReturnKeyNext;
    self.varNames_returnType = varNames_keyboardReturnNext;
    self.varNames_textFieldRight.constant = methodNames_setMargin_base();
    
    methodNames_drawImageUser(self.varNames_inputViewTypeImage, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()]);
}
#pragma mark ---------- 快速登陆密码输入框
- (void)methodNames_setInputViewTypeQuickLoginPassword {
    self.varNames_itemButton.hidden = YES;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_QuickLoginView_inputView_title2();
    }
//    self.varNames_textField.placeholder = methodNames_getTitle_QuickLoginView_inputView_placeholder2();
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_QuickLoginView_inputView_placeholder2() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.returnKeyType = UIReturnKeyDefault;
    self.varNames_returnType = varNames_keyboardReturnDefault;
    self.varNames_textFieldRight.constant = methodNames_setMargin_base();
    
    methodNames_drawImagePassword(self.varNames_inputViewTypeImage, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()]);
}
#pragma mark ---------- 自动登录账户输入框
- (void)methodNames_setInputViewTypeAutoLoginAccount {
    self.varNames_itemButton.hidden = YES;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_AutoLoginView_inputView_title1();
    }
//    self.varNames_textField.placeholder = methodNames_getTitle_AutoLoginView_inputView_placeholder1();
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_AutoLoginView_inputView_placeholder1() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.returnKeyType = UIReturnKeyNext;
    self.varNames_returnType = varNames_keyboardReturnNext;
    self.varNames_textFieldRight.constant = methodNames_setMargin_base();
    
    methodNames_drawImageUser(self.varNames_inputViewTypeImage, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()]);
}
#pragma mark ---------- 自动登录密码输入框
- (void)methodNames_setInputViewTypeAutoLoginPassword {
    self.varNames_itemButton.hidden = YES;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_AutoLoginView_inputView_title2();
    }
//    self.varNames_textField.placeholder = methodNames_getTitle_AutoLoginView_inputView_placeholder2();
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_AutoLoginView_inputView_placeholder2() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.secureTextEntry = YES;
    self.varNames_isSecurity = YES;
    self.varNames_textField.returnKeyType = UIReturnKeyDefault;
    self.varNames_returnType = varNames_keyboardReturnDefault;
    self.varNames_textFieldRight.constant = methodNames_setMargin_base();
    
    methodNames_drawImagePassword(self.varNames_inputViewTypeImage, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()]);
}
#pragma mark ---------- 绑定手机手机号输入框
- (void)methodNames_setInputViewTypeBindPhonePhone {
    self.varNames_itemButton.hidden = YES;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_PhoneRegisterView_inputView_title1();
    } else {
        UIImage *varNames_img = methodNames_getImage(@"image_phone");
        CGSize varNames_iconSize = methodNames_getImageSize(varNames_img);
        self.varNames_iconWidthConstraint.constant = varNames_iconSize.width/2.0;
        self.varNames_iconHeightConstraint.constant = varNames_iconSize.height/2.0;
        self.varNames_inputViewTypeImage.image = varNames_img;
    }
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_PhoneRegisterView_inputView_placeholder1() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.returnKeyType = UIReturnKeyNext;
    self.varNames_returnType = varNames_keyboardReturnNext;
    self.varNames_textFieldRight.constant = methodNames_setMargin_base();
}
#pragma mark ---------- 绑定手机验证码输入框
- (void)methodNames_setInputViewTypeBindPhoneCode {
    self.varNames_itemButton.hidden = NO;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_PhoneRegisterView_inputView_title2();
    } else {
        UIImage *varNames_img = methodNames_getImage(@"image_code");
        CGSize varNames_iconSize = methodNames_getImageSize(varNames_img);
        self.varNames_iconWidthConstraint.constant = varNames_iconSize.width/2.0;
        self.varNames_iconHeightConstraint.constant = varNames_iconSize.height/2.0;
        self.varNames_inputViewTypeImage.image = varNames_img;
    }
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_PhoneRegisterView_inputView_placeholder2() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.returnKeyType = UIReturnKeyNext;
    self.varNames_returnType = varNames_keyboardReturnNext;
    self.varNames_textFieldRight.constant = methodNames_setMargin_2base() + methodNames_getInputView_ItemButton_Width();
    
    [self.varNames_itemButton setTitle:@"获取验证码" forState:UIControlStateNormal];
    self.varNames_itemButton.titleLabel.font = [UIFont systemFontOfSize:13];
    [self.varNames_itemButton setTitleColor:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()] forState:UIControlStateNormal];
    self.varNames_itemButton.layer.borderColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()].CGColor;
    self.varNames_itemButton.layer.borderWidth = 1.0;
    self.varNames_itemButton.layer.cornerRadius = 4.5;
    self.varNames_itemWidthConstraint.constant = 80;
    self.varNames_itemHeightConstraint.constant = 30;
}
#pragma mark ---------- 绑定身份证姓名输入框
- (void)methodNames_setInputViewTypeBindPersonIDName {
    self.varNames_itemButton.hidden = YES;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_BindPersonIDView_inputView_title1();
    } else {
        UIImage *varNames_img = methodNames_getImage(@"image_phone");
        CGSize varNames_iconSize = methodNames_getImageSize(varNames_img);
        self.varNames_iconWidthConstraint.constant = varNames_iconSize.width/2.0;
        self.varNames_iconHeightConstraint.constant = varNames_iconSize.height/2.0;
        self.varNames_inputViewTypeImage.image = varNames_img;
    }
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_BindPersonIDView_inputView_placeholder1() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.returnKeyType = UIReturnKeyNext;
    self.varNames_returnType = varNames_keyboardReturnNext;
    self.varNames_textFieldRight.constant = methodNames_setMargin_base();
}

#pragma mark ---------- 绑定身份证证件输入框
- (void)methodNames_setInputViewTypeBindPersonIDCard {
    self.varNames_itemButton.hidden = YES;
    if (!self.varNames_inputViewTitleType) {
        self.varNames_titleLabel.text = methodNames_getTitle_BindPersonIDView_inputView_title2();
    } else {
        UIImage *varNames_img = methodNames_getImage(@"image_phone");
        CGSize varNames_iconSize = methodNames_getImageSize(varNames_img);
        self.varNames_iconWidthConstraint.constant = varNames_iconSize.width/2.0;
        self.varNames_iconHeightConstraint.constant = varNames_iconSize.height/2.0;
        self.varNames_inputViewTypeImage.image = varNames_img;
    }
    [self methodNames_confiInputViewPlaceholder:methodNames_getTitle_BindPersonIDView_inputView_placeholder2() subMethodNames_placeholdercolor:[UIColor grayColor]];
    self.varNames_textField.returnKeyType = UIReturnKeyNext;
    self.varNames_returnType = varNames_keyboardReturnNext;
    self.varNames_textFieldRight.constant = methodNames_setMargin_base();
}
#pragma mark ---------- 统一设置inputView的placeholder的内容，颜色
- (void)methodNames_confiInputViewPlaceholder:(NSString *)varNames_argPlaceholder subMethodNames_placeholdercolor:(UIColor *)varNames_color{
    NSAttributedString *varNames_tmpAttributString = [[NSAttributedString alloc]initWithString:varNames_argPlaceholder attributes:@{NSForegroundColorAttributeName:[UIColor grayColor], NSFontAttributeName: [UIFont boldSystemFontOfSize:12]}];
    self.varNames_textField.attributedPlaceholder = varNames_tmpAttributString;
}
#pragma mark ---------- itemButtonAction
- (void)methodNames_inputViewItemButtonAction:(UIButton *)sender {
    
    /// 展示更多账户
    if (self.varNames_inputViewType == varNames_inputViewTypeLoginAccount) {
        if ([varNames_INPUTVIEWEDITING isEqualToString:@"1"]) {
            [self.superview endEditing:YES];
            NSDictionary *varNames_tmpobject = @{
                                     varNames_durationKey: @(0.25),
                                     varNames_isUpWindowKey : @(NO),
                                     varNames_moveValueKey : @(0)
                                     };
            [[NSNotificationCenter defaultCenter]postNotificationName:varNames_moveWindowNoti object:varNames_tmpobject];
            varNames_INPUTVIEWEDITING = @"0";
            return;
        }
        sender.selected = !sender.selected;
        if (sender.selected) {
            [self methodNames_rotateView];
        } else {
            [self methodNames_hidMoreAccountTableView];
        }
    }
    /// 获取验证码
    if (self.varNames_inputViewType == varNames_inputViewTypeFindBackPasswordCode || self.varNames_inputViewType == varNames_inputViewTypePhoneRegisterCode || self.varNames_inputViewType == varNames_inputViewTypeBindPhoneCode) {
        
        self.varNames_itemButton.enabled = NO;
        if (self.methodNames_getPhoneNumber) {
            NSDictionary *para = self.methodNames_getPhoneNumber(sender.enabled);
//            if (!para) {
//                self.varNames_itemButton.enabled = YES;
//                [ClassNames_PGHubView methodNames_showErrorMessage:@"请先填写手机号"];
//                return;
//            }
            NSString *phone = [para objectForKey:@"phone"];
//            if (!methodNames_phoneNumberRegular(phone)) {
//                self.varNames_itemButton.enabled = YES;
//                [ClassNames_PGHubView methodNames_showErrorMessage:@"手机号格式有误"];
//                return;
//            }
            __weak typeof(self) weakSelf = self;
            
            NSString *varNames_getCodeURL = @"";
            if (self.varNames_inputViewType == varNames_inputViewTypePhoneRegisterCode) {
                // 手机登录页面获取验证码
                varNames_getCodeURL = methodNames_gameGetcode_login();
            } else if (self.varNames_inputViewType == varNames_inputViewTypeBindPhoneCode) {
                // 手机绑定页面获取验证码
                varNames_getCodeURL = methodNames_gameGetcode_bind();
            } else if (self.varNames_inputViewType == varNames_inputViewTypeFindBackPasswordCode) {
                // 重置密码
                varNames_getCodeURL = methodNames_gameGetcode_resetpwd();
            } else {
                varNames_getCodeURL = @"";
            }
            
            [self.varNames_checkPhoneValidBasModel methodNames_fetchDataWithdURL:varNames_getCodeURL parameters:para];
            self.varNames_checkPhoneValidBasModel.methodNames_completeFetchData = ^(ClassNames_BaseModel *object) {
                if (object.varNames_code == 200) {
                    [weakSelf methodNames_afterPhoneTestGetCode:phone];
                } else {
                    
                    if (object.varNames_msg) {
                        dispatch_async(dispatch_get_main_queue(), ^{
                            weakSelf.varNames_itemButton.enabled = YES;
                            [ClassNames_PGHubView methodNames_hide];
                            [ClassNames_PGHubView methodNames_showErrorMessage:object.varNames_msg];
                        });
                    }
                }
            };
            self.varNames_checkPhoneValidBasModel.methodNames_FetchError = ^(NSError *error) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    [ClassNames_PGHubView methodNames_hide];
                    [ClassNames_PGHubView methodNames_showErrorMessage:@"网络出了小差!!!"];
                });
            };
            
        }
        
    }
    
    /// 睁眼闭眼切换
    if (self.varNames_inputViewType == varNames_inputViewTypeLoginPassword || self.varNames_inputViewType ==  varNames_inputViewTypeFindBackPasswordPassword || self.varNames_inputViewType == varNames_inputViewTypeResetPasswordPassword || self.varNames_inputViewType == varNames_inputViewTypeResetPasswordNewPassword || self.varNames_inputViewType == varNames_inputViewTypeResetPasswordRenewPassword || self.varNames_inputViewType == varNames_inputViewTypeNormalRegisterPassword || self.varNames_inputViewType == varNames_inputViewTypePhoneRegisterPassword) {
        sender.selected = !sender.selected;
        if (sender.selected) {
            self.varNames_textField.secureTextEntry = NO;
            self.varNames_openEyesLayer.hidden = NO;
            self.varNames_closeEyesLayer.hidden = YES;
        } else {
            self.varNames_textField.secureTextEntry = YES;
            self.varNames_openEyesLayer.hidden = YES;
            self.varNames_closeEyesLayer.hidden = NO;
        }
    }
    
}
#pragma mark ---------- 设置inputView的return类型
- (void)methodNames_setInputViewKeyboardReutrnType:(varNames_KeyboardReturnType)type {
    _varNames_returnType = type;
    if (type == varNames_keyboardReturnDefault) {
        self.varNames_textField.returnKeyType = UIReturnKeyDone;
    }
    if (type == varNames_keyboardReturnNext) {
        self.varNames_textField.returnKeyType = UIReturnKeyNext;
    }
}

#pragma mark ---------- 点击inputView 事件
- (void)methodNames_beginEditing:(UITapGestureRecognizer *)varNames_tap {
    
    [self.varNames_textField becomeFirstResponder];
    
}

#pragma mark ---------- 旋转登陆页面中的展示更多账户的按钮
- (void)methodNames_rotateView {
    NSArray *varNames_tmptmpArray = methodNames_readLoginedAccount();
    self.varNames_accountArray = [[varNames_tmptmpArray reverseObjectEnumerator]allObjects];
    methodNames_debugLog(self.varNames_accountArray);
    UIWindow *varNames_tmpwindow = methodNames_getCurrentWindow();
    CGRect varNames_tmprect = [self.superview convertRect:self.frame toView:varNames_tmpwindow];
    CGFloat varNames_tmpmaxHeight = self.varNames_accountArray.count * 30 > 60 ? 60 : self.varNames_accountArray.count * 30;
    [self.varNames_accountTableView setFrame:CGRectMake(CGRectGetMinX(varNames_tmprect), CGRectGetMinY(varNames_tmprect) + CGRectGetHeight(self.frame), CGRectGetWidth(self.bounds), varNames_tmpmaxHeight)];
    self.varNames_accountTableView.hidden = NO;
    self.varNames_accountTableView.backgroundColor = [UIColor clearColor];
    [varNames_tmpwindow addSubview:self.varNames_accountTableView];
    [self.varNames_accountTableView reloadData];
    [varNames_tmpwindow bringSubviewToFront:self.varNames_accountTableView];
    [UIView animateWithDuration:0.2f animations:^{
        self.varNames_itemButton.transform = CGAffineTransformMakeRotation(M_PI);
    }];
}

#pragma mark ---------- 坚挺键盘出现
- (void)methodNames_keyboardWillShow:(NSNotification *)noti {
    
    if (!self.varNames_textField.isEditing) {
        return;
    }
    //获取键盘的高度
    NSDictionary *userInfo = [noti userInfo];
    varNameS_CONTINUEVALUE = 0;
    NSValue *value = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGRect keyboardRect = [value CGRectValue];
    varNameS_KEYBOARDMINY = CGRectGetMinY(keyboardRect);
    [self methodNames_upKeyBoard];
}

#pragma mark ---------- 提升键盘
- (void)methodNames_upKeyBoard {
    

    if (!self.varNames_textField.isEditing || !varNameS_KEYBOARDMINY) {
        return;
    }
    if (_varNames_textFieldMaxY > varNameS_KEYBOARDMINY) {
        _varNames_isUpWindow = YES;
        _varNames_upMoveValue = varNameS_KEYBOARDMINY - _varNames_textFieldMaxY;
        varNameS_CONTINUEVALUE = _varNames_upMoveValue;
    } else {
        _varNames_isUpWindow = NO;
    }
    NSDictionary *varNames_tmpobject = @{
                             varNames_durationKey: @(0.25),
                             varNames_isUpWindowKey : @(_varNames_isUpWindow),
                             varNames_moveValueKey : @(_varNames_upMoveValue)
                             };
    
    if (_varNames_upMoveValue && [self.varNames_textField isFirstResponder]) {
        [[NSNotificationCenter defaultCenter]postNotificationName:varNames_moveWindowNoti object:varNames_tmpobject];
        _varNames_upMoveValue = 0.0f;
    }
}
- (void)methodNames_setInputViewMaxY:(CGFloat)varNames_maxy {
    _varNames_textFieldMaxY = varNames_maxy;
}

#pragma mark ---------- textFieldDelegate
-(void)textFieldDidBeginEditing:(UITextField *)textField {

    if (self.varNames_inputViewType == varNames_inputViewTypeLoginAccount || self.varNames_inputViewType == varNames_inputViewTypeLoginPassword) {
        if (!self.varNames_accountTableView.hidden) {
            [self methodNames_hidMoreAccountTableView];
        }
        if (self.methodNames_loginViewPasswordInputViewBecomeFirstRespond) {
            self.methodNames_loginViewPasswordInputViewBecomeFirstRespond();
        }
    }
    if ([varNames_INPUTVIEWEDITING isEqualToString:@"1"]) {
        [self methodNames_upKeyBoard];
    } else {
        varNames_INPUTVIEWEDITING = @"1";
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (self.varNames_returnType == varNames_keyboardReturnDefault) {
        [self endEditing:YES];
        varNames_INPUTVIEWEDITING = @"0";
        varNameS_CONTINUEVALUE = 0;
        varNameS_KEYBOARDMINY = 0;
        NSDictionary *varNames_tmpobject = @{
                                 varNames_durationKey: @(0.25),
                                 varNames_isUpWindowKey : @(NO),
                                 varNames_moveValueKey : @(0)
                                 };
        [[NSNotificationCenter defaultCenter]postNotificationName:varNames_moveWindowNoti object:varNames_tmpobject];
    }
    if (self.varNames_returnType == varNames_keyboardReturnNext) {
        [self methodNames_upKeyBoard];
        if (self.methodNames_nextInputView) {
            self.methodNames_nextInputView();
        }
    }
    return YES;
}
-(void)textFieldDidEndEditing:(UITextField *)textField {
    self.varNames_textValue = textField.text;
}

- (void)methodNames_textFieldDidChange:(UITextField *)textField {
    self.varNames_textValue = textField.text;
}






-(UITableView *)varNames_accountTableView {
    if (!_varNames_accountTableView) {
        _varNames_accountTableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        [_varNames_accountTableView registerClass:[ClassNames_AccountTableViewCell class] forCellReuseIdentifier:@"ClassNames_AccountTableViewCell"];
        _varNames_accountTableView.delegate = self;
        _varNames_accountTableView.dataSource = self;
        _varNames_accountTableView.hidden = YES;
        /// 便于点击viewController其他的地方隐藏tableView
        _varNames_accountTableView.tag = 666;
        _varNames_accountTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _varNames_accountTableView;
}
#pragma mark ---------- UItableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.varNames_accountArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ClassNames_AccountTableViewCell *cell = [ClassNames_AccountTableViewCell methodNames_cellWithTableView:tableView];
    [cell methodNames_fillWithAccount:self.varNames_accountArray[indexPath.row]];
    __weak typeof(self) weakSelf = self;
    cell.methodNames_deleteAccount = ^(NSString *account) {
        [weakSelf methodNames_deleteAccount:account];
    };
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 30.0f;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *phoneValue = self.varNames_accountArray[indexPath.row];
    self.varNames_textField.text = phoneValue;
    self.varNames_textValue = phoneValue;
    if (self.methodNames_changeAccount) {
        self.methodNames_changeAccount(phoneValue);
    }
    [self endEditing:YES];
    
    [self methodNames_hidMoreAccountTableView];
}

#pragma mark ---------- 删除记录的账户账户
- (void)methodNames_deleteAccount:(NSString *)account {
    methodNames_deleteAccount(account);
    self.varNames_accountArray = methodNames_readLoginedAccount();
    if (self.varNames_accountArray.count) {
        UIWindow *varNames_tmpwindow = methodNames_getCurrentWindow();
        CGRect varNames_tmprect = [self convertRect:self.bounds toView:varNames_tmpwindow];
        CGFloat varNames_tmpmaxHeight = self.varNames_accountArray.count * 30 > 60 ? 60 : self.varNames_accountArray.count * 30;
        [self.varNames_accountTableView setFrame:CGRectMake(CGRectGetMinX(varNames_tmprect), CGRectGetMaxY(varNames_tmprect), CGRectGetWidth(varNames_tmprect), varNames_tmpmaxHeight)];
    } else {
        [self methodNames_hidMoreAccountTableView];
        self.varNames_itemButton.hidden = YES;
        self.varNames_textFieldRight.constant = methodNames_setMargin_base();
    }
    
    [self.varNames_accountTableView reloadData];
}

/// 隐藏
- (void)methodNames_hidMoreAccountTableView {
    self.varNames_accountTableView.hidden = YES;
    __weak typeof(self) weakSelf = self;
    [UIView animateWithDuration:0.2f animations:^{
        weakSelf.varNames_itemButton.transform = CGAffineTransformMakeRotation(M_PI * 2);
    } completion:^(BOOL finished) {
        
    }];
}


#pragma mark ---------- 获取验证码
- (void)methodNames_afterPhoneTestGetCode:(NSString *)phone {
    NSDictionary *varNames_tmppara = @{
                           @"phone": phone
                           };
    __weak typeof(self) weakSelf = self;
    [self.varNames_getCodeModel methodNames_fetchDataWithdURL:methodNames_verifyURL() parameters:varNames_tmppara];
    self.varNames_getCodeModel.methodNames_completeFetchData = ^(ClassNames_BaseModel * object) {
        if (object.varNames_code == 200) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [ClassNames_PGHubView methodNames_hide];
                [weakSelf methodNames_startTimer];
            });
        } else {
            dispatch_async(dispatch_get_main_queue(), ^{
                weakSelf.varNames_itemButton.enabled = YES;
                [ClassNames_PGHubView methodNames_hide];
                if (object.varNames_msg) {
                    [ClassNames_PGHubView methodNames_showErrorMessage:object.varNames_msg];
                } else {
                    [ClassNames_PGHubView methodNames_showErrorMessage:@"验证码发送失败"];
                }
            });
        }
    };
    self.varNames_getCodeModel.methodNames_FetchError = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            weakSelf.varNames_itemButton.enabled = YES;
            [ClassNames_PGHubView methodNames_hide];
            [ClassNames_PGHubView methodNames_showErrorMessage:@"网络出了小差!!!"];
        });
    };
    
    
}

- (void)methodNames_startTimer {
    // 创建定时器
    NSTimer *varNames_tmptimer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(methodNmaes_changTitle:) userInfo:nil repeats:YES];
    // 将定时器添加到runloop中，否则定时器不会启动
    [[NSRunLoop mainRunLoop] addTimer:varNames_tmptimer forMode:NSRunLoopCommonModes];
}

- (void)methodNmaes_changTitle:(NSTimer *)timer {
    self.varNames_codeLayer.hidden = YES;
    [self.varNames_itemButton setTitle:[NSString stringWithFormat:@"%ld", (long)self.varNames_getCodeTitle] forState:UIControlStateDisabled];
    [self.varNames_itemButton setTitleColor:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()] forState:UIControlStateDisabled];
    self.varNames_itemButton.titleLabel.text = [NSString stringWithFormat:@"%ld", (long)self.varNames_getCodeTitle];
    if (self.varNames_getCodeTitle == 0) {
        self.varNames_itemButton.enabled = YES;
        self.varNames_codeLayer.hidden = NO;
        self.varNames_getCodeTitle = methodNames_setGetCodeBtnMaxTitle();
        [timer invalidate];
    } else {
        [self.varNames_itemButton setTitle:[NSString stringWithFormat:@"%ld", (long)self.varNames_getCodeTitle] forState:UIControlStateDisabled];
        self.varNames_itemButton.titleLabel.text = [NSString stringWithFormat:@"%ld", (long)self.varNames_getCodeTitle];
        self.varNames_getCodeTitle--;
    }
}


#pragma mark ---------- Lazy Load
-(ClassNames_BaseModel *)varNames_checkPhoneValidBasModel {
    if (!_varNames_checkPhoneValidBasModel) {
        _varNames_checkPhoneValidBasModel = [[ClassNames_BaseModel alloc]init];
    }
    return _varNames_checkPhoneValidBasModel;
}

-(ClassNames_BaseModel *)varNames_getCodeModel {
    if (!_varNames_getCodeModel) {
        _varNames_getCodeModel = [[ClassNames_BaseModel alloc]init];
    }
    return _varNames_getCodeModel;
}

@end
