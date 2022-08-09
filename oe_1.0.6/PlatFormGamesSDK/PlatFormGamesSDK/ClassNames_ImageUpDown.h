

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ClassNames_DefaultThemeConfigure.h"
#pragma mark ---------- 第一组向上向下图
/// 30 * 30       18*8
static inline void methodNames_drawImageUp1(UIView *varNames_view, UIColor *varNames_color) {
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(6, 18.58)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.14, 18.28) controlPoint1: CGPointMake(6, 18.47) controlPoint2: CGPointMake(6.04, 18.36)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.95, 11.35)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.82, 11.32) controlPoint1: CGPointMake(14.45, 10.9) controlPoint2: CGPointMake(15.29, 10.88)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.83, 11.33) controlPoint1: CGPointMake(15.82, 11.32) controlPoint2: CGPointMake(15.82, 11.32)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.86, 18.27)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.85, 18.87) controlPoint1: CGPointMake(24.05, 18.44) controlPoint2: CGPointMake(24.05, 18.71)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.15, 18.87) controlPoint1: CGPointMake(23.66, 19.04) controlPoint2: CGPointMake(23.34, 19.04)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.13, 11.93)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.89, 11.85) controlPoint1: CGPointMake(15.06, 11.88) controlPoint2: CGPointMake(14.98, 11.85)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.66, 11.94) controlPoint1: CGPointMake(14.8, 11.85) controlPoint2: CGPointMake(14.72, 11.88)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.85, 18.87)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.15, 18.88) controlPoint1: CGPointMake(6.66, 19.04) controlPoint2: CGPointMake(6.35, 19.04)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6, 18.58) controlPoint1: CGPointMake(6.05, 18.8) controlPoint2: CGPointMake(6, 18.69)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
}
/// 30 * 30       18*8
static inline void methodNames_drawImageDown1(UIView *varNames_view, UIColor *varNames_color) {
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(6, 11.42)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.14, 11.72) controlPoint1: CGPointMake(6, 11.53) controlPoint2: CGPointMake(6.04, 11.64)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.95, 18.65)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.82, 18.68) controlPoint1: CGPointMake(14.45, 19.1) controlPoint2: CGPointMake(15.29, 19.12)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.83, 18.67) controlPoint1: CGPointMake(15.82, 18.68) controlPoint2: CGPointMake(15.82, 18.68)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.86, 11.73)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.85, 11.13) controlPoint1: CGPointMake(24.05, 11.56) controlPoint2: CGPointMake(24.05, 11.29)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.15, 11.13) controlPoint1: CGPointMake(23.66, 10.96) controlPoint2: CGPointMake(23.34, 10.96)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.13, 18.07)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.89, 18.15) controlPoint1: CGPointMake(15.06, 18.12) controlPoint2: CGPointMake(14.98, 18.15)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.66, 18.06) controlPoint1: CGPointMake(14.8, 18.15) controlPoint2: CGPointMake(14.72, 18.12)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.85, 11.13)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.15, 11.12) controlPoint1: CGPointMake(6.66, 10.96) controlPoint2: CGPointMake(6.35, 10.96)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6, 11.42) controlPoint1: CGPointMake(6.05, 11.2) controlPoint2: CGPointMake(6, 11.31)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    [varNames_layer addSublayer:varNames_layer];
    
}

#pragma mark ---------- 第二组向上向下图
static inline void methodNames_drawImageUp2(UIView *varNames_view, UIColor *varNames_color) {
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(23.77, 17.9)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.58, 11.19)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.42, 11.19) controlPoint1: CGPointMake(15.26, 10.94) controlPoint2: CGPointMake(14.74, 10.94)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.23, 17.9)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.81, 19) controlPoint1: CGPointMake(5.73, 18.31) controlPoint2: CGPointMake(6.09, 19)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.19, 19)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.77, 17.9) controlPoint1: CGPointMake(23.91, 19) controlPoint2: CGPointMake(24.27, 18.31)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
}

