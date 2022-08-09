

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, varNames_ItemButtonType) {
    varNames_ItemButtonTypeNone,
    varNames_ItemButtonTypeError,
    varNames_ItemButtonTypeDelete,
    varNames_ItemButtonTypeRight,
    varNames_ItemButtonTypeBack,
    varNames_ItemButtonTypeEyesClose,
    varNames_ItemButtonTypeEyesOpen,
    varNames_ItemButtonTypeUp,
    varNames_ItemButtonTypeDown,
    varNames_ItemButtonTypeUser,
    varNames_ItemButtonTypePhone,
    varNames_ItemButtonTypeMessage,
    varNames_ItemButtonTypePassword,
    varNames_ItemButtonTypePersonID,
};

@interface ClassNames_itemButton : UIButton

@property (nonatomic, readonly, assign) varNames_ItemButtonType varNames_itemButtonType;

+(instancetype)methodNames_setItemButton:(varNames_ItemButtonType)varNames_buttonType;



@end
