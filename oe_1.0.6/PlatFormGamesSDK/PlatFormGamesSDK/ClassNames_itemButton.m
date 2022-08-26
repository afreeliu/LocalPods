

#import "ClassNames_itemButton.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_ImageErrorRight.h"
#import "ClassNames_Color.h"
#import "ClassNames_ImageDelete.h"


@interface ClassNames_itemButton ()

@property (nonatomic, readwrite, assign) varNames_ItemButtonType varNames_itemButtonType;

@end

@implementation ClassNames_itemButton

+(instancetype)methodNames_setItemButton:(varNames_ItemButtonType)varNames_buttonType {
    
    ClassNames_itemButton *varNames_button = [[ClassNames_itemButton alloc]init];
    varNames_button.varNames_itemButtonType = varNames_buttonType;
    switch (varNames_buttonType) {
        case varNames_ItemButtonTypeNone:
        {
            methodNames_drawImageError1(varNames_button, [UIColor whiteColor]);
        }
            break;
        case varNames_ItemButtonTypeError:
        {
            methodNames_drawImageError(varNames_button, [UIColor whiteColor]);
        }
            break;
        case varNames_ItemButtonTypeDelete:
        {
            methodNames_drawDelete(varNames_button, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()]);
        }
            break;
        case varNames_ItemButtonTypeRight:
        {
            methodNames_drawImageRight(varNames_button, [UIColor whiteColor]);
        }
            break;
        case varNames_ItemButtonTypeBack:
        {
            methodNames_drawImageError(varNames_button, [UIColor whiteColor]);
        }
            break;
        case varNames_ItemButtonTypeEyesClose:
        {
            
        }
            break;
        case varNames_ItemButtonTypeEyesOpen:
        {
            
        }
            break;
        case varNames_ItemButtonTypeUp:
        {
            
        }
            break;
        case varNames_ItemButtonTypeDown:
        {
            
        }
            break;
        case varNames_ItemButtonTypeUser:
        {
            
        }
            break;
        case varNames_ItemButtonTypePhone:
        {
            
        }
            break;
        case varNames_ItemButtonTypeMessage:
        {
            
        }
            break;
        case varNames_ItemButtonTypePassword:
        {
            
        }
            break;
        case varNames_ItemButtonTypePersonID:
        {
            
        }
            break;
            
        default:
            break;
    }
    return varNames_button;
}

-(instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}




@end