static inline void methodNames_drawImageDown2(UIView *varNames_view, UIColor *varNames_color) {
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(6.23, 12.1)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.42, 18.81)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.58, 18.81) controlPoint1: CGPointMake(14.74, 19.06) controlPoint2: CGPointMake(15.26, 19.06)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.77, 12.1)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.19, 11) controlPoint1: CGPointMake(24.27, 11.69) controlPoint2: CGPointMake(23.91, 11)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.81, 11)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.23, 12.1) controlPoint1: CGPointMake(6.09, 11) controlPoint2: CGPointMake(5.73, 11.69)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
}

#pragma mark ---------- 第三组向上向下图
static inline void methodNames_drawImageUp3(UIView *varNames_view, UIColor *varNames_color) {
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(6.17, 13.26)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.17, 13.96) controlPoint1: CGPointMake(5.94, 13.45) controlPoint2: CGPointMake(5.95, 13.77)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.98, 13.95) controlPoint1: CGPointMake(6.4, 14.15) controlPoint2: CGPointMake(6.76, 14.15)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.48, 7.37)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.48, 23.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.06, 24) controlPoint1: CGPointMake(14.48, 23.78) controlPoint2: CGPointMake(14.74, 24)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.63, 23.5) controlPoint1: CGPointMake(15.37, 24) controlPoint2: CGPointMake(15.63, 23.78)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.63, 7.45)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.02, 13.92)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.83, 13.93) controlPoint1: CGPointMake(23.24, 14.12) controlPoint2: CGPointMake(23.6, 14.12)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.83, 13.23) controlPoint1: CGPointMake(24.05, 13.74) controlPoint2: CGPointMake(24.06, 13.42)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.01, 6.36)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.03, 6) controlPoint1: CGPointMake(15.75, 6.13) controlPoint2: CGPointMake(15.4, 6)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.01, 6) controlPoint1: CGPointMake(15.03, 6) controlPoint2: CGPointMake(15.02, 6)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.05, 6.34) controlPoint1: CGPointMake(14.65, 6) controlPoint2: CGPointMake(14.31, 6.12)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.04, 6.35) controlPoint1: CGPointMake(14.04, 6.34) controlPoint2: CGPointMake(14.04, 6.35)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.17, 13.26)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
}

static inline void methodNames_drawImageDown3(UIView *varNames_view, UIColor *varNames_color) {
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(14.04, 23.65)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.05, 23.66) controlPoint1: CGPointMake(14.04, 23.65) controlPoint2: CGPointMake(14.04, 23.66)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.01, 24) controlPoint1: CGPointMake(14.31, 23.88) controlPoint2: CGPointMake(14.65, 24)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.03, 24) controlPoint1: CGPointMake(15.02, 24) controlPoint2: CGPointMake(15.03, 24)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.01, 23.64) controlPoint1: CGPointMake(15.4, 24) controlPoint2: CGPointMake(15.75, 23.87)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.83, 16.77)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.83, 16.07) controlPoint1: CGPointMake(24.06, 16.58) controlPoint2: CGPointMake(24.05, 16.26)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.02, 16.08) controlPoint1: CGPointMake(23.6, 15.88) controlPoint2: CGPointMake(23.24, 15.88)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.63, 22.55)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.63, 6.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.06, 6) controlPoint1: CGPointMake(15.63, 6.22) controlPoint2: CGPointMake(15.37, 6)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.48, 6.5) controlPoint1: CGPointMake(14.74, 6) controlPoint2: CGPointMake(14.48, 6.22)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.48, 22.63)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.98, 16.05)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.17, 16.04) controlPoint1: CGPointMake(6.76, 15.85) controlPoint2: CGPointMake(6.4, 15.85)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.17, 16.74) controlPoint1: CGPointMake(5.95, 16.23) controlPoint2: CGPointMake(5.94, 16.55)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.04, 23.65)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
}

