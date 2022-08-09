


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ClassNames_DefaultThemeConfigure.h"

#pragma mark ---------- 获取验证码
static inline void methodNames_drawCode1(UIView *varNames_view, UIColor *varNames_color) {
    //// Bezier Drawing
    UIBezierPath* varNames_path = [UIBezierPath bezierPath];
    [varNames_path moveToPoint: CGPointMake(15.64, 14.08)];
    [varNames_path addLineToPoint: CGPointMake(15.64, 8.92)];
    [varNames_path addLineToPoint: CGPointMake(18.92, 8.92)];
    [varNames_path addCurveToPoint: CGPointMake(19.56, 8.24) controlPoint1: CGPointMake(19.27, 8.92) controlPoint2: CGPointMake(19.56, 8.62)];
    [varNames_path addCurveToPoint: CGPointMake(18.92, 7.57) controlPoint1: CGPointMake(19.56, 7.87) controlPoint2: CGPointMake(19.27, 7.57)];
    [varNames_path addLineToPoint: CGPointMake(15.64, 7.57)];
    [varNames_path addLineToPoint: CGPointMake(15.64, 3.78)];
    [varNames_path addLineToPoint: CGPointMake(18.92, 3.78)];
    [varNames_path addCurveToPoint: CGPointMake(19.56, 3.11) controlPoint1: CGPointMake(19.27, 3.78) controlPoint2: CGPointMake(19.56, 3.48)];
    [varNames_path addCurveToPoint: CGPointMake(18.92, 2.43) controlPoint1: CGPointMake(19.56, 2.73) controlPoint2: CGPointMake(19.27, 2.43)];
    [varNames_path addLineToPoint: CGPointMake(15.64, 2.43)];
    [varNames_path addLineToPoint: CGPointMake(15.64, 0.68)];
    [varNames_path addCurveToPoint: CGPointMake(15, 0) controlPoint1: CGPointMake(15.64, 0.3) controlPoint2: CGPointMake(15.35, 0)];
    [varNames_path addCurveToPoint: CGPointMake(14.36, 0.68) controlPoint1: CGPointMake(14.65, 0) controlPoint2: CGPointMake(14.36, 0.3)];
    [varNames_path addLineToPoint: CGPointMake(14.36, 14.08)];
    [varNames_path addCurveToPoint: CGPointMake(7.5, 22.03) controlPoint1: CGPointMake(10.53, 14.43) controlPoint2: CGPointMake(7.5, 17.86)];
    [varNames_path addCurveToPoint: CGPointMake(15, 30) controlPoint1: CGPointMake(7.5, 26.42) controlPoint2: CGPointMake(10.86, 30)];
    [varNames_path addCurveToPoint: CGPointMake(22.5, 22.03) controlPoint1: CGPointMake(19.14, 30) controlPoint2: CGPointMake(22.5, 26.42)];
    [varNames_path addCurveToPoint: CGPointMake(15.64, 14.08) controlPoint1: CGPointMake(22.5, 17.86) controlPoint2: CGPointMake(19.47, 14.43)];
    [varNames_path closePath];
    [varNames_path moveToPoint: CGPointMake(15, 28.65)];
    [varNames_path addCurveToPoint: CGPointMake(8.77, 22.03) controlPoint1: CGPointMake(11.57, 28.65) controlPoint2: CGPointMake(8.77, 25.68)];
    [varNames_path addCurveToPoint: CGPointMake(15, 15.41) controlPoint1: CGPointMake(8.77, 18.38) controlPoint2: CGPointMake(11.57, 15.41)];
    [varNames_path addCurveToPoint: CGPointMake(21.23, 22.03) controlPoint1: CGPointMake(18.43, 15.41) controlPoint2: CGPointMake(21.23, 18.38)];
    [varNames_path addCurveToPoint: CGPointMake(15, 28.65) controlPoint1: CGPointMake(21.23, 25.68) controlPoint2: CGPointMake(18.43, 28.65)];
    [varNames_path closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_path.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
}

static inline void methodNames_drawCode2(UIView *varNames_view, UIColor *varNames_color) {
    
    //// General Declarations
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(1.6, 8.37)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.87, 15.92) controlPoint1: CGPointMake(0.98, 11.9) controlPoint2: CGPointMake(3.34, 15.28)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.02, 15.25) controlPoint1: CGPointMake(8.34, 16.16) controlPoint2: CGPointMake(9.79, 15.89)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.75, 26.81)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.41, 26.95) controlPoint1: CGPointMake(22.21, 27.3) controlPoint2: CGPointMake(22.9, 27.32)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.41, 26.95)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.44, 26.92)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.47, 26.89)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.55, 26.81) controlPoint1: CGPointMake(23.49, 26.87) controlPoint2: CGPointMake(23.52, 26.84)];
    [varNames_bezierPath addLineToPoint: CGPointMake(28.26, 22.13)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(27.88, 20.63) controlPoint1: CGPointMake(28.58, 21.84) controlPoint2: CGPointMake(28.39, 21.14)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.36, 20.2) controlPoint1: CGPointMake(27.35, 20.1) controlPoint2: CGPointMake(26.68, 19.91)];
    [varNames_bezierPath addLineToPoint: CGPointMake(22.5, 24.03)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19.24, 20.47)];
    [varNames_bezierPath addLineToPoint: CGPointMake(22.21, 17.63)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.91, 16.19) controlPoint1: CGPointMake(22.5, 17.31) controlPoint2: CGPointMake(22.4, 16.67)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.47, 15.84) controlPoint1: CGPointMake(21.43, 15.68) controlPoint2: CGPointMake(20.79, 15.54)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.55, 18.65)];
    [varNames_bezierPath addLineToPoint: CGPointMake(12.92, 13.75)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.42, 10.62) controlPoint1: CGPointMake(13.67, 12.89) controlPoint2: CGPointMake(14.21, 11.82)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.12, 3.1) controlPoint1: CGPointMake(15.04, 7.09) controlPoint2: CGPointMake(12.65, 3.71)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(1.6, 8.37) controlPoint1: CGPointMake(5.59, 2.48) controlPoint2: CGPointMake(2.21, 4.84)];
    [varNames_bezierPath addLineToPoint: CGPointMake(1.6, 8.37)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(8.75, 5.24)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.28, 10.24) controlPoint1: CGPointMake(11.1, 5.64) controlPoint2: CGPointMake(12.68, 7.89)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.91, 12.71) controlPoint1: CGPointMake(12.09, 11.24) controlPoint2: CGPointMake(11.58, 12.09)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.54, 12.95) controlPoint1: CGPointMake(10.78, 12.76) controlPoint2: CGPointMake(10.65, 12.84)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.38, 13.14) controlPoint1: CGPointMake(10.48, 13) controlPoint2: CGPointMake(10.43, 13.06)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.25, 13.78) controlPoint1: CGPointMake(9.47, 13.7) controlPoint2: CGPointMake(8.37, 13.97)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.74, 8.75) controlPoint1: CGPointMake(4.89, 13.35) controlPoint2: CGPointMake(3.31, 11.1)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.75, 5.24) controlPoint1: CGPointMake(4.14, 6.39) controlPoint2: CGPointMake(6.39, 4.81)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.75, 5.24)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
}
static inline void methodNames_drawCode3(UIView *varNames_view, UIColor *varNames_color) {
    
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(27.53, 22.34)];
    [varNames_bezierPath addLineToPoint: CGPointMake(25.8, 20.51)];
    [varNames_bezierPath addLineToPoint: CGPointMake(25.67, 19.7)];
    [varNames_bezierPath addLineToPoint: CGPointMake(25.49, 18.64)];
    [varNames_bezierPath addLineToPoint: CGPointMake(24.44, 18.4)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.84, 18.26)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.75, 17.67)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.57, 16.61)];
    [varNames_bezierPath addLineToPoint: CGPointMake(22.52, 16.37)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.92, 16.23)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.82, 15.65)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.64, 14.54)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.52, 14.34)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19.86, 14.22)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.52, 11.74)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.9, 6.74) controlPoint1: CGPointMake(18.54, 10.1) controlPoint2: CGPointMake(19.01, 8.38)];
    [varNames_bezierPath addLineToPoint: CGPointMake(18.9, 6.74)];
    [varNames_bezierPath addLineToPoint: CGPointMake(18.9, 6.74)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.39, 4.62) controlPoint1: CGPointMake(18.85, 5.99) controlPoint2: CGPointMake(18.68, 5.28)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.18, 2.8) controlPoint1: CGPointMake(18.1, 3.96) controlPoint2: CGPointMake(17.69, 3.34)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.18, 2.8)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.18, 2.79)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.89, 1.35) controlPoint1: CGPointMake(16.56, 2.14) controlPoint2: CGPointMake(15.79, 1.65)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.67, 1) controlPoint1: CGPointMake(14.21, 1.12) controlPoint2: CGPointMake(13.46, 1)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.11, 1.02) controlPoint1: CGPointMake(12.49, 1) controlPoint2: CGPointMake(12.3, 1.01)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.2, 4.27) controlPoint1: CGPointMake(9.73, 1.18) controlPoint2: CGPointMake(7.22, 2.36)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.34, 8.26) controlPoint1: CGPointMake(3.98, 5.42) controlPoint2: CGPointMake(2.99, 6.8)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(1.52, 12.49) controlPoint1: CGPointMake(1.71, 9.69) controlPoint2: CGPointMake(1.42, 11.16)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(1.96, 14.45) controlPoint1: CGPointMake(1.57, 13.19) controlPoint2: CGPointMake(1.72, 13.85)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.04, 16.13) controlPoint1: CGPointMake(2.22, 15.08) controlPoint2: CGPointMake(2.59, 15.65)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.05, 16.14)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.05, 16.14)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.77, 18.14) controlPoint1: CGPointMake(4.3, 17.45) controlPoint2: CGPointMake(5.93, 18.14)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.26, 18.12) controlPoint1: CGPointMake(7.93, 18.14) controlPoint2: CGPointMake(8.1, 18.13)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.26, 18.12)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.27, 18.12)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.96, 16.99) controlPoint1: CGPointMake(9.49, 18.04) controlPoint2: CGPointMake(10.73, 17.66)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.97, 27.59)];
    [varNames_bezierPath addLineToPoint: CGPointMake(22.47, 28.12)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.19, 28.09)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.11, 27.98)];
    [varNames_bezierPath addLineToPoint: CGPointMake(27.49, 27.93)];
    [varNames_bezierPath addLineToPoint: CGPointMake(27.64, 26.55)];
    [varNames_bezierPath addLineToPoint: CGPointMake(27.95, 23.61)];
    [varNames_bezierPath addLineToPoint: CGPointMake(28.03, 22.88)];
    [varNames_bezierPath addLineToPoint: CGPointMake(27.53, 22.34)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(23.13, 26.49)];
    [varNames_bezierPath addLineToPoint: CGPointMake(12.25, 14.96)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.56, 15.37)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.16, 16.53) controlPoint1: CGPointMake(10.37, 16.09) controlPoint2: CGPointMake(9.21, 16.45)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.77, 16.54) controlPoint1: CGPointMake(8.03, 16.53) controlPoint2: CGPointMake(7.9, 16.54)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.21, 15.04) controlPoint1: CGPointMake(6.35, 16.54) controlPoint2: CGPointMake(5.15, 16.02)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.11, 12.37) controlPoint1: CGPointMake(3.55, 14.34) controlPoint2: CGPointMake(3.19, 13.44)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.3, 5.43) controlPoint1: CGPointMake(2.96, 10.26) controlPoint2: CGPointMake(4.05, 7.55)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.22, 2.62) controlPoint1: CGPointMake(8.14, 3.69) controlPoint2: CGPointMake(10.33, 2.74)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.67, 2.6) controlPoint1: CGPointMake(12.37, 2.61) controlPoint2: CGPointMake(12.52, 2.6)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.38, 2.86) controlPoint1: CGPointMake(13.29, 2.6) controlPoint2: CGPointMake(13.87, 2.69)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.01, 3.89) controlPoint1: CGPointMake(15.02, 3.08) controlPoint2: CGPointMake(15.57, 3.42)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.31, 6.85) controlPoint1: CGPointMake(16.79, 4.72) controlPoint2: CGPointMake(17.23, 5.72)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.93, 11.25) controlPoint1: CGPointMake(17.4, 8.17) controlPoint2: CGPointMake(16.99, 9.7)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.48, 11.91)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19.06, 15.71)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.25, 15.92)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.52, 17.55)];
    [varNames_bezierPath addLineToPoint: CGPointMake(22.17, 17.93)];
    [varNames_bezierPath addLineToPoint: CGPointMake(22.44, 19.58)];
    [varNames_bezierPath addLineToPoint: CGPointMake(24.09, 19.96)];
    [varNames_bezierPath addLineToPoint: CGPointMake(24.3, 21.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.36, 23.44)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.08, 26.13)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.2, 13.33)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.84, 13.65)];
    [varNames_bezierPath addLineToPoint: CGPointMake(25.66, 26.4)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.13, 26.49)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(12.08, 6.92)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(11.33, 6.41) controlPoint1: CGPointMake(11.87, 6.69) controlPoint2: CGPointMake(11.61, 6.52)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(10.43, 6.24) controlPoint1: CGPointMake(11.05, 6.3) controlPoint2: CGPointMake(10.74, 6.24)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(9.22, 6.49) controlPoint1: CGPointMake(10.03, 6.24) controlPoint2: CGPointMake(9.62, 6.33)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(8.07, 7.22) controlPoint1: CGPointMake(8.82, 6.66) controlPoint2: CGPointMake(8.43, 6.9)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(7.18, 8.41) controlPoint1: CGPointMake(7.68, 7.58) controlPoint2: CGPointMake(7.38, 7.99)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(6.87, 9.72) controlPoint1: CGPointMake(6.97, 8.84) controlPoint2: CGPointMake(6.87, 9.29)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(7, 10.51) controlPoint1: CGPointMake(6.87, 9.99) controlPoint2: CGPointMake(6.91, 10.26)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(7.4, 11.18) controlPoint1: CGPointMake(7.09, 10.75) controlPoint2: CGPointMake(7.22, 10.98)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(8.15, 11.7) controlPoint1: CGPointMake(7.61, 11.41) controlPoint2: CGPointMake(7.87, 11.59)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(9.06, 11.86) controlPoint1: CGPointMake(8.43, 11.81) controlPoint2: CGPointMake(8.74, 11.86)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(10.27, 11.61) controlPoint1: CGPointMake(9.45, 11.86) controlPoint2: CGPointMake(9.86, 11.78)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(11.41, 10.88) controlPoint1: CGPointMake(10.67, 11.45) controlPoint2: CGPointMake(11.06, 11.21)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(12.3, 9.69) controlPoint1: CGPointMake(11.8, 10.53) controlPoint2: CGPointMake(12.1, 10.12)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(12.62, 8.38) controlPoint1: CGPointMake(12.51, 9.26) controlPoint2: CGPointMake(12.62, 8.81)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(12.49, 7.6) controlPoint1: CGPointMake(12.62, 8.11) controlPoint2: CGPointMake(12.57, 7.85)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(12.08, 6.92) controlPoint1: CGPointMake(12.4, 7.35) controlPoint2: CGPointMake(12.26, 7.12)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(11.87, 9.48)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(11.09, 10.53) controlPoint1: CGPointMake(11.69, 9.86) controlPoint2: CGPointMake(11.43, 10.22)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(10.08, 11.17) controlPoint1: CGPointMake(10.78, 10.81) controlPoint2: CGPointMake(10.43, 11.03)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(9.06, 11.38) controlPoint1: CGPointMake(9.74, 11.31) controlPoint2: CGPointMake(9.38, 11.38)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(8.33, 11.25) controlPoint1: CGPointMake(8.79, 11.38) controlPoint2: CGPointMake(8.55, 11.34)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(7.76, 10.86) controlPoint1: CGPointMake(8.11, 11.16) controlPoint2: CGPointMake(7.92, 11.03)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(7.45, 10.34) controlPoint1: CGPointMake(7.62, 10.71) controlPoint2: CGPointMake(7.52, 10.54)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(7.35, 9.72) controlPoint1: CGPointMake(7.38, 10.15) controlPoint2: CGPointMake(7.35, 9.94)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(7.61, 8.62) controlPoint1: CGPointMake(7.35, 9.37) controlPoint2: CGPointMake(7.44, 8.99)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(8.4, 7.58) controlPoint1: CGPointMake(7.79, 8.25) controlPoint2: CGPointMake(8.05, 7.89)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(9.4, 6.94) controlPoint1: CGPointMake(8.71, 7.29) controlPoint2: CGPointMake(9.05, 7.08)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(10.43, 6.72) controlPoint1: CGPointMake(9.75, 6.79) controlPoint2: CGPointMake(10.1, 6.72)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(11.15, 6.85) controlPoint1: CGPointMake(10.69, 6.72) controlPoint2: CGPointMake(10.93, 6.77)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(11.72, 7.25) controlPoint1: CGPointMake(11.37, 6.94) controlPoint2: CGPointMake(11.57, 7.07)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(12.03, 7.76) controlPoint1: CGPointMake(11.86, 7.4) controlPoint2: CGPointMake(11.96, 7.57)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(12.14, 8.38) controlPoint1: CGPointMake(12.1, 7.95) controlPoint2: CGPointMake(12.14, 8.16)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(11.87, 9.48) controlPoint1: CGPointMake(12.14, 8.73) controlPoint2: CGPointMake(12.05, 9.11)];
    [varNames_bezier2Path closePath];
    
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    [varNames_view.layer addSublayer:varNames_layer1];
    
    
}
static inline void methodNames_drawCode4(UIView *varNames_view, UIColor *varNames_color) {
 
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(12.69, 21.67)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.72, 21) controlPoint1: CGPointMake(12.37, 21.33) controlPoint2: CGPointMake(12.04, 21.17)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.55, 8.83)];
    [varNames_bezierPath addLineToPoint: CGPointMake(24.84, 10.17)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25.81, 10.17) controlPoint1: CGPointMake(25.17, 10.5) controlPoint2: CGPointMake(25.49, 10.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25.81, 9.17) controlPoint1: CGPointMake(26.14, 9.83) controlPoint2: CGPointMake(26.14, 9.5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(24.52, 7.83)];
    [varNames_bezierPath addLineToPoint: CGPointMake(25.49, 6.83)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.79, 8.17)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(27.76, 8.17) controlPoint1: CGPointMake(27.11, 8.5) controlPoint2: CGPointMake(27.43, 8.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(27.76, 7.17) controlPoint1: CGPointMake(28.08, 7.83) controlPoint2: CGPointMake(28.08, 7.5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.46, 5.83)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.95, 5.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(27.43, 4.33) controlPoint1: CGPointMake(27.27, 5) controlPoint2: CGPointMake(27.43, 4.67)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(27.27, 3.5) controlPoint1: CGPointMake(27.43, 4) controlPoint2: CGPointMake(27.43, 3.67)];
    [varNames_bezierPath addLineToPoint: CGPointMake(25.98, 2.17)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(24.36, 2.67) controlPoint1: CGPointMake(25.65, 1.83) controlPoint2: CGPointMake(24.84, 2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.29, 18.17)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.64, 17.17) controlPoint1: CGPointMake(9.13, 17.67) controlPoint2: CGPointMake(8.97, 17.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.21, 16.17) controlPoint1: CGPointMake(7.99, 16.5) controlPoint2: CGPointMake(7.18, 16.17)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.78, 17.17) controlPoint1: CGPointMake(5.24, 16.17) controlPoint2: CGPointMake(4.43, 16.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.78, 22.17) controlPoint1: CGPointMake(2.49, 18.5) controlPoint2: CGPointMake(2.49, 20.83)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.97, 22.83) controlPoint1: CGPointMake(3.46, 22.33) controlPoint2: CGPointMake(3.13, 22.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2, 25) controlPoint1: CGPointMake(2.32, 23.33) controlPoint2: CGPointMake(2, 24.17)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.81, 27.17) controlPoint1: CGPointMake(2, 25.83) controlPoint2: CGPointMake(2.32, 26.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.92, 28) controlPoint1: CGPointMake(3.3, 27.67) controlPoint2: CGPointMake(4.11, 28)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.02, 27.17) controlPoint1: CGPointMake(5.73, 28) controlPoint2: CGPointMake(6.37, 27.67)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.51, 26.5) controlPoint1: CGPointMake(7.18, 27) controlPoint2: CGPointMake(7.35, 26.67)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.67, 26.83) controlPoint1: CGPointMake(7.51, 26.67) controlPoint2: CGPointMake(7.67, 26.67)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.1, 27.83) controlPoint1: CGPointMake(8.32, 27.5) controlPoint2: CGPointMake(9.13, 27.83)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.53, 26.83) controlPoint1: CGPointMake(11.07, 27.83) controlPoint2: CGPointMake(11.88, 27.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.69, 21.67) controlPoint1: CGPointMake(13.99, 25.33) controlPoint2: CGPointMake(13.99, 23)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(11.07, 20.67)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.07, 20.67)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.07, 20.33)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.07, 20.33)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.07, 20.67)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(4.59, 21.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.59, 18) controlPoint1: CGPointMake(3.62, 20.33) controlPoint2: CGPointMake(3.62, 18.83)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.21, 17.33) controlPoint1: CGPointMake(5.08, 17.5) controlPoint2: CGPointMake(5.56, 17.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.83, 18) controlPoint1: CGPointMake(6.86, 17.33) controlPoint2: CGPointMake(7.35, 17.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.48, 19.67) controlPoint1: CGPointMake(8.32, 18.5) controlPoint2: CGPointMake(8.48, 19)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.83, 21.33) controlPoint1: CGPointMake(8.48, 20.33) controlPoint2: CGPointMake(8.32, 20.83)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.59, 21.33) controlPoint1: CGPointMake(7.02, 22.33) controlPoint2: CGPointMake(5.4, 22.33)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(3.62, 26.17)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.13, 24.83) controlPoint1: CGPointMake(3.3, 25.83) controlPoint2: CGPointMake(3.13, 25.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.62, 23.5) controlPoint1: CGPointMake(3.13, 24.33) controlPoint2: CGPointMake(3.3, 23.83)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.92, 23) controlPoint1: CGPointMake(3.94, 23.17) controlPoint2: CGPointMake(4.43, 23)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.21, 23.5) controlPoint1: CGPointMake(5.4, 23) controlPoint2: CGPointMake(5.89, 23.17)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.7, 24.83) controlPoint1: CGPointMake(6.54, 23.83) controlPoint2: CGPointMake(6.7, 24.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.21, 26.17) controlPoint1: CGPointMake(6.7, 25.33) controlPoint2: CGPointMake(6.54, 25.83)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.62, 26.17) controlPoint1: CGPointMake(5.56, 27) controlPoint2: CGPointMake(4.43, 27)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(8.48, 25.83)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.48, 22.5) controlPoint1: CGPointMake(7.51, 24.83) controlPoint2: CGPointMake(7.51, 23.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.1, 21.83) controlPoint1: CGPointMake(8.97, 22) controlPoint2: CGPointMake(9.45, 21.83)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.72, 22.5) controlPoint1: CGPointMake(10.75, 21.83) controlPoint2: CGPointMake(11.23, 22)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.72, 25.83) controlPoint1: CGPointMake(12.69, 23.5) controlPoint2: CGPointMake(12.69, 25)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.48, 25.83) controlPoint1: CGPointMake(10.91, 26.67) controlPoint2: CGPointMake(9.45, 26.67)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
    
}
static inline void methodNames_drawCode5(UIView *varNames_view, UIColor *varNames_color) {
    
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(20.63, 0)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.25, 9.38) controlPoint1: CGPointMake(15.45, 0) controlPoint2: CGPointMake(11.25, 4.2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.92, 12.78) controlPoint1: CGPointMake(11.25, 10.58) controlPoint2: CGPointMake(11.5, 11.72)];
    [varNames_bezierPath addLineToPoint: CGPointMake(0.53, 24.17)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(0, 25.31) controlPoint1: CGPointMake(0.2, 24.5) controlPoint2: CGPointMake(0, 24.81)];
    [varNames_bezierPath addLineToPoint: CGPointMake(0, 28.12)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(1.87, 30) controlPoint1: CGPointMake(0, 29.13) controlPoint2: CGPointMake(0.87, 30)];
    [varNames_bezierPath addLineToPoint: CGPointMake(4.69, 30)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.84, 29.47) controlPoint1: CGPointMake(5.19, 30) controlPoint2: CGPointMake(5.51, 29.8)];
    [varNames_bezierPath addLineToPoint: CGPointMake(7.18, 28.12)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.38, 28.12)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.25, 26.25) controlPoint1: CGPointMake(10.41, 28.12) controlPoint2: CGPointMake(11.25, 27.29)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.25, 24.38)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.13, 24.38)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15, 22.5) controlPoint1: CGPointMake(14.16, 24.38) controlPoint2: CGPointMake(15, 23.54)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15, 20.3)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.22, 18.08)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.63, 18.75) controlPoint1: CGPointMake(18.28, 18.5) controlPoint2: CGPointMake(19.42, 18.75)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(30, 9.38) controlPoint1: CGPointMake(25.8, 18.75) controlPoint2: CGPointMake(30, 14.55)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.63, 0) controlPoint1: CGPointMake(30, 4.2) controlPoint2: CGPointMake(25.8, 0)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(20.63, 16.88)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.84, 15.81) controlPoint1: CGPointMake(19.24, 16.88) controlPoint2: CGPointMake(17.95, 16.47)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.52, 16.14)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.68, 18.98)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.13, 20.3) controlPoint1: CGPointMake(13.32, 19.33) controlPoint2: CGPointMake(13.13, 19.8)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.13, 22.5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.25, 22.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.38, 24.38) controlPoint1: CGPointMake(10.22, 22.5) controlPoint2: CGPointMake(9.38, 23.34)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.38, 26.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(7.18, 26.25)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.86, 26.8) controlPoint1: CGPointMake(6.68, 26.25) controlPoint2: CGPointMake(6.21, 26.45)];
    [varNames_bezierPath addLineToPoint: CGPointMake(4.53, 28.13)];
    [varNames_bezierPath addLineToPoint: CGPointMake(1.88, 28.12)];
    [varNames_bezierPath addLineToPoint: CGPointMake(1.87, 25.45)];
    [varNames_bezierPath addLineToPoint: CGPointMake(12.81, 14.54)];
    [varNames_bezierPath addLineToPoint: CGPointMake(12.81, 14.54)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.19, 13.16)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.13, 9.37) controlPoint1: CGPointMake(13.53, 12.05) controlPoint2: CGPointMake(13.13, 10.76)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.63, 1.87) controlPoint1: CGPointMake(13.13, 5.23) controlPoint2: CGPointMake(16.48, 1.87)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(28.12, 9.37) controlPoint1: CGPointMake(24.77, 1.87) controlPoint2: CGPointMake(28.12, 5.23)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.63, 16.88) controlPoint1: CGPointMake(28.12, 13.52) controlPoint2: CGPointMake(24.77, 16.88)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(26.08, 7.72)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.28, 3.92) controlPoint1: CGPointMake(25.03, 6.26) controlPoint2: CGPointMake(23.75, 4.98)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.45, 3.8) controlPoint1: CGPointMake(22.04, 3.75) controlPoint2: CGPointMake(21.73, 3.71)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.8, 6.46) controlPoint1: CGPointMake(20.15, 4.26) controlPoint2: CGPointMake(19.26, 5.15)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.75, 6.75) controlPoint1: CGPointMake(18.77, 6.55) controlPoint2: CGPointMake(18.75, 6.65)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.92, 7.28) controlPoint1: CGPointMake(18.75, 6.94) controlPoint2: CGPointMake(18.81, 7.13)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.72, 11.08) controlPoint1: CGPointMake(19.97, 8.75) controlPoint2: CGPointMake(21.25, 10.03)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.55, 11.2) controlPoint1: CGPointMake(22.96, 11.25) controlPoint2: CGPointMake(23.27, 11.3)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.2, 8.55) controlPoint1: CGPointMake(24.85, 10.75) controlPoint2: CGPointMake(25.74, 9.85)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.25, 8.25) controlPoint1: CGPointMake(26.23, 8.45) controlPoint2: CGPointMake(26.25, 8.35)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.08, 7.72) controlPoint1: CGPointMake(26.25, 8.07) controlPoint2: CGPointMake(26.19, 7.88)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(23.27, 10.32)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.69, 6.77) controlPoint1: CGPointMake(21.88, 9.33) controlPoint2: CGPointMake(20.67, 8.12)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.73, 4.68) controlPoint1: CGPointMake(20.05, 5.73) controlPoint2: CGPointMake(20.73, 5.05)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25.31, 8.26) controlPoint1: CGPointMake(23.12, 5.68) controlPoint2: CGPointMake(24.32, 6.89)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.27, 10.32) controlPoint1: CGPointMake(24.94, 9.28) controlPoint2: CGPointMake(24.26, 9.96)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
}
static inline void methodNames_drawCode6(UIView *varNames_view, UIColor *varNames_color) {
    
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(27.34, 12.52)];
    [varNames_bezierPath addLineToPoint: CGPointMake(24.56, 9.71)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.92, 12.38)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.04, 12.38)];
    [varNames_bezierPath addLineToPoint: CGPointMake(18.36, 9.72)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.72, 12.34)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.59, 7) controlPoint1: CGPointMake(14.75, 9.24) controlPoint2: CGPointMake(11.92, 7)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(1.1, 14.7) controlPoint1: CGPointMake(4.45, 7) controlPoint2: CGPointMake(1.1, 10.45)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.59, 22.39) controlPoint1: CGPointMake(1.1, 18.95) controlPoint2: CGPointMake(4.45, 22.39)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.73, 17.01) controlPoint1: CGPointMake(11.94, 22.39) controlPoint2: CGPointMake(14.78, 20.13)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.57, 17.01)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(28.8, 14.74) controlPoint1: CGPointMake(27.8, 17.01) controlPoint2: CGPointMake(28.8, 15.99)];
    [varNames_bezierPath addLineToPoint: CGPointMake(28.8, 14.65)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(27.34, 12.52) controlPoint1: CGPointMake(28.8, 13.67) controlPoint2: CGPointMake(28.19, 12.84)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(8.59, 17.77)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.59, 14.69) controlPoint1: CGPointMake(6.93, 17.77) controlPoint2: CGPointMake(5.59, 16.39)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.59, 11.61) controlPoint1: CGPointMake(5.59, 12.99) controlPoint2: CGPointMake(6.93, 11.61)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.58, 14.69) controlPoint1: CGPointMake(10.24, 11.61) controlPoint2: CGPointMake(11.58, 12.99)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.59, 17.77) controlPoint1: CGPointMake(11.58, 16.39) controlPoint2: CGPointMake(10.24, 17.77)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
}

