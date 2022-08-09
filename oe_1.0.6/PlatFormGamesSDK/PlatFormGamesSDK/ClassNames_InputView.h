

#import <UIKit/UIKit.h>
#import "ClassNames_itemButton.h"
typedef NS_ENUM(NSUInteger, varNames_InputViewType) {
    varNames_inputViewTypeLoginAccount,
    varNames_inputViewTypeLoginPassword,
    varNames_inputViewTypeFindBackPasswordPhone,
    varNames_inputViewTypeFindBackPasswordCode,
    varNames_inputViewTypeFindBackPasswordPassword,
    varNames_inputViewTypeResetPasswordAccount,
    varNames_inputViewTypeResetPasswordPassword,
    varNames_inputViewTypeResetPasswordNewPassword,
    varNames_inputViewTypeResetPasswordRenewPassword,
    varNames_inputViewTypePhoneRegisterPhone,
    varNames_inputViewTypePhoneRegisterCode,
    varNames_inputViewTypePhoneRegisterPassword,
    varNames_inputViewTypeNormalRegisterAccount,
    varNames_inputViewTypeNormalRegisterPassword,
    varNames_inputViewTypeQuickLoginAccount,
    varNames_inputViewTypeQuickLoginPassword,
    varNames_inputViewTypeAutoLoginAccount,
    varNames_inputViewTypeAutoLoginPassword,
    varNames_inputViewTypeBindPhonePhone,
    varNames_inputViewTypeBindPhoneCode,
    varNames_inputViewTypeBindPersonIDName,
    varNames_inputViewTypeBindPersonIDCard,
};

typedef NS_ENUM(NSUInteger, varNames_InputViewBorderType){
    varNames_inputViewBorderNone,
    varNames_inputViewBorderBottomLine,
    varNames_inputViewBorderAroundLine,
    varNames_inputViewBorderImage1,
    varNames_inputViewBorderImage2,
    varNames_inputViewBorderImage3,
};

/// keyboard return skill type
typedef NS_ENUM(NSUInteger, varNames_KeyboardReturnType) {
    varNames_keyboardReturnDefault  =   0,
    varNames_keyboardReturnNext,
};
static const NSString *varNames_INPUTVIEWEDITING = @"0";

@interface ClassNames_InputView : UIView

/// 输入的值
@property (nonatomic, readonly, copy) NSString *varNames_textValue;

@property (nonatomic, readonly, assign) varNames_InputViewType varNames_inputViewType;

@property (nonatomic, readonly, strong) UIImageView *varNames_inputViewTypeImage;

@property (nonatomic, readonly, strong) ClassNames_itemButton *varNames_itemButton;

@property (nonatomic, readonly, assign) varNames_KeyboardReturnType varNames_returnType;

/// 发起获取验证码请求
@property (nonatomic, readwrite, copy) NSDictionary *(^methodNames_getPhoneNumber)(BOOL enable);

/// select another account to get psw
@property (nonatomic, readwrite, copy) void (^methodNames_changeAccount)(NSString *account);
@property (nonatomic, readwrite, copy) void (^methodNames_nextInputView)(void);

@property (nonatomic, readwrite, copy) void (^methodNames_loginViewPasswordInputViewBecomeFirstRespond)(void);



+ (instancetype)methodNames_inputViewType:(varNames_InputViewType)varNames_type;
- (void)methodNames_setInputViewKeyboardReutrnType:(varNames_KeyboardReturnType)type;
- (void)methodNames_fillContent:(NSString *)varNames_content methodNames_canEditing:(BOOL)varNames_canEditing;
- (void)methodNames_becomeFirstResponder;
- (void)methodNames_resignFirstResponder;
- (void)methodNames_hidMoreAccountTableView;
- (void)methodNames_setInputViewMaxY:(CGFloat)varNames_maxy;
@end