#pragma mark ---------- 第四组向上向下图
static inline void methodNames_drawImageUp4(UIView *varNames_view, UIColor *varNames_color) {
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(10.17, 17.26)];
    [varNames_bezierPath addLineToPoint: CGPointMake(10.18, 17.25)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9, 17.26) controlPoint1: CGPointMake(9.85, 17.58) controlPoint2: CGPointMake(9.33, 17.58)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.99, 17.25)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.99, 16.1) controlPoint1: CGPointMake(8.67, 16.93) controlPoint2: CGPointMake(8.67, 16.42)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9, 16.09) controlPoint1: CGPointMake(8.99, 16.09) controlPoint2: CGPointMake(9, 16.09)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.82, 11.32)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.81, 11.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.17, 11.3) controlPoint1: CGPointMake(14.46, 10.68) controlPoint2: CGPointMake(15.51, 10.67)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.01, 16.09)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.01, 16.1)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.01, 17.25) controlPoint1: CGPointMake(21.33, 16.42) controlPoint2: CGPointMake(21.33, 16.93)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21, 17.26) controlPoint1: CGPointMake(21.01, 17.26) controlPoint2: CGPointMake(21, 17.26)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.01, 17.25)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.83, 17.26) controlPoint1: CGPointMake(20.69, 17.58) controlPoint2: CGPointMake(20.16, 17.58)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15, 12.48)];
    [varNames_bezierPath addLineToPoint: CGPointMake(10.17, 17.26)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(15, 25)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(25, 15) controlPoint1: CGPointMake(20.52, 25) controlPoint2: CGPointMake(25, 20.52)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15, 5) controlPoint1: CGPointMake(25, 9.48) controlPoint2: CGPointMake(20.52, 5)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(5, 15) controlPoint1: CGPointMake(9.48, 5) controlPoint2: CGPointMake(5, 9.48)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15, 25) controlPoint1: CGPointMake(5, 20.52) controlPoint2: CGPointMake(9.48, 25)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(15, 23.33)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(6.67, 15) controlPoint1: CGPointMake(10.4, 23.33) controlPoint2: CGPointMake(6.67, 19.6)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15, 6.67) controlPoint1: CGPointMake(6.67, 10.4) controlPoint2: CGPointMake(10.4, 6.67)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(23.33, 15) controlPoint1: CGPointMake(19.6, 6.67) controlPoint2: CGPointMake(23.33, 10.4)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15, 23.33) controlPoint1: CGPointMake(23.33, 19.6) controlPoint2: CGPointMake(19.6, 23.33)];
    [varNames_bezier2Path closePath];
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    [varNames_view.layer addSublayer:varNames_layer1];
    
}

static inline void methodNames_drawImageDown4(UIView *varNames_view, UIColor *varNames_color) {
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(10.17, 12.74)];
    [varNames_bezierPath addLineToPoint: CGPointMake(10.18, 12.75)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9, 12.74) controlPoint1: CGPointMake(9.85, 12.42) controlPoint2: CGPointMake(9.33, 12.42)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.99, 12.75)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.99, 13.9) controlPoint1: CGPointMake(8.67, 13.07) controlPoint2: CGPointMake(8.67, 13.58)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9, 13.91) controlPoint1: CGPointMake(8.99, 13.91) controlPoint2: CGPointMake(9, 13.91)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.82, 18.68)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.18, 18.68) controlPoint1: CGPointMake(14.47, 19.33) controlPoint2: CGPointMake(15.53, 19.33)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.01, 13.91)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.01, 13.9)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.01, 12.75) controlPoint1: CGPointMake(21.33, 13.58) controlPoint2: CGPointMake(21.33, 13.07)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21, 12.74) controlPoint1: CGPointMake(21.01, 12.74) controlPoint2: CGPointMake(21, 12.74)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.01, 12.75)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.83, 12.74) controlPoint1: CGPointMake(20.69, 12.42) controlPoint2: CGPointMake(20.16, 12.42)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15, 17.52)];
    [varNames_bezierPath addLineToPoint: CGPointMake(10.17, 12.74)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(15, 25)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(25, 15) controlPoint1: CGPointMake(20.52, 25) controlPoint2: CGPointMake(25, 20.52)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15, 5) controlPoint1: CGPointMake(25, 9.48) controlPoint2: CGPointMake(20.52, 5)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(5, 15) controlPoint1: CGPointMake(9.48, 5) controlPoint2: CGPointMake(5, 9.48)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15, 25) controlPoint1: CGPointMake(5, 20.52) controlPoint2: CGPointMake(9.48, 25)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(15, 23.33)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(6.67, 15) controlPoint1: CGPointMake(10.4, 23.33) controlPoint2: CGPointMake(6.67, 19.6)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15, 6.67) controlPoint1: CGPointMake(6.67, 10.4) controlPoint2: CGPointMake(10.4, 6.67)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(23.33, 15) controlPoint1: CGPointMake(19.6, 6.67) controlPoint2: CGPointMake(23.33, 10.4)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15, 23.33) controlPoint1: CGPointMake(23.33, 19.6) controlPoint2: CGPointMake(19.6, 23.33)];
    [varNames_bezier2Path closePath];
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    [varNames_view.layer addSublayer:varNames_layer1];
    
}


