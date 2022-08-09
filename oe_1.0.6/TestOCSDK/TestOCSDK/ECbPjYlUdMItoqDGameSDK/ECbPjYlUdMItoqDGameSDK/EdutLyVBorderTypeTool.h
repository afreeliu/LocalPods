

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/// 绘制圆角的inputView
static inline void nQbVpZJYOagDHRAw(UIView *evsYTmPyDceUSja, BOOL etdlcLWJs, BOOL enAmpHXhlbDc, BOOL eaDZpjTifJBol, BOOL eDjyBHLVmWTa, CGFloat ewpIAigrnJakWRadius, UIColor *eTNloEgFy, UIColor *eqgOPQeEwD) {
    
    CGRect eOWxKeby = evsYTmPyDceUSja.bounds;
    UIRectCorner ewpIAigrnJakW = UIRectCornerAllCorners;
    if (etdlcLWJs) {
        ewpIAigrnJakW = UIRectCornerTopLeft;
    }
    if (enAmpHXhlbDc) {
        if (ewpIAigrnJakW) {
            ewpIAigrnJakW = (ewpIAigrnJakW|UIRectCornerBottomLeft);
        } else {
            ewpIAigrnJakW = UIRectCornerBottomLeft;
        }
    }
    if (eaDZpjTifJBol) {
        if (ewpIAigrnJakW) {
            ewpIAigrnJakW = (ewpIAigrnJakW|UIRectCornerTopRight);
        } else {
            ewpIAigrnJakW = UIRectCornerTopRight;
        }
    }
    if (eDjyBHLVmWTa) {
        if (ewpIAigrnJakW) {
            ewpIAigrnJakW = (ewpIAigrnJakW|UIRectCornerBottomRight);
        } else {
            ewpIAigrnJakW = UIRectCornerBottomRight;
        }
    }
    UIBezierPath *eEIetUwx = [UIBezierPath bezierPathWithRoundedRect:eOWxKeby byRoundingCorners:ewpIAigrnJakW cornerRadii:CGSizeMake(ewpIAigrnJakWRadius, ewpIAigrnJakWRadius)];
    CAShapeLayer *evsYTmPyDceUSjaLayer = [CAShapeLayer layer];
    evsYTmPyDceUSjaLayer.path = eEIetUwx.CGPath;
    evsYTmPyDceUSjaLayer.strokeColor = eTNloEgFy.CGColor;
    evsYTmPyDceUSjaLayer.fillColor = eqgOPQeEwD.CGColor;
    [evsYTmPyDceUSja.layer addSublayer:evsYTmPyDceUSjaLayer];
    
}

/// 绘制底部下划线
static inline void nRvBpFIV(UIView *evsYTmPyDceUSja, UIColor *eTNloEgFy) {
    
    CGRect eOWxKeby = evsYTmPyDceUSja.bounds;
    UIBezierPath *eEIetUwx = [UIBezierPath bezierPathWithRect:CGRectMake(0, CGRectGetMaxY(eOWxKeby) - 1, CGRectGetWidth(eOWxKeby), 1)];
    CAShapeLayer *evsYTmPyDceUSjaLayer = [CAShapeLayer layer];
    evsYTmPyDceUSjaLayer.path = eEIetUwx.CGPath;
    evsYTmPyDceUSjaLayer.fillColor = eTNloEgFy.CGColor;
    [evsYTmPyDceUSja.layer addSublayer:evsYTmPyDceUSjaLayer];
}

/// 绘制方形边框
static inline void nABESDTwLGJcf(UIView *evsYTmPyDceUSja, UIColor *eTNloEgFy, UIColor *eqgOPQeEwD) {
    
    CGRect eOWxKeby = evsYTmPyDceUSja.bounds;
    UIBezierPath *eEIetUwx = [UIBezierPath bezierPathWithRect:eOWxKeby];
    CAShapeLayer *evsYTmPyDceUSjaLayer = [CAShapeLayer layer];
    evsYTmPyDceUSjaLayer.path = eEIetUwx.CGPath;
    evsYTmPyDceUSjaLayer.strokeColor = eTNloEgFy.CGColor;
    evsYTmPyDceUSjaLayer.fillColor = eqgOPQeEwD.CGColor;
    [evsYTmPyDceUSja.layer addSublayer:evsYTmPyDceUSjaLayer];
}




