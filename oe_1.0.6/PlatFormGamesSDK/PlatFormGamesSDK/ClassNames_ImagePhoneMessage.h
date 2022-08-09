

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ClassNames_DefaultThemeConfigure.h"


#pragma mark ---------- 绘制手机图
static inline CAShapeLayer *methodNames_drawImagePhone1(UIView *varNames_view, UIColor *varNames_color) {
    
    
    CAShapeLayer *varNames_returnLayer = [CAShapeLayer layer];
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(23, 24.21)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.74, 25.48) controlPoint1: CGPointMake(23, 24.66) controlPoint2: CGPointMake(22.91, 25.09)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.02, 26.53) controlPoint1: CGPointMake(22.62, 25.75) controlPoint2: CGPointMake(22.38, 26.09)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.95, 27.24) controlPoint1: CGPointMake(21.66, 26.96) controlPoint2: CGPointMake(21.3, 27.2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(19.63, 27.5) controlPoint1: CGPointMake(20.6, 27.28) controlPoint2: CGPointMake(20.16, 27.37)];
    [varNames_bezierPath addLineToPoint: CGPointMake(10.37, 27.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.05, 27.24) controlPoint1: CGPointMake(9.9, 27.5) controlPoint2: CGPointMake(9.46, 27.41)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.98, 26.53) controlPoint1: CGPointMake(8.78, 27.12) controlPoint2: CGPointMake(8.42, 26.89)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.26, 25.48) controlPoint1: CGPointMake(7.54, 26.17) controlPoint2: CGPointMake(7.3, 25.82)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7, 24.21) controlPoint1: CGPointMake(7.22, 25.15) controlPoint2: CGPointMake(7.14, 24.72)];
    [varNames_bezierPath addLineToPoint: CGPointMake(7, 5.82)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.26, 4.53) controlPoint1: CGPointMake(7, 5.36) controlPoint2: CGPointMake(7.09, 4.93)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.98, 3.47) controlPoint1: CGPointMake(7.38, 4.26) controlPoint2: CGPointMake(7.62, 3.91)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.05, 2.76) controlPoint1: CGPointMake(8.34, 3.04) controlPoint2: CGPointMake(8.7, 2.8)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.37, 2.5) controlPoint1: CGPointMake(9.4, 2.72) controlPoint2: CGPointMake(9.84, 2.63)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19.63, 2.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.95, 2.76) controlPoint1: CGPointMake(20.1, 2.5) controlPoint2: CGPointMake(20.54, 2.59)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.02, 3.47) controlPoint1: CGPointMake(21.22, 2.88) controlPoint2: CGPointMake(21.58, 3.11)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.74, 4.53) controlPoint1: CGPointMake(22.46, 3.83) controlPoint2: CGPointMake(22.7, 4.19)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23, 5.82) controlPoint1: CGPointMake(22.78, 4.88) controlPoint2: CGPointMake(22.86, 5.31)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23, 24.21)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(20.89, 7.14)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.09, 7.14)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.09, 22.86)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.89, 22.86)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.89, 7.14)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(14.99, 23.63)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.03, 24.04) controlPoint1: CGPointMake(14.62, 23.63) controlPoint2: CGPointMake(14.3, 23.77)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.63, 25.06) controlPoint1: CGPointMake(13.85, 24.23) controlPoint2: CGPointMake(13.72, 24.56)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.03, 26.06) controlPoint1: CGPointMake(13.63, 25.44) controlPoint2: CGPointMake(13.76, 25.78)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.99, 26.48) controlPoint1: CGPointMake(14.21, 26.25) controlPoint2: CGPointMake(14.53, 26.39)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.95, 26.06) controlPoint1: CGPointMake(15.37, 26.48) controlPoint2: CGPointMake(15.69, 26.34)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.34, 25.06) controlPoint1: CGPointMake(16.13, 25.87) controlPoint2: CGPointMake(16.26, 25.54)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.95, 24.04) controlPoint1: CGPointMake(16.34, 24.66) controlPoint2: CGPointMake(16.21, 24.32)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.99, 23.63) controlPoint1: CGPointMake(15.78, 23.86) controlPoint2: CGPointMake(15.46, 23.72)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(17.08, 4.81)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.94, 4.46) controlPoint1: CGPointMake(17.08, 4.66) controlPoint2: CGPointMake(17.03, 4.54)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.66, 4.34) controlPoint1: CGPointMake(16.89, 4.41) controlPoint2: CGPointMake(16.79, 4.37)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.34, 4.34)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.07, 4.46) controlPoint1: CGPointMake(13.26, 4.34) controlPoint2: CGPointMake(13.16, 4.38)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.92, 4.81) controlPoint1: CGPointMake(13, 4.52) controlPoint2: CGPointMake(12.96, 4.63)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.06, 5.15) controlPoint1: CGPointMake(12.89, 4.98) controlPoint2: CGPointMake(12.94, 5.09)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.34, 5.27) controlPoint1: CGPointMake(13.17, 5.2) controlPoint2: CGPointMake(13.27, 5.24)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.66, 5.27)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.94, 5.15) controlPoint1: CGPointMake(16.76, 5.27) controlPoint2: CGPointMake(16.86, 5.23)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.08, 4.81) controlPoint1: CGPointMake(17, 5.09) controlPoint2: CGPointMake(17.05, 4.98)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    
    [varNames_returnLayer addSublayer:varNames_layer];
    
    [varNames_view.layer addSublayer:varNames_returnLayer];
    
    return varNames_returnLayer;
}

