

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ClassNames_DefaultThemeConfigure.h"




#pragma mark ---------- 真实姓名
static inline void methodNames_drawPerson1(UIView *varNames_view, UIColor *varNames_color) {
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(23.03, 20.05)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(24.14, 19.92) controlPoint1: CGPointMake(23.37, 20.32) controlPoint2: CGPointMake(23.87, 20.26)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(24.01, 18.81) controlPoint1: CGPointMake(24.41, 19.58) controlPoint2: CGPointMake(24.34, 19.08)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.47, 17.77) controlPoint1: CGPointMake(23.51, 18.43) controlPoint2: CGPointMake(22.99, 18.09)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.08, 16.4) controlPoint1: CGPointMake(21.41, 17.16) controlPoint2: CGPointMake(20.28, 16.71)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.85, 10.12) controlPoint1: CGPointMake(21.34, 15.2) controlPoint2: CGPointMake(22.85, 12.85)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.76, 3.03) controlPoint1: CGPointMake(22.85, 6.21) controlPoint2: CGPointMake(19.67, 3.03)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.67, 10.12) controlPoint1: CGPointMake(11.86, 3.03) controlPoint2: CGPointMake(8.67, 6.21)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.47, 16.4) controlPoint1: CGPointMake(8.67, 12.83) controlPoint2: CGPointMake(10.21, 15.2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.62, 26.65) controlPoint1: CGPointMake(7.61, 17.64) controlPoint2: CGPointMake(3.68, 21.57)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.23, 27.57) controlPoint1: CGPointMake(2.53, 27.08) controlPoint2: CGPointMake(2.8, 27.48)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.39, 27.6) controlPoint1: CGPointMake(3.27, 27.6) controlPoint2: CGPointMake(3.34, 27.6)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.16, 26.96) controlPoint1: CGPointMake(3.75, 27.6) controlPoint2: CGPointMake(4.09, 27.35)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.76, 17.55) controlPoint1: CGPointMake(5.31, 21.52) controlPoint2: CGPointMake(10.18, 17.55)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.68, 19.13) controlPoint1: CGPointMake(17.84, 17.55) controlPoint2: CGPointMake(19.87, 18.09)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.03, 20.05) controlPoint1: CGPointMake(22.15, 19.4) controlPoint2: CGPointMake(22.61, 19.71)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(10.25, 10.12)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.76, 4.61) controlPoint1: CGPointMake(10.25, 7.07) controlPoint2: CGPointMake(12.74, 4.61)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.27, 10.12) controlPoint1: CGPointMake(18.79, 4.61) controlPoint2: CGPointMake(21.27, 7.09)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.76, 15.63) controlPoint1: CGPointMake(21.27, 13.14) controlPoint2: CGPointMake(18.79, 15.63)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.25, 10.12) controlPoint1: CGPointMake(12.74, 15.63) controlPoint2: CGPointMake(10.25, 13.17)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    
    //// Oval Drawing
    UIBezierPath* varNames_ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(27.65, 18.68, 1.7, 1.7)];
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_ovalPath.CGPath;
    
    
    
    
    
    //// Oval 2 Drawing
    UIBezierPath* varNames_oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(25.55, 20.83, 1.7, 1.7)];
    CAShapeLayer *varNames_layer2 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer2.fillColor = varNames_color.CGColor;
    varNames_layer2.path = varNames_oval2Path.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(23.4, 23.8)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(23.4, 23.8)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(24.25, 24.66) controlPoint1: CGPointMake(23.4, 24.28) controlPoint2: CGPointMake(23.78, 24.66)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(25.11, 23.8) controlPoint1: CGPointMake(24.73, 24.66) controlPoint2: CGPointMake(25.11, 24.28)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(25.11, 23.8)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(24.25, 22.94) controlPoint1: CGPointMake(25.11, 23.33) controlPoint2: CGPointMake(24.73, 22.94)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(23.4, 23.8) controlPoint1: CGPointMake(23.78, 22.94) controlPoint2: CGPointMake(23.4, 23.33)];
    [varNames_bezier2Path closePath];
    CAShapeLayer *varNames_layer3 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer3.fillColor = varNames_color.CGColor;
    varNames_layer3.path = varNames_bezier2Path.CGPath;
    
    
    //// Bezier 3 Drawing
    UIBezierPath* varNames_bezier3Path = [UIBezierPath bezierPath];
    [varNames_bezier3Path moveToPoint: CGPointMake(21.75, 25.34)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(19.96, 27.12)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(17.43, 24.59)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(16.33, 24.59) controlPoint1: CGPointMake(17.12, 24.28) controlPoint2: CGPointMake(16.62, 24.28)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(16.33, 25.7) controlPoint1: CGPointMake(16.01, 24.91) controlPoint2: CGPointMake(16.01, 25.41)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(19.42, 28.79)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(19.99, 29.02) controlPoint1: CGPointMake(19.58, 28.95) controlPoint2: CGPointMake(19.78, 29.02)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(20.55, 28.79) controlPoint1: CGPointMake(20.19, 29.02) controlPoint2: CGPointMake(20.39, 28.95)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(22.9, 26.44)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(22.9, 25.32) controlPoint1: CGPointMake(23.22, 26.13) controlPoint2: CGPointMake(23.22, 25.63)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(21.75, 25.34) controlPoint1: CGPointMake(22.56, 25.02) controlPoint2: CGPointMake(22.06, 25.02)];
    [varNames_bezier3Path closePath];
    CAShapeLayer *varNames_layer4 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer4.fillColor = varNames_color.CGColor;
    varNames_layer4.path = varNames_bezier3Path.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    [varNames_view.layer addSublayer:varNames_layer1];
    [varNames_view.layer addSublayer:varNames_layer2];
    [varNames_view.layer addSublayer:varNames_layer3];
    [varNames_view.layer addSublayer:varNames_layer4];
    
}
static inline void methodNames_drawPerson2(UIView *varNames_view, UIColor *varNames_color) {
    
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(26.2, 1)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.8, 1)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(1, 3.8) controlPoint1: CGPointMake(2.25, 1) controlPoint2: CGPointMake(1, 2.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(1, 26.2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.8, 29) controlPoint1: CGPointMake(1, 27.75) controlPoint2: CGPointMake(2.25, 29)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.2, 29)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(29, 26.2) controlPoint1: CGPointMake(27.75, 29) controlPoint2: CGPointMake(29, 27.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(29, 3.8)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.2, 1) controlPoint1: CGPointMake(29, 2.25) controlPoint2: CGPointMake(27.75, 1)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(19.2, 10.26)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.87, 14.37) controlPoint1: CGPointMake(19.2, 12.28) controlPoint2: CGPointMake(17.77, 13.96)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.12, 14.36) controlPoint1: CGPointMake(15.05, 14.3) controlPoint2: CGPointMake(14.82, 14.31)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.8, 10.26) controlPoint1: CGPointMake(12.23, 13.96) controlPoint2: CGPointMake(10.8, 12.28)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15, 6.06) controlPoint1: CGPointMake(10.8, 7.95) controlPoint2: CGPointMake(12.69, 6.06)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.2, 10.26) controlPoint1: CGPointMake(17.32, 6.06) controlPoint2: CGPointMake(19.2, 7.94)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(3.8, 24.26)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.8, 4.66)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.2, 3.8) controlPoint1: CGPointMake(3.8, 3.89) controlPoint2: CGPointMake(4.43, 3.8)];
    [varNames_bezierPath addLineToPoint: CGPointMake(12.31, 3.8)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8, 10.26) controlPoint1: CGPointMake(9.78, 4.86) controlPoint2: CGPointMake(8, 7.35)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.24, 15.37) controlPoint1: CGPointMake(8, 12.28) controlPoint2: CGPointMake(8.87, 14.09)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.82, 24.35) controlPoint1: CGPointMake(6.75, 16.99) controlPoint2: CGPointMake(4.23, 20.35)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.8, 24.26) controlPoint1: CGPointMake(3.82, 24.31) controlPoint2: CGPointMake(3.8, 24.29)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(23.35, 26.2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.57, 26.2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.56, 25.78) controlPoint1: CGPointMake(6.57, 26.2) controlPoint2: CGPointMake(6.56, 25.84)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.08, 17.3) controlPoint1: CGPointMake(6.56, 21.45) controlPoint2: CGPointMake(9.86, 17.74)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.87, 17.2) controlPoint1: CGPointMake(15, 17.42) controlPoint2: CGPointMake(15.36, 17.27)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.36, 25.79) controlPoint1: CGPointMake(20.08, 17.66) controlPoint2: CGPointMake(23.36, 21.47)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.35, 26.2) controlPoint1: CGPointMake(23.36, 25.85) controlPoint2: CGPointMake(23.35, 26.2)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(26.2, 24.26)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.12, 24.68) controlPoint1: CGPointMake(26.2, 24.41) controlPoint2: CGPointMake(26.16, 24.55)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.73, 15.39) controlPoint1: CGPointMake(25.81, 20.56) controlPoint2: CGPointMake(23.29, 17.07)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22, 10.26) controlPoint1: CGPointMake(21.12, 14.12) controlPoint2: CGPointMake(22, 12.3)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.69, 3.8) controlPoint1: CGPointMake(22, 7.35) controlPoint2: CGPointMake(20.22, 4.85)];
    [varNames_bezierPath addLineToPoint: CGPointMake(24.8, 3.8)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.2, 4.66) controlPoint1: CGPointMake(25.57, 3.8) controlPoint2: CGPointMake(26.2, 3.88)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.2, 24.26)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
}
static inline void methodNames_drawPerson3(UIView *varNames_view, UIColor *varNames_color) {
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(14.81, 17.48)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.82, 17.48)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.31, 11.19) controlPoint1: CGPointMake(11.29, 17.54) controlPoint2: CGPointMake(8.37, 14.72)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.6, 4.68) controlPoint1: CGPointMake(8.25, 7.66) controlPoint2: CGPointMake(11.06, 4.74)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.11, 10.97) controlPoint1: CGPointMake(18.13, 4.62) controlPoint2: CGPointMake(21.04, 7.43)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.11, 11.08) controlPoint1: CGPointMake(21.11, 11) controlPoint2: CGPointMake(21.11, 11.04)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.11, 11.12)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.75, 17.48) controlPoint1: CGPointMake(21.11, 14.63) controlPoint2: CGPointMake(18.26, 17.48)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.81, 17.48)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(14.81, 5.4)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.8, 5.4)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.03, 10.97) controlPoint1: CGPointMake(11.67, 5.35) controlPoint2: CGPointMake(9.08, 7.84)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.6, 16.74) controlPoint1: CGPointMake(8.97, 14.1) controlPoint2: CGPointMake(11.47, 16.69)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.37, 11.17) controlPoint1: CGPointMake(17.73, 16.79) controlPoint2: CGPointMake(20.31, 14.3)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.37, 11.07) controlPoint1: CGPointMake(20.37, 11.14) controlPoint2: CGPointMake(20.37, 11.1)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.37, 11.02)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.75, 5.4) controlPoint1: CGPointMake(20.37, 7.92) controlPoint2: CGPointMake(17.85, 5.4)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.81, 5.4)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(14.81, 17.64)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.81, 17.64)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(8.13, 11.18) controlPoint1: CGPointMake(11.18, 17.7) controlPoint2: CGPointMake(8.19, 14.81)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.58, 4.5) controlPoint1: CGPointMake(8.07, 7.56) controlPoint2: CGPointMake(10.96, 4.56)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(21.27, 10.95) controlPoint1: CGPointMake(18.21, 4.44) controlPoint2: CGPointMake(21.2, 7.33)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(21.27, 11.07) controlPoint1: CGPointMake(21.27, 10.99) controlPoint2: CGPointMake(21.27, 11.03)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(21.27, 11.12)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.75, 17.64) controlPoint1: CGPointMake(21.27, 14.72) controlPoint2: CGPointMake(18.35, 17.64)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.81, 17.64)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(14.81, 4.84)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.81, 4.84)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(8.45, 10.98) controlPoint1: CGPointMake(11.36, 4.78) controlPoint2: CGPointMake(8.51, 7.53)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.59, 17.34) controlPoint1: CGPointMake(8.39, 14.43) controlPoint2: CGPointMake(11.14, 17.28)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(20.95, 11.2) controlPoint1: CGPointMake(18.04, 17.4) controlPoint2: CGPointMake(20.89, 14.65)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(20.95, 11.09) controlPoint1: CGPointMake(20.95, 11.16) controlPoint2: CGPointMake(20.95, 11.12)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(20.95, 11.02)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.75, 4.82) controlPoint1: CGPointMake(20.95, 7.6) controlPoint2: CGPointMake(18.17, 4.82)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.81, 4.84)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(14.81, 16.92)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.8, 16.92)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(8.87, 11.19) controlPoint1: CGPointMake(11.58, 16.97) controlPoint2: CGPointMake(8.92, 14.41)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.6, 5.26) controlPoint1: CGPointMake(8.81, 7.97) controlPoint2: CGPointMake(11.38, 5.31)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(20.53, 10.98) controlPoint1: CGPointMake(17.82, 5.2) controlPoint2: CGPointMake(20.47, 7.76)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(20.53, 11.09) controlPoint1: CGPointMake(20.53, 11.02) controlPoint2: CGPointMake(20.53, 11.05)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(20.53, 11.12)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.75, 16.9) controlPoint1: CGPointMake(20.53, 14.31) controlPoint2: CGPointMake(17.94, 16.9)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.81, 16.92)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(14.81, 5.57)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.79, 5.57)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(9.19, 10.99) controlPoint1: CGPointMake(11.75, 5.52) controlPoint2: CGPointMake(9.24, 7.94)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.6, 16.59) controlPoint1: CGPointMake(9.14, 14.03) controlPoint2: CGPointMake(11.56, 16.54)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(20.21, 11.18) controlPoint1: CGPointMake(17.64, 16.65) controlPoint2: CGPointMake(20.15, 14.22)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(20.21, 11.08) controlPoint1: CGPointMake(20.21, 11.15) controlPoint2: CGPointMake(20.21, 11.12)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(20.21, 11.12)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.84, 5.56) controlPoint1: CGPointMake(20.26, 8.1) controlPoint2: CGPointMake(17.86, 5.61)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.84, 5.56)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.81, 5.57)];
    [varNames_bezier2Path closePath];
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    
    //// Bezier 3 Drawing
    UIBezierPath* varNames_bezier3Path = [UIBezierPath bezierPath];
    [varNames_bezier3Path moveToPoint: CGPointMake(23.1, 23.95)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(23.1, 23.95)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(22.75, 23.69) controlPoint1: CGPointMake(22.94, 23.95) controlPoint2: CGPointMake(22.8, 23.84)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(22.76, 23.72)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(12.53, 18.05) controlPoint1: CGPointMake(21.5, 19.33) controlPoint2: CGPointMake(16.92, 16.79)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(6.9, 23.58) controlPoint1: CGPointMake(9.84, 18.82) controlPoint2: CGPointMake(7.72, 20.9)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(6.87, 23.68)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(6.4, 23.92) controlPoint1: CGPointMake(6.8, 23.88) controlPoint2: CGPointMake(6.6, 23.98)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(6.16, 23.47) controlPoint1: CGPointMake(6.21, 23.86) controlPoint2: CGPointMake(6.11, 23.66)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(6.19, 23.39)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(17.44, 17.41) controlPoint1: CGPointMake(7.64, 18.63) controlPoint2: CGPointMake(12.68, 15.96)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(23.47, 23.54) controlPoint1: CGPointMake(20.36, 18.3) controlPoint2: CGPointMake(22.62, 20.61)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(23.44, 23.47)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(23.2, 23.93) controlPoint1: CGPointMake(23.5, 23.66) controlPoint2: CGPointMake(23.39, 23.87)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(23.09, 23.95) controlPoint1: CGPointMake(23.16, 23.94) controlPoint2: CGPointMake(23.13, 23.95)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(23.1, 23.95)];
    [varNames_bezier3Path closePath];
    CAShapeLayer *varNames_layer2 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer2.fillColor = varNames_color.CGColor;
    varNames_layer2.path = varNames_bezier3Path.CGPath;
    
    //// Bezier 4 Drawing
    UIBezierPath* varNames_bezier4Path = [UIBezierPath bezierPath];
    [varNames_bezier4Path moveToPoint: CGPointMake(6.52, 24.11)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(6.51, 24.11)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(6, 23.56) controlPoint1: CGPointMake(6.22, 24.1) controlPoint2: CGPointMake(5.99, 23.85)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(6.02, 23.42) controlPoint1: CGPointMake(6, 23.51) controlPoint2: CGPointMake(6.01, 23.46)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(6.01, 23.48)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(17.35, 17.19) controlPoint1: CGPointMake(7.4, 18.61) controlPoint2: CGPointMake(12.48, 15.79)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(23.59, 23.32) controlPoint1: CGPointMake(20.34, 18.04) controlPoint2: CGPointMake(22.69, 20.35)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(23.62, 23.42)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(23.27, 24.08) controlPoint1: CGPointMake(23.71, 23.7) controlPoint2: CGPointMake(23.55, 23.99)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(23.27, 24.08)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(22.61, 23.73) controlPoint1: CGPointMake(22.99, 24.16) controlPoint2: CGPointMake(22.7, 24)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(22.62, 23.76)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(12.59, 18.2) controlPoint1: CGPointMake(21.39, 19.46) controlPoint2: CGPointMake(16.89, 16.97)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(7.07, 23.63) controlPoint1: CGPointMake(9.95, 18.96) controlPoint2: CGPointMake(7.87, 21)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(7.04, 23.73)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(6.53, 24.1) controlPoint1: CGPointMake(6.97, 23.95) controlPoint2: CGPointMake(6.76, 24.1)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(6.52, 24.11)];
    [varNames_bezier4Path closePath];
    [varNames_bezier4Path moveToPoint: CGPointMake(14.81, 17.16)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(14.82, 17.16)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(6.34, 23.43) controlPoint1: CGPointMake(10.92, 17.16) controlPoint2: CGPointMake(7.48, 19.7)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(6.31, 23.52)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(6.45, 23.78) controlPoint1: CGPointMake(6.28, 23.63) controlPoint2: CGPointMake(6.34, 23.74)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(6.45, 23.78)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(6.71, 23.64) controlPoint1: CGPointMake(6.56, 23.81) controlPoint2: CGPointMake(6.68, 23.75)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(6.7, 23.68)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(17.13, 17.89) controlPoint1: CGPointMake(7.98, 19.2) controlPoint2: CGPointMake(12.65, 16.61)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(22.87, 23.54) controlPoint1: CGPointMake(19.87, 18.68) controlPoint2: CGPointMake(22.03, 20.8)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(22.9, 23.64)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(23.16, 23.78) controlPoint1: CGPointMake(22.94, 23.75) controlPoint2: CGPointMake(23.05, 23.81)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(23.16, 23.78)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(23.3, 23.52) controlPoint1: CGPointMake(23.27, 23.74) controlPoint2: CGPointMake(23.33, 23.63)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(23.31, 23.58)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(14.94, 17.16) controlPoint1: CGPointMake(22.24, 19.83) controlPoint2: CGPointMake(18.84, 17.22)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(14.81, 17.16)];
    [varNames_bezier4Path closePath];
    CAShapeLayer *varNames_layer3 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer3.fillColor = varNames_color.CGColor;
    varNames_layer3.path = varNames_bezier4Path.CGPath;
    
    
    //// Bezier 5 Drawing
    UIBezierPath* varNames_bezier5Path = [UIBezierPath bezierPath];
    [varNames_bezier5Path moveToPoint: CGPointMake(15.01, 25.41)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(15, 25.41)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(14.71, 25.31) controlPoint1: CGPointMake(14.9, 25.41) controlPoint2: CGPointMake(14.79, 25.38)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(13.26, 24.23)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(13.26, 24.23)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(13.07, 23.77) controlPoint1: CGPointMake(13.12, 24.12) controlPoint2: CGPointMake(13.05, 23.95)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(13.63, 19.4)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(13.63, 19.4)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(14.12, 18.91) controlPoint1: CGPointMake(13.66, 19.15) controlPoint2: CGPointMake(13.86, 18.94)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(15.78, 18.91)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(15.78, 18.91)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(16.26, 19.39) controlPoint1: CGPointMake(16.03, 18.94) controlPoint2: CGPointMake(16.23, 19.14)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(16.94, 23.82)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(16.94, 23.83)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(16.73, 24.32) controlPoint1: CGPointMake(16.97, 24.01) controlPoint2: CGPointMake(16.89, 24.2)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(15.28, 25.32)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(15.28, 25.32)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(15, 25.41) controlPoint1: CGPointMake(15.2, 25.38) controlPoint2: CGPointMake(15.1, 25.41)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(15.01, 25.41)];
    [varNames_bezier5Path closePath];
    [varNames_bezier5Path moveToPoint: CGPointMake(14.08, 23.68)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(15.02, 24.36)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(15.92, 23.8)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(15.36, 20.18)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(14.55, 20.18)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(14.08, 23.68)];
    [varNames_bezier5Path closePath];
    CAShapeLayer *varNames_layer4 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer4.fillColor = varNames_color.CGColor;
    varNames_layer4.path = varNames_bezier5Path.CGPath;
    
    
    //// Bezier 6 Drawing
    UIBezierPath* varNames_bezier6Path = [UIBezierPath bezierPath];
    [varNames_bezier6Path moveToPoint: CGPointMake(15.01, 25.57)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(15, 25.57)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(14.61, 25.44) controlPoint1: CGPointMake(14.86, 25.57) controlPoint2: CGPointMake(14.72, 25.52)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(13.16, 24.34)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(13.16, 24.34)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(12.91, 23.73) controlPoint1: CGPointMake(12.97, 24.2) controlPoint2: CGPointMake(12.87, 23.96)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(13.47, 19.37)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(13.47, 19.37)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(14.12, 18.73) controlPoint1: CGPointMake(13.51, 19.03) controlPoint2: CGPointMake(13.78, 18.76)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(15.77, 18.73)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(15.77, 18.73)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(16.41, 19.36) controlPoint1: CGPointMake(16.11, 18.76) controlPoint2: CGPointMake(16.37, 19.02)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(17.09, 23.79)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(17.08, 23.78)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(16.81, 24.43) controlPoint1: CGPointMake(17.12, 24.03) controlPoint2: CGPointMake(17.01, 24.28)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(15.36, 25.43)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(15.36, 25.43)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(15.01, 25.57) controlPoint1: CGPointMake(15.26, 25.51) controlPoint2: CGPointMake(15.14, 25.56)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(15.01, 25.57)];
    [varNames_bezier6Path closePath];
    [varNames_bezier6Path moveToPoint: CGPointMake(14.12, 19.06)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(13.8, 19.41) controlPoint1: CGPointMake(13.96, 19.06) controlPoint2: CGPointMake(13.8, 19.24)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(13.23, 23.78)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(13.23, 23.78)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(13.36, 24.1) controlPoint1: CGPointMake(13.21, 23.9) controlPoint2: CGPointMake(13.25, 24.02)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(14.81, 25.19)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(14.81, 25.19)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(15.19, 25.19) controlPoint1: CGPointMake(14.92, 25.27) controlPoint2: CGPointMake(15.08, 25.27)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(16.64, 24.19)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(16.64, 24.19)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(16.78, 23.84) controlPoint1: CGPointMake(16.75, 24.11) controlPoint2: CGPointMake(16.8, 23.98)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(16.11, 19.4)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(15.79, 19.05) controlPoint1: CGPointMake(16.08, 19.24) controlPoint2: CGPointMake(15.94, 19.05)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(14.12, 19.06)];
    [varNames_bezier6Path closePath];
    [varNames_bezier6Path moveToPoint: CGPointMake(15.01, 24.55)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(13.91, 23.76)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(14.41, 20.02)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(15.49, 20.02)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(16.1, 23.88)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(15.01, 24.55)];
    [varNames_bezier6Path closePath];
    [varNames_bezier6Path moveToPoint: CGPointMake(14.25, 23.61)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(15.03, 24.16)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(15.75, 23.72)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(15.22, 20.34)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(14.69, 20.34)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(14.25, 23.61)];
    [varNames_bezier6Path closePath];
    CAShapeLayer *varNames_layer5 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer5.fillColor = varNames_color.CGColor;
    varNames_layer5.path = varNames_bezier6Path.CGPath;
    
    
    //// Bezier 7 Drawing
    UIBezierPath* varNames_bezier7Path = [UIBezierPath bezierPath];
    [varNames_bezier7Path moveToPoint: CGPointMake(20, 9.62)];
    [varNames_bezier7Path addLineToPoint: CGPointMake(9.68, 9.62)];
    [varNames_bezier7Path addLineToPoint: CGPointMake(9.68, 9.62)];
    [varNames_bezier7Path addCurveToPoint: CGPointMake(9.2, 9.14) controlPoint1: CGPointMake(9.42, 9.62) controlPoint2: CGPointMake(9.2, 9.4)];
    [varNames_bezier7Path addCurveToPoint: CGPointMake(9.68, 8.66) controlPoint1: CGPointMake(9.2, 8.87) controlPoint2: CGPointMake(9.42, 8.66)];
    [varNames_bezier7Path addLineToPoint: CGPointMake(20, 8.66)];
    [varNames_bezier7Path addLineToPoint: CGPointMake(20, 8.66)];
    [varNames_bezier7Path addCurveToPoint: CGPointMake(20.48, 9.14) controlPoint1: CGPointMake(20.27, 8.66) controlPoint2: CGPointMake(20.48, 8.87)];
    [varNames_bezier7Path addCurveToPoint: CGPointMake(20, 9.62) controlPoint1: CGPointMake(20.48, 9.4) controlPoint2: CGPointMake(20.27, 9.62)];
    [varNames_bezier7Path closePath];
    
    CAShapeLayer *varNames_layer6 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer6.fillColor = varNames_color.CGColor;
    varNames_layer6.path = varNames_bezier7Path.CGPath;

    
    //// Bezier 8 Drawing
    UIBezierPath* varNames_bezier8Path = [UIBezierPath bezierPath];
    [varNames_bezier8Path moveToPoint: CGPointMake(20, 9.78)];
    [varNames_bezier8Path addLineToPoint: CGPointMake(9.68, 9.78)];
    [varNames_bezier8Path addLineToPoint: CGPointMake(9.68, 9.78)];
    [varNames_bezier8Path addCurveToPoint: CGPointMake(9.04, 9.14) controlPoint1: CGPointMake(9.33, 9.78) controlPoint2: CGPointMake(9.04, 9.49)];
    [varNames_bezier8Path addCurveToPoint: CGPointMake(9.68, 8.5) controlPoint1: CGPointMake(9.04, 8.78) controlPoint2: CGPointMake(9.33, 8.5)];
    [varNames_bezier8Path addLineToPoint: CGPointMake(20, 8.5)];
    [varNames_bezier8Path addLineToPoint: CGPointMake(20, 8.5)];
    [varNames_bezier8Path addCurveToPoint: CGPointMake(20.64, 9.14) controlPoint1: CGPointMake(20.36, 8.5) controlPoint2: CGPointMake(20.64, 8.78)];
    [varNames_bezier8Path addCurveToPoint: CGPointMake(20, 9.78) controlPoint1: CGPointMake(20.64, 9.49) controlPoint2: CGPointMake(20.36, 9.78)];
    [varNames_bezier8Path closePath];
    [varNames_bezier8Path moveToPoint: CGPointMake(9.68, 8.82)];
    [varNames_bezier8Path addLineToPoint: CGPointMake(9.68, 8.82)];
    [varNames_bezier8Path addCurveToPoint: CGPointMake(9.36, 9.14) controlPoint1: CGPointMake(9.5, 8.82) controlPoint2: CGPointMake(9.36, 8.96)];
    [varNames_bezier8Path addCurveToPoint: CGPointMake(9.68, 9.46) controlPoint1: CGPointMake(9.36, 9.31) controlPoint2: CGPointMake(9.5, 9.46)];
    [varNames_bezier8Path addLineToPoint: CGPointMake(20, 9.46)];
    [varNames_bezier8Path addLineToPoint: CGPointMake(20, 9.46)];
    [varNames_bezier8Path addCurveToPoint: CGPointMake(20.32, 9.14) controlPoint1: CGPointMake(20.18, 9.46) controlPoint2: CGPointMake(20.32, 9.31)];
    [varNames_bezier8Path addCurveToPoint: CGPointMake(20, 8.82) controlPoint1: CGPointMake(20.32, 8.96) controlPoint2: CGPointMake(20.18, 8.82)];
    [varNames_bezier8Path addLineToPoint: CGPointMake(9.68, 8.82)];
    [varNames_bezier8Path closePath];
    CAShapeLayer *varNames_layer7 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer7.fillColor = varNames_color.CGColor;
    varNames_layer7.path = varNames_bezier8Path.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    [varNames_view.layer addSublayer:varNames_layer1];
    [varNames_view.layer addSublayer:varNames_layer2];
    [varNames_view.layer addSublayer:varNames_layer3];
    [varNames_view.layer addSublayer:varNames_layer4];
    [varNames_view.layer addSublayer:varNames_layer5];
    [varNames_view.layer addSublayer:varNames_layer6];
    [varNames_view.layer addSublayer:varNames_layer7];
    
}
static inline void methodNames_drawPerson4(UIView *varNames_view, UIColor *varNames_color) {
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(7.36, 2.89)];
    [varNames_bezierPath addLineToPoint: CGPointMake(7.36, 2.89)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.83, 5.78) controlPoint1: CGPointMake(7.36, 4.48) controlPoint2: CGPointMake(8.47, 5.78)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.31, 2.89) controlPoint1: CGPointMake(11.2, 5.78) controlPoint2: CGPointMake(12.31, 4.48)];
    [varNames_bezierPath addLineToPoint: CGPointMake(12.31, 2.89)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.83, 0) controlPoint1: CGPointMake(12.31, 1.29) controlPoint2: CGPointMake(11.2, 0)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.36, 2.89) controlPoint1: CGPointMake(8.47, 0) controlPoint2: CGPointMake(7.36, 1.29)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    
    //// Rectangle Drawing
    UIBezierPath* varNames_rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(15.45, 14.41, 1.9, 3.4) cornerRadius: 0.4];
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_rectanglePath.CGPath;
    
    
    
    //// Rectangle 2 Drawing
    UIBezierPath* varNames_rectangle2Path = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(24.05, 14.41, 1.9, 3.4) cornerRadius: 0.4];
    CAShapeLayer *varNames_layer2 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer2.fillColor = varNames_color.CGColor;
    varNames_layer2.path = varNames_rectangle2Path.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(27.05, 15.68)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(26.62, 15.68)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(26.62, 17.33)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(25.61, 18.28) controlPoint1: CGPointMake(26.62, 17.85) controlPoint2: CGPointMake(26.16, 18.28)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(24.38, 18.28)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(23.37, 17.33) controlPoint1: CGPointMake(23.83, 18.28) controlPoint2: CGPointMake(23.37, 17.85)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(23.37, 15.68)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(18, 15.68)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(18, 17.33)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(16.99, 18.28) controlPoint1: CGPointMake(18, 17.85) controlPoint2: CGPointMake(17.54, 18.28)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(15.77, 18.28)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.76, 17.33) controlPoint1: CGPointMake(15.21, 18.28) controlPoint2: CGPointMake(14.76, 17.85)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.76, 15.68)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.33, 15.68)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(12.38, 17.52) controlPoint1: CGPointMake(13.25, 15.68) controlPoint2: CGPointMake(12.38, 16.51)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(12.38, 20.94)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(12.38, 27.89)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.33, 29.74) controlPoint1: CGPointMake(12.38, 28.91) controlPoint2: CGPointMake(13.25, 29.74)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(27.05, 29.74)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(29, 27.89) controlPoint1: CGPointMake(28.13, 29.74) controlPoint2: CGPointMake(29, 28.91)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(29, 20.94)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(29, 17.52)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(27.05, 15.68) controlPoint1: CGPointMake(29, 16.51) controlPoint2: CGPointMake(28.13, 15.68)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(27.77, 27.9)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(27.05, 28.57) controlPoint1: CGPointMake(27.77, 28.27) controlPoint2: CGPointMake(27.45, 28.57)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.33, 28.57)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(13.61, 27.9) controlPoint1: CGPointMake(13.93, 28.57) controlPoint2: CGPointMake(13.61, 28.27)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(13.61, 20.94)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(27.77, 20.94)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(27.77, 27.9)];
    [varNames_bezier2Path closePath];
    CAShapeLayer *varNames_layer3 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer3.fillColor = varNames_color.CGColor;
    varNames_layer3.path = varNames_bezier2Path.CGPath;
    
    
    //// Rectangle 3 Drawing
    UIBezierPath* varNames_rectangle3Path = [UIBezierPath bezierPathWithRect: CGRectMake(14.67, 21.84, 3.25, 1)];
    CAShapeLayer *varNames_layer4 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer4.fillColor = varNames_color.CGColor;
    varNames_layer4.path = varNames_rectangle3Path.CGPath;
    
    
    //// Rectangle 4 Drawing
    UIBezierPath* varNames_rectangle4Path = [UIBezierPath bezierPathWithRect: CGRectMake(18.92, 21.84, 3.25, 1)];
    CAShapeLayer *varNames_layer5 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer5.fillColor = varNames_color.CGColor;
    varNames_layer5.path = varNames_rectangle4Path.CGPath;
    
    
    //// Rectangle 5 Drawing
    UIBezierPath* varNames_rectangle5Path = [UIBezierPath bezierPathWithRect: CGRectMake(23.22, 21.84, 3.25, 1)];
    CAShapeLayer *varNames_layer6 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer6.fillColor = varNames_color.CGColor;
    varNames_layer6.path = varNames_rectangle5Path.CGPath;
    
    //// Rectangle 6 Drawing
    UIBezierPath* varNames_rectangle6Path = [UIBezierPath bezierPathWithRect: CGRectMake(14.67, 23.73, 3.25, 1.2)];
    CAShapeLayer *varNames_layer7 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer7.fillColor = varNames_color.CGColor;
    varNames_layer7.path = varNames_rectangle6Path.CGPath;
    
    
    //// Rectangle 7 Drawing
    UIBezierPath* varNames_rectangle7Path = [UIBezierPath bezierPathWithRect: CGRectMake(18.92, 23.73, 3.25, 1.2)];
    CAShapeLayer *varNames_layer8 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer8.fillColor = varNames_color.CGColor;
    varNames_layer8.path = varNames_rectangle7Path.CGPath;
    
    
    //// Rectangle 8 Drawing
    UIBezierPath* varNames_rectangle8Path = [UIBezierPath bezierPathWithRect: CGRectMake(23.22, 23.73, 3.25, 1.2)];
    CAShapeLayer *varNames_layer9 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer9.fillColor = varNames_color.CGColor;
    varNames_layer9.path = varNames_rectangle8Path.CGPath;
    
    
    //// Rectangle 9 Drawing
    UIBezierPath* varNames_rectangle9Path = [UIBezierPath bezierPathWithRect: CGRectMake(14.67, 25.79, 3.25, 1.2)];
    CAShapeLayer *varNames_layer10 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer10.fillColor = varNames_color.CGColor;
    varNames_layer10.path = varNames_rectangle9Path.CGPath;
    
    
    //// Rectangle 10 Drawing
    UIBezierPath* varNames_rectangle10Path = [UIBezierPath bezierPathWithRect: CGRectMake(18.92, 25.79, 3.25, 1.2)];
    CAShapeLayer *varNames_layer11 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer11.fillColor = varNames_color.CGColor;
    varNames_layer11.path = varNames_rectangle10Path.CGPath;
    
    
    //// Rectangle 11 Drawing
    UIBezierPath* varNames_rectangle11Path = [UIBezierPath bezierPathWithRect: CGRectMake(23.22, 25.79, 3.25, 1.2)];
    CAShapeLayer *varNames_layer12 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer12.fillColor = varNames_color.CGColor;
    varNames_layer12.path = varNames_rectangle11Path.CGPath;
    
    
    //// Bezier 3 Drawing
    UIBezierPath* varNames_bezier3Path = [UIBezierPath bezierPath];
    [varNames_bezier3Path moveToPoint: CGPointMake(9.83, 13.89)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(9.83, 13.89)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(9.83, 13.86)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(9.83, 13.89)];
    [varNames_bezier3Path closePath];
    CAShapeLayer *varNames_layer13 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer13.fillColor = varNames_color.CGColor;
    varNames_layer13.path = varNames_bezier3Path.CGPath;
    
    //// Bezier 4 Drawing
    UIBezierPath* varNames_bezier4Path = [UIBezierPath bezierPath];
    [varNames_bezier4Path moveToPoint: CGPointMake(18.5, 9.95)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(18.42, 9.9)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(18.12, 9.69)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(17.53, 9.27)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(16.35, 8.44)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(13.98, 6.78)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(13.17, 6.5) controlPoint1: CGPointMake(13.73, 6.61) controlPoint2: CGPointMake(13.45, 6.52)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(13.12, 6.48) controlPoint1: CGPointMake(13.15, 6.49) controlPoint2: CGPointMake(13.14, 6.49)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(11.91, 6.38) controlPoint1: CGPointMake(12.71, 6.44) controlPoint2: CGPointMake(12.31, 6.41)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(11.9, 6.41)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(12.96, 7.26)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(11.7, 7.86)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(12.28, 8.81)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(9.84, 13.91)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(9.84, 13.94)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(9.83, 13.92)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(9.83, 13.94)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(9.83, 13.91)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(7.38, 8.81)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(7.97, 7.86)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(6.7, 7.26)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(7.76, 6.41)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(7.76, 6.38)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(6.55, 6.48) controlPoint1: CGPointMake(7.35, 6.41) controlPoint2: CGPointMake(6.95, 6.43)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(6.44, 6.51) controlPoint1: CGPointMake(6.51, 6.49) controlPoint2: CGPointMake(6.47, 6.5)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(5.36, 7.01) controlPoint1: CGPointMake(6.05, 6.54) controlPoint2: CGPointMake(5.66, 6.7)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(1.2, 11.25)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(1, 12.94)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(1, 12.95)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(1.01, 12.96)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(1.03, 13)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(1.07, 13.08)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(1.16, 13.24)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(1.33, 13.56)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(1.67, 14.2)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(2.36, 15.49)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(3.74, 18.06)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(5.61, 17.13) controlPoint1: CGPointMake(4.37, 17.76) controlPoint2: CGPointMake(4.99, 17.45)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(5.57, 18.76) controlPoint1: CGPointMake(5.6, 17.67) controlPoint2: CGPointMake(5.58, 18.22)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(5.58, 18.84) controlPoint1: CGPointMake(5.57, 18.79) controlPoint2: CGPointMake(5.58, 18.81)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(5.91, 18.84) controlPoint1: CGPointMake(5.69, 18.84) controlPoint2: CGPointMake(5.8, 18.84)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(6.28, 30)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(9.65, 30)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(9.66, 18.84) controlPoint1: CGPointMake(9.75, 26.75) controlPoint2: CGPointMake(9.69, 21.04)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(10, 18.84) controlPoint1: CGPointMake(9.77, 18.84) controlPoint2: CGPointMake(9.88, 18.84)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(10.37, 30)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(12.57, 30)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(11.48, 27.9) controlPoint1: CGPointMake(11.91, 29.51) controlPoint2: CGPointMake(11.48, 28.75)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(11.48, 17.52)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(12.95, 15.18) controlPoint1: CGPointMake(11.48, 16.51) controlPoint2: CGPointMake(12.08, 15.64)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(13.23, 15.59) controlPoint1: CGPointMake(13.05, 15.32) controlPoint2: CGPointMake(13.14, 15.46)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(18.14, 12.5)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(18.29, 12.41)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(18.5, 9.95)];
    [varNames_bezier4Path closePath];
    [varNames_bezier4Path moveToPoint: CGPointMake(5.66, 14.64)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(5.27, 14)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(4.51, 12.75)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(4.28, 12.39)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(5.8, 10.66)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(5.66, 14.64) controlPoint1: CGPointMake(5.74, 11.99) controlPoint2: CGPointMake(5.7, 13.32)];
    [varNames_bezier4Path closePath];
    [varNames_bezier4Path moveToPoint: CGPointMake(11.87, 12.54)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(11.59, 12.15)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(13.88, 10.92)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(13.85, 10.13) controlPoint1: CGPointMake(13.87, 10.65) controlPoint2: CGPointMake(13.86, 10.39)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(14.52, 10.65)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(14.83, 10.9)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(11.87, 12.54)];
    [varNames_bezier4Path closePath];
    CAShapeLayer *varNames_layer14 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer14.fillColor = varNames_color.CGColor;
    varNames_layer14.path = varNames_bezier4Path.CGPath;
    
    //// Bezier 5 Drawing
    UIBezierPath* varNames_bezier5Path = [UIBezierPath bezierPath];
    [varNames_bezier5Path moveToPoint: CGPointMake(10.33, 6.16)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(10.64, 7.23)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(9.83, 7.89)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(9.02, 7.23)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(9.33, 6.16)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(10.33, 6.16)];
    [varNames_bezier5Path closePath];
    CAShapeLayer *varNames_layer15 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer15.fillColor = varNames_color.CGColor;
    varNames_layer15.path = varNames_bezier5Path.CGPath;
    
    
    //// Bezier 6 Drawing
    UIBezierPath* varNames_bezier6Path = [UIBezierPath bezierPath];
    [varNames_bezier6Path moveToPoint: CGPointMake(10.41, 7.37)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(10.76, 13.87)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(9.83, 14.53)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(8.91, 13.87)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(9.26, 7.37)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(10.41, 7.37)];
    [varNames_bezier6Path closePath];
    CAShapeLayer *varNames_layer16 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer16.fillColor = varNames_color.CGColor;
    varNames_layer16.path = varNames_bezier6Path.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    [varNames_view.layer addSublayer:varNames_layer1];
    [varNames_view.layer addSublayer:varNames_layer2];
    [varNames_view.layer addSublayer:varNames_layer3];
    [varNames_view.layer addSublayer:varNames_layer4];
    [varNames_view.layer addSublayer:varNames_layer5];
    [varNames_view.layer addSublayer:varNames_layer6];
    [varNames_view.layer addSublayer:varNames_layer7];
    [varNames_view.layer addSublayer:varNames_layer8];
    [varNames_view.layer addSublayer:varNames_layer9];
    [varNames_view.layer addSublayer:varNames_layer10];
    [varNames_view.layer addSublayer:varNames_layer11];
    [varNames_view.layer addSublayer:varNames_layer12];
    [varNames_view.layer addSublayer:varNames_layer13];
    [varNames_view.layer addSublayer:varNames_layer14];
    [varNames_view.layer addSublayer:varNames_layer15];
    [varNames_view.layer addSublayer:varNames_layer16];
}

