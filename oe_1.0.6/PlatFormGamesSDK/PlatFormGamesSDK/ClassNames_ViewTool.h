

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>




static inline void methodNames_setView_Origin(UIView * varNames_view, CGPoint varNames_value) {
    CGRect frame =  varNames_view.frame;
    frame.origin = varNames_value;
     varNames_view.frame = frame;
}

static inline CGPoint methodNames_getView_Origin(UIView * varNames_view) {
    return  varNames_view.frame.origin;
}


static inline void methodNames_setView_Size(UIView * varNames_view, CGSize varNames_value) {
    CGRect frame =  varNames_view.frame;
    frame.size = varNames_value;
     varNames_view.frame = frame;
}

static inline CGSize methodNames_getView_Size(UIView * varNames_view) {
    return  varNames_view.frame.size;
}

static inline void methodNames_setView_X(UIView * varNames_view, CGFloat varNames_value) {
    CGRect frame =  varNames_view.frame;
    frame.origin.x = varNames_value;
     varNames_view.frame = frame;
}

static inline void methodNames_setView_Y(UIView * varNames_view, CGFloat varNames_value) {
    CGRect frame =  varNames_view.frame;
    frame.origin.y = varNames_value;
     varNames_view.frame = frame;
}

static inline void methodNames_setView_Width(UIView * varNames_view, CGFloat varNames_value) {
    CGRect frame =  varNames_view.frame;
    frame.size.width = varNames_value;
     varNames_view.frame = frame;
}

static inline CGFloat methodNames_getView_Width(UIView * varNames_view) {
    return CGRectGetWidth( varNames_view.frame);
}

static inline void methodNames_setView_Height(UIView * varNames_view, CGFloat varNames_value) {
    CGRect frame =  varNames_view.frame;
    frame.size.height = varNames_value;
     varNames_view.frame = frame;
}

static inline CGFloat methodNames_getView_Height(UIView * varNames_view) {
    return CGRectGetHeight( varNames_view.frame);
}

static inline void methodNames_setView_CenterX(UIView * varNames_view, CGFloat varNames_value) {
    CGPoint center =  varNames_view.center;
    center.x = varNames_value;
     varNames_view.center = center;
}

static inline void methodNames_setView_CenterY(UIView * varNames_view, CGFloat varNames_value) {
    CGPoint center =  varNames_view.center;
    center.y = varNames_value;
     varNames_view.center = center;
}

static inline CGFloat methodNames_getView_CenterX(UIView * varNames_view) {
    return  varNames_view.center.x;
}

static inline CGFloat methodNames_getView_CenterY(UIView * varNames_view) {
    return  varNames_view.center.y;
}

static inline CGFloat methodNames_getView_MinX(UIView * varNames_view) {
    return CGRectGetMinX( varNames_view.frame);
}

static inline CGFloat methodNames_getView_MaxX(UIView * varNames_view) {
    return CGRectGetMaxX( varNames_view.frame);
}

static inline CGFloat methodNames_getView_MinY(UIView * varNames_view) {
    return CGRectGetMinY( varNames_view.frame);
}

static inline CGFloat methodNames_getView_MaxY(UIView * varNames_view) {
    return CGRectGetMaxY( varNames_view.frame);
}

#pragma --------------- layer 转换成 image
static inline UIImage *methodNames_translateViewLayerToImage(CALayer *varNames_viewLayer, CGSize varNames_destSize) {
    UIGraphicsBeginImageContextWithOptions(varNames_destSize, 0, 1);
    [varNames_viewLayer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *varNames_img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return varNames_img;
}


