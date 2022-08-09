

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ClassNames_DefaultThemeConfigure.h"
/// 30 * 30         20*20
static inline void methodNames_drawImageUser1(UIView *varNames_view, UIColor *varNames_color) {
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(19.74, 10.71)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15, 6) controlPoint1: CGPointMake(19.74, 7.91) controlPoint2: CGPointMake(17.73, 6)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.26, 10.71) controlPoint1: CGPointMake(12.27, 6) controlPoint2: CGPointMake(10.26, 7.91)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15, 16) controlPoint1: CGPointMake(10.26, 13.66) controlPoint2: CGPointMake(12.41, 16)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.74, 10.71) controlPoint1: CGPointMake(17.59, 16) controlPoint2: CGPointMake(19.74, 13.66)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(20.79, 10.71)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15, 17) controlPoint1: CGPointMake(20.79, 14.17) controlPoint2: CGPointMake(18.21, 17)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.21, 10.71) controlPoint1: CGPointMake(11.79, 17) controlPoint2: CGPointMake(9.21, 14.17)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15, 5) controlPoint1: CGPointMake(9.21, 7.26) controlPoint2: CGPointMake(11.79, 5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.79, 10.71) controlPoint1: CGPointMake(18.21, 5) controlPoint2: CGPointMake(20.79, 7.25)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(15, 18)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(24.99, 24.01) controlPoint1: CGPointMake(25.09, 18) controlPoint2: CGPointMake(24.99, 24.01)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(24.08, 25) controlPoint1: CGPointMake(25.07, 24.56) controlPoint2: CGPointMake(24.66, 25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(5.93, 25)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.01, 24.01) controlPoint1: CGPointMake(5.35, 25) controlPoint2: CGPointMake(4.92, 24.55)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15, 18) controlPoint1: CGPointMake(5.01, 24.01) controlPoint2: CGPointMake(4.91, 18)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(6.07, 24)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.07, 24.09)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.05, 24.18)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.93, 24) controlPoint1: CGPointMake(6.07, 24.09) controlPoint2: CGPointMake(5.98, 24)];
    [varNames_bezierPath addLineToPoint: CGPointMake(24.08, 24)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.95, 24.14) controlPoint1: CGPointMake(24.02, 24) controlPoint2: CGPointMake(23.94, 24.09)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.94, 24.07)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.94, 24)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.93, 23.83) controlPoint1: CGPointMake(23.94, 23.98) controlPoint2: CGPointMake(23.94, 23.92)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.93, 23.85)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.83, 23.33) controlPoint1: CGPointMake(23.91, 23.67) controlPoint2: CGPointMake(23.88, 23.5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.83, 23.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.96, 21.64) controlPoint1: CGPointMake(23.67, 22.71) controlPoint2: CGPointMake(23.37, 22.14)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15, 19) controlPoint1: CGPointMake(21.62, 20) controlPoint2: CGPointMake(19.11, 19)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.05, 21.62) controlPoint1: CGPointMake(10.89, 19) controlPoint2: CGPointMake(8.39, 20)];
    [varNames_bezierPath addLineToPoint: CGPointMake(7.04, 21.64)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.17, 23.33) controlPoint1: CGPointMake(6.63, 22.14) controlPoint2: CGPointMake(6.34, 22.71)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.08, 23.83) controlPoint1: CGPointMake(6.13, 23.49) controlPoint2: CGPointMake(6.1, 23.67)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.08, 23.82)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.07, 23.98) controlPoint1: CGPointMake(6.07, 23.87) controlPoint2: CGPointMake(6.07, 23.93)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.07, 24)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.strokeColor = varNames_color.CGColor;
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
}

