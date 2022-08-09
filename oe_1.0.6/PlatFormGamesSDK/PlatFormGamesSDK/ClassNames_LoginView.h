

#import <UIKit/UIKit.h>

@interface ClassNames_LoginView : UIView

+ (instancetype)methodNames_createLoginView;

@property (nonatomic, readwrite, copy) void (^methodNames_loginSuccess)(BOOL varNames_isNeedBindPhone, BOOL varNames_isNeedBindPersonID);

@property (nonatomic, readwrite, copy) void (^methodNames_loginFailure)(void);

@property (nonatomic, readwrite, copy) void (^methodNames_servicceBlock)(void);

// 协议
@property (nonatomic, readwrite, copy) void (^methodNames_delegateBlock)(void);

// 手册
@property (nonatomic, readwrite, copy) void (^methodNames_handlebookBlock)(void);



- (void)methodNames_hidMoreAccountTableView;
@end