#pragma mark ---------- 第五组向上向下
static inline void methodNames_drawImageUp5(UIView *varNames_view, UIColor *varNames_color) {
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(25, 15)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15, 5) controlPoint1: CGPointMake(25, 9.48) controlPoint2: CGPointMake(20.52, 5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5, 15) controlPoint1: CGPointMake(9.48, 5) controlPoint2: CGPointMake(5, 9.48)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15, 25) controlPoint1: CGPointMake(5, 20.52) controlPoint2: CGPointMake(9.48, 25)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.02, 22.96) controlPoint1: CGPointMake(17.27, 25) controlPoint2: CGPointMake(19.34, 24.23)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.13, 22.67) controlPoint1: CGPointMake(21.09, 22.88) controlPoint2: CGPointMake(21.13, 22.78)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.69, 22.22) controlPoint1: CGPointMake(21.13, 22.42) controlPoint2: CGPointMake(20.94, 22.22)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.37, 22.36) controlPoint1: CGPointMake(20.56, 22.22) controlPoint2: CGPointMake(20.45, 22.27)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.37, 22.36)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.01, 24.13) controlPoint1: CGPointMake(18.86, 23.46) controlPoint2: CGPointMake(17.02, 24.13)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.95, 15.07) controlPoint1: CGPointMake(10.01, 24.13) controlPoint2: CGPointMake(5.95, 20.07)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.01, 6.01) controlPoint1: CGPointMake(5.95, 10.07) controlPoint2: CGPointMake(10.01, 6.01)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(24.07, 15.07) controlPoint1: CGPointMake(20.01, 6.01) controlPoint2: CGPointMake(24.07, 10.07)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.04, 19.3) controlPoint1: CGPointMake(24.07, 16.6) controlPoint2: CGPointMake(23.71, 18.04)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.04, 19.31)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.01, 19.43) controlPoint1: CGPointMake(23.03, 19.35) controlPoint2: CGPointMake(23.01, 19.39)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.46, 19.88) controlPoint1: CGPointMake(23.01, 19.68) controlPoint2: CGPointMake(23.21, 19.88)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.87, 19.59) controlPoint1: CGPointMake(23.65, 19.88) controlPoint2: CGPointMake(23.81, 19.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.87, 19.59)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25, 15) controlPoint1: CGPointMake(24.58, 18.21) controlPoint2: CGPointMake(25, 16.66)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(15.26, 11.8)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.79, 11.99) controlPoint1: CGPointMake(15.1, 11.79) controlPoint2: CGPointMake(14.93, 11.85)];
    [varNames_bezierPath addLineToPoint: CGPointMake(10.72, 16.11)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.67, 16.92) controlPoint1: CGPointMake(10.48, 16.35) controlPoint2: CGPointMake(10.46, 16.71)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.47, 16.87) controlPoint1: CGPointMake(10.87, 17.13) controlPoint2: CGPointMake(11.23, 17.1)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.26, 13.02)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19.15, 16.96)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.95, 17.01) controlPoint1: CGPointMake(19.39, 17.2) controlPoint2: CGPointMake(19.75, 17.22)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.9, 16.2) controlPoint1: CGPointMake(20.16, 16.8) controlPoint2: CGPointMake(20.14, 16.44)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.74, 11.99)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.26, 11.8) controlPoint1: CGPointMake(15.6, 11.85) controlPoint2: CGPointMake(15.43, 11.79)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
}
static inline void methodNames_drawImageDown5(UIView *varNames_view, UIColor *varNames_color) {
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(25, 15)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15, 5) controlPoint1: CGPointMake(25, 9.48) controlPoint2: CGPointMake(20.52, 5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5, 15) controlPoint1: CGPointMake(9.48, 5) controlPoint2: CGPointMake(5, 9.48)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15, 25) controlPoint1: CGPointMake(5, 20.52) controlPoint2: CGPointMake(9.48, 25)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.02, 22.96) controlPoint1: CGPointMake(17.27, 25) controlPoint2: CGPointMake(19.34, 24.23)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.13, 22.67) controlPoint1: CGPointMake(21.09, 22.88) controlPoint2: CGPointMake(21.13, 22.78)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.69, 22.22) controlPoint1: CGPointMake(21.13, 22.42) controlPoint2: CGPointMake(20.94, 22.22)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.37, 22.36) controlPoint1: CGPointMake(20.56, 22.22) controlPoint2: CGPointMake(20.45, 22.27)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.37, 22.36)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.01, 24.13) controlPoint1: CGPointMake(18.86, 23.46) controlPoint2: CGPointMake(17.02, 24.13)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.95, 15.07) controlPoint1: CGPointMake(10.01, 24.13) controlPoint2: CGPointMake(5.95, 20.07)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.01, 6.01) controlPoint1: CGPointMake(5.95, 10.07) controlPoint2: CGPointMake(10.01, 6.01)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(24.07, 15.07) controlPoint1: CGPointMake(20.01, 6.01) controlPoint2: CGPointMake(24.07, 10.07)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.04, 19.3) controlPoint1: CGPointMake(24.07, 16.6) controlPoint2: CGPointMake(23.71, 18.04)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.04, 19.31)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.01, 19.43) controlPoint1: CGPointMake(23.03, 19.35) controlPoint2: CGPointMake(23.01, 19.39)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.46, 19.88) controlPoint1: CGPointMake(23.01, 19.68) controlPoint2: CGPointMake(23.21, 19.88)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.87, 19.59) controlPoint1: CGPointMake(23.65, 19.88) controlPoint2: CGPointMake(23.81, 19.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.87, 19.59)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25, 15) controlPoint1: CGPointMake(24.58, 18.21) controlPoint2: CGPointMake(25, 16.66)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(19.15, 13.04)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.26, 16.98)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.47, 13.14)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.67, 13.08) controlPoint1: CGPointMake(11.23, 12.9) controlPoint2: CGPointMake(10.87, 12.87)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.72, 13.89) controlPoint1: CGPointMake(10.46, 13.29) controlPoint2: CGPointMake(10.48, 13.65)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.79, 18.01)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.27, 18.21) controlPoint1: CGPointMake(14.93, 18.15) controlPoint2: CGPointMake(15.1, 18.21)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.74, 18.01) controlPoint1: CGPointMake(15.43, 18.21) controlPoint2: CGPointMake(15.6, 18.15)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19.9, 13.8)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.95, 12.99) controlPoint1: CGPointMake(20.14, 13.56) controlPoint2: CGPointMake(20.16, 13.2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.15, 13.04) controlPoint1: CGPointMake(19.75, 12.78) controlPoint2: CGPointMake(19.39, 12.81)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
}