static inline void methodNames_drawImageUser2(UIView *varNames_view, UIColor *varNames_color) {
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(7.94, 24.78)];
    [varNames_bezierPath addLineToPoint: CGPointMake(7.96, 24.8)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.31, 27.33) controlPoint1: CGPointMake(10.06, 26.44) controlPoint2: CGPointMake(12.65, 27.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.73, 24.78) controlPoint1: CGPointMake(18.12, 27.33) controlPoint2: CGPointMake(20.69, 26.38)];
    [varNames_bezierPath addLineToPoint: CGPointMake(22.73, 24.78)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.64, 24.66) controlPoint1: CGPointMake(22.69, 24.75) controlPoint2: CGPointMake(22.66, 24.71)];
    [varNames_bezierPath addLineToPoint: CGPointMake(22.61, 24.62)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.46, 23.21) controlPoint1: CGPointMake(22.28, 24.11) controlPoint2: CGPointMake(21.89, 23.64)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.45, 23.2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.35, 20.67) controlPoint1: CGPointMake(19.83, 21.58) controlPoint2: CGPointMake(17.64, 20.67)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.21, 23.21) controlPoint1: CGPointMake(13, 20.67) controlPoint2: CGPointMake(10.82, 21.59)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.2, 23.21)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.06, 24.62) controlPoint1: CGPointMake(8.77, 23.64) controlPoint2: CGPointMake(8.39, 24.11)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.94, 24.78) controlPoint1: CGPointMake(8, 24.71) controlPoint2: CGPointMake(7.97, 24.75)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(6.93, 23.9)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.94, 23.89)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.26, 22.26) controlPoint1: CGPointMake(7.32, 23.31) controlPoint2: CGPointMake(7.77, 22.76)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.27, 22.25)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.32, 19.33) controlPoint1: CGPointMake(10.14, 20.38) controlPoint2: CGPointMake(12.68, 19.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.4, 22.26) controlPoint1: CGPointMake(18.02, 19.33) controlPoint2: CGPointMake(20.54, 20.4)];
    [varNames_bezierPath addLineToPoint: CGPointMake(22.4, 22.26)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.73, 23.89) controlPoint1: CGPointMake(22.9, 22.76) controlPoint2: CGPointMake(23.34, 23.31)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.68, 23.95)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(27.33, 15.35) controlPoint1: CGPointMake(26.01, 21.7) controlPoint2: CGPointMake(27.33, 18.59)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.33, 3.33) controlPoint1: CGPointMake(27.33, 8.71) controlPoint2: CGPointMake(21.96, 3.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.33, 15.33) controlPoint1: CGPointMake(8.71, 3.33) controlPoint2: CGPointMake(3.33, 8.71)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.93, 23.9) controlPoint1: CGPointMake(3.33, 18.69) controlPoint2: CGPointMake(4.71, 21.73)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(15.33, 28.67)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2, 15.33) controlPoint1: CGPointMake(7.97, 28.67) controlPoint2: CGPointMake(2, 22.7)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.33, 2) controlPoint1: CGPointMake(2, 7.97) controlPoint2: CGPointMake(7.97, 2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(28.67, 15.33) controlPoint1: CGPointMake(22.7, 2) controlPoint2: CGPointMake(28.67, 7.97)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.33, 28.67) controlPoint1: CGPointMake(28.67, 22.7) controlPoint2: CGPointMake(22.7, 28.67)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(15.33, 18)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.33, 18)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.33, 12) controlPoint1: CGPointMake(12.02, 18) controlPoint2: CGPointMake(9.33, 15.31)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.33, 6) controlPoint1: CGPointMake(9.33, 8.69) controlPoint2: CGPointMake(12.02, 6)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.33, 6)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.33, 12) controlPoint1: CGPointMake(18.65, 6) controlPoint2: CGPointMake(21.33, 8.69)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.33, 18) controlPoint1: CGPointMake(21.33, 15.31) controlPoint2: CGPointMake(18.65, 18)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(15.33, 16.67)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.33, 16.67)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20, 12) controlPoint1: CGPointMake(17.91, 16.67) controlPoint2: CGPointMake(20, 14.58)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.33, 7.33) controlPoint1: CGPointMake(20, 9.42) controlPoint2: CGPointMake(17.91, 7.33)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.33, 7.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.67, 12) controlPoint1: CGPointMake(12.76, 7.33) controlPoint2: CGPointMake(10.67, 9.42)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.33, 16.67) controlPoint1: CGPointMake(10.67, 14.58) controlPoint2: CGPointMake(12.76, 16.67)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.strokeColor = varNames_color.CGColor;
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
}

static inline void methodNames_drawImageUser3(UIView *varNames_view, UIColor *varNames_color) {
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(23.35, 10.94)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.3, 2) controlPoint1: CGPointMake(23.35, 6) controlPoint2: CGPointMake(19.3, 2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.26, 10.94) controlPoint1: CGPointMake(9.31, 2) controlPoint2: CGPointMake(5.26, 6)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.72, 17.95) controlPoint1: CGPointMake(5.26, 13.79) controlPoint2: CGPointMake(6.61, 16.32)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2, 28.02) controlPoint1: CGPointMake(4.95, 19.85) controlPoint2: CGPointMake(2.29, 23.63)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.35, 28.02)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.06, 18.82) controlPoint1: CGPointMake(3.67, 23.91) controlPoint2: CGPointMake(6.34, 20.27)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.3, 19.87) controlPoint1: CGPointMake(11.25, 19.38) controlPoint2: CGPointMake(12.9, 19.87)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.21, 18.98) controlPoint1: CGPointMake(15.71, 19.87) controlPoint2: CGPointMake(17.03, 19.55)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19.14, 18.45)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19.89, 17.95)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.35, 10.94) controlPoint1: CGPointMake(21.99, 16.32) controlPoint2: CGPointMake(23.35, 13.79)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(21.96, 19.27)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.95, 19.27)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.38, 19.04) controlPoint1: CGPointMake(21.8, 19.13) controlPoint2: CGPointMake(21.6, 19.04)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.56, 19.67) controlPoint1: CGPointMake(20.93, 19.04) controlPoint2: CGPointMake(20.56, 19.22)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21, 20.39) controlPoint1: CGPointMake(20.56, 19.99) controlPoint2: CGPointMake(20.74, 20.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.99, 20.4)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(24.96, 28.02) controlPoint1: CGPointMake(23.47, 22.16) controlPoint2: CGPointMake(24.72, 24.84)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.61, 28.02)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.96, 19.27) controlPoint1: CGPointMake(26.37, 24.49) controlPoint2: CGPointMake(24.6, 21.34)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.strokeColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    varNames_layer.fillColor = varNames_color.CGColor;
    [varNames_view.layer addSublayer:varNames_layer];
    
}