static inline CAShapeLayer *methodNames_drawImagePhone2(UIView *varNames_view, UIColor *varNames_color) {
    
    CAShapeLayer *varNames_returnLayer = [CAShapeLayer layer];
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(20.63, 3)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.78, 3)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7, 5.77) controlPoint1: CGPointMake(8.25, 3) controlPoint2: CGPointMake(7, 4.24)];
    [varNames_bezierPath addLineToPoint: CGPointMake(7, 23.93)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.78, 26.69) controlPoint1: CGPointMake(7, 25.45) controlPoint2: CGPointMake(8.25, 26.69)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.63, 26.69)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23.41, 23.93) controlPoint1: CGPointMake(22.16, 26.69) controlPoint2: CGPointMake(23.41, 25.45)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23.41, 5.75)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.63, 3) controlPoint1: CGPointMake(23.41, 4.22) controlPoint2: CGPointMake(22.16, 3)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(9.78, 4.4)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.63, 4.4)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22, 5.77) controlPoint1: CGPointMake(21.37, 4.4) controlPoint2: CGPointMake(22, 5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(22, 19.76)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.41, 19.76)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.41, 5.75)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.78, 4.4) controlPoint1: CGPointMake(8.41, 5) controlPoint2: CGPointMake(9.03, 4.4)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(20.63, 25.29)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.78, 25.29)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.41, 23.93) controlPoint1: CGPointMake(9.03, 25.29) controlPoint2: CGPointMake(8.41, 24.69)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.41, 21.16)];
    [varNames_bezierPath addLineToPoint: CGPointMake(22, 21.16)];
    [varNames_bezierPath addLineToPoint: CGPointMake(22, 23.93)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.63, 25.29) controlPoint1: CGPointMake(22, 24.67) controlPoint2: CGPointMake(21.39, 25.29)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    
    //// Rectangle Drawing
    UIBezierPath* varNames_rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(13.33, 22.54, 3.75, 1) cornerRadius: 0.5];
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_rectanglePath.CGPath;
    
    
    //// Oval Drawing
    UIBezierPath* varNames_ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(11.36, 6, 1.7, 1)];
    CAShapeLayer *varNames_layer2 = [CAShapeLayer layer];
    varNames_layer2.fillColor = varNames_color.CGColor;
    varNames_layer2.path = varNames_ovalPath.CGPath;
    
    
    //// Oval 2 Drawing
    UIBezierPath* varNames_oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(14.36, 6, 1.7, 1)];
    CAShapeLayer *varNames_layer3 = [CAShapeLayer layer];
    varNames_layer3.fillColor = varNames_color.CGColor;
    varNames_layer3.path = varNames_oval2Path.CGPath;
    
    
    //// Oval 3 Drawing
    UIBezierPath* varNames_oval3Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(17.36, 6, 1.7, 1)];
    CAShapeLayer *varNames_layer4 = [CAShapeLayer layer];
    varNames_layer4.fillColor = varNames_color.CGColor;
    varNames_layer4.path = varNames_oval3Path.CGPath;
    
    [varNames_returnLayer addSublayer:varNames_layer];
    [varNames_returnLayer addSublayer:varNames_layer1];
    [varNames_returnLayer addSublayer:varNames_layer2];
    [varNames_returnLayer addSublayer:varNames_layer3];
    [varNames_returnLayer addSublayer:varNames_layer4];
    
    
    [varNames_view.layer addSublayer:varNames_returnLayer];
    
    return varNames_returnLayer;
    
}

