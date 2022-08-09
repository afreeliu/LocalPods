

#import <UIKit/UIKit.h>

@interface ClassNames_PhoneRegisterView : UIView

+ (instancetype)methodNames_createPhoneRegisterView;

-(void)methodNames_resetContent;

@property (nonatomic, readwrite, copy) void (^methodNames_phoneRegisterSuccess)(BOOL varNames_isNeedBindPersonID);

@property (nonatomic, readwrite, copy) void (^methodNames_phoneRegisterFailure)(void);

@property (nonatomic, readwrite, copy) void (^methodNames_backAction)(void);

@property (nonatomic, readwrite, copy) void (^methodNames_servicceBlock)(void);

// 协议
@property (nonatomic, readwrite, copy) void (^methodNames_delegateBlock)(void);

// 手册
@property (nonatomic, readwrite, copy) void (^methodNames_handlebookBlock)(void);
@end