static inline void methodNames_drawImageUser4(UIView *varNames_view, UIColor *varNames_color) {
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(26.43, 26.26)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19, 23.51) controlPoint1: CGPointMake(26.43, 26.26) controlPoint2: CGPointMake(21.34, 23.67)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19, 22.77)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25.09, 12.77) controlPoint1: CGPointMake(22.74, 21.17) controlPoint2: CGPointMake(25.09, 17.3)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.93, 2) controlPoint1: CGPointMake(25.09, 6.83) controlPoint2: CGPointMake(20.54, 2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.77, 12.77) controlPoint1: CGPointMake(9.33, 2) controlPoint2: CGPointMake(4.77, 6.83)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.01, 22.82) controlPoint1: CGPointMake(4.77, 17.35) controlPoint2: CGPointMake(7.19, 21.27)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.01, 23.51)];
    [varNames_bezierPath addLineToPoint: CGPointMake(10.96, 23.51)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.61, 26.25) controlPoint1: CGPointMake(8.79, 23.61) controlPoint2: CGPointMake(3.61, 26.25)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.01, 27.25) controlPoint1: CGPointMake(3.61, 26.25) controlPoint2: CGPointMake(2.93, 26.82)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.91, 28) controlPoint1: CGPointMake(3.08, 27.68) controlPoint2: CGPointMake(3.47, 28)];
    [varNames_bezierPath addLineToPoint: CGPointMake(12.23, 28)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.77, 28)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.08, 28)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.99, 27.26) controlPoint1: CGPointMake(26.53, 28) controlPoint2: CGPointMake(26.91, 27.69)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.43, 26.26) controlPoint1: CGPointMake(27.08, 26.84) controlPoint2: CGPointMake(26.43, 26.26)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.strokeColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    varNames_layer.fillColor = varNames_color.CGColor;
    [varNames_view.layer addSublayer:varNames_layer];
    
}

static inline void methodNames_drawImageUser5(UIView *varNames_view, UIColor *varNames_color) {
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(4, 28)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.16, 27.53) controlPoint1: CGPointMake(3.67, 28) controlPoint2: CGPointMake(3.35, 27.83)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.47, 26.15) controlPoint1: CGPointMake(2.86, 27.07) controlPoint2: CGPointMake(3, 26.45)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.99, 23.32) controlPoint1: CGPointMake(3.64, 26.04) controlPoint2: CGPointMake(7.73, 23.48)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11, 23.32)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11, 22.76)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.76, 12.75) controlPoint1: CGPointMake(7.24, 21.2) controlPoint2: CGPointMake(4.76, 17.27)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.93, 2) controlPoint1: CGPointMake(4.76, 6.82) controlPoint2: CGPointMake(9.32, 2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25.09, 12.75) controlPoint1: CGPointMake(20.53, 2) controlPoint2: CGPointMake(25.09, 6.82)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19, 22.7) controlPoint1: CGPointMake(25.09, 17.27) controlPoint2: CGPointMake(22.72, 21.09)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19, 23.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.51, 26.14) controlPoint1: CGPointMake(22.27, 23.63) controlPoint2: CGPointMake(26.33, 26.04)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.86, 27.51) controlPoint1: CGPointMake(26.98, 26.43) controlPoint2: CGPointMake(27.14, 27.04)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25.48, 27.86) controlPoint1: CGPointMake(26.57, 27.98) controlPoint2: CGPointMake(25.96, 28.14)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.79, 25.31) controlPoint1: CGPointMake(25.45, 27.83) controlPoint2: CGPointMake(21.54, 25.52)];
    [varNames_bezierPath addLineToPoint: CGPointMake(18, 25.31)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17, 24.31) controlPoint1: CGPointMake(17.44, 25.31) controlPoint2: CGPointMake(17, 24.87)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17, 22)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.67, 21.06) controlPoint1: CGPointMake(17, 21.58) controlPoint2: CGPointMake(17.27, 21.2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.09, 12.73) controlPoint1: CGPointMake(20.97, 19.92) controlPoint2: CGPointMake(23.09, 16.66)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.93, 4) controlPoint1: CGPointMake(23.1, 7.92) controlPoint2: CGPointMake(19.44, 4)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.77, 12.75) controlPoint1: CGPointMake(10.43, 4) controlPoint2: CGPointMake(6.77, 7.92)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.31, 21.11) controlPoint1: CGPointMake(6.77, 16.67) controlPoint2: CGPointMake(9, 20.03)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.01, 22.06) controlPoint1: CGPointMake(12.73, 21.24) controlPoint2: CGPointMake(13.01, 21.63)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.01, 24.32)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.01, 25.32) controlPoint1: CGPointMake(13.01, 24.87) controlPoint2: CGPointMake(12.56, 25.32)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.04, 25.32)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.54, 27.85) controlPoint1: CGPointMake(8.36, 25.45) controlPoint2: CGPointMake(4.58, 27.82)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4, 28) controlPoint1: CGPointMake(4.38, 27.95) controlPoint2: CGPointMake(4.19, 28)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.strokeColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    varNames_layer.fillColor = varNames_color.CGColor;
    [varNames_view.layer addSublayer:varNames_layer];
    
}