static inline void methodNames_drawPerson5(UIView *varNames_view, UIColor *varNames_color) {
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(14.81, 17.98)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.82, 17.98)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.31, 11.69) controlPoint1: CGPointMake(11.29, 18.04) controlPoint2: CGPointMake(8.37, 15.22)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.6, 5.18) controlPoint1: CGPointMake(8.25, 8.16) controlPoint2: CGPointMake(11.06, 5.24)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.11, 11.47) controlPoint1: CGPointMake(18.13, 5.12) controlPoint2: CGPointMake(21.05, 7.93)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.11, 11.58) controlPoint1: CGPointMake(21.11, 11.5) controlPoint2: CGPointMake(21.11, 11.54)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.11, 11.62)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.75, 17.98) controlPoint1: CGPointMake(21.11, 15.13) controlPoint2: CGPointMake(18.26, 17.98)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.81, 17.98)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(14.81, 5.9)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.8, 5.9)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.03, 11.47) controlPoint1: CGPointMake(11.67, 5.85) controlPoint2: CGPointMake(9.08, 8.34)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.6, 17.24) controlPoint1: CGPointMake(8.97, 14.6) controlPoint2: CGPointMake(11.47, 17.19)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.37, 11.67) controlPoint1: CGPointMake(17.73, 17.29) controlPoint2: CGPointMake(20.31, 14.8)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.37, 11.57) controlPoint1: CGPointMake(20.37, 11.64) controlPoint2: CGPointMake(20.37, 11.6)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.37, 11.52)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.75, 5.9) controlPoint1: CGPointMake(20.37, 8.42) controlPoint2: CGPointMake(17.85, 5.9)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.81, 5.9)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(14.81, 18.14)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.81, 18.14)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(8.13, 11.68) controlPoint1: CGPointMake(11.18, 18.2) controlPoint2: CGPointMake(8.19, 15.31)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.58, 5) controlPoint1: CGPointMake(8.07, 8.06) controlPoint2: CGPointMake(10.96, 5.06)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(21.27, 11.45) controlPoint1: CGPointMake(18.21, 4.94) controlPoint2: CGPointMake(21.2, 7.83)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(21.27, 11.57) controlPoint1: CGPointMake(21.27, 11.49) controlPoint2: CGPointMake(21.27, 11.53)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(21.27, 11.62)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.75, 18.14) controlPoint1: CGPointMake(21.27, 15.22) controlPoint2: CGPointMake(18.35, 18.14)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.81, 18.14)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(14.81, 5.34)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.81, 5.34)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(8.45, 11.48) controlPoint1: CGPointMake(11.36, 5.28) controlPoint2: CGPointMake(8.51, 8.03)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.59, 17.84) controlPoint1: CGPointMake(8.39, 14.93) controlPoint2: CGPointMake(11.14, 17.78)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(20.95, 11.7) controlPoint1: CGPointMake(18.04, 17.9) controlPoint2: CGPointMake(20.89, 15.15)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(20.95, 11.59) controlPoint1: CGPointMake(20.95, 11.66) controlPoint2: CGPointMake(20.95, 11.62)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(20.95, 11.53)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.75, 5.33) controlPoint1: CGPointMake(20.95, 8.1) controlPoint2: CGPointMake(18.17, 5.33)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.81, 5.34)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(14.81, 17.42)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.8, 17.42)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(8.87, 11.69) controlPoint1: CGPointMake(11.58, 17.47) controlPoint2: CGPointMake(8.92, 14.91)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.6, 5.76) controlPoint1: CGPointMake(8.81, 8.47) controlPoint2: CGPointMake(11.38, 5.81)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(20.53, 11.48) controlPoint1: CGPointMake(17.82, 5.7) controlPoint2: CGPointMake(20.47, 8.26)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(20.53, 11.59) controlPoint1: CGPointMake(20.53, 11.52) controlPoint2: CGPointMake(20.53, 11.55)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(20.53, 11.62)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.75, 17.4) controlPoint1: CGPointMake(20.53, 14.81) controlPoint2: CGPointMake(17.94, 17.4)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.81, 17.42)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(14.81, 6.07)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.79, 6.07)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(9.19, 11.49) controlPoint1: CGPointMake(11.75, 6.02) controlPoint2: CGPointMake(9.24, 8.44)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.6, 17.09) controlPoint1: CGPointMake(9.14, 14.53) controlPoint2: CGPointMake(11.56, 17.04)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(20.21, 11.68) controlPoint1: CGPointMake(17.64, 17.15) controlPoint2: CGPointMake(20.15, 14.72)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(20.21, 11.58) controlPoint1: CGPointMake(20.21, 11.65) controlPoint2: CGPointMake(20.21, 11.62)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(20.21, 11.62)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.84, 6.06) controlPoint1: CGPointMake(20.26, 8.6) controlPoint2: CGPointMake(17.86, 6.11)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.84, 6.06)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.81, 6.07)];
    [varNames_bezier2Path closePath];
    
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    //// Bezier 3 Drawing
    UIBezierPath* varNames_bezier3Path = [UIBezierPath bezierPath];
    [varNames_bezier3Path moveToPoint: CGPointMake(23.1, 24.45)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(23.1, 24.45)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(22.75, 24.19) controlPoint1: CGPointMake(22.94, 24.45) controlPoint2: CGPointMake(22.8, 24.34)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(22.76, 24.22)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(12.53, 18.55) controlPoint1: CGPointMake(21.5, 19.83) controlPoint2: CGPointMake(16.92, 17.29)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(6.9, 24.08) controlPoint1: CGPointMake(9.84, 19.32) controlPoint2: CGPointMake(7.72, 21.4)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(6.87, 24.18)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(6.41, 24.43) controlPoint1: CGPointMake(6.81, 24.38) controlPoint2: CGPointMake(6.61, 24.49)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(6.16, 23.98) controlPoint1: CGPointMake(6.22, 24.38) controlPoint2: CGPointMake(6.1, 24.17)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(6.16, 23.97) controlPoint1: CGPointMake(6.16, 23.98) controlPoint2: CGPointMake(6.16, 23.97)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(6.19, 23.89)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(17.44, 17.91) controlPoint1: CGPointMake(7.64, 19.13) controlPoint2: CGPointMake(12.68, 16.46)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(23.47, 24.04) controlPoint1: CGPointMake(20.36, 18.8) controlPoint2: CGPointMake(22.62, 21.11)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(23.44, 23.97)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(23.2, 24.43) controlPoint1: CGPointMake(23.5, 24.16) controlPoint2: CGPointMake(23.39, 24.37)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(23.09, 24.45) controlPoint1: CGPointMake(23.16, 24.44) controlPoint2: CGPointMake(23.13, 24.45)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(23.1, 24.45)];
    [varNames_bezier3Path closePath];
    
    CAShapeLayer *varNames_layer2 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer2.fillColor = varNames_color.CGColor;
    varNames_layer2.path = varNames_bezier3Path.CGPath;
    
    //// Bezier 4 Drawing
    UIBezierPath* varNames_bezier4Path = [UIBezierPath bezierPath];
    [varNames_bezier4Path moveToPoint: CGPointMake(6.52, 24.61)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(6.52, 24.61)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(6, 24.07) controlPoint1: CGPointMake(6.23, 24.6) controlPoint2: CGPointMake(5.99, 24.36)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(6.02, 23.92) controlPoint1: CGPointMake(6, 24.02) controlPoint2: CGPointMake(6.01, 23.97)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(6.01, 23.98)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(17.35, 17.69) controlPoint1: CGPointMake(7.4, 19.11) controlPoint2: CGPointMake(12.48, 16.29)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(23.59, 23.83) controlPoint1: CGPointMake(20.34, 18.55) controlPoint2: CGPointMake(22.69, 20.86)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(23.62, 23.92)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(23.27, 24.58) controlPoint1: CGPointMake(23.71, 24.2) controlPoint2: CGPointMake(23.55, 24.5)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(23.27, 24.58)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(22.61, 24.23) controlPoint1: CGPointMake(22.99, 24.66) controlPoint2: CGPointMake(22.7, 24.51)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(22.62, 24.27)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(12.59, 18.71) controlPoint1: CGPointMake(21.39, 19.96) controlPoint2: CGPointMake(16.9, 17.47)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(7.07, 24.13) controlPoint1: CGPointMake(9.95, 19.46) controlPoint2: CGPointMake(7.87, 21.5)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(7.04, 24.23)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(6.52, 24.61) controlPoint1: CGPointMake(6.97, 24.46) controlPoint2: CGPointMake(6.76, 24.61)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(6.52, 24.61)];
    [varNames_bezier4Path closePath];
    [varNames_bezier4Path moveToPoint: CGPointMake(14.81, 17.66)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(14.82, 17.66)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(6.34, 23.93) controlPoint1: CGPointMake(10.92, 17.66) controlPoint2: CGPointMake(7.48, 20.2)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(6.31, 24.02)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(6.45, 24.28) controlPoint1: CGPointMake(6.28, 24.13) controlPoint2: CGPointMake(6.34, 24.24)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(6.71, 24.14) controlPoint1: CGPointMake(6.56, 24.31) controlPoint2: CGPointMake(6.68, 24.25)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(6.71, 24.14)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(6.7, 24.18)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(17.13, 18.39) controlPoint1: CGPointMake(7.99, 19.7) controlPoint2: CGPointMake(12.66, 17.11)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(22.87, 24.04) controlPoint1: CGPointMake(19.88, 19.18) controlPoint2: CGPointMake(22.04, 21.3)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(22.9, 24.14)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(23.16, 24.28) controlPoint1: CGPointMake(22.94, 24.25) controlPoint2: CGPointMake(23.05, 24.31)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(23.16, 24.28)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(23.3, 24.02) controlPoint1: CGPointMake(23.27, 24.24) controlPoint2: CGPointMake(23.33, 24.13)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(23.32, 24.08)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(14.95, 17.66) controlPoint1: CGPointMake(22.24, 20.33) controlPoint2: CGPointMake(18.85, 17.72)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(14.81, 17.66)];
    [varNames_bezier4Path closePath];
    
    CAShapeLayer *varNames_layer3 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer3.fillColor = varNames_color.CGColor;
    varNames_layer3.path = varNames_bezier4Path.CGPath;
    
    //// Bezier 5 Drawing
    UIBezierPath* varNames_bezier5Path = [UIBezierPath bezierPath];
    [varNames_bezier5Path moveToPoint: CGPointMake(14.78, 16.51)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(11.96, 13.92) controlPoint1: CGPointMake(13.42, 16.51) controlPoint2: CGPointMake(11.96, 15.83)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(11.96, 13.92)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(12.14, 13.51) controlPoint1: CGPointMake(11.96, 13.77) controlPoint2: CGPointMake(12.02, 13.62)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(14.79, 13.1) controlPoint1: CGPointMake(12.46, 13.19) controlPoint2: CGPointMake(13.2, 13.09)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(17.67, 13.92) controlPoint1: CGPointMake(16.73, 13.12) controlPoint2: CGPointMake(17.67, 13.25)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(14.78, 16.51) controlPoint1: CGPointMake(17.65, 15.83) controlPoint2: CGPointMake(16.11, 16.51)];
    [varNames_bezier5Path closePath];
    [varNames_bezier5Path moveToPoint: CGPointMake(12.7, 14.01)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(14.78, 15.78) controlPoint1: CGPointMake(12.75, 15.61) controlPoint2: CGPointMake(14.17, 15.78)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(16.92, 14.03) controlPoint1: CGPointMake(15.27, 15.78) controlPoint2: CGPointMake(16.85, 15.65)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(14.78, 13.84) controlPoint1: CGPointMake(16.73, 13.94) controlPoint2: CGPointMake(16.2, 13.85)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(12.7, 14.01) controlPoint1: CGPointMake(13.31, 13.82) controlPoint2: CGPointMake(12.85, 13.93)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(12.7, 14.01)];
    [varNames_bezier5Path closePath];
    
    CAShapeLayer *varNames_layer4 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer4.fillColor = varNames_color.CGColor;
    varNames_layer4.path = varNames_bezier5Path.CGPath;
    
    
    //// Bezier 6 Drawing
    UIBezierPath* varNames_bezier6Path = [UIBezierPath bezierPath];
    [varNames_bezier6Path moveToPoint: CGPointMake(14.78, 16.67)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(11.8, 13.92) controlPoint1: CGPointMake(13.34, 16.67) controlPoint2: CGPointMake(11.8, 15.95)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(11.8, 13.92)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(12.02, 13.4) controlPoint1: CGPointMake(11.8, 13.72) controlPoint2: CGPointMake(11.88, 13.53)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(14.79, 12.94) controlPoint1: CGPointMake(12.37, 13.05) controlPoint2: CGPointMake(13.12, 12.93)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(17.81, 13.92) controlPoint1: CGPointMake(16.56, 12.96) controlPoint2: CGPointMake(17.81, 13.04)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(14.78, 16.67) controlPoint1: CGPointMake(17.81, 15.95) controlPoint2: CGPointMake(16.18, 16.67)];
    [varNames_bezier6Path closePath];
    [varNames_bezier6Path moveToPoint: CGPointMake(14.51, 13.26)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(12.25, 13.62) controlPoint1: CGPointMake(13.17, 13.26) controlPoint2: CGPointMake(12.51, 13.37)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(12.25, 13.62)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(12.12, 13.92) controlPoint1: CGPointMake(12.17, 13.7) controlPoint2: CGPointMake(12.12, 13.81)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(14.78, 16.35) controlPoint1: CGPointMake(12.12, 15.71) controlPoint2: CGPointMake(13.49, 16.35)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(17.49, 13.92) controlPoint1: CGPointMake(16.07, 16.35) controlPoint2: CGPointMake(17.49, 15.71)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(14.78, 13.26) controlPoint1: CGPointMake(17.49, 13.44) controlPoint2: CGPointMake(16.83, 13.28)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(14.51, 13.26)];
    [varNames_bezier6Path closePath];
    [varNames_bezier6Path moveToPoint: CGPointMake(14.78, 15.93)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(12.54, 14.01) controlPoint1: CGPointMake(14.27, 15.93) controlPoint2: CGPointMake(12.6, 15.8)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(12.54, 13.91)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(12.64, 13.87)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(14.79, 13.68) controlPoint1: CGPointMake(12.91, 13.73) controlPoint2: CGPointMake(13.65, 13.67)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(16.99, 13.88) controlPoint1: CGPointMake(16, 13.68) controlPoint2: CGPointMake(16.71, 13.76)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(17.09, 13.93)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(17.09, 14.04)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(14.78, 15.93) controlPoint1: CGPointMake(17.01, 15.8) controlPoint2: CGPointMake(15.3, 15.93)];
    [varNames_bezier6Path closePath];
    [varNames_bezier6Path moveToPoint: CGPointMake(12.86, 14.11)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(14.78, 15.61) controlPoint1: CGPointMake(12.97, 15.42) controlPoint2: CGPointMake(14.1, 15.61)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(16.75, 14.14) controlPoint1: CGPointMake(15.34, 15.61) controlPoint2: CGPointMake(16.62, 15.47)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(16.76, 14.14)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(14.76, 14) controlPoint1: CGPointMake(16.1, 14.02) controlPoint2: CGPointMake(15.43, 13.97)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(14.73, 13.99)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(12.8, 14.13) controlPoint1: CGPointMake(14.08, 13.96) controlPoint2: CGPointMake(13.43, 14.01)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(12.86, 14.11)];
    [varNames_bezier6Path closePath];
    
    CAShapeLayer *varNames_layer5 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer5.fillColor = varNames_color.CGColor;
    varNames_layer5.path = varNames_bezier6Path.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    [varNames_view.layer addSublayer:varNames_layer1];
    [varNames_view.layer addSublayer:varNames_layer2];
    [varNames_view.layer addSublayer:varNames_layer3];
    [varNames_view.layer addSublayer:varNames_layer4];
    [varNames_view.layer addSublayer:varNames_layer5];
    
}
static inline void methodNames_drawPerson6(UIView *varNames_view, UIColor *varNames_color) {
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(26.75, 22.76)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.39, 13.66) controlPoint1: CGPointMake(25.26, 18.31) controlPoint2: CGPointMake(22.17, 14.94)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.8, 7.75) controlPoint1: CGPointMake(20.43, 12.52) controlPoint2: CGPointMake(21.8, 10.29)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.17, 1) controlPoint1: CGPointMake(21.8, 4.05) controlPoint2: CGPointMake(18.82, 1)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.55, 7.81) controlPoint1: CGPointMake(11.52, 1) controlPoint2: CGPointMake(8.55, 4.05)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.77, 13.6) controlPoint1: CGPointMake(8.55, 10.29) controlPoint2: CGPointMake(9.85, 12.45)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.22, 22.76) controlPoint1: CGPointMake(7.93, 14.81) controlPoint2: CGPointMake(4.71, 18.18)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.84, 27.09) controlPoint1: CGPointMake(2.79, 24.16) controlPoint2: CGPointMake(2.98, 25.88)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.25, 29) controlPoint1: CGPointMake(4.65, 28.24) controlPoint2: CGPointMake(5.89, 29)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.65, 29)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.39, 28.17) controlPoint1: CGPointMake(18.02, 29) controlPoint2: CGPointMake(18.39, 28.55)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.65, 27.35) controlPoint1: CGPointMake(18.39, 27.79) controlPoint2: CGPointMake(18.08, 27.35)];
    [varNames_bezierPath addLineToPoint: CGPointMake(7.25, 27.35)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.02, 26.14) controlPoint1: CGPointMake(6.38, 27.35) controlPoint2: CGPointMake(5.52, 26.9)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.59, 23.27) controlPoint1: CGPointMake(4.46, 25.31) controlPoint2: CGPointMake(4.28, 24.23)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.99, 14.55) controlPoint1: CGPointMake(6.26, 18.05) controlPoint2: CGPointMake(10.47, 14.55)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25.39, 23.27) controlPoint1: CGPointMake(19.51, 14.55) controlPoint2: CGPointMake(23.71, 18.05)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(24.95, 26.14) controlPoint1: CGPointMake(25.7, 24.23) controlPoint2: CGPointMake(25.57, 25.31)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.72, 27.35) controlPoint1: CGPointMake(24.4, 26.9) controlPoint2: CGPointMake(23.59, 27.35)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.98, 28.11) controlPoint1: CGPointMake(22.35, 27.35) controlPoint2: CGPointMake(21.98, 27.66)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.72, 28.87) controlPoint1: CGPointMake(21.98, 28.49) controlPoint2: CGPointMake(22.29, 28.87)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.13, 27.09) controlPoint1: CGPointMake(24.09, 28.87) controlPoint2: CGPointMake(25.32, 28.24)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.75, 22.76) controlPoint1: CGPointMake(27, 25.75) controlPoint2: CGPointMake(27.24, 24.16)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(9.97, 7.81)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.17, 2.53) controlPoint1: CGPointMake(9.97, 4.88) controlPoint2: CGPointMake(12.32, 2.53)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.37, 7.81) controlPoint1: CGPointMake(18.02, 2.53) controlPoint2: CGPointMake(20.37, 4.88)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.17, 13.09) controlPoint1: CGPointMake(20.37, 10.74) controlPoint2: CGPointMake(18.02, 13.09)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.97, 7.81) controlPoint1: CGPointMake(12.32, 13.09) controlPoint2: CGPointMake(9.97, 10.74)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
}