#pragma mark ---------- 绘制获取验证码输入框左侧icon
static inline void methodNames_drawCode(UIView *varNames_view, UIColor *varNames_color) {
    
    NSInteger type = methodNames_getDefault_inputViewType_config();
    
    switch (type) {
        case 0:
        {
        }
            break;
        case 1:
        {
            methodNames_drawCode1(varNames_view, varNames_color);
        }
            break;
        case 2:
        {
            methodNames_drawCode2(varNames_view, varNames_color);
        }
            break;
        case 3:
        {
            methodNames_drawCode3(varNames_view, varNames_color);
        }
            break;
        case 4:
        {
            methodNames_drawCode4(varNames_view, varNames_color);
        }
            break;
        case 5:
        {
            methodNames_drawCode5(varNames_view, varNames_color);
        }
            break;
            
        default:
        {
            methodNames_drawCode6(varNames_view, varNames_color);
        }
            break;
    }
}




#pragma mark ---------- 绘制信息图
static inline CAShapeLayer *methodNames_drawImageMessage1(UIView *varNames_view, UIColor *varNames_color) {
    
    CAShapeLayer *varNames_returnLayer = [CAShapeLayer layer];
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(18.54, 21.22)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.71, 21.22)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.3, 20.82) controlPoint1: CGPointMake(6.49, 21.22) controlPoint2: CGPointMake(6.3, 21.03)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.3, 9.72)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.71, 17.01)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.92, 17.5) controlPoint1: CGPointMake(14.02, 17.32) controlPoint2: CGPointMake(14.45, 17.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.13, 17.01) controlPoint1: CGPointMake(15.38, 17.5) controlPoint2: CGPointMake(15.81, 17.32)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.7, 9.55)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.7, 16.05)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(24.35, 16.69) controlPoint1: CGPointMake(23.7, 16.4) controlPoint2: CGPointMake(24, 16.69)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25, 16.05) controlPoint1: CGPointMake(24.7, 16.69) controlPoint2: CGPointMake(25, 16.4)];
    [varNames_bezierPath addLineToPoint: CGPointMake(25, 9.18)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.29, 7.5) controlPoint1: CGPointMake(25, 8.25) controlPoint2: CGPointMake(24.24, 7.5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.71, 7.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5, 9.18) controlPoint1: CGPointMake(5.76, 7.5) controlPoint2: CGPointMake(5, 8.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(5, 20.82)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.71, 22.5) controlPoint1: CGPointMake(5, 21.75) controlPoint2: CGPointMake(5.76, 22.5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(18.54, 22.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.2, 21.86) controlPoint1: CGPointMake(18.9, 22.5) controlPoint2: CGPointMake(19.2, 22.21)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.54, 21.22) controlPoint1: CGPointMake(19.2, 21.51) controlPoint2: CGPointMake(18.9, 21.22)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(22.62, 8.8)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.2, 16.09)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.62, 16.09) controlPoint1: CGPointMake(15.05, 16.24) controlPoint2: CGPointMake(14.77, 16.24)];
    [varNames_bezierPath addLineToPoint: CGPointMake(7.21, 8.8)];
    [varNames_bezierPath addLineToPoint: CGPointMake(22.62, 8.8)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    
    //// Oval Drawing
    UIBezierPath* varNames_ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(22.55, 24.14, 1.8, 1.8)];
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_ovalPath.CGPath;
    
    
    //// Oval 2 Drawing
    UIBezierPath* varNames_oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(26.05, 24.09, 1.8, 1.8)];
    CAShapeLayer *varNames_layer2 = [CAShapeLayer layer];
    varNames_layer2.fillColor = varNames_color.CGColor;
    varNames_layer2.path = varNames_oval2Path.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(26.17, 21.43)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(26.17, 21.43)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(27.05, 22.31) controlPoint1: CGPointMake(26.17, 21.92) controlPoint2: CGPointMake(26.57, 22.31)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(27.94, 21.43) controlPoint1: CGPointMake(27.54, 22.31) controlPoint2: CGPointMake(27.94, 21.92)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(27.94, 21.43)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(27.05, 20.55) controlPoint1: CGPointMake(27.94, 20.94) controlPoint2: CGPointMake(27.54, 20.55)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(26.17, 21.43) controlPoint1: CGPointMake(26.57, 20.55) controlPoint2: CGPointMake(26.17, 20.94)];
    [varNames_bezier2Path closePath];
    CAShapeLayer *varNames_layer3 = [CAShapeLayer layer];
    varNames_layer3.fillColor = varNames_color.CGColor;
    varNames_layer3.path = varNames_bezier2Path.CGPath;
    
    [varNames_returnLayer addSublayer:varNames_layer];
    [varNames_returnLayer addSublayer:varNames_layer1];
    [varNames_returnLayer addSublayer:varNames_layer2];
    [varNames_returnLayer addSublayer:varNames_layer3];
    
    [varNames_view.layer addSublayer:varNames_returnLayer];
    return varNames_returnLayer;
}