static inline void methodNames_drawImageUser6(UIView *varNames_view, UIColor *varNames_color) {
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(15.04, 28.36)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3, 23.02) controlPoint1: CGPointMake(7.05, 28.36) controlPoint2: CGPointMake(3, 26.56)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.33, 18.27) controlPoint1: CGPointMake(3, 20.49) controlPoint2: CGPointMake(7.18, 18.83)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.33, 17.74)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.62, 8.46) controlPoint1: CGPointMake(8.83, 16) controlPoint2: CGPointMake(7.62, 12.95)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.91, 1.5) controlPoint1: CGPointMake(7.62, 4.1) controlPoint2: CGPointMake(10.34, 1.5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.16, 1.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.45, 8.46) controlPoint1: CGPointMake(19.73, 1.5) controlPoint2: CGPointMake(22.45, 4.1)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.77, 17.75) controlPoint1: CGPointMake(22.45, 10.15) controlPoint2: CGPointMake(22.45, 15.16)];
    [varNames_bezierPath addLineToPoint: CGPointMake(18.76, 18.27)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(27.08, 23.01) controlPoint1: CGPointMake(22.92, 18.84) controlPoint2: CGPointMake(27.08, 20.49)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.04, 28.36) controlPoint1: CGPointMake(27.08, 26.56) controlPoint2: CGPointMake(23.03, 28.36)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(14.92, 3.35)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.47, 8.46) controlPoint1: CGPointMake(12.43, 3.35) controlPoint2: CGPointMake(9.47, 4.24)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.74, 16.45) controlPoint1: CGPointMake(9.47, 12.51) controlPoint2: CGPointMake(10.54, 15.13)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.19, 17.24) controlPoint1: CGPointMake(13.02, 16.62) controlPoint2: CGPointMake(13.19, 16.92)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.19, 19.09)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.35, 20.01) controlPoint1: CGPointMake(13.19, 19.57) controlPoint2: CGPointMake(12.83, 19.97)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.85, 23.01) controlPoint1: CGPointMake(7.84, 20.46) controlPoint2: CGPointMake(4.85, 22.12)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.04, 26.5) controlPoint1: CGPointMake(4.85, 25.89) controlPoint2: CGPointMake(10.4, 26.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25.23, 23.01) controlPoint1: CGPointMake(19.69, 26.5) controlPoint2: CGPointMake(25.23, 25.9)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.73, 20.01) controlPoint1: CGPointMake(25.23, 22.11) controlPoint2: CGPointMake(22.24, 20.46)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.9, 19.07) controlPoint1: CGPointMake(17.24, 19.96) controlPoint2: CGPointMake(16.88, 19.56)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.94, 17.22)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.38, 16.44) controlPoint1: CGPointMake(16.94, 16.9) controlPoint2: CGPointMake(17.12, 16.61)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.61, 8.45) controlPoint1: CGPointMake(19.59, 15.12) controlPoint2: CGPointMake(20.61, 12.58)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.16, 3.35) controlPoint1: CGPointMake(20.61, 4.23) controlPoint2: CGPointMake(17.65, 3.35)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.92, 3.35)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.92, 3.35)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.strokeColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    varNames_layer.fillColor = varNames_color.CGColor;
    [varNames_view.layer addSublayer:varNames_layer];
    
}

