

#import <UIKit/UIKit.h>

@interface ClassNames_QuickLoginView : UIView

+ (instancetype)methodNames_createQuickLoginView;

- (void)methodNames_fillAccount:(NSString *)varNames_account methodNames_fillPassword:(NSString *)varNames_password;

- (void)methodNames_canBindPhone:(BOOL)varNames_canBind;


@property (nonatomic, readwrite, copy) void(^methodNames_enterGame)(void);
@property (nonatomic, readwrite, copy) void(^methodNames_bindPhone)(void);


@end
