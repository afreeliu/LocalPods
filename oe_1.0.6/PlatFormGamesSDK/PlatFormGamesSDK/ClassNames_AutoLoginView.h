

#import <UIKit/UIKit.h>

@interface ClassNames_AutoLoginView : UIView

+ (instancetype)methodNames_createAutoLoginView;


@property (nonatomic, readwrite, copy) void (^methodNames_cancelAutoLoginBlock)(void);

@property (nonatomic, readwrite, copy) void (^methodNames_autoLoginSuccess)(BOOL varNames_isNeedBindPhone, BOOL varNames_isNeedBindPersonID);

@property (nonatomic, readwrite, copy) void (^methodNames_autoLoginFailure)(void);

@end