static inline CAShapeLayer *methodNames_drawImagePhone3(UIView *varNames_view, UIColor *varNames_color) {
    
    CAShapeLayer *varNames_returnLayer = [CAShapeLayer layer];
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(20.97, 2.5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.71, 2.5)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7, 4.32) controlPoint1: CGPointMake(7.77, 2.5) controlPoint2: CGPointMake(7, 3.32)];
    [varNames_bezierPath addLineToPoint: CGPointMake(7, 25.7)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.71, 27.52) controlPoint1: CGPointMake(7, 26.7) controlPoint2: CGPointMake(7.77, 27.52)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.97, 27.52)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.68, 25.7) controlPoint1: CGPointMake(21.91, 27.52) controlPoint2: CGPointMake(22.68, 26.7)];
    [varNames_bezierPath addLineToPoint: CGPointMake(22.68, 4.32)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.97, 2.5) controlPoint1: CGPointMake(22.68, 3.32) controlPoint2: CGPointMake(21.91, 2.5)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(8.71, 4.32)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.97, 4.32)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.97, 20.73)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.71, 20.73)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.71, 4.32)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(20.97, 25.7)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.71, 25.7)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.71, 22.56)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.97, 22.56)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.97, 25.7)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    //// Rectangle Drawing
    UIBezierPath* varNames_rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(13.46, 23.54, 2.75, 1.75) cornerRadius: 0.88];
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_rectanglePath.CGPath;
    
    [varNames_returnLayer addSublayer:varNames_layer];
    [varNames_returnLayer addSublayer:varNames_layer1];
    
    
    [varNames_view.layer addSublayer:varNames_returnLayer];
    return varNames_returnLayer;
    
}

static inline CAShapeLayer *methodNames_drawImagePhone4(UIView *varNames_view, UIColor *varNames_color) {
    
    CAShapeLayer *varNames_returnLayer = [CAShapeLayer layer];
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(15, 24.83)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15, 23.94)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15, 23.94)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15, 24.83)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(21.22, 2.5)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(8.78, 2.5)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(7, 4.29) controlPoint1: CGPointMake(7.8, 2.5) controlPoint2: CGPointMake(7, 3.3)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(7, 25.71)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(8.78, 27.5) controlPoint1: CGPointMake(7, 26.7) controlPoint2: CGPointMake(7.8, 27.5)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(21.22, 27.5)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(23, 25.71) controlPoint1: CGPointMake(22.2, 27.5) controlPoint2: CGPointMake(23, 26.7)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(23, 4.29)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(21.22, 2.5) controlPoint1: CGPointMake(23, 3.3) controlPoint2: CGPointMake(22.2, 2.5)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(15, 25.73)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(13.22, 23.94) controlPoint1: CGPointMake(14.02, 25.73) controlPoint2: CGPointMake(13.22, 24.93)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15, 22.15) controlPoint1: CGPointMake(13.22, 22.96) controlPoint2: CGPointMake(14.02, 22.15)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(16.78, 23.94) controlPoint1: CGPointMake(15.98, 22.15) controlPoint2: CGPointMake(16.78, 22.96)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15, 25.73) controlPoint1: CGPointMake(16.78, 24.93) controlPoint2: CGPointMake(15.98, 25.73)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(20.33, 20.36)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(9.67, 20.36)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(9.67, 5.18)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(20.33, 5.18)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(20.33, 20.36)];
    [varNames_bezier2Path closePath];
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    [varNames_returnLayer addSublayer:varNames_layer];
    [varNames_returnLayer addSublayer:varNames_layer1];
    
    [varNames_view.layer addSublayer:varNames_returnLayer];
    
    return varNames_returnLayer;
    
}