static inline CAShapeLayer *methodNames_drawImageMessage2(UIView *varNames_view, UIColor *varNames_color) {
    
    CAShapeLayer *varNames_returnLayer = [CAShapeLayer layer];
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(23.07, 7)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.93, 7)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5, 8.75) controlPoint1: CGPointMake(5.86, 7) controlPoint2: CGPointMake(5, 7.78)];
    [varNames_bezierPath addLineToPoint: CGPointMake(5, 19.9)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.73, 21.64) controlPoint1: CGPointMake(5, 20.81) controlPoint2: CGPointMake(5.76, 21.56)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.93, 21.65) controlPoint1: CGPointMake(6.8, 21.65) controlPoint2: CGPointMake(6.86, 21.65)];
    [varNames_bezierPath addLineToPoint: CGPointMake(7.44, 21.65)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.44, 22.62) controlPoint1: CGPointMake(7.44, 21.92) controlPoint2: CGPointMake(7.44, 22.62)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.19, 22.9) controlPoint1: CGPointMake(7.44, 23.04) controlPoint2: CGPointMake(7.88, 23.08)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.02, 22.42) controlPoint1: CGPointMake(8.46, 22.74) controlPoint2: CGPointMake(8.74, 22.58)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.88, 21.65) controlPoint1: CGPointMake(9.58, 22.12) controlPoint2: CGPointMake(10.22, 21.76)];
    [varNames_bezierPath addLineToPoint: CGPointMake(12.99, 21.65)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.07, 21.65)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25, 19.9) controlPoint1: CGPointMake(24.14, 21.65) controlPoint2: CGPointMake(25, 20.87)];
    [varNames_bezierPath addLineToPoint: CGPointMake(25, 8.75)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.07, 7) controlPoint1: CGPointMake(25, 7.78) controlPoint2: CGPointMake(24.14, 7)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(9.09, 15.26)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.74, 14.03) controlPoint1: CGPointMake(8.34, 15.26) controlPoint2: CGPointMake(7.74, 14.71)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.09, 12.8) controlPoint1: CGPointMake(7.74, 13.35) controlPoint2: CGPointMake(8.34, 12.8)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.45, 14.03) controlPoint1: CGPointMake(9.84, 12.8) controlPoint2: CGPointMake(10.45, 13.35)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.09, 15.26) controlPoint1: CGPointMake(10.45, 14.71) controlPoint2: CGPointMake(9.84, 15.26)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(15.06, 15.26)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.71, 14.03) controlPoint1: CGPointMake(14.31, 15.26) controlPoint2: CGPointMake(13.71, 14.71)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.06, 12.8) controlPoint1: CGPointMake(13.71, 13.35) controlPoint2: CGPointMake(14.31, 12.8)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.42, 14.03) controlPoint1: CGPointMake(15.81, 12.8) controlPoint2: CGPointMake(16.42, 13.35)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.06, 15.26) controlPoint1: CGPointMake(16.42, 14.71) controlPoint2: CGPointMake(15.81, 15.26)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(20.91, 15.26)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.55, 14.03) controlPoint1: CGPointMake(20.16, 15.26) controlPoint2: CGPointMake(19.55, 14.71)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.91, 12.8) controlPoint1: CGPointMake(19.55, 13.35) controlPoint2: CGPointMake(20.16, 12.8)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.26, 14.03) controlPoint1: CGPointMake(21.66, 12.8) controlPoint2: CGPointMake(22.26, 13.35)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.91, 15.26) controlPoint1: CGPointMake(22.26, 14.71) controlPoint2: CGPointMake(21.66, 15.26)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_returnLayer addSublayer:varNames_layer];
    
    [varNames_view.layer addSublayer:varNames_returnLayer];
    return varNames_returnLayer;
}

