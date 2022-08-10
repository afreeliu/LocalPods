

#import <UIKit/UIKit.h>

@interface ClassNames_BindPhoneView : UIView


+ (instancetype)methodNames_createBindPhoneViewFromView:(UIView *)varNames_view;

- (void)methodNames_changeFromView:(UIView *)varNames_view;

@property (nonatomic, readwrite, copy) void(^methodNames_bindPhoneSuccess)(void);

@property (nonatomic, readwrite, copy) void(^methodNames_backBlock)(void);

@property (nonatomic, readwrite, copy) void(^methodNames_closeBindPhoneView)(void);

@end