static inline CAShapeLayer *methodNames_drawImagePhone5(UIView *varNames_view, UIColor *varNames_color) {
    
    CAShapeLayer *varNames_returnLayer = [CAShapeLayer layer];
    
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(20.6, 28)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.4, 28)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7, 25.4) controlPoint1: CGPointMake(8.08, 28) controlPoint2: CGPointMake(7, 26.83)];
    [varNames_bezierPath addLineToPoint: CGPointMake(7, 4.6)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.4, 2) controlPoint1: CGPointMake(7, 3.17) controlPoint2: CGPointMake(8.08, 2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.6, 2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(23, 4.6) controlPoint1: CGPointMake(21.92, 2) controlPoint2: CGPointMake(23, 3.17)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23, 25.4)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.6, 28) controlPoint1: CGPointMake(23, 26.83) controlPoint2: CGPointMake(21.92, 28)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(9.4, 3.73)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.6, 4.6) controlPoint1: CGPointMake(8.96, 3.73) controlPoint2: CGPointMake(8.6, 4.12)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.6, 25.4)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.4, 26.27) controlPoint1: CGPointMake(8.6, 25.88) controlPoint2: CGPointMake(8.96, 26.27)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.6, 26.27)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.4, 25.4) controlPoint1: CGPointMake(21.04, 26.27) controlPoint2: CGPointMake(21.4, 25.88)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.4, 4.6)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(20.6, 3.73) controlPoint1: CGPointMake(21.4, 4.12) controlPoint2: CGPointMake(21.04, 3.73)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.4, 3.73)];
    [varNames_bezierPath closePath];
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(15, 25.41)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(13.4, 23.68) controlPoint1: CGPointMake(14.12, 25.41) controlPoint2: CGPointMake(13.4, 24.63)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15, 21.94) controlPoint1: CGPointMake(13.4, 22.72) controlPoint2: CGPointMake(14.12, 21.94)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(16.6, 23.68) controlPoint1: CGPointMake(15.88, 21.94) controlPoint2: CGPointMake(16.6, 22.72)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15, 25.41) controlPoint1: CGPointMake(16.6, 24.63) controlPoint2: CGPointMake(15.88, 25.41)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(15, 23.68)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(15, 23.68)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(15, 24.54)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(15, 23.68)];
    [varNames_bezier2Path closePath];
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    
    //// Bezier 3 Drawing
    UIBezierPath* varNames_bezier3Path = [UIBezierPath bezierPath];
    [varNames_bezier3Path moveToPoint: CGPointMake(19.8, 21.07)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(10.2, 21.07)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(9.4, 20.2) controlPoint1: CGPointMake(9.76, 21.07) controlPoint2: CGPointMake(9.4, 20.68)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(9.4, 5.47)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(10.2, 4.6) controlPoint1: CGPointMake(9.4, 4.99) controlPoint2: CGPointMake(9.76, 4.6)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(19.8, 4.6)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(20.6, 5.47) controlPoint1: CGPointMake(20.24, 4.6) controlPoint2: CGPointMake(20.6, 4.99)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(20.6, 20.2)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(19.8, 21.07) controlPoint1: CGPointMake(20.6, 20.68) controlPoint2: CGPointMake(20.24, 21.07)];
    [varNames_bezier3Path closePath];
    [varNames_bezier3Path moveToPoint: CGPointMake(11, 19.33)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(19, 19.33)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(19, 6.33)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(11, 6.33)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(11, 19.33)];
    [varNames_bezier3Path closePath];
    CAShapeLayer *varNames_layer2 = [CAShapeLayer layer];
    varNames_layer2.fillColor = varNames_color.CGColor;
    varNames_layer2.path = varNames_bezier3Path.CGPath;
    
    [varNames_returnLayer addSublayer:varNames_layer];
    [varNames_returnLayer addSublayer:varNames_layer1];
    [varNames_returnLayer addSublayer:varNames_layer2];
    
    [varNames_view.layer addSublayer:varNames_returnLayer];
    return varNames_returnLayer;
}