#pragma mark ---------- 第六组向上
static inline void methodNames_drawImageUp6(UIView *varNames_view, UIColor *varNames_color) {
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(18.96, 14.87)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.53, 14.68) controlPoint1: CGPointMake(18.79, 14.87) controlPoint2: CGPointMake(18.65, 14.81)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.37, 11.54)];
    [varNames_bezierPath addLineToPoint: CGPointMake(12.23, 14.68)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.37, 14.68) controlPoint1: CGPointMake(11.98, 14.93) controlPoint2: CGPointMake(11.6, 14.93)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.37, 13.83) controlPoint1: CGPointMake(11.13, 14.44) controlPoint2: CGPointMake(11.13, 14.05)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.94, 10.24)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.8, 10.24) controlPoint1: CGPointMake(15.16, 10.02) controlPoint2: CGPointMake(15.57, 10.02)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19.36, 13.81)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.36, 14.66) controlPoint1: CGPointMake(19.61, 14.05) controlPoint2: CGPointMake(19.61, 14.44)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.96, 14.87) controlPoint1: CGPointMake(19.26, 14.81) controlPoint2: CGPointMake(19.1, 14.87)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(15.37, 19.19)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.76, 18.58) controlPoint1: CGPointMake(15.02, 19.19) controlPoint2: CGPointMake(14.76, 18.93)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.76, 10.63)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15.37, 10.02) controlPoint1: CGPointMake(14.76, 10.28) controlPoint2: CGPointMake(15.02, 10.02)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15.98, 10.63) controlPoint1: CGPointMake(15.71, 10.02) controlPoint2: CGPointMake(15.98, 10.28)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(15.98, 18.58)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15.37, 19.19) controlPoint1: CGPointMake(15.98, 18.93) controlPoint2: CGPointMake(15.71, 19.19)];
    [varNames_bezier2Path closePath];
    
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    //// Bezier 3 Drawing
    UIBezierPath* varNames_bezier3Path = [UIBezierPath bezierPath];
    [varNames_bezier3Path moveToPoint: CGPointMake(19.38, 25.61)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(11.23, 25.61)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(4.5, 18.88) controlPoint1: CGPointMake(7.52, 25.61) controlPoint2: CGPointMake(4.5, 22.6)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(4.5, 10.73)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(11.23, 4) controlPoint1: CGPointMake(4.5, 7.02) controlPoint2: CGPointMake(7.52, 4)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(19.38, 4)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(26.11, 10.73) controlPoint1: CGPointMake(23.1, 4) controlPoint2: CGPointMake(26.11, 7.02)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(26.11, 18.88)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(19.38, 25.61) controlPoint1: CGPointMake(26.11, 22.6) controlPoint2: CGPointMake(23.1, 25.61)];
    [varNames_bezier3Path closePath];
    [varNames_bezier3Path moveToPoint: CGPointMake(11.23, 5.22)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(5.72, 10.73) controlPoint1: CGPointMake(8.19, 5.22) controlPoint2: CGPointMake(5.72, 7.69)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(5.72, 18.88)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(11.23, 24.39) controlPoint1: CGPointMake(5.72, 21.92) controlPoint2: CGPointMake(8.19, 24.39)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(19.38, 24.39)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(24.89, 18.88) controlPoint1: CGPointMake(22.42, 24.39) controlPoint2: CGPointMake(24.89, 21.92)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(24.89, 10.73)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(19.38, 5.22) controlPoint1: CGPointMake(24.89, 7.69) controlPoint2: CGPointMake(22.42, 5.22)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(11.23, 5.22)];
    [varNames_bezier3Path closePath];
    
    CAShapeLayer *varNames_layer2 = [CAShapeLayer layer];
    varNames_layer2.fillColor = varNames_color.CGColor;
    varNames_layer2.path = varNames_bezier3Path.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    [varNames_view.layer addSublayer:varNames_layer1];
    [varNames_view.layer addSublayer:varNames_layer2];
}


static inline void methodNames_drawImageUp(UIView *varNames_view, UIColor *varNames_color) {
    NSInteger varNames_type = methodNames_getDefault_inputViewType_config();
    switch (varNames_type) {
        case 0:
        {
            methodNames_drawImageUp1(varNames_view, varNames_color);
        }
            break;
        case 1:
        {
            methodNames_drawImageUp1(varNames_view, varNames_color);
        }
            break;
        case 2:
        {
            methodNames_drawImageUp2(varNames_view, varNames_color);
        }
            break;
        case 3:
        {
            methodNames_drawImageUp3(varNames_view, varNames_color);
        }
            break;
        case 4:
        {
            methodNames_drawImageUp4(varNames_view, varNames_color);
        }
            break;
        case 5:
        {
            methodNames_drawImageUp5(varNames_view, varNames_color);
        }
            break;
            
        default:
        {
            methodNames_drawImageUp6(varNames_view, varNames_color);
        }
            break;
    }
}