static inline CAShapeLayer *methodNames_drawImageMessage3(UIView *varNames_view, UIColor *varNames_color) {
    
    CAShapeLayer *varNames_returnLayer = [CAShapeLayer layer];
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(9.33, 15.97)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.61, 14.36) controlPoint1: CGPointMake(8.38, 15.97) controlPoint2: CGPointMake(7.61, 15.24)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.33, 12.75) controlPoint1: CGPointMake(7.61, 13.47) controlPoint2: CGPointMake(8.38, 12.75)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.04, 14.36) controlPoint1: CGPointMake(10.27, 12.75) controlPoint2: CGPointMake(11.04, 13.47)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.33, 15.97) controlPoint1: CGPointMake(11.04, 15.24) controlPoint2: CGPointMake(10.27, 15.97)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(9.33, 13.53)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.44, 14.36) controlPoint1: CGPointMake(8.84, 13.53) controlPoint2: CGPointMake(8.44, 13.9)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.33, 15.19) controlPoint1: CGPointMake(8.44, 14.81) controlPoint2: CGPointMake(8.84, 15.19)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.21, 14.36) controlPoint1: CGPointMake(9.81, 15.19) controlPoint2: CGPointMake(10.21, 14.81)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.33, 13.53) controlPoint1: CGPointMake(10.21, 13.9) controlPoint2: CGPointMake(9.81, 13.53)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(15.03, 15.97)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(13.32, 14.36) controlPoint1: CGPointMake(14.09, 15.97) controlPoint2: CGPointMake(13.32, 15.24)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15.03, 12.75) controlPoint1: CGPointMake(13.32, 13.47) controlPoint2: CGPointMake(14.09, 12.75)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(16.74, 14.36) controlPoint1: CGPointMake(15.97, 12.75) controlPoint2: CGPointMake(16.74, 13.47)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15.03, 15.97) controlPoint1: CGPointMake(16.74, 15.24) controlPoint2: CGPointMake(15.97, 15.97)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(15.03, 13.53)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.15, 14.36) controlPoint1: CGPointMake(14.54, 13.53) controlPoint2: CGPointMake(14.15, 13.9)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15.03, 15.19) controlPoint1: CGPointMake(14.15, 14.81) controlPoint2: CGPointMake(14.54, 15.19)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15.91, 14.36) controlPoint1: CGPointMake(15.52, 15.19) controlPoint2: CGPointMake(15.91, 14.81)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15.03, 13.53) controlPoint1: CGPointMake(15.91, 13.9) controlPoint2: CGPointMake(15.52, 13.53)];
    [varNames_bezier2Path closePath];
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    
    //// Bezier 3 Drawing
    UIBezierPath* varNames_bezier3Path = [UIBezierPath bezierPath];
    [varNames_bezier3Path moveToPoint: CGPointMake(20.61, 15.97)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(18.9, 14.36) controlPoint1: CGPointMake(19.67, 15.97) controlPoint2: CGPointMake(18.9, 15.24)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(20.61, 12.75) controlPoint1: CGPointMake(18.9, 13.47) controlPoint2: CGPointMake(19.67, 12.75)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(22.33, 14.36) controlPoint1: CGPointMake(21.56, 12.75) controlPoint2: CGPointMake(22.33, 13.47)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(20.61, 15.97) controlPoint1: CGPointMake(22.33, 15.24) controlPoint2: CGPointMake(21.56, 15.97)];
    [varNames_bezier3Path closePath];
    [varNames_bezier3Path moveToPoint: CGPointMake(20.61, 13.53)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(19.73, 14.36) controlPoint1: CGPointMake(20.13, 13.53) controlPoint2: CGPointMake(19.73, 13.9)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(20.61, 15.19) controlPoint1: CGPointMake(19.73, 14.81) controlPoint2: CGPointMake(20.13, 15.19)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(21.5, 14.36) controlPoint1: CGPointMake(21.1, 15.19) controlPoint2: CGPointMake(21.5, 14.81)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(20.61, 13.53) controlPoint1: CGPointMake(21.5, 13.9) controlPoint2: CGPointMake(21.1, 13.53)];
    [varNames_bezier3Path closePath];
    CAShapeLayer *varNames_layer2 = [CAShapeLayer layer];
    varNames_layer2.fillColor = varNames_color.CGColor;
    varNames_layer2.path = varNames_bezier3Path.CGPath;
    
    
    //// Bezier 4 Drawing
    UIBezierPath* varNames_bezier4Path = [UIBezierPath bezierPath];
    [varNames_bezier4Path moveToPoint: CGPointMake(9.8, 23.34)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(9.58, 23.28) controlPoint1: CGPointMake(9.73, 23.34) controlPoint2: CGPointMake(9.65, 23.32)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(9.45, 22.74) controlPoint1: CGPointMake(9.39, 23.17) controlPoint2: CGPointMake(9.33, 22.92)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(11.64, 21.63) controlPoint1: CGPointMake(9.84, 22.18) controlPoint2: CGPointMake(10.57, 21.81)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(13.05, 21.52) controlPoint1: CGPointMake(12.36, 21.51) controlPoint2: CGPointMake(12.98, 21.52)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(22.68, 21.52)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(24.11, 20.17) controlPoint1: CGPointMake(23.47, 21.52) controlPoint2: CGPointMake(24.11, 20.91)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(24.11, 9.12)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(22.68, 7.78) controlPoint1: CGPointMake(24.11, 8.38) controlPoint2: CGPointMake(23.47, 7.78)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(7.26, 7.78)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(5.83, 9.12) controlPoint1: CGPointMake(6.47, 7.78) controlPoint2: CGPointMake(5.83, 8.38)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(5.83, 20.17)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(7.11, 21.51) controlPoint1: CGPointMake(5.83, 20.87) controlPoint2: CGPointMake(6.38, 21.44)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(7.26, 21.52) controlPoint1: CGPointMake(7.16, 21.52) controlPoint2: CGPointMake(7.21, 21.52)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(8.41, 21.52)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(8.83, 21.91) controlPoint1: CGPointMake(8.64, 21.52) controlPoint2: CGPointMake(8.83, 21.69)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(8.41, 22.3) controlPoint1: CGPointMake(8.83, 22.12) controlPoint2: CGPointMake(8.64, 22.3)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(7.26, 22.3)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(7.03, 22.29) controlPoint1: CGPointMake(7.18, 22.3) controlPoint2: CGPointMake(7.11, 22.29)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(5.59, 21.6) controlPoint1: CGPointMake(6.48, 22.23) controlPoint2: CGPointMake(5.96, 21.99)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(5, 20.17) controlPoint1: CGPointMake(5.21, 21.21) controlPoint2: CGPointMake(5, 20.7)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(5, 9.12)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(7.26, 7) controlPoint1: CGPointMake(5, 7.95) controlPoint2: CGPointMake(6.01, 7)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(22.68, 7)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(24.94, 9.12) controlPoint1: CGPointMake(23.93, 7) controlPoint2: CGPointMake(24.94, 7.95)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(24.94, 20.17)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(22.68, 22.3) controlPoint1: CGPointMake(24.94, 21.35) controlPoint2: CGPointMake(23.93, 22.3)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(13.04, 22.3)];
    [varNames_bezier4Path addLineToPoint: CGPointMake(13.04, 22.3)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(11.77, 22.4) controlPoint1: CGPointMake(13.03, 22.3) controlPoint2: CGPointMake(12.44, 22.28)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(10.15, 23.17) controlPoint1: CGPointMake(11.21, 22.49) controlPoint2: CGPointMake(10.46, 22.71)];
    [varNames_bezier4Path addCurveToPoint: CGPointMake(9.8, 23.34) controlPoint1: CGPointMake(10.07, 23.28) controlPoint2: CGPointMake(9.94, 23.34)];
    [varNames_bezier4Path closePath];
    CAShapeLayer *varNames_layer3 = [CAShapeLayer layer];
    varNames_layer3.fillColor = varNames_color.CGColor;
    varNames_layer3.path = varNames_bezier4Path.CGPath;
    
    [varNames_returnLayer addSublayer:varNames_layer];
    [varNames_returnLayer addSublayer:varNames_layer1];
    [varNames_returnLayer addSublayer:varNames_layer2];
    [varNames_returnLayer addSublayer:varNames_layer3];
    
    
    [varNames_view.layer addSublayer:varNames_returnLayer];
    return varNames_returnLayer;
}