static inline CAShapeLayer *methodNames_drawImagePhone6(UIView *varNames_view, UIColor *varNames_color) {
    CAShapeLayer *varNames_returnLayer = [CAShapeLayer layer];
    
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(17.67, 18.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19, 18.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19, 19.88)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11, 19.88)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11, 18.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.67, 18.25)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(11, 8.5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11, 18.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.67, 18.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.67, 6.88)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11, 6.88)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11, 8.5)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(13.67, 23.12)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.67, 21.5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.33, 21.5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.33, 24.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.67, 24.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.67, 23.12)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(19, 16.62)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19, 6.88)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.33, 6.88)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.33, 18.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19, 18.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19, 16.62)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(17.67, 5.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19, 5.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19, 6.88)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11, 6.88)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11, 5.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.67, 5.25)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(23, 8.5)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23, 24.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.67, 24.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.67, 5.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23, 5.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23, 8.5)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(19, 26.38)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.33, 26.38)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.33, 28)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.67, 28)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.67, 26.38)];
    [varNames_bezierPath addLineToPoint: CGPointMake(19, 26.38)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(8.33, 23.12)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.33, 24.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(7, 24.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(7, 5.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.33, 5.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.33, 23.12)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(11, 3.62)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.67, 3.62)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.67, 2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.33, 2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.33, 3.62)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11, 3.62)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(20.33, 3.62)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.67, 3.62)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.67, 5.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.33, 5.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.33, 3.62)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(8.33, 3.62)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.67, 3.62)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.67, 5.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.33, 5.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.33, 3.62)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(8.33, 24.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.67, 24.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.67, 26.38)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.33, 26.38)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.33, 24.75)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(20.33, 24.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.67, 24.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(21.67, 26.38)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.33, 26.38)];
    [varNames_bezierPath addLineToPoint: CGPointMake(20.33, 24.75)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_returnLayer addSublayer:varNames_layer];
    [varNames_view.layer addSublayer:varNames_returnLayer];
    return varNames_returnLayer;
}


#pragma mark ---------- 获取画手机的类型
static inline CAShapeLayer *methodNames_drawImagePhone(UIView *varNames_view, UIColor *varNames_color) {
    NSInteger type = methodNames_getDefault_inputViewType_config();
    switch (type) {
        case 0:
        {
            return methodNames_drawImagePhone1(varNames_view, varNames_color);
        }
            break;
        case 1:
        {
            return methodNames_drawImagePhone1(varNames_view, varNames_color);
        }
            break;
        case 2:
        {
            return methodNames_drawImagePhone2(varNames_view, varNames_color);
        }
            break;
        case 3:
        {
            return methodNames_drawImagePhone3(varNames_view, varNames_color);
        }
            break;
        case 4:
        {
            return methodNames_drawImagePhone4(varNames_view, varNames_color);
        }
            break;
        case 5:
        {
            return methodNames_drawImagePhone5(varNames_view, varNames_color);
        }
            break;
        default:
        {
            return methodNames_drawImagePhone6(varNames_view, varNames_color);
        }
            break;
    }
    return [CAShapeLayer layer];
}