static inline void methodNames_drawImageUser7(UIView *varNames_view, UIColor *varNames_color) {
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(20.67, 29.77)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.35, 29.68) controlPoint1: CGPointMake(20.56, 29.77) controlPoint2: CGPointMake(20.45, 29.74)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.32, 28.87) controlPoint1: CGPointMake(19.4, 29.06) controlPoint2: CGPointMake(17.85, 28.89)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.63, 28.87)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.52, 28.88)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.52, 28.88) controlPoint1: CGPointMake(15.52, 28.88) controlPoint2: CGPointMake(15.52, 28.88)];
    [varNames_bezierPath addLineToPoint: CGPointMake(1.59, 28.88)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(1, 28.3) controlPoint1: CGPointMake(1.26, 28.88) controlPoint2: CGPointMake(1, 28.62)];
    [varNames_bezierPath addLineToPoint: CGPointMake(1, 27.6)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(1.66, 25.15) controlPoint1: CGPointMake(0.99, 27.4) controlPoint2: CGPointMake(0.97, 26.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.49, 23.27) controlPoint1: CGPointMake(2.09, 24.41) controlPoint2: CGPointMake(2.7, 23.78)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.08, 21.96) controlPoint1: CGPointMake(4.44, 22.65) controlPoint2: CGPointMake(5.65, 22.21)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.1, 21.96) controlPoint1: CGPointMake(7.09, 21.96) controlPoint2: CGPointMake(7.09, 21.96)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.32, 21.51) controlPoint1: CGPointMake(7.11, 21.95) controlPoint2: CGPointMake(8.21, 21.8)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.43, 20.54) controlPoint1: CGPointMake(11.26, 21) controlPoint2: CGPointMake(11.43, 20.55)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.48, 20.42) controlPoint1: CGPointMake(11.44, 20.5) controlPoint2: CGPointMake(11.46, 20.46)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.46, 19.16) controlPoint1: CGPointMake(11.49, 20.33) controlPoint2: CGPointMake(11.53, 20.01)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.24, 14.7) controlPoint1: CGPointMake(11.27, 17) controlPoint2: CGPointMake(10.14, 15.73)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.48, 13.77) controlPoint1: CGPointMake(8.95, 14.38) controlPoint2: CGPointMake(8.68, 14.07)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.49, 10.95) controlPoint1: CGPointMake(7.58, 12.48) controlPoint2: CGPointMake(7.5, 11.01)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.49, 10.92) controlPoint1: CGPointMake(7.49, 10.94) controlPoint2: CGPointMake(7.49, 10.93)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.04, 9.82) controlPoint1: CGPointMake(7.49, 10.33) controlPoint2: CGPointMake(7.79, 10.06)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.06, 9.81)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.08, 9.79) controlPoint1: CGPointMake(8.07, 9.8) controlPoint2: CGPointMake(8.07, 9.8)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.04, 9.57) controlPoint1: CGPointMake(8.08, 9.75) controlPoint2: CGPointMake(8.06, 9.64)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.03, 9.49) controlPoint1: CGPointMake(8.04, 9.55) controlPoint2: CGPointMake(8.03, 9.52)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.99, 5.18) controlPoint1: CGPointMake(7.8, 8.27) controlPoint2: CGPointMake(7.79, 6.39)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.49, 2.33) controlPoint1: CGPointMake(8.07, 3.59) controlPoint2: CGPointMake(9.44, 2.38)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.5, 2.32) controlPoint1: CGPointMake(9.5, 2.33) controlPoint2: CGPointMake(9.5, 2.32)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.02, 1.77) controlPoint1: CGPointMake(9.7, 2.16) controlPoint2: CGPointMake(9.9, 1.97)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.06, 1.71) controlPoint1: CGPointMake(10.04, 1.75) controlPoint2: CGPointMake(10.05, 1.73)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.02, 1.63) controlPoint1: CGPointMake(10.05, 1.69) controlPoint2: CGPointMake(10.03, 1.66)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.9, 0.85) controlPoint1: CGPointMake(9.95, 1.46) controlPoint2: CGPointMake(9.83, 1.19)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.65, 0.13) controlPoint1: CGPointMake(9.94, 0.64) controlPoint2: CGPointMake(10.09, 0.28)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.3, 0.04) controlPoint1: CGPointMake(10.88, 0.07) controlPoint2: CGPointMake(11.12, 0.05)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.33, 0.04)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.53, 0.03) controlPoint1: CGPointMake(12.03, 0.01) controlPoint2: CGPointMake(12.78, -0.03)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.95, 2.58) controlPoint1: CGPointMake(18.99, 0.45) controlPoint2: CGPointMake(20.88, 2.49)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.97, 2.59) controlPoint1: CGPointMake(20.96, 2.58) controlPoint2: CGPointMake(20.96, 2.59)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.93, 4.53) controlPoint1: CGPointMake(21.4, 3.12) controlPoint2: CGPointMake(21.73, 3.77)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.05, 5.16) controlPoint1: CGPointMake(21.99, 4.77) controlPoint2: CGPointMake(22.03, 4.97)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.17, 8.17) controlPoint1: CGPointMake(22.25, 6.27) controlPoint2: CGPointMake(22.21, 7.41)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.02, 9.58) controlPoint1: CGPointMake(22.15, 8.59) controlPoint2: CGPointMake(22.1, 9.04)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.03, 9.76) controlPoint1: CGPointMake(22, 9.72) controlPoint2: CGPointMake(22.02, 9.75)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.12, 9.86) controlPoint1: CGPointMake(22.06, 9.79) controlPoint2: CGPointMake(22.09, 9.82)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.49, 10.44) controlPoint1: CGPointMake(22.24, 9.98) controlPoint2: CGPointMake(22.4, 10.16)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.56, 10.92) controlPoint1: CGPointMake(22.54, 10.58) controlPoint2: CGPointMake(22.56, 10.73)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.56, 10.95) controlPoint1: CGPointMake(22.56, 10.93) controlPoint2: CGPointMake(22.56, 10.94)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.57, 13.77) controlPoint1: CGPointMake(22.55, 11.01) controlPoint2: CGPointMake(22.47, 12.48)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.81, 14.7) controlPoint1: CGPointMake(21.37, 14.07) controlPoint2: CGPointMake(21.1, 14.38)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.59, 19.16) controlPoint1: CGPointMake(19.91, 15.73) controlPoint2: CGPointMake(18.78, 17)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.57, 20.42) controlPoint1: CGPointMake(18.52, 20.01) controlPoint2: CGPointMake(18.56, 20.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.62, 20.54) controlPoint1: CGPointMake(18.59, 20.46) controlPoint2: CGPointMake(18.61, 20.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.73, 21.51) controlPoint1: CGPointMake(18.62, 20.55) controlPoint2: CGPointMake(18.79, 21)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.95, 21.96) controlPoint1: CGPointMake(21.85, 21.81) controlPoint2: CGPointMake(22.94, 21.95)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.98, 21.96) controlPoint1: CGPointMake(22.96, 21.96) controlPoint2: CGPointMake(22.97, 21.96)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.59, 23.3) controlPoint1: CGPointMake(24.42, 22.23) controlPoint2: CGPointMake(25.63, 22.68)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(28.42, 25.18) controlPoint1: CGPointMake(27.38, 23.82) controlPoint2: CGPointMake(27.99, 24.45)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(29.05, 27.6) controlPoint1: CGPointMake(29.09, 26.34) controlPoint2: CGPointMake(29.06, 27.39)];
    [varNames_bezierPath addLineToPoint: CGPointMake(29.05, 28.3)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(28.46, 28.88) controlPoint1: CGPointMake(29.05, 28.62) controlPoint2: CGPointMake(28.79, 28.88)];
    [varNames_bezierPath addLineToPoint: CGPointMake(22.94, 28.88)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.35, 28.3) controlPoint1: CGPointMake(22.61, 28.88) controlPoint2: CGPointMake(22.35, 28.62)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.94, 27.71) controlPoint1: CGPointMake(22.35, 27.98) controlPoint2: CGPointMake(22.61, 27.71)];
    [varNames_bezierPath addLineToPoint: CGPointMake(27.88, 27.71)];
    [varNames_bezierPath addLineToPoint: CGPointMake(27.88, 27.58)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(27.88, 27.52) controlPoint1: CGPointMake(27.88, 27.56) controlPoint2: CGPointMake(27.88, 27.54)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(27.37, 25.71) controlPoint1: CGPointMake(27.88, 27.48) controlPoint2: CGPointMake(27.93, 26.64)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25.91, 24.25) controlPoint1: CGPointMake(27.03, 25.15) controlPoint2: CGPointMake(26.54, 24.66)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.78, 23.11) controlPoint1: CGPointMake(25.09, 23.73) controlPoint2: CGPointMake(24.04, 23.35)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.43, 22.64) controlPoint1: CGPointMake(22.63, 23.09) controlPoint2: CGPointMake(21.56, 22.94)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.52, 20.94) controlPoint1: CGPointMake(18.22, 22.06) controlPoint2: CGPointMake(17.68, 21.41)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.43, 19.06) controlPoint1: CGPointMake(17.4, 20.7) controlPoint2: CGPointMake(17.33, 20.22)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.94, 13.93) controlPoint1: CGPointMake(17.65, 16.52) controlPoint2: CGPointMake(18.97, 15.02)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.61, 13.11) controlPoint1: CGPointMake(20.21, 13.62) controlPoint2: CGPointMake(20.44, 13.35)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.39, 10.9) controlPoint1: CGPointMake(21.27, 12.15) controlPoint2: CGPointMake(21.38, 11.03)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.38, 10.79) controlPoint1: CGPointMake(21.39, 10.83) controlPoint2: CGPointMake(21.38, 10.8)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.27, 10.66) controlPoint1: CGPointMake(21.37, 10.76) controlPoint2: CGPointMake(21.32, 10.71)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.14, 10.51) controlPoint1: CGPointMake(21.23, 10.62) controlPoint2: CGPointMake(21.18, 10.57)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.87, 9.41) controlPoint1: CGPointMake(20.89, 10.22) controlPoint2: CGPointMake(20.8, 9.85)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.01, 8.1) controlPoint1: CGPointMake(20.94, 8.91) controlPoint2: CGPointMake(20.99, 8.49)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.9, 5.34) controlPoint1: CGPointMake(21.07, 6.96) controlPoint2: CGPointMake(21.03, 6.11)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.9, 5.31) controlPoint1: CGPointMake(20.9, 5.33) controlPoint2: CGPointMake(20.9, 5.32)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.8, 4.83) controlPoint1: CGPointMake(20.88, 5.17) controlPoint2: CGPointMake(20.85, 5.02)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.08, 3.35) controlPoint1: CGPointMake(20.64, 4.24) controlPoint2: CGPointMake(20.4, 3.74)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.65, 2.43) controlPoint1: CGPointMake(20.03, 3.3) controlPoint2: CGPointMake(19.6, 2.88)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.44, 1.2) controlPoint1: CGPointMake(16.93, 1.61) controlPoint2: CGPointMake(14.87, 1.31)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.39, 1.21) controlPoint1: CGPointMake(12.76, 1.14) controlPoint2: CGPointMake(12.06, 1.17)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.36, 1.21)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.12, 1.23) controlPoint1: CGPointMake(11.3, 1.21) controlPoint2: CGPointMake(11.21, 1.22)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.19, 2.01) controlPoint1: CGPointMake(11.2, 1.41) controlPoint2: CGPointMake(11.29, 1.68)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.01, 2.39) controlPoint1: CGPointMake(11.16, 2.14) controlPoint2: CGPointMake(11.1, 2.26)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.26, 3.21) controlPoint1: CGPointMake(10.8, 2.73) controlPoint2: CGPointMake(10.52, 2.99)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.16, 5.26) controlPoint1: CGPointMake(10.21, 3.25) controlPoint2: CGPointMake(9.19, 4.19)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.15, 5.34) controlPoint1: CGPointMake(9.16, 5.29) controlPoint2: CGPointMake(9.15, 5.32)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.18, 9.28) controlPoint1: CGPointMake(8.96, 6.42) controlPoint2: CGPointMake(8.98, 8.18)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.19, 9.35) controlPoint1: CGPointMake(9.18, 9.3) controlPoint2: CGPointMake(9.19, 9.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.85, 10.67) controlPoint1: CGPointMake(9.25, 9.67) controlPoint2: CGPointMake(9.36, 10.2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.84, 10.68)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.67, 10.85) controlPoint1: CGPointMake(8.77, 10.74) controlPoint2: CGPointMake(8.68, 10.82)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.67, 10.85)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.66, 10.9) controlPoint1: CGPointMake(8.67, 10.85) controlPoint2: CGPointMake(8.66, 10.87)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.44, 13.11) controlPoint1: CGPointMake(8.67, 11.04) controlPoint2: CGPointMake(8.78, 12.15)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.11, 13.93) controlPoint1: CGPointMake(9.61, 13.35) controlPoint2: CGPointMake(9.84, 13.62)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.62, 19.06) controlPoint1: CGPointMake(11.08, 15.02) controlPoint2: CGPointMake(12.4, 16.52)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.53, 20.94) controlPoint1: CGPointMake(12.72, 20.22) controlPoint2: CGPointMake(12.65, 20.7)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.62, 22.64) controlPoint1: CGPointMake(12.37, 21.41) controlPoint2: CGPointMake(11.83, 22.06)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.27, 23.11) controlPoint1: CGPointMake(8.48, 22.94) controlPoint2: CGPointMake(7.4, 23.09)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.17, 24.22) controlPoint1: CGPointMake(6.02, 23.33) controlPoint2: CGPointMake(4.98, 23.7)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.7, 25.68) controlPoint1: CGPointMake(3.54, 24.62) controlPoint2: CGPointMake(3.04, 25.11)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.17, 27.53) controlPoint1: CGPointMake(2.13, 26.63) controlPoint2: CGPointMake(2.17, 27.49)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.17, 27.58) controlPoint1: CGPointMake(2.17, 27.55) controlPoint2: CGPointMake(2.17, 27.56)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.17, 27.71)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.52, 27.71)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.62, 27.71)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.62, 27.71) controlPoint1: CGPointMake(16.62, 27.71) controlPoint2: CGPointMake(16.62, 27.71)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.32, 27.71)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.34, 27.71) controlPoint1: CGPointMake(17.33, 27.71) controlPoint2: CGPointMake(17.33, 27.71)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.99, 28.7) controlPoint1: CGPointMake(17.43, 27.71) controlPoint2: CGPointMake(19.57, 27.77)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.16, 29.51) controlPoint1: CGPointMake(21.26, 28.88) controlPoint2: CGPointMake(21.34, 29.24)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.67, 29.77) controlPoint1: CGPointMake(21.05, 29.68) controlPoint2: CGPointMake(20.86, 29.77)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(18.42, 20.23)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.46, 20.27) controlPoint1: CGPointMake(18.44, 20.25) controlPoint2: CGPointMake(18.45, 20.26)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.42, 20.23) controlPoint1: CGPointMake(18.45, 20.26) controlPoint2: CGPointMake(18.44, 20.25)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(11.63, 20.23)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.59, 20.27) controlPoint1: CGPointMake(11.61, 20.25) controlPoint2: CGPointMake(11.6, 20.26)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.63, 20.23) controlPoint1: CGPointMake(11.6, 20.26) controlPoint2: CGPointMake(11.61, 20.25)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.strokeColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    varNames_layer.fillColor = varNames_color.CGColor;
    [varNames_view.layer addSublayer:varNames_layer];
    
}