static inline CAShapeLayer *methodNames_drawImageMessage4(UIView *varNames_view, UIColor *varNames_color) {
    
    CAShapeLayer *varNames_returnLayer = [CAShapeLayer layer];
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(13.21, 27.69)];
    [varNames_bezierPath addLineToPoint: CGPointMake(7.59, 27.69)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5, 24.58) controlPoint1: CGPointMake(6.17, 27.69) controlPoint2: CGPointMake(5, 26.29)];
    [varNames_bezierPath addLineToPoint: CGPointMake(5, 4.12)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.59, 1) controlPoint1: CGPointMake(5, 2.4) controlPoint2: CGPointMake(6.17, 1)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.73, 1)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.32, 4.12) controlPoint1: CGPointMake(19.16, 1) controlPoint2: CGPointMake(20.32, 2.4)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.32, 13.22)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.66, 14.01) controlPoint1: CGPointMake(20.32, 13.65) controlPoint2: CGPointMake(20.02, 14.01)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19, 13.22) controlPoint1: CGPointMake(19.31, 14.01) controlPoint2: CGPointMake(19, 13.65)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19, 4.12)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.73, 2.58) controlPoint1: CGPointMake(19, 3.28) controlPoint2: CGPointMake(18.42, 2.58)];
    [varNames_bezierPath addLineToPoint: CGPointMake(7.59, 2.58)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.32, 4.12) controlPoint1: CGPointMake(6.9, 2.58) controlPoint2: CGPointMake(6.32, 3.28)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.32, 24.58)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.59, 26.11) controlPoint1: CGPointMake(6.32, 25.41) controlPoint2: CGPointMake(6.9, 26.11)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.21, 26.11)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.87, 26.9) controlPoint1: CGPointMake(13.57, 26.11) controlPoint2: CGPointMake(13.87, 26.47)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.21, 27.69) controlPoint1: CGPointMake(13.87, 27.33) controlPoint2: CGPointMake(13.59, 27.69)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(17.84, 29.48)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(17.37, 29.16) controlPoint1: CGPointMake(17.65, 29.48) controlPoint2: CGPointMake(17.48, 29.36)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(16.67, 27.87)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.02, 23.45) controlPoint1: CGPointMake(16.17, 27.51) controlPoint2: CGPointMake(14.49, 26.13)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(13.89, 22.05) controlPoint1: CGPointMake(13.95, 23) controlPoint2: CGPointMake(13.89, 22.52)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(19.38, 15.48) controlPoint1: CGPointMake(13.89, 18.43) controlPoint2: CGPointMake(16.35, 15.48)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(24.87, 22.07) controlPoint1: CGPointMake(22.41, 15.48) controlPoint2: CGPointMake(24.87, 18.43)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(19.49, 28.66) controlPoint1: CGPointMake(24.87, 25.66) controlPoint2: CGPointMake(22.46, 28.57)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(18.07, 29.43)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(17.84, 29.48) controlPoint1: CGPointMake(18.01, 29.48) controlPoint2: CGPointMake(17.91, 29.48)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(19.38, 16.83)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15.02, 22.05) controlPoint1: CGPointMake(16.97, 16.83) controlPoint2: CGPointMake(15.02, 19.18)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15.11, 23.15) controlPoint1: CGPointMake(15.02, 22.43) controlPoint2: CGPointMake(15.06, 22.82)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(17.31, 26.77) controlPoint1: CGPointMake(15.55, 25.64) controlPoint2: CGPointMake(17.29, 26.74)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(17.52, 26.99) controlPoint1: CGPointMake(17.41, 26.81) controlPoint2: CGPointMake(17.48, 26.9)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(18.03, 27.94)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(19.14, 27.35)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(19.36, 27.29) controlPoint1: CGPointMake(19.21, 27.31) controlPoint2: CGPointMake(19.29, 27.29)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(23.72, 22.05) controlPoint1: CGPointMake(21.77, 27.29) controlPoint2: CGPointMake(23.72, 24.94)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(19.38, 16.83) controlPoint1: CGPointMake(23.72, 19.16) controlPoint2: CGPointMake(21.79, 16.83)];
    [varNames_bezier2Path closePath];
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    
    //// Bezier 3 Drawing
    UIBezierPath* varNames_bezier3Path = [UIBezierPath bezierPath];
    [varNames_bezier3Path moveToPoint: CGPointMake(16.24, 21.89)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(16.24, 21.89)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(16.96, 22.75) controlPoint1: CGPointMake(16.24, 22.36) controlPoint2: CGPointMake(16.56, 22.75)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(17.67, 21.89) controlPoint1: CGPointMake(17.35, 22.75) controlPoint2: CGPointMake(17.67, 22.36)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(17.67, 21.89)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(16.96, 21.03) controlPoint1: CGPointMake(17.67, 21.42) controlPoint2: CGPointMake(17.35, 21.03)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(16.24, 21.89) controlPoint1: CGPointMake(16.56, 21.03) controlPoint2: CGPointMake(16.24, 21.42)];
    [varNames_bezier3Path closePath];
    CAShapeLayer *varNames_layer2 = [CAShapeLayer layer];
    varNames_layer2.fillColor = varNames_color.CGColor;
    varNames_layer2.path = varNames_bezier3Path.CGPath;
    
    
    //// Oval Drawing
    UIBezierPath* varNames_ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(18.54, 21.04, 2, 1.7)];
    CAShapeLayer *varNames_layer3 = [CAShapeLayer layer];
    varNames_layer3.fillColor = varNames_color.CGColor;
    varNames_layer3.path = varNames_ovalPath.CGPath;
    
    
    //// Oval 2 Drawing
    UIBezierPath* varNames_oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(21.54, 21.04, 1.7, 1.7)];
    CAShapeLayer *varNames_layer4 = [CAShapeLayer layer];
    varNames_layer4.fillColor = varNames_color.CGColor;
    varNames_layer4.path = varNames_oval2Path.CGPath;
    
    
    //// Rectangle Drawing
    UIBezierPath* varNames_rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(5.64, 21.17, 7.7, 1.6) cornerRadius: 0.8];
    CAShapeLayer *varNames_layer5 = [CAShapeLayer layer];
    varNames_layer5.fillColor = varNames_color.CGColor;
    varNames_layer5.path = varNames_rectanglePath.CGPath;
    
    [varNames_returnLayer addSublayer:varNames_layer];
    [varNames_returnLayer addSublayer:varNames_layer1];
    [varNames_returnLayer addSublayer:varNames_layer2];
    [varNames_returnLayer addSublayer:varNames_layer3];
    [varNames_returnLayer addSublayer:varNames_layer4];
    [varNames_returnLayer addSublayer:varNames_layer5];
    
    
    [varNames_view.layer addSublayer:varNames_returnLayer];
    return varNames_returnLayer;
}

