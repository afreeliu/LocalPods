

#import <UIKit/UIKit.h>

@interface ClassNames_NormalRegisterView : UIView

+ (instancetype)methodNames_createNormalRegisterView;

- (void)methodNames_resetContent;

@property (nonatomic, readwrite, copy) void (^methodNames_normalRegisterSuccess)(BOOL varNames_isNeedBindPhone, BOOL varNames_isNeedBindPersonID);

@property (nonatomic, readwrite, copy) void (^methodNames_normalRegisterFailure)(void);

@property (nonatomic, readwrite, copy) void (^methodNames_servicceBlock)(void);

// 协议
@property (nonatomic, readwrite, copy) void (^methodNames_delegateBlock)(void);

// 手册
@property (nonatomic, readwrite, copy) void (^methodNames_handlebookBlock)(void);

@end