static inline void methodNames_drawImageUser8(UIView *varNames_view, UIColor *varNames_color) {
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(23.4, 18.36)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.87, 17.32) controlPoint1: CGPointMake(22.91, 17.98) controlPoint2: CGPointMake(22.41, 17.64)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.48, 15.95) controlPoint1: CGPointMake(20.81, 16.71) controlPoint2: CGPointMake(19.68, 16.26)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.27, 9.69) controlPoint1: CGPointMake(20.74, 14.77) controlPoint2: CGPointMake(22.27, 12.4)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.18, 2.6) controlPoint1: CGPointMake(22.27, 5.78) controlPoint2: CGPointMake(19.09, 2.6)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.09, 9.69) controlPoint1: CGPointMake(11.28, 2.6) controlPoint2: CGPointMake(8.09, 5.76)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(11.89, 15.97) controlPoint1: CGPointMake(8.09, 12.4) controlPoint2: CGPointMake(9.63, 14.77)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.02, 26.2) controlPoint1: CGPointMake(7.01, 17.21) controlPoint2: CGPointMake(3.08, 21.14)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.63, 27.13) controlPoint1: CGPointMake(1.93, 26.63) controlPoint2: CGPointMake(2.2, 27.03)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.79, 27.15) controlPoint1: CGPointMake(2.67, 27.15) controlPoint2: CGPointMake(2.74, 27.15)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.55, 26.52) controlPoint1: CGPointMake(3.15, 27.15) controlPoint2: CGPointMake(3.49, 26.9)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.16, 17.1) controlPoint1: CGPointMake(4.7, 21.07) controlPoint2: CGPointMake(9.58, 17.1)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.08, 18.68) controlPoint1: CGPointMake(17.24, 17.1) controlPoint2: CGPointMake(19.27, 17.64)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.43, 19.58) controlPoint1: CGPointMake(21.55, 18.95) controlPoint2: CGPointMake(22, 19.27)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.54, 19.45) controlPoint1: CGPointMake(22.77, 19.85) controlPoint2: CGPointMake(23.27, 19.79)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.4, 18.36) controlPoint1: CGPointMake(23.81, 19.13) controlPoint2: CGPointMake(23.76, 18.63)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(9.67, 9.69)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.18, 4.18) controlPoint1: CGPointMake(9.67, 6.64) controlPoint2: CGPointMake(12.16, 4.18)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.69, 9.69) controlPoint1: CGPointMake(18.21, 4.18) controlPoint2: CGPointMake(20.69, 6.64)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.18, 15.2) controlPoint1: CGPointMake(20.69, 12.74) controlPoint2: CGPointMake(18.21, 15.2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.67, 9.69) controlPoint1: CGPointMake(12.16, 15.2) controlPoint2: CGPointMake(9.67, 12.72)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.strokeColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    varNames_layer.fillColor = varNames_color.CGColor;
    //// Oval Drawing
    UIBezierPath* varNames_ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(24.16, 20.22, 1.7, 1.7)];
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    varNames_layer1.strokeColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_ovalPath.CGPath;
    varNames_layer1.fillColor = varNames_color.CGColor;
    //// Oval 2 Drawing
    UIBezierPath* varNames_oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(25.76, 22.67, 1.7, 1.7)];
    CAShapeLayer *varNames_layer2 = [CAShapeLayer layer];
    varNames_layer2.strokeColor = varNames_color.CGColor;
    varNames_layer2.path = varNames_oval2Path.CGPath;
    varNames_layer2.fillColor = varNames_color.CGColor;
    //// Oval 3 Drawing
    UIBezierPath* varNames_oval3Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(26.61, 25.42, 1.7, 1.7)];
    CAShapeLayer *varNames_layer3 = [CAShapeLayer layer];
    varNames_layer3.strokeColor = varNames_color.CGColor;
    varNames_layer3.path = varNames_oval3Path.CGPath;
    varNames_layer3.fillColor = varNames_color.CGColor;
    
    [varNames_view.layer addSublayer:varNames_layer];
    [varNames_view.layer addSublayer:varNames_layer1];
    [varNames_view.layer addSublayer:varNames_layer2];
    [varNames_view.layer addSublayer:varNames_layer3];
    
}


static inline void methodNames_drawImageUser(UIView *varNames_view, UIColor *varNames_color) {
    NSInteger type = methodNames_getDefault_inputViewType_config();
    switch (type) {
        case 0:
            methodNames_drawImageUser1(varNames_view, varNames_color);
            break;
        case 1:
            methodNames_drawImageUser1(varNames_view, varNames_color);
            break;
        case 2:
            methodNames_drawImageUser2(varNames_view, varNames_color);
            break;
        case 3:
            methodNames_drawImageUser3(varNames_view, varNames_color);
            break;
        case 4:
            methodNames_drawImageUser4(varNames_view, varNames_color);
            break;
        case 5:
            methodNames_drawImageUser5(varNames_view, varNames_color);
            break;
        case 6:
            methodNames_drawImageUser6(varNames_view, varNames_color);
            break;
        case 7:
            methodNames_drawImageUser7(varNames_view, varNames_color);
            break;
        default:
            methodNames_drawImageUser8(varNames_view, varNames_color);
            break;
    }
}