static inline CAShapeLayer *methodNames_drawImageMessage5(UIView *varNames_view, UIColor *varNames_color) {
    
    CAShapeLayer *varNames_returnLayer = [CAShapeLayer layer];
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(15.21, 6)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5, 14.52) controlPoint1: CGPointMake(9.59, 6) controlPoint2: CGPointMake(5, 9.82)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.23, 16.33) controlPoint1: CGPointMake(5, 15.1) controlPoint2: CGPointMake(5.07, 15.71)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.25, 22.11) controlPoint1: CGPointMake(6.13, 19.95) controlPoint2: CGPointMake(9.5, 21.74)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.66, 23.93)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.17, 24.16) controlPoint1: CGPointMake(11.79, 24.07) controlPoint2: CGPointMake(11.98, 24.16)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.41, 24.12) controlPoint1: CGPointMake(12.26, 24.16) controlPoint2: CGPointMake(12.34, 24.15)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.31, 23.04)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25.38, 14.52) controlPoint1: CGPointMake(20.88, 22.98) controlPoint2: CGPointMake(25.38, 19.18)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.21, 6) controlPoint1: CGPointMake(25.41, 9.82) controlPoint2: CGPointMake(20.84, 6)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(15.21, 22.01)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.96, 22.05) controlPoint1: CGPointMake(15.12, 22.01) controlPoint2: CGPointMake(15.03, 22.02)];
    [varNames_bezierPath addLineToPoint: CGPointMake(12.43, 23)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.21, 21.44)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.98, 21.26) controlPoint1: CGPointMake(11.16, 21.36) controlPoint2: CGPointMake(11.07, 21.31)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.45, 16.12) controlPoint1: CGPointMake(10.95, 21.25) controlPoint2: CGPointMake(7.32, 19.65)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.24, 14.52) controlPoint1: CGPointMake(6.31, 15.58) controlPoint2: CGPointMake(6.24, 15.04)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.22, 7.02) controlPoint1: CGPointMake(6.24, 10.38) controlPoint2: CGPointMake(10.27, 7.02)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(24.21, 14.52) controlPoint1: CGPointMake(20.18, 7.02) controlPoint2: CGPointMake(24.21, 10.38)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.21, 22.01) controlPoint1: CGPointMake(24.21, 18.66) controlPoint2: CGPointMake(20.16, 22.01)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    
    //// Oval Drawing
    UIBezierPath* varNames_ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(12.37, 12.71, 1, 1)];
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_ovalPath.CGPath;
    
    
    //// Oval 2 Drawing
    UIBezierPath* varNames_oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(14.37, 12.71, 1.7, 1)];
    CAShapeLayer *varNames_layer2 = [CAShapeLayer layer];
    varNames_layer2.fillColor = varNames_color.CGColor;
    varNames_layer2.path = varNames_oval2Path.CGPath;
    
    
    //// Oval 3 Drawing
    UIBezierPath* varNames_oval3Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(17.37, 12.71, 1, 1)];
    CAShapeLayer *varNames_layer3 = [CAShapeLayer layer];
    varNames_layer3.fillColor = varNames_color.CGColor;
    varNames_layer3.path = varNames_oval3Path.CGPath;
    
    [varNames_returnLayer addSublayer:varNames_layer];
    [varNames_returnLayer addSublayer:varNames_layer1];
    [varNames_returnLayer addSublayer:varNames_layer2];
    [varNames_returnLayer addSublayer:varNames_layer3];
    
    [varNames_view.layer addSublayer:varNames_returnLayer];
    return varNames_returnLayer;
}