#pragma mark ---------- 绘制绑定身份证页面输入框左侧icon
static inline void methodNames_drawPerson(UIView *varNames_view, UIColor *varNames_color) {
    NSInteger varNames_type = methodNames_getDefault_inputViewType_config();
    switch (varNames_type) {
        case 0:
        {
            
        }
            break;
        case 1:
        {
            methodNames_drawPerson1(varNames_view, varNames_color);
        }
            break;
        case 2:
        {
            methodNames_drawPerson2(varNames_view, varNames_color);
        }
            break;
        case 3:
        {
            methodNames_drawPerson3(varNames_view, varNames_color);
        }
            break;
        case 4:
        {
            methodNames_drawPerson4(varNames_view, varNames_color);
        }
            break;
        case 5:
        {
            methodNames_drawPerson5(varNames_view, varNames_color);
        }
            break;
        default:
        {
            methodNames_drawPerson6(varNames_view, varNames_color);
        }
            break;
    }
}

#pragma mark ---------- 证件icon
static inline void methodNames_drawCard1(UIView *varNames_view, UIColor *varNames_color) {
    
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(13.24, 12.43)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.74, 9) controlPoint1: CGPointMake(13.24, 10.54) controlPoint2: CGPointMake(11.68, 9)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.25, 12.43) controlPoint1: CGPointMake(7.81, 9) controlPoint2: CGPointMake(6.25, 10.54)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.74, 15.86) controlPoint1: CGPointMake(6.25, 14.32) controlPoint2: CGPointMake(7.81, 15.86)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.24, 12.43) controlPoint1: CGPointMake(11.68, 15.86) controlPoint2: CGPointMake(13.24, 14.32)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(7.65, 12.43)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.74, 10.37) controlPoint1: CGPointMake(7.65, 11.29) controlPoint2: CGPointMake(8.59, 10.37)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.84, 12.43) controlPoint1: CGPointMake(10.9, 10.37) controlPoint2: CGPointMake(11.84, 11.29)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.74, 14.49) controlPoint1: CGPointMake(11.84, 13.56) controlPoint2: CGPointMake(10.9, 14.49)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.65, 12.43) controlPoint1: CGPointMake(8.59, 14.49) controlPoint2: CGPointMake(7.65, 13.56)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(4.57, 19.49)];
    [varNames_bezierPath addLineToPoint: CGPointMake(4.57, 20.2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(5.28, 20.2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.97, 20.2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.19, 20.2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.89, 20.2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.89, 19.49)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.23, 14.49) controlPoint1: CGPointMake(15.89, 16.82) controlPoint2: CGPointMake(13.27, 14.49)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.69, 14.51) controlPoint1: CGPointMake(10.05, 14.49) controlPoint2: CGPointMake(9.87, 14.49)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.05, 15.28) controlPoint1: CGPointMake(9.31, 14.54) controlPoint2: CGPointMake(9.02, 14.89)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.61, 15.77) controlPoint1: CGPointMake(9.08, 15.67) controlPoint2: CGPointMake(9.22, 15.81)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.23, 15.91) controlPoint1: CGPointMake(9.75, 15.76) controlPoint2: CGPointMake(10.09, 15.91)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.48, 18.77) controlPoint1: CGPointMake(12.53, 15.91) controlPoint2: CGPointMake(14.48, 17.13)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.97, 18.77)];
    [varNames_bezierPath addLineToPoint: CGPointMake(5.99, 18.77)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.58, 16.66) controlPoint1: CGPointMake(5.99, 18.27) controlPoint2: CGPointMake(6.54, 17.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.8, 15.67) controlPoint1: CGPointMake(7.91, 16.45) controlPoint2: CGPointMake(8.01, 16)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.82, 15.46) controlPoint1: CGPointMake(7.59, 15.34) controlPoint2: CGPointMake(7.15, 15.24)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.57, 19.49) controlPoint1: CGPointMake(5.39, 16.38) controlPoint2: CGPointMake(4.57, 17.76)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(4.5, 23.65)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.4, 21.63) controlPoint1: CGPointMake(3.34, 23.65) controlPoint2: CGPointMake(2.4, 22.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.4, 6.35)];
    [varNames_bezierPath addLineToPoint: CGPointMake(25.5, 6.35)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(27.6, 8.36) controlPoint1: CGPointMake(26.66, 6.35) controlPoint2: CGPointMake(27.6, 7.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(27.6, 21.58)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(28.3, 22.26) controlPoint1: CGPointMake(27.6, 21.95) controlPoint2: CGPointMake(27.91, 22.26)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(29, 21.58) controlPoint1: CGPointMake(28.69, 22.26) controlPoint2: CGPointMake(29, 21.95)];
    [varNames_bezierPath addLineToPoint: CGPointMake(29, 8.36)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25.5, 5) controlPoint1: CGPointMake(29, 6.51) controlPoint2: CGPointMake(27.43, 5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(1.7, 5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(1, 5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(1, 5.67)];
    [varNames_bezierPath addLineToPoint: CGPointMake(1, 21.63)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.5, 25) controlPoint1: CGPointMake(1, 23.49) controlPoint2: CGPointMake(2.57, 25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(25.93, 25)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.63, 24.33) controlPoint1: CGPointMake(26.31, 25) controlPoint2: CGPointMake(26.63, 24.7)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25.93, 23.65) controlPoint1: CGPointMake(26.63, 23.95) controlPoint2: CGPointMake(26.31, 23.65)];
    [varNames_bezierPath addLineToPoint: CGPointMake(4.5, 23.65)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(24.82, 12.43)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25.48, 11.86) controlPoint1: CGPointMake(25.19, 12.43) controlPoint2: CGPointMake(25.48, 12.17)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(24.82, 11.29) controlPoint1: CGPointMake(25.48, 11.54) controlPoint2: CGPointMake(25.19, 11.29)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.82, 11.29)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.16, 11.86) controlPoint1: CGPointMake(16.46, 11.29) controlPoint2: CGPointMake(16.16, 11.54)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.82, 12.43) controlPoint1: CGPointMake(16.16, 12.17) controlPoint2: CGPointMake(16.46, 12.43)];
    [varNames_bezierPath addLineToPoint: CGPointMake(24.82, 12.43)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(23.05, 15.29)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.74, 14.71) controlPoint1: CGPointMake(23.43, 15.29) controlPoint2: CGPointMake(23.74, 15.03)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.05, 14.14) controlPoint1: CGPointMake(23.74, 14.4) controlPoint2: CGPointMake(23.43, 14.14)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.84, 14.14)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.16, 14.71) controlPoint1: CGPointMake(16.46, 14.14) controlPoint2: CGPointMake(16.16, 14.4)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.84, 15.29) controlPoint1: CGPointMake(16.16, 15.03) controlPoint2: CGPointMake(16.46, 15.29)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.05, 15.29)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
}
static inline void methodNames_drawCard2(UIView *varNames_view, UIColor *varNames_color) {
    
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(12.77, 19.84)];
    [varNames_bezierPath addLineToPoint: CGPointMake(4.36, 19.84)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.53, 16.96) controlPoint1: CGPointMake(4.48, 17.74) controlPoint2: CGPointMake(7.16, 18.05)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.55, 15.99) controlPoint1: CGPointMake(7.56, 16.59) controlPoint2: CGPointMake(7.55, 16.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.06, 14.86) controlPoint1: CGPointMake(7.39, 15.9) controlPoint2: CGPointMake(7.11, 15.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.69, 14.21) controlPoint1: CGPointMake(6.94, 14.85) controlPoint2: CGPointMake(6.75, 14.72)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.85, 13.73) controlPoint1: CGPointMake(6.66, 13.93) controlPoint2: CGPointMake(6.78, 13.78)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.55, 10.46) controlPoint1: CGPointMake(6.44, 12) controlPoint2: CGPointMake(6.67, 10.49)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.52, 10.86) controlPoint1: CGPointMake(9.02, 10.46) controlPoint2: CGPointMake(9.38, 10.59)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.28, 13.73) controlPoint1: CGPointMake(10.89, 11.07) controlPoint2: CGPointMake(10.48, 13.08)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.45, 14.21) controlPoint1: CGPointMake(10.36, 13.78) controlPoint2: CGPointMake(10.48, 13.93)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.08, 14.86) controlPoint1: CGPointMake(10.39, 14.72) controlPoint2: CGPointMake(10.2, 14.85)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.6, 15.99) controlPoint1: CGPointMake(10.03, 15.33) controlPoint2: CGPointMake(9.75, 15.9)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.62, 16.96) controlPoint1: CGPointMake(9.6, 16.33) controlPoint2: CGPointMake(9.59, 16.59)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.77, 19.84) controlPoint1: CGPointMake(9.99, 18.05) controlPoint2: CGPointMake(12.66, 17.74)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(26.22, 13.39)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(25.66, 13.98) controlPoint1: CGPointMake(26.22, 13.71) controlPoint2: CGPointMake(25.97, 13.98)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(15.57, 13.98)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15.01, 13.39) controlPoint1: CGPointMake(15.26, 13.98) controlPoint2: CGPointMake(15.01, 13.71)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15.57, 12.8) controlPoint1: CGPointMake(15.01, 13.06) controlPoint2: CGPointMake(15.26, 12.8)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(25.66, 12.8)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(26.22, 13.39) controlPoint1: CGPointMake(25.97, 12.8) controlPoint2: CGPointMake(26.22, 13.06)];
    [varNames_bezier2Path closePath];
    
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    //// Bezier 3 Drawing
    UIBezierPath* varNames_bezier3Path = [UIBezierPath bezierPath];
    [varNames_bezier3Path moveToPoint: CGPointMake(26.22, 16.32)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(25.66, 16.91) controlPoint1: CGPointMake(26.22, 16.65) controlPoint2: CGPointMake(25.97, 16.91)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(15.57, 16.91)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(15.01, 16.32) controlPoint1: CGPointMake(15.26, 16.91) controlPoint2: CGPointMake(15.01, 16.65)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(15.57, 15.73) controlPoint1: CGPointMake(15.01, 16) controlPoint2: CGPointMake(15.26, 15.73)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(25.66, 15.73)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(26.22, 16.32) controlPoint1: CGPointMake(25.97, 15.73) controlPoint2: CGPointMake(26.22, 16)];
    [varNames_bezier3Path closePath];
    
    CAShapeLayer *varNames_layer2 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer2.fillColor = varNames_color.CGColor;
    varNames_layer2.path = varNames_bezier3Path.CGPath;
    
    //// Bezier 4 Drawing
    UIBezierPath* varNames_bezier4Path = [UIBezierPath bezierPath];
    [varNames_bezier4Path moveToPoint: CGPointMake(26.22, 19.26)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(25.66, 19.85) controlPoint1: CGPointMake(26.22, 19.58) controlPoint2: CGPointMake(25.97, 19.85)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(15.57, 19.85)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(15.01, 19.26) controlPoint1: CGPointMake(15.26, 19.85) controlPoint2: CGPointMake(15.01, 19.58)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(15.57, 18.67) controlPoint1: CGPointMake(15.01, 18.93) controlPoint2: CGPointMake(15.26, 18.67)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(25.66, 18.67)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(26.22, 19.26) controlPoint1: CGPointMake(25.97, 18.67) controlPoint2: CGPointMake(26.22, 18.93)];
    [varNames_bezier4Path closePath];
    
    CAShapeLayer *varNames_layer3 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer3.fillColor = varNames_color.CGColor;
    varNames_layer3.path = varNames_bezier4Path.CGPath;
    
    //// Bezier 5 Drawing
    UIBezierPath* varNames_bezier5Path = [UIBezierPath bezierPath];
    [varNames_bezier5Path moveToPoint: CGPointMake(29.03, 8.11)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(29.03, 24.54)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(27.34, 26.3) controlPoint1: CGPointMake(29.03, 25.51) controlPoint2: CGPointMake(28.27, 26.3)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(25.1, 26.3)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(24.54, 25.71) controlPoint1: CGPointMake(24.79, 26.3) controlPoint2: CGPointMake(24.54, 26.04)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(25.1, 25.12) controlPoint1: CGPointMake(24.54, 25.39) controlPoint2: CGPointMake(24.79, 25.12)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(27.34, 25.12)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(27.9, 24.54) controlPoint1: CGPointMake(27.65, 25.12) controlPoint2: CGPointMake(27.9, 24.86)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(27.9, 8.11)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(27.34, 7.52) controlPoint1: CGPointMake(27.9, 7.79) controlPoint2: CGPointMake(27.65, 7.52)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(15.01, 7.52)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(14.45, 6.94) controlPoint1: CGPointMake(14.7, 7.52) controlPoint2: CGPointMake(14.45, 7.26)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(14.45, 5.76)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(13.89, 5.18) controlPoint1: CGPointMake(14.45, 5.44) controlPoint2: CGPointMake(14.2, 5.18)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(2.68, 5.18)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(2.12, 5.76) controlPoint1: CGPointMake(2.37, 5.18) controlPoint2: CGPointMake(2.12, 5.44)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(2.12, 24.54)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(2.68, 25.12) controlPoint1: CGPointMake(2.12, 24.86) controlPoint2: CGPointMake(2.37, 25.12)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(5.48, 25.12)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(5.48, 23.36)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(6.05, 22.78) controlPoint1: CGPointMake(5.48, 23.04) controlPoint2: CGPointMake(5.74, 22.78)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(8.29, 22.78)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(8.85, 23.36) controlPoint1: CGPointMake(8.6, 22.78) controlPoint2: CGPointMake(8.85, 23.04)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(8.29, 23.95) controlPoint1: CGPointMake(8.85, 23.69) controlPoint2: CGPointMake(8.6, 23.95)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(6.61, 23.95)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(6.61, 25.71)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(6.05, 26.3) controlPoint1: CGPointMake(6.61, 26.04) controlPoint2: CGPointMake(6.36, 26.3)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(2.68, 26.3)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(1, 24.54) controlPoint1: CGPointMake(1.76, 26.3) controlPoint2: CGPointMake(1, 25.51)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(1, 5.76)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(2.68, 4) controlPoint1: CGPointMake(1, 4.79) controlPoint2: CGPointMake(1.76, 4)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(13.89, 4)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(15.57, 5.76) controlPoint1: CGPointMake(14.82, 4) controlPoint2: CGPointMake(15.57, 4.79)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(15.57, 6.35)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(27.34, 6.35)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(29.03, 8.11) controlPoint1: CGPointMake(28.27, 6.35) controlPoint2: CGPointMake(29.03, 7.14)];
    [varNames_bezier5Path closePath];
    
    CAShapeLayer *varNames_layer4 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer4.fillColor = varNames_color.CGColor;
    varNames_layer4.path = varNames_bezier5Path.CGPath;
    
    //// Bezier 6 Drawing
    UIBezierPath* varNames_bezier6Path = [UIBezierPath bezierPath];
    [varNames_bezier6Path moveToPoint: CGPointMake(24.54, 23.36)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(23.98, 23.95) controlPoint1: CGPointMake(24.54, 23.69) controlPoint2: CGPointMake(24.29, 23.95)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(22.3, 23.95)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(22.3, 25.71)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(21.74, 26.3) controlPoint1: CGPointMake(22.3, 26.04) controlPoint2: CGPointMake(22.05, 26.3)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(9.41, 26.3)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(8.85, 25.71) controlPoint1: CGPointMake(9.1, 26.3) controlPoint2: CGPointMake(8.85, 26.04)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(9.41, 25.12) controlPoint1: CGPointMake(8.85, 25.39) controlPoint2: CGPointMake(9.1, 25.12)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(21.18, 25.12)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(21.18, 23.36)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(21.74, 22.78) controlPoint1: CGPointMake(21.18, 23.04) controlPoint2: CGPointMake(21.43, 22.78)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(23.98, 22.78)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(24.54, 23.36) controlPoint1: CGPointMake(24.29, 22.78) controlPoint2: CGPointMake(24.54, 23.04)];
    [varNames_bezier6Path closePath];
    
    CAShapeLayer *varNames_layer5 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer5.fillColor = varNames_color.CGColor;
    varNames_layer5.path = varNames_bezier6Path.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    [varNames_view.layer addSublayer:varNames_layer1];
    [varNames_view.layer addSublayer:varNames_layer2];
    [varNames_view.layer addSublayer:varNames_layer3];
    [varNames_view.layer addSublayer:varNames_layer4];
    [varNames_view.layer addSublayer:varNames_layer5];
    
}
static inline void methodNames_drawCard3(UIView *varNames_view, UIColor *varNames_color) {
    
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(26.64, 5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(5.36, 5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(5.36, 5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2, 7.94) controlPoint1: CGPointMake(3.5, 5) controlPoint2: CGPointMake(2, 6.32)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2, 21.66)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2, 21.66)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.36, 24.6) controlPoint1: CGPointMake(2, 23.28) controlPoint2: CGPointMake(3.5, 24.6)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.64, 24.6)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.64, 24.6)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(30, 21.66) controlPoint1: CGPointMake(28.5, 24.6) controlPoint2: CGPointMake(30, 23.28)];
    [varNames_bezierPath addLineToPoint: CGPointMake(30, 7.94)];
    [varNames_bezierPath addLineToPoint: CGPointMake(30, 7.94)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.64, 5) controlPoint1: CGPointMake(30, 6.32) controlPoint2: CGPointMake(28.5, 5)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(6.98, 23.38)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.98, 23.37)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.84, 19.81) controlPoint1: CGPointMake(7.2, 21.22) controlPoint2: CGPointMake(9.37, 19.62)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.91, 23.37) controlPoint1: CGPointMake(14, 19.97) controlPoint2: CGPointMake(15.72, 21.48)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.98, 23.38)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(28.6, 21.66)];
    [varNames_bezierPath addLineToPoint: CGPointMake(28.6, 21.66)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.64, 23.38) controlPoint1: CGPointMake(28.6, 22.61) controlPoint2: CGPointMake(27.72, 23.38)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.31, 23.38)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.31, 23.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.04, 18.56) controlPoint1: CGPointMake(17.08, 20.5) controlPoint2: CGPointMake(14.27, 18.37)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.58, 23.42) controlPoint1: CGPointMake(8.08, 18.75) controlPoint2: CGPointMake(5.74, 20.83)];
    [varNames_bezierPath addLineToPoint: CGPointMake(5.36, 23.38)];
    [varNames_bezierPath addLineToPoint: CGPointMake(5.36, 23.38)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.4, 21.66) controlPoint1: CGPointMake(4.28, 23.38) controlPoint2: CGPointMake(3.4, 22.61)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.4, 7.94)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.4, 7.94)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.36, 6.22) controlPoint1: CGPointMake(3.4, 6.99) controlPoint2: CGPointMake(4.28, 6.22)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.64, 6.22)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.64, 6.22)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(28.6, 7.94) controlPoint1: CGPointMake(27.72, 6.22) controlPoint2: CGPointMake(28.6, 6.99)];
    [varNames_bezierPath addLineToPoint: CGPointMake(28.6, 21.66)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(11.45, 8.24)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(11.45, 8.24)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(6.27, 12.77) controlPoint1: CGPointMake(8.59, 8.24) controlPoint2: CGPointMake(6.27, 10.27)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(11.45, 17.3) controlPoint1: CGPointMake(6.27, 15.27) controlPoint2: CGPointMake(8.59, 17.3)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(16.63, 12.77) controlPoint1: CGPointMake(14.31, 17.3) controlPoint2: CGPointMake(16.63, 15.27)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(16.63, 12.77)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(11.45, 8.24) controlPoint1: CGPointMake(16.63, 10.27) controlPoint2: CGPointMake(14.31, 8.24)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(11.45, 16.08)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(11.45, 16.08)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(7.67, 12.77) controlPoint1: CGPointMake(9.36, 16.08) controlPoint2: CGPointMake(7.67, 14.6)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(11.45, 9.46) controlPoint1: CGPointMake(7.67, 10.94) controlPoint2: CGPointMake(9.36, 9.46)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15.23, 12.77) controlPoint1: CGPointMake(13.53, 9.46) controlPoint2: CGPointMake(15.23, 10.94)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(15.23, 12.77)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(11.44, 16.08) controlPoint1: CGPointMake(15.23, 14.6) controlPoint2: CGPointMake(13.53, 16.08)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(11.45, 16.08)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(25.66, 12.72)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(20.27, 12.72)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(20.27, 12.72)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(19.57, 13.33) controlPoint1: CGPointMake(19.89, 12.72) controlPoint2: CGPointMake(19.57, 12.99)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(20.27, 13.94) controlPoint1: CGPointMake(19.57, 13.67) controlPoint2: CGPointMake(19.89, 13.94)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(25.67, 13.94)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(25.67, 13.94)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(26.37, 13.33) controlPoint1: CGPointMake(26.05, 13.94) controlPoint2: CGPointMake(26.37, 13.67)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(25.67, 12.72) controlPoint1: CGPointMake(26.37, 12.99) controlPoint2: CGPointMake(26.05, 12.72)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(25.66, 12.72)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(25.66, 16.64)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(20.27, 16.64)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(20.27, 16.64)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(19.57, 17.25) controlPoint1: CGPointMake(19.89, 16.64) controlPoint2: CGPointMake(19.57, 16.91)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(20.27, 17.86) controlPoint1: CGPointMake(19.57, 17.59) controlPoint2: CGPointMake(19.89, 17.86)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(25.67, 17.86)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(25.67, 17.86)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(26.37, 17.25) controlPoint1: CGPointMake(26.05, 17.86) controlPoint2: CGPointMake(26.37, 17.59)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(25.67, 16.64) controlPoint1: CGPointMake(26.37, 16.91) controlPoint2: CGPointMake(26.05, 16.64)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(25.66, 16.64)];
    [varNames_bezier2Path closePath];
    
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    [varNames_view.layer addSublayer:varNames_layer1];
    
}
static inline void methodNames_drawCard4(UIView *varNames_view, UIColor *varNames_color) {
    
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(25.69, 5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(4.2, 5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(1, 8.2) controlPoint1: CGPointMake(2.44, 5) controlPoint2: CGPointMake(1, 6.44)];
    [varNames_bezierPath addLineToPoint: CGPointMake(1, 22.03)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.2, 25.23) controlPoint1: CGPointMake(1, 23.79) controlPoint2: CGPointMake(2.44, 25.23)];
    [varNames_bezierPath addLineToPoint: CGPointMake(25.69, 25.23)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(28.89, 22.03) controlPoint1: CGPointMake(27.46, 25.23) controlPoint2: CGPointMake(28.89, 23.79)];
    [varNames_bezierPath addLineToPoint: CGPointMake(28.89, 8.2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25.69, 5) controlPoint1: CGPointMake(28.89, 6.44) controlPoint2: CGPointMake(27.46, 5)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(27.67, 13.9)];
    [varNames_bezierPath addLineToPoint: CGPointMake(27.67, 15.17)];
    [varNames_bezierPath addLineToPoint: CGPointMake(27.67, 21.15)];
    [varNames_bezierPath addLineToPoint: CGPointMake(27.67, 21.76)];
    [varNames_bezierPath addLineToPoint: CGPointMake(27.67, 22.03)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25.69, 24.01) controlPoint1: CGPointMake(27.67, 23.12) controlPoint2: CGPointMake(26.79, 24.01)];
    [varNames_bezierPath addLineToPoint: CGPointMake(4.2, 24.01)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.22, 22.03) controlPoint1: CGPointMake(3.11, 24.01) controlPoint2: CGPointMake(2.22, 23.12)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.22, 21.76)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.22, 21.15)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.22, 15.17)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.22, 13.9)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.22, 8.2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.2, 6.22) controlPoint1: CGPointMake(2.22, 7.11) controlPoint2: CGPointMake(3.11, 6.22)];
    [varNames_bezierPath addLineToPoint: CGPointMake(25.69, 6.22)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(27.67, 8.2) controlPoint1: CGPointMake(26.79, 6.22) controlPoint2: CGPointMake(27.67, 7.11)];
    [varNames_bezierPath addLineToPoint: CGPointMake(27.67, 13.9)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(15.38, 12.77)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.09, 10.86) controlPoint1: CGPointMake(15.08, 12.06) controlPoint2: CGPointMake(14.64, 11.41)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(12.18, 9.57) controlPoint1: CGPointMake(13.54, 10.31) controlPoint2: CGPointMake(12.9, 9.88)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(9.84, 9.1) controlPoint1: CGPointMake(11.44, 9.26) controlPoint2: CGPointMake(10.65, 9.1)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(7.5, 9.57) controlPoint1: CGPointMake(9.03, 9.1) controlPoint2: CGPointMake(8.24, 9.26)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(5.59, 10.86) controlPoint1: CGPointMake(6.78, 9.88) controlPoint2: CGPointMake(6.14, 10.31)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(4.3, 12.77) controlPoint1: CGPointMake(5.04, 11.41) controlPoint2: CGPointMake(4.6, 12.06)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(3.83, 15.11) controlPoint1: CGPointMake(3.99, 13.51) controlPoint2: CGPointMake(3.83, 14.3)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(4.3, 17.45) controlPoint1: CGPointMake(3.83, 15.92) controlPoint2: CGPointMake(3.99, 16.71)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(5.59, 19.36) controlPoint1: CGPointMake(4.6, 18.17) controlPoint2: CGPointMake(5.04, 18.81)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(7.5, 20.65) controlPoint1: CGPointMake(6.14, 19.92) controlPoint2: CGPointMake(6.78, 20.35)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(9.84, 21.12) controlPoint1: CGPointMake(8.24, 20.97) controlPoint2: CGPointMake(9.03, 21.12)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(12.18, 20.65) controlPoint1: CGPointMake(10.65, 21.12) controlPoint2: CGPointMake(11.44, 20.97)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.09, 19.36) controlPoint1: CGPointMake(12.9, 20.35) controlPoint2: CGPointMake(13.54, 19.92)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15.38, 17.45) controlPoint1: CGPointMake(14.64, 18.81) controlPoint2: CGPointMake(15.08, 18.17)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15.85, 15.11) controlPoint1: CGPointMake(15.69, 16.71) controlPoint2: CGPointMake(15.85, 15.92)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15.38, 12.77) controlPoint1: CGPointMake(15.85, 14.3) controlPoint2: CGPointMake(15.69, 13.51)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(8.07, 12.59)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(8.08, 12.59)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(9.84, 10.83) controlPoint1: CGPointMake(8.08, 11.62) controlPoint2: CGPointMake(8.87, 10.83)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(11.61, 12.59) controlPoint1: CGPointMake(10.82, 10.83) controlPoint2: CGPointMake(11.61, 11.62)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(11.6, 12.59)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(11.6, 14.65)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(11.61, 14.65)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(9.84, 16.41) controlPoint1: CGPointMake(11.61, 15.62) controlPoint2: CGPointMake(10.82, 16.41)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(8.08, 14.65) controlPoint1: CGPointMake(8.87, 16.41) controlPoint2: CGPointMake(8.08, 15.62)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(8.07, 14.65)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(8.07, 12.59)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(11.96, 20.14)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(9.84, 20.57) controlPoint1: CGPointMake(11.29, 20.43) controlPoint2: CGPointMake(10.58, 20.57)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(7.71, 20.14) controlPoint1: CGPointMake(9.1, 20.57) controlPoint2: CGPointMake(8.39, 20.43)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(6.02, 19.01) controlPoint1: CGPointMake(7.08, 19.88) controlPoint2: CGPointMake(6.51, 19.5)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(7.81, 15.83) controlPoint1: CGPointMake(6.03, 17.67) controlPoint2: CGPointMake(6.75, 16.49)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(9.84, 17) controlPoint1: CGPointMake(8.22, 16.53) controlPoint2: CGPointMake(8.97, 17)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(11.88, 15.83) controlPoint1: CGPointMake(10.71, 17) controlPoint2: CGPointMake(11.47, 16.53)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(13.66, 19.01) controlPoint1: CGPointMake(12.94, 16.5) controlPoint2: CGPointMake(13.64, 17.67)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(11.96, 20.14) controlPoint1: CGPointMake(13.17, 19.5) controlPoint2: CGPointMake(12.6, 19.88)];
    [varNames_bezier2Path closePath];
    
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    //// Bezier 3 Drawing
    UIBezierPath* varNames_bezier3Path = [UIBezierPath bezierPath];
    [varNames_bezier3Path moveToPoint: CGPointMake(22.89, 19.71)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(20.27, 19.71)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(20.27, 10.43)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(22.89, 10.43)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(26.25, 13.78) controlPoint1: CGPointMake(24.74, 10.43) controlPoint2: CGPointMake(26.25, 11.93)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(26.25, 16.36)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(22.89, 19.71) controlPoint1: CGPointMake(26.25, 18.21) controlPoint2: CGPointMake(24.74, 19.71)];
    [varNames_bezier3Path closePath];
    [varNames_bezier3Path moveToPoint: CGPointMake(21.55, 18.44)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(22.89, 18.44)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(24.97, 16.36) controlPoint1: CGPointMake(24.04, 18.44) controlPoint2: CGPointMake(24.97, 17.5)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(24.97, 13.78)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(22.89, 11.7) controlPoint1: CGPointMake(24.97, 12.64) controlPoint2: CGPointMake(24.04, 11.7)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(21.55, 11.7)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(21.55, 18.44)];
    [varNames_bezier3Path closePath];
    
    CAShapeLayer *varNames_layer2 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer2.fillColor = varNames_color.CGColor;
    varNames_layer2.path = varNames_bezier3Path.CGPath;
    
    //// Rectangle Drawing
    UIBezierPath* varNames_rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake(17.45, 10.41, 1.3, 9.25)];
    CAShapeLayer *varNames_layer3 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer3.fillColor = varNames_color.CGColor;
    varNames_layer3.path = varNames_rectanglePath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    [varNames_view.layer addSublayer:varNames_layer1];
    [varNames_view.layer addSublayer:varNames_layer2];
    [varNames_view.layer addSublayer:varNames_layer3];
    
}
static inline void methodNames_drawCard5(UIView *varNames_view, UIColor *varNames_color) {
    
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(27.1, 5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(4.9, 5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(1, 8.46) controlPoint1: CGPointMake(2.8, 5) controlPoint2: CGPointMake(1, 6.6)];
    [varNames_bezierPath addLineToPoint: CGPointMake(1, 21.38)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.9, 24.84) controlPoint1: CGPointMake(1, 23.24) controlPoint2: CGPointMake(2.8, 24.84)];
    [varNames_bezierPath addLineToPoint: CGPointMake(27.1, 24.84)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(31, 21.38) controlPoint1: CGPointMake(29.2, 24.84) controlPoint2: CGPointMake(31, 23.24)];
    [varNames_bezierPath addLineToPoint: CGPointMake(31, 8.46)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(27.1, 5) controlPoint1: CGPointMake(31, 6.6) controlPoint2: CGPointMake(29.2, 5)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(27.1, 23.11)];
    [varNames_bezierPath addLineToPoint: CGPointMake(4.9, 23.11)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.95, 21.38) controlPoint1: CGPointMake(3.85, 23.11) controlPoint2: CGPointMake(2.95, 22.31)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.95, 8.46)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.9, 6.73) controlPoint1: CGPointMake(2.95, 7.53) controlPoint2: CGPointMake(3.85, 6.73)];
    [varNames_bezierPath addLineToPoint: CGPointMake(27.1, 6.73)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(29.05, 8.46) controlPoint1: CGPointMake(28.15, 6.73) controlPoint2: CGPointMake(29.05, 7.53)];
    [varNames_bezierPath addLineToPoint: CGPointMake(29.05, 21.38)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(27.1, 23.11) controlPoint1: CGPointMake(28.9, 22.31) controlPoint2: CGPointMake(28.15, 23.11)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(22.9, 16.72)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(23.65, 15.52) controlPoint1: CGPointMake(22.9, 16.32) controlPoint2: CGPointMake(23.2, 15.92)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(25, 12.59) controlPoint1: CGPointMake(24.25, 14.85) controlPoint2: CGPointMake(25, 14.05)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(21.55, 9.26) controlPoint1: CGPointMake(25, 11.52) controlPoint2: CGPointMake(24.7, 9.26)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(18.1, 12.59) controlPoint1: CGPointMake(18.4, 9.26) controlPoint2: CGPointMake(18.1, 11.79)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(19.45, 15.52) controlPoint1: CGPointMake(18.1, 14.05) controlPoint2: CGPointMake(18.85, 14.85)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(20.2, 16.72) controlPoint1: CGPointMake(19.9, 15.92) controlPoint2: CGPointMake(20.2, 16.32)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(17.05, 18.45) controlPoint1: CGPointMake(20.2, 17.65) controlPoint2: CGPointMake(17.95, 18.32)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(16.9, 18.45)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(16.9, 20.71)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(26.2, 20.71)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(26.2, 18.45)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(26.05, 18.45)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(22.9, 16.72) controlPoint1: CGPointMake(25.15, 18.32) controlPoint2: CGPointMake(22.9, 17.65)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(13.75, 9.66)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(7, 9.66)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(5.95, 10.59) controlPoint1: CGPointMake(6.4, 9.66) controlPoint2: CGPointMake(5.95, 10.06)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(7, 11.52) controlPoint1: CGPointMake(5.95, 11.13) controlPoint2: CGPointMake(6.4, 11.52)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(13.75, 11.52)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.8, 10.59) controlPoint1: CGPointMake(14.35, 11.52) controlPoint2: CGPointMake(14.8, 11.13)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(13.75, 9.66) controlPoint1: CGPointMake(14.8, 10.06) controlPoint2: CGPointMake(14.35, 9.66)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(13.75, 14.19)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(7, 14.19)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(5.95, 15.12) controlPoint1: CGPointMake(6.4, 14.19) controlPoint2: CGPointMake(5.95, 14.59)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(7, 16.05) controlPoint1: CGPointMake(5.95, 15.65) controlPoint2: CGPointMake(6.4, 16.05)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(13.75, 16.05)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.8, 15.12) controlPoint1: CGPointMake(14.35, 16.05) controlPoint2: CGPointMake(14.8, 15.65)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(13.75, 14.19) controlPoint1: CGPointMake(14.8, 14.59) controlPoint2: CGPointMake(14.35, 14.19)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(13.75, 18.58)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(7, 18.58)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(5.95, 19.51) controlPoint1: CGPointMake(6.4, 18.58) controlPoint2: CGPointMake(5.95, 18.98)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(7, 20.45) controlPoint1: CGPointMake(5.95, 20.05) controlPoint2: CGPointMake(6.4, 20.45)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(13.75, 20.45)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.8, 19.51) controlPoint1: CGPointMake(14.35, 20.45) controlPoint2: CGPointMake(14.8, 20.05)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(13.75, 18.58) controlPoint1: CGPointMake(14.8, 18.98) controlPoint2: CGPointMake(14.35, 18.58)];
    [varNames_bezier2Path closePath];
    
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    [varNames_view.layer addSublayer:varNames_layer1];
}
static inline void methodNames_drawCard6(UIView *varNames_view, UIColor *varNames_color) {
    
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(26.53, 24.46)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.51, 24.46)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(1.16, 22.11) controlPoint1: CGPointMake(2.21, 24.46) controlPoint2: CGPointMake(1.16, 23.41)];
    [varNames_bezierPath addLineToPoint: CGPointMake(1.16, 8.01)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.51, 5.66) controlPoint1: CGPointMake(1.16, 6.71) controlPoint2: CGPointMake(2.21, 5.66)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.53, 5.66)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(28.88, 8.01) controlPoint1: CGPointMake(27.83, 5.66) controlPoint2: CGPointMake(28.88, 6.71)];
    [varNames_bezierPath addLineToPoint: CGPointMake(28.88, 22.11)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.53, 24.46) controlPoint1: CGPointMake(28.88, 23.41) controlPoint2: CGPointMake(27.83, 24.46)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(3.51, 6.03)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(1.53, 8.01) controlPoint1: CGPointMake(2.42, 6.03) controlPoint2: CGPointMake(1.53, 6.92)];
    [varNames_bezierPath addLineToPoint: CGPointMake(1.53, 22.11)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.51, 24.09) controlPoint1: CGPointMake(1.53, 23.2) controlPoint2: CGPointMake(2.42, 24.09)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.53, 24.09)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(28.52, 22.11) controlPoint1: CGPointMake(27.63, 24.09) controlPoint2: CGPointMake(28.52, 23.2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(28.52, 8.01)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.53, 6.03) controlPoint1: CGPointMake(28.52, 6.92) controlPoint2: CGPointMake(27.63, 6.03)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.51, 6.03)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(26.53, 24.62)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(3.51, 24.62)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(1, 22.11) controlPoint1: CGPointMake(2.13, 24.62) controlPoint2: CGPointMake(1, 23.49)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(1, 8.01)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(3.51, 5.5) controlPoint1: CGPointMake(1, 6.63) controlPoint2: CGPointMake(2.13, 5.5)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(26.53, 5.5)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(29.04, 8.01) controlPoint1: CGPointMake(27.92, 5.5) controlPoint2: CGPointMake(29.04, 6.63)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(29.04, 22.11)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(26.53, 24.62) controlPoint1: CGPointMake(29.04, 23.49) controlPoint2: CGPointMake(27.92, 24.62)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(3.51, 5.82)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(1.32, 8.01) controlPoint1: CGPointMake(2.3, 5.82) controlPoint2: CGPointMake(1.32, 6.8)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(1.32, 22.11)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(3.51, 24.3) controlPoint1: CGPointMake(1.32, 23.32) controlPoint2: CGPointMake(2.3, 24.3)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(26.53, 24.3)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(28.72, 22.11) controlPoint1: CGPointMake(27.74, 24.3) controlPoint2: CGPointMake(28.72, 23.32)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(28.72, 8.01)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(26.53, 5.82) controlPoint1: CGPointMake(28.72, 6.8) controlPoint2: CGPointMake(27.74, 5.82)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(3.51, 5.82)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(26.53, 24.25)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(3.51, 24.25)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(1.37, 22.11) controlPoint1: CGPointMake(2.33, 24.25) controlPoint2: CGPointMake(1.37, 23.29)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(1.37, 8.01)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(3.51, 5.87) controlPoint1: CGPointMake(1.37, 6.83) controlPoint2: CGPointMake(2.33, 5.87)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(26.53, 5.87)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(28.68, 8.01) controlPoint1: CGPointMake(27.72, 5.87) controlPoint2: CGPointMake(28.68, 6.83)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(28.68, 22.11)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(26.53, 24.25) controlPoint1: CGPointMake(28.68, 23.29) controlPoint2: CGPointMake(27.72, 24.25)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(3.51, 6.19)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(1.69, 8.01) controlPoint1: CGPointMake(2.5, 6.19) controlPoint2: CGPointMake(1.69, 7)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(1.69, 22.11)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(3.51, 23.93) controlPoint1: CGPointMake(1.69, 23.12) controlPoint2: CGPointMake(2.5, 23.93)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(26.53, 23.93)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(28.36, 22.11) controlPoint1: CGPointMake(27.54, 23.93) controlPoint2: CGPointMake(28.36, 23.12)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(28.36, 8.01)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(26.53, 6.19) controlPoint1: CGPointMake(28.36, 7) controlPoint2: CGPointMake(27.54, 6.19)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(3.51, 6.19)];
    [varNames_bezier2Path closePath];
    
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    //// Bezier 3 Drawing
    UIBezierPath* varNames_bezier3Path = [UIBezierPath bezierPath];
    [varNames_bezier3Path moveToPoint: CGPointMake(12.92, 10.56)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(4.2, 10.56)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(4.02, 10.37) controlPoint1: CGPointMake(4.1, 10.56) controlPoint2: CGPointMake(4.02, 10.48)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(4.2, 10.19) controlPoint1: CGPointMake(4.02, 10.27) controlPoint2: CGPointMake(4.1, 10.19)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(12.92, 10.19)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(13.1, 10.37) controlPoint1: CGPointMake(13.02, 10.19) controlPoint2: CGPointMake(13.1, 10.27)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(12.92, 10.56) controlPoint1: CGPointMake(13.1, 10.48) controlPoint2: CGPointMake(13.02, 10.56)];
    [varNames_bezier3Path closePath];
    
    CAShapeLayer *varNames_layer2 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer2.fillColor = varNames_color.CGColor;
    varNames_layer2.path = varNames_bezier3Path.CGPath;
    
    //// Bezier 4 Drawing
    UIBezierPath* varNames_bezier4Path = [UIBezierPath bezierPath];
    [varNames_bezier4Path moveToPoint: CGPointMake(12.92, 10.72)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(4.2, 10.72)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(3.86, 10.37) controlPoint1: CGPointMake(4.01, 10.72) controlPoint2: CGPointMake(3.86, 10.56)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(4.2, 10.03) controlPoint1: CGPointMake(3.86, 10.18) controlPoint2: CGPointMake(4.01, 10.03)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(12.92, 10.03)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(13.26, 10.37) controlPoint1: CGPointMake(13.11, 10.03) controlPoint2: CGPointMake(13.26, 10.18)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(12.92, 10.72) controlPoint1: CGPointMake(13.26, 10.56) controlPoint2: CGPointMake(13.11, 10.72)];
    [varNames_bezier4Path closePath];
    [varNames_bezier4Path moveToPoint: CGPointMake(4.2, 10.35)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(4.18, 10.37) controlPoint1: CGPointMake(4.19, 10.35) controlPoint2: CGPointMake(4.18, 10.36)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(4.2, 10.4) controlPoint1: CGPointMake(4.18, 10.39) controlPoint2: CGPointMake(4.19, 10.4)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(12.92, 10.4)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(12.94, 10.37) controlPoint1: CGPointMake(12.93, 10.4) controlPoint2: CGPointMake(12.94, 10.39)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(12.92, 10.35) controlPoint1: CGPointMake(12.94, 10.36) controlPoint2: CGPointMake(12.93, 10.35)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(4.2, 10.35)];
    [varNames_bezier4Path closePath];
    
    CAShapeLayer *varNames_layer3 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer3.fillColor = varNames_color.CGColor;
    varNames_layer3.path = varNames_bezier4Path.CGPath;
    
    //// Bezier 5 Drawing
    UIBezierPath* varNames_bezier5Path = [UIBezierPath bezierPath];
    [varNames_bezier5Path moveToPoint: CGPointMake(12.92, 13.78)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(4.2, 13.78)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(4.02, 13.59) controlPoint1: CGPointMake(4.1, 13.78) controlPoint2: CGPointMake(4.02, 13.69)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(4.2, 13.41) controlPoint1: CGPointMake(4.02, 13.49) controlPoint2: CGPointMake(4.1, 13.41)];
    [varNames_bezier5Path addLineToPoint: CGPointMake(12.92, 13.41)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(13.1, 13.59) controlPoint1: CGPointMake(13.02, 13.41) controlPoint2: CGPointMake(13.1, 13.49)];
    [varNames_bezier5Path addCurveToPoint: CGPointMake(12.92, 13.78) controlPoint1: CGPointMake(13.1, 13.69) controlPoint2: CGPointMake(13.02, 13.78)];
    [varNames_bezier5Path closePath];
    
    CAShapeLayer *varNames_layer4 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer4.fillColor = varNames_color.CGColor;
    varNames_layer4.path = varNames_bezier5Path.CGPath;
    
    //// Bezier 6 Drawing
    UIBezierPath* varNames_bezier6Path = [UIBezierPath bezierPath];
    [varNames_bezier6Path moveToPoint: CGPointMake(12.92, 13.94)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(4.2, 13.94)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(3.86, 13.59) controlPoint1: CGPointMake(4.01, 13.94) controlPoint2: CGPointMake(3.86, 13.78)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(4.2, 13.25) controlPoint1: CGPointMake(3.86, 13.4) controlPoint2: CGPointMake(4.01, 13.25)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(12.92, 13.25)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(13.26, 13.59) controlPoint1: CGPointMake(13.11, 13.25) controlPoint2: CGPointMake(13.26, 13.4)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(12.92, 13.94) controlPoint1: CGPointMake(13.26, 13.78) controlPoint2: CGPointMake(13.11, 13.94)];
    [varNames_bezier6Path closePath];
    [varNames_bezier6Path moveToPoint: CGPointMake(4.2, 13.57)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(4.18, 13.59) controlPoint1: CGPointMake(4.19, 13.57) controlPoint2: CGPointMake(4.18, 13.58)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(4.2, 13.62) controlPoint1: CGPointMake(4.18, 13.6) controlPoint2: CGPointMake(4.19, 13.62)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(12.92, 13.62)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(12.94, 13.59) controlPoint1: CGPointMake(12.93, 13.62) controlPoint2: CGPointMake(12.94, 13.6)];
    [varNames_bezier6Path addCurveToPoint: CGPointMake(12.92, 13.57) controlPoint1: CGPointMake(12.94, 13.58) controlPoint2: CGPointMake(12.93, 13.57)];
    [varNames_bezier6Path addLineToPoint: CGPointMake(4.2, 13.57)];
    [varNames_bezier6Path closePath];
    
    CAShapeLayer *varNames_layer5 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer5.fillColor = varNames_color.CGColor;
    varNames_layer5.path = varNames_bezier6Path.CGPath;
    
    //// Bezier 7 Drawing
    UIBezierPath* varNames_bezier7Path = [UIBezierPath bezierPath];
    [varNames_bezier7Path moveToPoint: CGPointMake(8.56, 16.99)];
    [varNames_bezier7Path addLineToPoint: CGPointMake(4.2, 16.99)];
    [varNames_bezier7Path addCurveToPoint: CGPointMake(4.02, 16.81) controlPoint1: CGPointMake(4.1, 16.99) controlPoint2: CGPointMake(4.02, 16.91)];
    [varNames_bezier7Path addCurveToPoint: CGPointMake(4.2, 16.62) controlPoint1: CGPointMake(4.02, 16.71) controlPoint2: CGPointMake(4.1, 16.62)];
    [varNames_bezier7Path addLineToPoint: CGPointMake(8.56, 16.62)];
    [varNames_bezier7Path addCurveToPoint: CGPointMake(8.74, 16.81) controlPoint1: CGPointMake(8.66, 16.62) controlPoint2: CGPointMake(8.74, 16.71)];
    [varNames_bezier7Path addCurveToPoint: CGPointMake(8.56, 16.99) controlPoint1: CGPointMake(8.74, 16.91) controlPoint2: CGPointMake(8.66, 16.99)];
    [varNames_bezier7Path closePath];
    
    CAShapeLayer *varNames_layer6 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer6.fillColor = varNames_color.CGColor;
    varNames_layer6.path = varNames_bezier7Path.CGPath;
    
    //// Bezier 8 Drawing
    UIBezierPath* varNames_bezier8Path = [UIBezierPath bezierPath];
    [varNames_bezier8Path moveToPoint: CGPointMake(8.56, 17.15)];
    [varNames_bezier8Path addLineToPoint: CGPointMake(4.2, 17.15)];
    [varNames_bezier8Path addCurveToPoint: CGPointMake(3.86, 16.81) controlPoint1: CGPointMake(4.01, 17.15) controlPoint2: CGPointMake(3.86, 17)];
    [varNames_bezier8Path addCurveToPoint: CGPointMake(4.2, 16.46) controlPoint1: CGPointMake(3.86, 16.62) controlPoint2: CGPointMake(4.01, 16.46)];
    [varNames_bezier8Path addLineToPoint: CGPointMake(8.56, 16.46)];
    [varNames_bezier8Path addCurveToPoint: CGPointMake(8.9, 16.81) controlPoint1: CGPointMake(8.75, 16.46) controlPoint2: CGPointMake(8.9, 16.62)];
    [varNames_bezier8Path addCurveToPoint: CGPointMake(8.56, 17.15) controlPoint1: CGPointMake(8.9, 17) controlPoint2: CGPointMake(8.75, 17.15)];
    [varNames_bezier8Path closePath];
    [varNames_bezier8Path moveToPoint: CGPointMake(4.2, 16.78)];
    [varNames_bezier8Path addCurveToPoint: CGPointMake(4.18, 16.81) controlPoint1: CGPointMake(4.19, 16.78) controlPoint2: CGPointMake(4.18, 16.79)];
    [varNames_bezier8Path addCurveToPoint: CGPointMake(4.2, 16.83) controlPoint1: CGPointMake(4.18, 16.82) controlPoint2: CGPointMake(4.19, 16.83)];
    [varNames_bezier8Path addLineToPoint: CGPointMake(8.56, 16.83)];
    [varNames_bezier8Path addCurveToPoint: CGPointMake(8.58, 16.81) controlPoint1: CGPointMake(8.57, 16.83) controlPoint2: CGPointMake(8.58, 16.82)];
    [varNames_bezier8Path addCurveToPoint: CGPointMake(8.56, 16.78) controlPoint1: CGPointMake(8.58, 16.79) controlPoint2: CGPointMake(8.57, 16.78)];
    [varNames_bezier8Path addLineToPoint: CGPointMake(4.2, 16.78)];
    [varNames_bezier8Path closePath];
    
    CAShapeLayer *varNames_layer7 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer7.fillColor = varNames_color.CGColor;
    varNames_layer7.path = varNames_bezier8Path.CGPath;
    
    //// Bezier 9 Drawing
    UIBezierPath* varNames_bezier9Path = [UIBezierPath bezierPath];
    [varNames_bezier9Path moveToPoint: CGPointMake(20.45, 15.96)];
    [varNames_bezier9Path addCurveToPoint: CGPointMake(16.74, 12.24) controlPoint1: CGPointMake(18.4, 15.96) controlPoint2: CGPointMake(16.74, 14.29)];
    [varNames_bezier9Path addCurveToPoint: CGPointMake(20.45, 8.53) controlPoint1: CGPointMake(16.74, 10.19) controlPoint2: CGPointMake(18.4, 8.53)];
    [varNames_bezier9Path addCurveToPoint: CGPointMake(24.17, 12.24) controlPoint1: CGPointMake(22.5, 8.53) controlPoint2: CGPointMake(24.17, 10.19)];
    [varNames_bezier9Path addCurveToPoint: CGPointMake(20.45, 15.96) controlPoint1: CGPointMake(24.17, 14.29) controlPoint2: CGPointMake(22.5, 15.96)];
    [varNames_bezier9Path closePath];
    [varNames_bezier9Path moveToPoint: CGPointMake(20.45, 8.9)];
    [varNames_bezier9Path addCurveToPoint: CGPointMake(17.11, 12.24) controlPoint1: CGPointMake(18.61, 8.9) controlPoint2: CGPointMake(17.11, 10.4)];
    [varNames_bezier9Path addCurveToPoint: CGPointMake(20.45, 15.59) controlPoint1: CGPointMake(17.11, 14.09) controlPoint2: CGPointMake(18.61, 15.59)];
    [varNames_bezier9Path addCurveToPoint: CGPointMake(23.8, 12.24) controlPoint1: CGPointMake(22.3, 15.59) controlPoint2: CGPointMake(23.8, 14.09)];
    [varNames_bezier9Path addCurveToPoint: CGPointMake(20.45, 8.9) controlPoint1: CGPointMake(23.8, 10.4) controlPoint2: CGPointMake(22.3, 8.9)];
    [varNames_bezier9Path closePath];
    
    CAShapeLayer *varNames_layer8 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer8.fillColor = varNames_color.CGColor;
    varNames_layer8.path = varNames_bezier9Path.CGPath;
    
    //// Bezier 10 Drawing
    UIBezierPath* varNames_bezier10Path = [UIBezierPath bezierPath];
    [varNames_bezier10Path moveToPoint: CGPointMake(20.45, 16.12)];
    [varNames_bezier10Path addCurveToPoint: CGPointMake(16.58, 12.24) controlPoint1: CGPointMake(18.31, 16.12) controlPoint2: CGPointMake(16.58, 14.38)];
    [varNames_bezier10Path addCurveToPoint: CGPointMake(20.45, 8.37) controlPoint1: CGPointMake(16.58, 10.1) controlPoint2: CGPointMake(18.31, 8.37)];
    [varNames_bezier10Path addCurveToPoint: CGPointMake(24.33, 12.24) controlPoint1: CGPointMake(22.59, 8.37) controlPoint2: CGPointMake(24.33, 10.1)];
    [varNames_bezier10Path addCurveToPoint: CGPointMake(20.45, 16.12) controlPoint1: CGPointMake(24.33, 14.38) controlPoint2: CGPointMake(22.59, 16.12)];
    [varNames_bezier10Path closePath];
    [varNames_bezier10Path moveToPoint: CGPointMake(20.45, 8.69)];
    [varNames_bezier10Path addCurveToPoint: CGPointMake(16.9, 12.24) controlPoint1: CGPointMake(18.49, 8.69) controlPoint2: CGPointMake(16.9, 10.28)];
    [varNames_bezier10Path addCurveToPoint: CGPointMake(20.45, 15.8) controlPoint1: CGPointMake(16.9, 14.2) controlPoint2: CGPointMake(18.49, 15.8)];
    [varNames_bezier10Path addCurveToPoint: CGPointMake(24.01, 12.24) controlPoint1: CGPointMake(22.41, 15.8) controlPoint2: CGPointMake(24.01, 14.2)];
    [varNames_bezier10Path addCurveToPoint: CGPointMake(20.45, 8.69) controlPoint1: CGPointMake(24.01, 10.28) controlPoint2: CGPointMake(22.41, 8.69)];
    [varNames_bezier10Path closePath];
    [varNames_bezier10Path moveToPoint: CGPointMake(20.45, 15.75)];
    [varNames_bezier10Path addCurveToPoint: CGPointMake(16.95, 12.24) controlPoint1: CGPointMake(18.52, 15.75) controlPoint2: CGPointMake(16.95, 14.17)];
    [varNames_bezier10Path addCurveToPoint: CGPointMake(20.45, 8.74) controlPoint1: CGPointMake(16.95, 10.31) controlPoint2: CGPointMake(18.52, 8.74)];
    [varNames_bezier10Path addCurveToPoint: CGPointMake(23.96, 12.24) controlPoint1: CGPointMake(22.38, 8.74) controlPoint2: CGPointMake(23.96, 10.31)];
    [varNames_bezier10Path addCurveToPoint: CGPointMake(20.45, 15.75) controlPoint1: CGPointMake(23.96, 14.17) controlPoint2: CGPointMake(22.38, 15.75)];
    [varNames_bezier10Path closePath];
    [varNames_bezier10Path moveToPoint: CGPointMake(20.45, 9.06)];
    [varNames_bezier10Path addCurveToPoint: CGPointMake(17.27, 12.24) controlPoint1: CGPointMake(18.69, 9.06) controlPoint2: CGPointMake(17.27, 10.48)];
    [varNames_bezier10Path addCurveToPoint: CGPointMake(20.45, 15.43) controlPoint1: CGPointMake(17.27, 14) controlPoint2: CGPointMake(18.69, 15.43)];
    [varNames_bezier10Path addCurveToPoint: CGPointMake(23.64, 12.24) controlPoint1: CGPointMake(22.21, 15.43) controlPoint2: CGPointMake(23.64, 14)];
    [varNames_bezier10Path addCurveToPoint: CGPointMake(20.45, 9.06) controlPoint1: CGPointMake(23.64, 10.48) controlPoint2: CGPointMake(22.21, 9.06)];
    [varNames_bezier10Path closePath];
    
    CAShapeLayer *varNames_layer9 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer9.fillColor = varNames_color.CGColor;
    varNames_layer9.path = varNames_bezier10Path.CGPath;
    
    //// Bezier 11 Drawing
    UIBezierPath* varNames_bezier11Path = [UIBezierPath bezierPath];
    [varNames_bezier11Path moveToPoint: CGPointMake(14.88, 21.38)];
    [varNames_bezier11Path addCurveToPoint: CGPointMake(14.69, 21.2) controlPoint1: CGPointMake(14.78, 21.38) controlPoint2: CGPointMake(14.69, 21.3)];
    [varNames_bezier11Path addCurveToPoint: CGPointMake(15.38, 18.55) controlPoint1: CGPointMake(14.69, 21.14) controlPoint2: CGPointMake(14.69, 19.88)];
    [varNames_bezier11Path addCurveToPoint: CGPointMake(17.04, 16.65) controlPoint1: CGPointMake(15.78, 17.77) controlPoint2: CGPointMake(16.34, 17.13)];
    [varNames_bezier11Path addCurveToPoint: CGPointMake(20.26, 15.61) controlPoint1: CGPointMake(17.91, 16.05) controlPoint2: CGPointMake(18.99, 15.7)];
    [varNames_bezier11Path addCurveToPoint: CGPointMake(20.46, 15.78) controlPoint1: CGPointMake(20.37, 15.61) controlPoint2: CGPointMake(20.45, 15.68)];
    [varNames_bezier11Path addCurveToPoint: CGPointMake(20.29, 15.98) controlPoint1: CGPointMake(20.47, 15.89) controlPoint2: CGPointMake(20.39, 15.97)];
    [varNames_bezier11Path addCurveToPoint: CGPointMake(17.25, 16.95) controlPoint1: CGPointMake(19.09, 16.06) controlPoint2: CGPointMake(18.06, 16.39)];
    [varNames_bezier11Path addCurveToPoint: CGPointMake(15.71, 18.72) controlPoint1: CGPointMake(16.6, 17.4) controlPoint2: CGPointMake(16.08, 17.99)];
    [varNames_bezier11Path addCurveToPoint: CGPointMake(15.06, 21.19) controlPoint1: CGPointMake(15.06, 19.97) controlPoint2: CGPointMake(15.06, 21.18)];
    [varNames_bezier11Path addCurveToPoint: CGPointMake(14.88, 21.38) controlPoint1: CGPointMake(15.06, 21.3) controlPoint2: CGPointMake(14.98, 21.38)];
    [varNames_bezier11Path addLineToPoint: CGPointMake(14.88, 21.38)];
    [varNames_bezier11Path closePath];
    
    CAShapeLayer *varNames_layer10 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer10.fillColor = varNames_color.CGColor;
    varNames_layer10.path = varNames_bezier11Path.CGPath;
    
    //// Bezier 12 Drawing
    UIBezierPath* varNames_bezier12Path = [UIBezierPath bezierPath];
    [varNames_bezier12Path moveToPoint: CGPointMake(14.88, 21.54)];
    [varNames_bezier12Path addLineToPoint: CGPointMake(14.88, 21.54)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(14.53, 21.2) controlPoint1: CGPointMake(14.69, 21.54) controlPoint2: CGPointMake(14.54, 21.39)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(15.24, 18.48) controlPoint1: CGPointMake(14.53, 21.14) controlPoint2: CGPointMake(14.54, 19.84)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(16.95, 16.52) controlPoint1: CGPointMake(15.65, 17.67) controlPoint2: CGPointMake(16.23, 17.01)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(20.25, 15.45) controlPoint1: CGPointMake(17.84, 15.9) controlPoint2: CGPointMake(18.95, 15.54)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(20.28, 15.45) controlPoint1: CGPointMake(20.26, 15.45) controlPoint2: CGPointMake(20.27, 15.45)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(20.62, 15.77) controlPoint1: CGPointMake(20.46, 15.45) controlPoint2: CGPointMake(20.61, 15.59)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(20.3, 16.14) controlPoint1: CGPointMake(20.63, 15.96) controlPoint2: CGPointMake(20.49, 16.13)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(17.34, 17.08) controlPoint1: CGPointMake(19.13, 16.22) controlPoint2: CGPointMake(18.13, 16.54)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(15.85, 18.8) controlPoint1: CGPointMake(16.71, 17.51) controlPoint2: CGPointMake(16.21, 18.09)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(15.22, 21.19) controlPoint1: CGPointMake(15.23, 20) controlPoint2: CGPointMake(15.22, 21.18)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(15.12, 21.44) controlPoint1: CGPointMake(15.22, 21.29) controlPoint2: CGPointMake(15.19, 21.37)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(14.88, 21.54) controlPoint1: CGPointMake(15.06, 21.5) controlPoint2: CGPointMake(14.97, 21.54)];
    [varNames_bezier12Path addLineToPoint: CGPointMake(14.88, 21.54)];
    [varNames_bezier12Path closePath];
    [varNames_bezier12Path moveToPoint: CGPointMake(20.28, 15.77)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(17.13, 16.78) controlPoint1: CGPointMake(19.03, 15.86) controlPoint2: CGPointMake(17.97, 16.2)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(15.52, 18.63) controlPoint1: CGPointMake(16.45, 17.24) controlPoint2: CGPointMake(15.91, 17.87)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(14.85, 21.2) controlPoint1: CGPointMake(14.85, 19.92) controlPoint2: CGPointMake(14.85, 21.14)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(14.88, 21.22) controlPoint1: CGPointMake(14.85, 21.21) controlPoint2: CGPointMake(14.87, 21.22)];
    [varNames_bezier12Path addLineToPoint: CGPointMake(14.88, 21.38)];
    [varNames_bezier12Path addLineToPoint: CGPointMake(14.88, 21.22)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(14.9, 21.21) controlPoint1: CGPointMake(14.89, 21.22) controlPoint2: CGPointMake(14.89, 21.22)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(14.9, 21.2) controlPoint1: CGPointMake(14.9, 21.21) controlPoint2: CGPointMake(14.9, 21.2)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(15.57, 18.65) controlPoint1: CGPointMake(14.9, 21.18) controlPoint2: CGPointMake(14.91, 19.93)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(17.16, 16.82) controlPoint1: CGPointMake(15.95, 17.9) controlPoint2: CGPointMake(16.49, 17.28)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(20.28, 15.82) controlPoint1: CGPointMake(18, 16.24) controlPoint2: CGPointMake(19.05, 15.91)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(20.3, 15.8) controlPoint1: CGPointMake(20.29, 15.82) controlPoint2: CGPointMake(20.3, 15.81)];
    [varNames_bezier12Path addCurveToPoint: CGPointMake(20.28, 15.77) controlPoint1: CGPointMake(20.3, 15.78) controlPoint2: CGPointMake(20.29, 15.77)];
    [varNames_bezier12Path closePath];
    
    CAShapeLayer *varNames_layer11 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer11.fillColor = varNames_color.CGColor;
    varNames_layer11.path = varNames_bezier12Path.CGPath;
    
    //// Bezier 13 Drawing
    UIBezierPath* varNames_bezier13Path = [UIBezierPath bezierPath];
    [varNames_bezier13Path moveToPoint: CGPointMake(25.91, 21.38)];
    [varNames_bezier13Path addCurveToPoint: CGPointMake(25.73, 21.2) controlPoint1: CGPointMake(25.81, 21.38) controlPoint2: CGPointMake(25.73, 21.3)];
    [varNames_bezier13Path addCurveToPoint: CGPointMake(23.45, 16.96) controlPoint1: CGPointMake(25.57, 18.12) controlPoint2: CGPointMake(23.47, 16.97)];
    [varNames_bezier13Path addCurveToPoint: CGPointMake(23.37, 16.71) controlPoint1: CGPointMake(23.36, 16.91) controlPoint2: CGPointMake(23.32, 16.8)];
    [varNames_bezier13Path addCurveToPoint: CGPointMake(23.62, 16.63) controlPoint1: CGPointMake(23.42, 16.62) controlPoint2: CGPointMake(23.53, 16.58)];
    [varNames_bezier13Path addCurveToPoint: CGPointMake(24.8, 17.67) controlPoint1: CGPointMake(23.64, 16.64) controlPoint2: CGPointMake(24.21, 16.95)];
    [varNames_bezier13Path addCurveToPoint: CGPointMake(26.09, 21.19) controlPoint1: CGPointMake(25.35, 18.32) controlPoint2: CGPointMake(26.01, 19.47)];
    [varNames_bezier13Path addCurveToPoint: CGPointMake(25.92, 21.38) controlPoint1: CGPointMake(26.1, 21.29) controlPoint2: CGPointMake(26.02, 21.37)];
    [varNames_bezier13Path addCurveToPoint: CGPointMake(25.91, 21.38) controlPoint1: CGPointMake(25.92, 21.38) controlPoint2: CGPointMake(25.91, 21.38)];
    [varNames_bezier13Path closePath];
    
    CAShapeLayer *varNames_layer12 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer12.fillColor = varNames_color.CGColor;
    varNames_layer12.path = varNames_bezier13Path.CGPath;
    
    //// Bezier 14 Drawing
    UIBezierPath* varNames_bezier14Path = [UIBezierPath bezierPath];
    [varNames_bezier14Path moveToPoint: CGPointMake(25.91, 21.54)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(25.57, 21.21) controlPoint1: CGPointMake(25.73, 21.54) controlPoint2: CGPointMake(25.57, 21.4)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(24.42, 18.04) controlPoint1: CGPointMake(25.49, 19.67) controlPoint2: CGPointMake(24.9, 18.63)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(23.37, 17.1) controlPoint1: CGPointMake(23.89, 17.39) controlPoint2: CGPointMake(23.38, 17.1)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(23.2, 16.9) controlPoint1: CGPointMake(23.29, 17.06) controlPoint2: CGPointMake(23.23, 16.98)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(23.23, 16.63) controlPoint1: CGPointMake(23.18, 16.81) controlPoint2: CGPointMake(23.19, 16.71)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(23.53, 16.45) controlPoint1: CGPointMake(23.29, 16.52) controlPoint2: CGPointMake(23.41, 16.45)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(23.69, 16.49) controlPoint1: CGPointMake(23.59, 16.45) controlPoint2: CGPointMake(23.64, 16.46)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(24.93, 17.56) controlPoint1: CGPointMake(23.72, 16.5) controlPoint2: CGPointMake(24.32, 16.82)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(26.25, 21.18) controlPoint1: CGPointMake(25.48, 18.24) controlPoint2: CGPointMake(26.17, 19.42)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(25.93, 21.54) controlPoint1: CGPointMake(26.26, 21.37) controlPoint2: CGPointMake(26.12, 21.53)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(25.91, 21.54) controlPoint1: CGPointMake(25.92, 21.54) controlPoint2: CGPointMake(25.92, 21.54)];
    [varNames_bezier14Path closePath];
    [varNames_bezier14Path moveToPoint: CGPointMake(23.53, 16.77)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(23.51, 16.78) controlPoint1: CGPointMake(23.53, 16.77) controlPoint2: CGPointMake(23.52, 16.77)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(23.51, 16.8) controlPoint1: CGPointMake(23.51, 16.79) controlPoint2: CGPointMake(23.51, 16.8)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(23.52, 16.82) controlPoint1: CGPointMake(23.51, 16.81) controlPoint2: CGPointMake(23.51, 16.81)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(25.89, 21.2) controlPoint1: CGPointMake(23.54, 16.83) controlPoint2: CGPointMake(25.73, 18.02)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(25.91, 21.22) controlPoint1: CGPointMake(25.89, 21.21) controlPoint2: CGPointMake(25.9, 21.22)];
    [varNames_bezier14Path addLineToPoint: CGPointMake(25.91, 21.22)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(25.93, 21.19) controlPoint1: CGPointMake(25.92, 21.22) controlPoint2: CGPointMake(25.94, 21.21)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(24.68, 17.77) controlPoint1: CGPointMake(25.85, 19.52) controlPoint2: CGPointMake(25.21, 18.41)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(23.54, 16.77) controlPoint1: CGPointMake(24.11, 17.08) controlPoint2: CGPointMake(23.57, 16.78)];
    [varNames_bezier14Path addCurveToPoint: CGPointMake(23.53, 16.77) controlPoint1: CGPointMake(23.54, 16.77) controlPoint2: CGPointMake(23.54, 16.77)];
    [varNames_bezier14Path closePath];
    
    CAShapeLayer *varNames_layer13 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer13.fillColor = varNames_color.CGColor;
    varNames_layer13.path = varNames_bezier14Path.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    [varNames_view.layer addSublayer:varNames_layer1];
    [varNames_view.layer addSublayer:varNames_layer2];
    [varNames_view.layer addSublayer:varNames_layer3];
    [varNames_view.layer addSublayer:varNames_layer4];
    [varNames_view.layer addSublayer:varNames_layer5];
    [varNames_view.layer addSublayer:varNames_layer6];
    [varNames_view.layer addSublayer:varNames_layer7];
    [varNames_view.layer addSublayer:varNames_layer8];
    [varNames_view.layer addSublayer:varNames_layer9];
    [varNames_view.layer addSublayer:varNames_layer10];
    [varNames_view.layer addSublayer:varNames_layer11];
    [varNames_view.layer addSublayer:varNames_layer12];
    [varNames_view.layer addSublayer:varNames_layer13];
    
}
#pragma mark ---------- 绘制绑定身份证页面输入框左侧icon
static inline void methodNames_drawCard(UIView *varNames_view, UIColor *varNames_color) {
    NSInteger varNames_type = methodNames_getDefault_inputViewType_config();
    switch (varNames_type) {
        case 0:
        {
            
        }
            break;
        case 1:
        {
            methodNames_drawCard1(varNames_view, varNames_color);
        }
            break;
        case 2:
        {
            methodNames_drawCard2(varNames_view, varNames_color);
        }
            break;
        case 3:
        {
            methodNames_drawCard3(varNames_view, varNames_color);
        }
            break;
        case 4:
        {
            methodNames_drawCard4(varNames_view, varNames_color);
        }
            break;
        case 5:
        {
            methodNames_drawCard5(varNames_view, varNames_color);
        }
            break;
        default:
        {
            methodNames_drawCard6(varNames_view, varNames_color);
        }
            break;
    }
}