static inline CAShapeLayer *methodNames_drawImageMessage6(UIView *varNames_view, UIColor *varNames_color) {
    CAShapeLayer *varNames_returnLayer = [CAShapeLayer layer];
    
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(24.23, 6)];
    [varNames_bezierPath addLineToPoint: CGPointMake(5.31, 6)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2, 9.35) controlPoint1: CGPointMake(3.48, 6) controlPoint2: CGPointMake(2, 7.5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2, 20.99)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.31, 24.34) controlPoint1: CGPointMake(2, 22.84) controlPoint2: CGPointMake(3.48, 24.34)];
    [varNames_bezierPath addLineToPoint: CGPointMake(24.23, 24.34)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(27.54, 20.99) controlPoint1: CGPointMake(26.06, 24.34) controlPoint2: CGPointMake(27.54, 22.84)];
    [varNames_bezierPath addLineToPoint: CGPointMake(27.54, 9.35)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(24.23, 6) controlPoint1: CGPointMake(27.54, 7.5) controlPoint2: CGPointMake(26.06, 6)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(26.68, 20.99)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(24.23, 23.47) controlPoint1: CGPointMake(26.68, 22.36) controlPoint2: CGPointMake(25.58, 23.47)];
    [varNames_bezierPath addLineToPoint: CGPointMake(5.31, 23.47)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.86, 20.99) controlPoint1: CGPointMake(3.96, 23.47) controlPoint2: CGPointMake(2.86, 22.36)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.86, 9.35)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.31, 6.87) controlPoint1: CGPointMake(2.86, 7.98) controlPoint2: CGPointMake(3.96, 6.87)];
    [varNames_bezierPath addLineToPoint: CGPointMake(24.23, 6.87)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.68, 9.35) controlPoint1: CGPointMake(25.58, 6.87) controlPoint2: CGPointMake(26.68, 7.98)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.68, 20.99)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(23.03, 11.14)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.02, 10.53) controlPoint1: CGPointMake(23.19, 10.97) controlPoint2: CGPointMake(23.19, 10.69)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.41, 10.53) controlPoint1: CGPointMake(22.85, 10.36) controlPoint2: CGPointMake(22.58, 10.36)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.75, 15.36) controlPoint1: CGPointMake(22.36, 10.58) controlPoint2: CGPointMake(17.72, 15.36)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.12, 10.53) controlPoint1: CGPointMake(11.8, 15.36) controlPoint2: CGPointMake(7.17, 10.58)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.51, 10.52) controlPoint1: CGPointMake(6.96, 10.36) controlPoint2: CGPointMake(6.68, 10.36)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.51, 11.14) controlPoint1: CGPointMake(6.34, 10.69) controlPoint2: CGPointMake(6.34, 10.97)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.75, 16.23) controlPoint1: CGPointMake(6.71, 11.35) controlPoint2: CGPointMake(11.44, 16.23)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.03, 11.14) controlPoint1: CGPointMake(18.08, 16.23) controlPoint2: CGPointMake(22.83, 11.35)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(24.83, 18.15)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(24.69, 18.3) controlPoint1: CGPointMake(24.75, 18.15) controlPoint2: CGPointMake(24.69, 18.22)];
    [varNames_bezierPath addLineToPoint: CGPointMake(24.69, 20.4)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.58, 21.53) controlPoint1: CGPointMake(24.69, 21.02) controlPoint2: CGPointMake(24.19, 21.53)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.33, 21.53)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.19, 21.67) controlPoint1: CGPointMake(21.25, 21.53) controlPoint2: CGPointMake(21.19, 21.59)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.33, 21.82) controlPoint1: CGPointMake(21.19, 21.75) controlPoint2: CGPointMake(21.25, 21.82)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.58, 21.82)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(24.98, 20.4) controlPoint1: CGPointMake(24.35, 21.82) controlPoint2: CGPointMake(24.98, 21.18)];
    [varNames_bezierPath addLineToPoint: CGPointMake(24.98, 18.3)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(24.83, 18.15) controlPoint1: CGPointMake(24.98, 18.22) controlPoint2: CGPointMake(24.91, 18.15)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(20.18, 21.53)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19.63, 21.53)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.48, 21.67) controlPoint1: CGPointMake(19.55, 21.53) controlPoint2: CGPointMake(19.48, 21.59)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.63, 21.82) controlPoint1: CGPointMake(19.48, 21.75) controlPoint2: CGPointMake(19.55, 21.82)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.18, 21.82)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.32, 21.67) controlPoint1: CGPointMake(20.25, 21.82) controlPoint2: CGPointMake(20.32, 21.75)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.18, 21.53) controlPoint1: CGPointMake(20.32, 21.59) controlPoint2: CGPointMake(20.25, 21.53)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_returnLayer addSublayer:varNames_layer];
    
    [varNames_view.layer addSublayer:varNames_returnLayer];
    return varNames_returnLayer;
}


#pragma mark ---------- 绘制获取验证码输入框右侧icon
static inline CAShapeLayer *methodNames_drawImageMessage(UIView *varNames_view, UIColor *varNames_color) {
    NSInteger varNames_type = methodNames_getDefault_inputViewType_config();
    
    switch (varNames_type) {
        case 0:
        {
            return methodNames_drawImageMessage1(varNames_view, varNames_color);
        }
            break;
        case 1:
        {
            return methodNames_drawImageMessage1(varNames_view, varNames_color);
        }
            break;
        case 2:
        {
            return methodNames_drawImageMessage2(varNames_view, varNames_color);
        }
            break;
        case 3:
        {
            return methodNames_drawImageMessage3(varNames_view, varNames_color);
        }
            break;
        case 4:
        {
            return methodNames_drawImageMessage4(varNames_view, varNames_color);
        }
            break;
        case 5:
        {
            return methodNames_drawImageMessage5(varNames_view, varNames_color);
        }
            break;
            
        default:
        {
            return methodNames_drawImageMessage6(varNames_view, varNames_color);
        }
            break;
    }
    return [CAShapeLayer layer];
}



