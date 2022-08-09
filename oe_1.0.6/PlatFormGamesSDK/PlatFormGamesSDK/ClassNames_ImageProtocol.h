

/// 20 * 20
static inline CAShapeLayer *methodNames_drawProtocolSelect1(UIView *varNames_view, UIColor *varNames_color) {
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(10, 2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2, 10) controlPoint1: CGPointMake(5.58, 2) controlPoint2: CGPointMake(2, 5.58)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10, 18) controlPoint1: CGPointMake(2, 14.42) controlPoint2: CGPointMake(5.58, 18)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18, 10) controlPoint1: CGPointMake(14.42, 18) controlPoint2: CGPointMake(18, 14.42)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10, 2) controlPoint1: CGPointMake(18, 5.58) controlPoint2: CGPointMake(14.42, 2)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(9.98, 16.72)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.24, 9.96) controlPoint1: CGPointMake(6.11, 16.72) controlPoint2: CGPointMake(3.24, 13.84)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.98, 3.2) controlPoint1: CGPointMake(3.24, 6.07) controlPoint2: CGPointMake(6.11, 3.2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.72, 9.96) controlPoint1: CGPointMake(13.85, 3.2) controlPoint2: CGPointMake(16.72, 6.07)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.98, 16.72) controlPoint1: CGPointMake(16.73, 13.84) controlPoint2: CGPointMake(13.85, 16.72)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(13.73, 6.78)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.33, 11.57)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.89, 8.98)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.13, 8.98) controlPoint1: CGPointMake(6.68, 8.75) controlPoint2: CGPointMake(6.33, 8.75)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.13, 9.79) controlPoint1: CGPointMake(5.91, 9.2) controlPoint2: CGPointMake(5.91, 9.57)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.95, 12.8)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.34, 12.97) controlPoint1: CGPointMake(9.06, 12.91) controlPoint2: CGPointMake(9.19, 12.97)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.73, 12.8) controlPoint1: CGPointMake(9.48, 12.97) controlPoint2: CGPointMake(9.62, 12.91)];
    [varNames_bezierPath addLineToPoint: CGPointMake(14.51, 7.59)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.5, 6.77) controlPoint1: CGPointMake(14.71, 7.36) controlPoint2: CGPointMake(14.71, 6.99)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.73, 6.78) controlPoint1: CGPointMake(14.28, 6.55) controlPoint2: CGPointMake(13.94, 6.55)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
    return varNames_layer;
}

static inline CAShapeLayer *methodNames_drawProtocolSelect2(UIView *varNames_view, UIColor *varNames_color) {
    
    CAShapeLayer *varNames_returnLayer = [CAShapeLayer layer];
    
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(8.34, 17.71)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.38, 17.71)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2, 17.33) controlPoint1: CGPointMake(2.15, 17.71) controlPoint2: CGPointMake(2, 17.52)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2, 2.38)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.38, 2) controlPoint1: CGPointMake(2, 2.15) controlPoint2: CGPointMake(2.19, 2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.51, 2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.89, 2.38) controlPoint1: CGPointMake(16.74, 2) controlPoint2: CGPointMake(16.89, 2.19)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.89, 9.87)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.51, 10.26) controlPoint1: CGPointMake(16.89, 10.1) controlPoint2: CGPointMake(16.7, 10.26)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.13, 9.87) controlPoint1: CGPointMake(16.32, 10.26) controlPoint2: CGPointMake(16.13, 10.07)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.13, 2.76)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.76, 2.76)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.76, 16.91)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.34, 16.91)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.72, 17.29) controlPoint1: CGPointMake(8.57, 16.91) controlPoint2: CGPointMake(8.72, 17.1)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.34, 17.71) controlPoint1: CGPointMake(8.72, 17.48) controlPoint2: CGPointMake(8.57, 17.71)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(10.21, 17.79)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(10.09, 17.79)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(9.79, 17.48) controlPoint1: CGPointMake(9.94, 17.75) controlPoint2: CGPointMake(9.83, 17.63)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(7.88, 7.01)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(8.03, 6.63) controlPoint1: CGPointMake(7.84, 6.85) controlPoint2: CGPointMake(7.92, 6.7)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(8.45, 6.63) controlPoint1: CGPointMake(8.15, 6.55) controlPoint2: CGPointMake(8.34, 6.51)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(17.54, 11.79)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(17.73, 12.17) controlPoint1: CGPointMake(17.65, 11.86) controlPoint2: CGPointMake(17.73, 12.01)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(17.5, 12.51) controlPoint1: CGPointMake(17.73, 12.32) controlPoint2: CGPointMake(17.62, 12.43)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.68, 13.66)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(16.39, 16.3)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(16.28, 16.83) controlPoint1: CGPointMake(16.51, 16.49) controlPoint2: CGPointMake(16.47, 16.72)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(15.1, 17.71)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.79, 17.79) controlPoint1: CGPointMake(15.02, 17.79) controlPoint2: CGPointMake(14.91, 17.79)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.52, 17.63) controlPoint1: CGPointMake(14.68, 17.79) controlPoint2: CGPointMake(14.6, 17.71)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(12.61, 15)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(10.51, 17.63)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(10.21, 17.79) controlPoint1: CGPointMake(10.44, 17.71) controlPoint2: CGPointMake(10.32, 17.79)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(12.65, 13.93)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(12.96, 14.08) controlPoint1: CGPointMake(12.77, 13.93) controlPoint2: CGPointMake(12.88, 14)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.94, 16.79)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(15.52, 16.37)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(13.72, 13.7)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(13.68, 13.35) controlPoint1: CGPointMake(13.65, 13.58) controlPoint2: CGPointMake(13.65, 13.47)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(13.91, 13.08) controlPoint1: CGPointMake(13.72, 13.24) controlPoint2: CGPointMake(13.8, 13.16)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(16.43, 12.05)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(8.83, 7.66)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(10.44, 16.45)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(12.31, 14.08)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(12.65, 13.93) controlPoint1: CGPointMake(12.39, 14) controlPoint2: CGPointMake(12.5, 13.93)];
    [varNames_bezier2Path closePath];
    
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    [varNames_returnLayer addSublayer:varNames_layer];
    [varNames_returnLayer addSublayer:varNames_layer1];
    
    [varNames_view.layer addSublayer:varNames_returnLayer];
    
    return varNames_returnLayer;
    
}

static inline CAShapeLayer *methodNames_drawProtocolSelect3(UIView *varNames_view, UIColor *varNames_color) {
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(10, 2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18, 10) controlPoint1: CGPointMake(14.41, 2) controlPoint2: CGPointMake(18, 5.59)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10, 18) controlPoint1: CGPointMake(18, 14.41) controlPoint2: CGPointMake(14.41, 18)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2, 10) controlPoint1: CGPointMake(5.59, 18) controlPoint2: CGPointMake(2, 14.41)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10, 2) controlPoint1: CGPointMake(2, 5.59) controlPoint2: CGPointMake(5.59, 2)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(10, 3)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3, 10) controlPoint1: CGPointMake(6.14, 3) controlPoint2: CGPointMake(3, 6.14)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10, 17) controlPoint1: CGPointMake(3, 13.86) controlPoint2: CGPointMake(6.14, 17)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17, 10) controlPoint1: CGPointMake(13.86, 17) controlPoint2: CGPointMake(17, 13.86)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10, 3) controlPoint1: CGPointMake(17, 6.14) controlPoint2: CGPointMake(13.86, 3)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(10, 6.79)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.21, 10) controlPoint1: CGPointMake(11.77, 6.79) controlPoint2: CGPointMake(13.21, 8.23)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10, 13.21) controlPoint1: CGPointMake(13.21, 11.77) controlPoint2: CGPointMake(11.77, 13.21)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.79, 10) controlPoint1: CGPointMake(8.23, 13.21) controlPoint2: CGPointMake(6.79, 11.77)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10, 6.79) controlPoint1: CGPointMake(6.79, 8.23) controlPoint2: CGPointMake(8.23, 6.79)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
    return varNames_layer;
}

static inline CAShapeLayer *methodNames_drawProtocolSelect4(UIView *varNames_view, UIColor *varNames_color) {
    CAShapeLayer *varNames_returnLayer = [CAShapeLayer layer];
    
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(16.18, 6.98)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.31, 6.11)];
    [varNames_bezierPath addLineToPoint: CGPointMake(7.95, 13.58)];
    [varNames_bezierPath addLineToPoint: CGPointMake(4.92, 10.55)];
    [varNames_bezierPath addLineToPoint: CGPointMake(4.06, 11.31)];
    [varNames_bezierPath addLineToPoint: CGPointMake(7.95, 15.2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.18, 6.98)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(3.08, 4.16)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(3.08, 16.07)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(4.16, 17.15) controlPoint1: CGPointMake(3.08, 16.61) controlPoint2: CGPointMake(3.52, 17.15)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(16.07, 17.15)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(17.15, 16.07) controlPoint1: CGPointMake(16.61, 17.15) controlPoint2: CGPointMake(17.15, 16.72)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(17.15, 4.16)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(16.07, 3.08) controlPoint1: CGPointMake(17.15, 3.62) controlPoint2: CGPointMake(16.72, 3.08)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(4.16, 3.08)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(3.08, 4.16) controlPoint1: CGPointMake(3.52, 3.08) controlPoint2: CGPointMake(3.08, 3.62)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(2, 4.16)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(4.16, 2) controlPoint1: CGPointMake(2, 2.97) controlPoint2: CGPointMake(2.97, 2)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(16.07, 2)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(18.24, 4.16) controlPoint1: CGPointMake(17.26, 2) controlPoint2: CGPointMake(18.24, 2.97)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(18.24, 16.07)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(16.07, 18.24) controlPoint1: CGPointMake(18.24, 17.26) controlPoint2: CGPointMake(17.26, 18.24)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(4.16, 18.24)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(2, 16.07) controlPoint1: CGPointMake(2.97, 18.24) controlPoint2: CGPointMake(2, 17.26)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(2, 4.16)];
    [varNames_bezier2Path closePath];
    
    
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    [varNames_returnLayer addSublayer:varNames_layer];
    [varNames_returnLayer addSublayer:varNames_layer1];
    
    [varNames_view.layer addSublayer:varNames_returnLayer];
    
    return varNames_returnLayer;

}

static inline CAShapeLayer *methodNames_drawProtocolSelect5(UIView *varNames_view, UIColor *varNames_color) {
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(10, 2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2, 10) controlPoint1: CGPointMake(5.59, 2) controlPoint2: CGPointMake(2, 5.59)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10, 18) controlPoint1: CGPointMake(2, 14.41) controlPoint2: CGPointMake(5.59, 18)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18, 10) controlPoint1: CGPointMake(14.41, 18) controlPoint2: CGPointMake(18, 14.41)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10, 2) controlPoint1: CGPointMake(18, 5.59) controlPoint2: CGPointMake(14.41, 2)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(15.61, 6.78)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.17, 13.68)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.93, 13.78) controlPoint1: CGPointMake(9.11, 13.74) controlPoint2: CGPointMake(9.02, 13.78)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.68, 13.68) controlPoint1: CGPointMake(8.84, 13.78) controlPoint2: CGPointMake(8.75, 13.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(5.92, 10.72)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.94, 10.25) controlPoint1: CGPointMake(5.8, 10.59) controlPoint2: CGPointMake(5.8, 10.37)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6.41, 10.27) controlPoint1: CGPointMake(6.07, 10.12) controlPoint2: CGPointMake(6.29, 10.13)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.93, 12.96)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.12, 6.32)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.59, 6.31) controlPoint1: CGPointMake(15.25, 6.19) controlPoint2: CGPointMake(15.46, 6.18)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.61, 6.78) controlPoint1: CGPointMake(15.73, 6.43) controlPoint2: CGPointMake(15.74, 6.64)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
    return varNames_layer;
}

static inline CAShapeLayer *methodNames_drawProtocolSelect6(UIView *varNames_view, UIColor *varNames_color) {
    
    CAShapeLayer *varNames_returnLayer = [CAShapeLayer layer];
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(16.26, 2.82)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.18, 2.82)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.18, 2.83)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.55, 1.57) controlPoint1: CGPointMake(15.06, 2.11) controlPoint2: CGPointMake(14.37, 1.57)];
    [varNames_bezierPath addLineToPoint: CGPointMake(12.02, 1.57)];
    [varNames_bezierPath addLineToPoint: CGPointMake(12.02, 1.55)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.81, 0.11) controlPoint1: CGPointMake(11.58, 0.37) controlPoint2: CGPointMake(10.15, -0.27)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.17, 1.59) controlPoint1: CGPointMake(8.03, 0.34) controlPoint2: CGPointMake(7.41, 0.89)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6, 1.57)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6, 1.57)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.4, 2.83) controlPoint1: CGPointMake(5.19, 1.58) controlPoint2: CGPointMake(4.51, 2.12)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.74, 2.82)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.75, 2.82)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2, 4.27) controlPoint1: CGPointMake(2.82, 2.79) controlPoint2: CGPointMake(2.03, 3.44)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2, 4.32) controlPoint1: CGPointMake(2, 4.28) controlPoint2: CGPointMake(2, 4.3)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2, 18.39)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2, 18.39)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.69, 19.89) controlPoint1: CGPointMake(2, 19.22) controlPoint2: CGPointMake(2.76, 19.89)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.75, 19.89) controlPoint1: CGPointMake(3.71, 19.89) controlPoint2: CGPointMake(3.73, 19.89)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.26, 19.89)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.25, 19.89)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18, 18.44) controlPoint1: CGPointMake(17.18, 19.92) controlPoint2: CGPointMake(17.97, 19.27)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18, 18.39) controlPoint1: CGPointMake(18, 18.43) controlPoint2: CGPointMake(18, 18.41)];
    [varNames_bezierPath addLineToPoint: CGPointMake(18, 4.32)];
    [varNames_bezierPath addLineToPoint: CGPointMake(18, 4.32)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.31, 2.82) controlPoint1: CGPointMake(18, 3.49) controlPoint2: CGPointMake(17.24, 2.82)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.25, 2.82) controlPoint1: CGPointMake(16.29, 2.82) controlPoint2: CGPointMake(16.27, 2.82)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.26, 2.82)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(9.58, 0.86)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.58, 0.86)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.94, 1.57) controlPoint1: CGPointMake(10.14, 0.87) controlPoint2: CGPointMake(10.66, 1.14)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.21, 1.57)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.21, 1.57)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.57, 0.86) controlPoint1: CGPointMake(8.49, 1.14) controlPoint2: CGPointMake(9.01, 0.87)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.58, 0.86)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(6, 2.41)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.53, 2.41)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.53, 2.41)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.24, 3.03) controlPoint1: CGPointMake(13.92, 2.41) controlPoint2: CGPointMake(14.24, 2.68)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.53, 3.65) controlPoint1: CGPointMake(14.24, 3.37) controlPoint2: CGPointMake(13.92, 3.65)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6, 3.65)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6, 3.65)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.29, 3.03) controlPoint1: CGPointMake(5.61, 3.65) controlPoint2: CGPointMake(5.29, 3.37)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6, 2.41) controlPoint1: CGPointMake(5.29, 2.68) controlPoint2: CGPointMake(5.61, 2.41)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(17.06, 18.39)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.06, 18.39)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.31, 19.06) controlPoint1: CGPointMake(17.06, 18.76) controlPoint2: CGPointMake(16.72, 19.06)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.25, 19.06) controlPoint1: CGPointMake(16.29, 19.06) controlPoint2: CGPointMake(16.27, 19.06)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.74, 19.06)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.75, 19.06)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.94, 18.44) controlPoint1: CGPointMake(3.33, 19.08) controlPoint2: CGPointMake(2.97, 18.8)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.94, 18.39) controlPoint1: CGPointMake(2.94, 18.42) controlPoint2: CGPointMake(2.94, 18.41)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.94, 4.32)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.94, 4.32)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.69, 3.65) controlPoint1: CGPointMake(2.94, 3.95) controlPoint2: CGPointMake(3.28, 3.65)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.75, 3.65) controlPoint1: CGPointMake(3.71, 3.65) controlPoint2: CGPointMake(3.73, 3.65)];
    [varNames_bezierPath addLineToPoint: CGPointMake(4.54, 3.65)];
    [varNames_bezierPath addLineToPoint: CGPointMake(4.54, 3.65)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(6, 4.49) controlPoint1: CGPointMake(4.8, 4.15) controlPoint2: CGPointMake(5.37, 4.48)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.53, 4.49)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.53, 4.49)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.03, 3.62) controlPoint1: CGPointMake(14.18, 4.49) controlPoint2: CGPointMake(14.77, 4.15)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.26, 3.61)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.25, 3.61)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.06, 4.23) controlPoint1: CGPointMake(16.67, 3.59) controlPoint2: CGPointMake(17.03, 3.86)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.06, 4.31) controlPoint1: CGPointMake(17.06, 4.26) controlPoint2: CGPointMake(17.06, 4.28)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.06, 18.39)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(12.92, 9.61)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(8.87, 13.19)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(6.99, 11.4)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(6.99, 11.4)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(6.33, 11.48) controlPoint1: CGPointMake(6.78, 11.26) controlPoint2: CGPointMake(6.49, 11.3)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(6.33, 11.98) controlPoint1: CGPointMake(6.2, 11.63) controlPoint2: CGPointMake(6.2, 11.83)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(8.49, 14.06)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(8.49, 14.06)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(8.82, 14.19) controlPoint1: CGPointMake(8.58, 14.14) controlPoint2: CGPointMake(8.7, 14.18)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(8.83, 14.19)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(9.16, 14.06) controlPoint1: CGPointMake(8.95, 14.18) controlPoint2: CGPointMake(9.07, 14.14)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(13.53, 10.19)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(13.53, 10.19)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(13.44, 9.61) controlPoint1: CGPointMake(13.69, 10.01) controlPoint2: CGPointMake(13.64, 9.75)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(12.87, 9.61) controlPoint1: CGPointMake(13.27, 9.5) controlPoint2: CGPointMake(13.04, 9.5)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(12.92, 9.61)];
    [varNames_bezier2Path closePath];
    
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    
    //// Bezier 3 Drawing
    UIBezierPath* varNames_bezier3Path = [UIBezierPath bezierPath];
    [varNames_bezier3Path moveToPoint: CGPointMake(10, 6.57)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(10, 6.57)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(4.35, 11.56) controlPoint1: CGPointMake(6.88, 6.57) controlPoint2: CGPointMake(4.35, 8.8)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(10, 16.56) controlPoint1: CGPointMake(4.35, 14.32) controlPoint2: CGPointMake(6.88, 16.56)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(15.65, 11.56) controlPoint1: CGPointMake(13.12, 16.56) controlPoint2: CGPointMake(15.65, 14.32)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(15.65, 11.56)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(10, 6.57) controlPoint1: CGPointMake(15.65, 8.8) controlPoint2: CGPointMake(13.12, 6.57)];
    [varNames_bezier3Path closePath];
    [varNames_bezier3Path moveToPoint: CGPointMake(10, 15.73)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(10, 15.73)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(5.29, 11.56) controlPoint1: CGPointMake(7.4, 15.73) controlPoint2: CGPointMake(5.29, 13.86)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(10, 7.4) controlPoint1: CGPointMake(5.29, 9.26) controlPoint2: CGPointMake(7.4, 7.4)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(14.71, 11.56) controlPoint1: CGPointMake(12.6, 7.4) controlPoint2: CGPointMake(14.71, 9.26)];
    [varNames_bezier3Path addLineToPoint: CGPointMake(14.71, 11.56)];
    [varNames_bezier3Path addCurveToPoint: CGPointMake(10, 15.73) controlPoint1: CGPointMake(14.71, 13.86) controlPoint2: CGPointMake(12.6, 15.73)];
    [varNames_bezier3Path closePath];
    
    CAShapeLayer *varNames_layer2 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer2.fillColor = varNames_color.CGColor;
    varNames_layer2.path = varNames_bezier3Path.CGPath;
    
    [varNames_returnLayer addSublayer:varNames_layer];
    [varNames_returnLayer addSublayer:varNames_layer1];
    [varNames_returnLayer addSublayer:varNames_layer2];
    
    [varNames_view.layer addSublayer:varNames_returnLayer];
    
    return varNames_returnLayer;
}

static inline CAShapeLayer *methodNames_drawProtocolUnselect1(UIView *varNames_view, UIColor *varNames_color) {
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(18, 10)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.99, 18) controlPoint1: CGPointMake(18, 14.42) controlPoint2: CGPointMake(14.41, 18)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2, 10) controlPoint1: CGPointMake(5.57, 18) controlPoint2: CGPointMake(2, 14.4)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.01, 2) controlPoint1: CGPointMake(2, 5.6) controlPoint2: CGPointMake(5.59, 2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18, 10) controlPoint1: CGPointMake(14.43, 2) controlPoint2: CGPointMake(18, 5.58)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(10.01, 2.79)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.8, 10) controlPoint1: CGPointMake(6.03, 2.79) controlPoint2: CGPointMake(2.8, 6.03)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.99, 17.19) controlPoint1: CGPointMake(2.8, 13.97) controlPoint2: CGPointMake(6.01, 17.19)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.19, 10) controlPoint1: CGPointMake(13.97, 17.19) controlPoint2: CGPointMake(17.19, 13.97)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.01, 2.79) controlPoint1: CGPointMake(17.19, 6.03) controlPoint2: CGPointMake(13.97, 2.79)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
    return varNames_layer;
}

static inline CAShapeLayer *methodNames_drawProtocolUnselect2(UIView *varNames_view, UIColor *varNames_color) {
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(17.3, 16.24)];
    [varNames_bezierPath addLineToPoint: CGPointMake(18, 16.24)];
    [varNames_bezierPath addLineToPoint: CGPointMake(18, 18)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.24, 18)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.24, 17.3)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.3, 17.3)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.3, 16.24)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(6.25, 18)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.75, 18)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.75, 17.3)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.25, 17.3)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.25, 18)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(11.25, 18)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.75, 18)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.75, 17.3)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.25, 17.3)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.25, 18)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(2.7, 16.24)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2, 16.24)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2, 18)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.76, 18)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.76, 17.3)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.7, 17.3)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.7, 16.24)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(2.7, 11.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2, 11.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2, 13.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.7, 13.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.7, 11.25)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(2.7, 6.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2, 6.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2, 8.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.7, 8.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.7, 6.25)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(2, 3.76)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.7, 3.76)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.7, 2.7)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.76, 2.7)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.76, 2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2, 2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2, 3.76)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(8.75, 2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.25, 2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(6.25, 2.7)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.75, 2.7)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.75, 2)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(11.25, 2.7)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.75, 2.7)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.75, 2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.25, 2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.25, 2.7)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(16.24, 2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.24, 2.7)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.3, 2.7)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.3, 3.76)];
    [varNames_bezierPath addLineToPoint: CGPointMake(18, 3.76)];
    [varNames_bezierPath addLineToPoint: CGPointMake(18, 2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.24, 2)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(17.3, 13.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(18, 13.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(18, 11.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.3, 11.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.3, 13.75)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(17.3, 8.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(18, 8.75)];
    [varNames_bezierPath addLineToPoint: CGPointMake(18, 6.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.3, 6.25)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.3, 8.75)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
    return varNames_layer;
}

static inline CAShapeLayer *methodNames_drawProtocolUnselect3(UIView *varNames_view, UIColor *varNames_color) {
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(10, 2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2, 10) controlPoint1: CGPointMake(5.57, 2) controlPoint2: CGPointMake(2, 5.57)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10, 18) controlPoint1: CGPointMake(2, 14.43) controlPoint2: CGPointMake(5.57, 18)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18, 10) controlPoint1: CGPointMake(14.43, 18) controlPoint2: CGPointMake(18, 14.43)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10, 2) controlPoint1: CGPointMake(18, 5.57) controlPoint2: CGPointMake(14.43, 2)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(10, 17.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.67, 10) controlPoint1: CGPointMake(5.93, 17.33) controlPoint2: CGPointMake(2.67, 14.07)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10, 2.67) controlPoint1: CGPointMake(2.67, 5.93) controlPoint2: CGPointMake(5.93, 2.67)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.33, 10) controlPoint1: CGPointMake(14.07, 2.67) controlPoint2: CGPointMake(17.33, 5.97)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10, 17.33) controlPoint1: CGPointMake(17.33, 14.03) controlPoint2: CGPointMake(14.07, 17.33)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
    return varNames_layer;
}

static inline CAShapeLayer *methodNames_drawProtocolUnselect4(UIView *varNames_view, UIColor *varNames_color) {
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(3.07, 4.13)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.07, 15.87)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.13, 16.93) controlPoint1: CGPointMake(3.07, 16.4) controlPoint2: CGPointMake(3.49, 16.93)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.87, 16.93)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.93, 15.87) controlPoint1: CGPointMake(16.4, 16.93) controlPoint2: CGPointMake(16.93, 16.51)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.93, 4.13)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.87, 3.07) controlPoint1: CGPointMake(16.93, 3.6) controlPoint2: CGPointMake(16.51, 3.07)];
    [varNames_bezierPath addLineToPoint: CGPointMake(4.13, 3.07)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.07, 4.13) controlPoint1: CGPointMake(3.49, 3.07) controlPoint2: CGPointMake(3.07, 3.6)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(2, 4.13)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.13, 2) controlPoint1: CGPointMake(2, 2.96) controlPoint2: CGPointMake(2.96, 2)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.87, 2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18, 4.13) controlPoint1: CGPointMake(17.04, 2) controlPoint2: CGPointMake(18, 2.96)];
    [varNames_bezierPath addLineToPoint: CGPointMake(18, 15.87)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(15.87, 18) controlPoint1: CGPointMake(18, 17.04) controlPoint2: CGPointMake(17.04, 18)];
    [varNames_bezierPath addLineToPoint: CGPointMake(4.13, 18)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2, 15.87) controlPoint1: CGPointMake(2.96, 18) controlPoint2: CGPointMake(2, 17.04)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2, 4.13)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
    return varNames_layer;
}

static inline CAShapeLayer *methodNames_drawProtocolUnselect5(UIView *varNames_view, UIColor *varNames_color) {
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(10, 2)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2, 10) controlPoint1: CGPointMake(5.59, 2) controlPoint2: CGPointMake(2, 5.59)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10, 18) controlPoint1: CGPointMake(2, 14.41) controlPoint2: CGPointMake(5.59, 18)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18, 10) controlPoint1: CGPointMake(14.41, 18) controlPoint2: CGPointMake(18, 14.41)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10, 2) controlPoint1: CGPointMake(18, 5.59) controlPoint2: CGPointMake(14.41, 2)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(10, 17.33)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.67, 10) controlPoint1: CGPointMake(5.96, 17.33) controlPoint2: CGPointMake(2.67, 14.04)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10, 2.67) controlPoint1: CGPointMake(2.67, 5.96) controlPoint2: CGPointMake(5.96, 2.67)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.33, 10) controlPoint1: CGPointMake(14.04, 2.67) controlPoint2: CGPointMake(17.33, 5.96)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10, 17.33) controlPoint1: CGPointMake(17.33, 14.04) controlPoint2: CGPointMake(14.04, 17.33)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
    return varNames_layer;
}

static inline CAShapeLayer *methodNames_drawProtocolUnselect6(UIView *varNames_view, UIColor *varNames_color) {
    CAShapeLayer *varNames_returnLayer = [CAShapeLayer layer];
    
    //// Bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(16.1, 2.82)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.03, 2.82)];
    [varNames_bezierPath addLineToPoint: CGPointMake(15.04, 2.83)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.42, 1.57) controlPoint1: CGPointMake(14.92, 2.11) controlPoint2: CGPointMake(14.23, 1.57)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.91, 1.57)];
    [varNames_bezierPath addLineToPoint: CGPointMake(11.91, 1.55)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(8.74, 0.11) controlPoint1: CGPointMake(11.48, 0.37) controlPoint2: CGPointMake(10.06, -0.27)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(7.11, 1.59) controlPoint1: CGPointMake(7.96, 0.34) controlPoint2: CGPointMake(7.35, 0.89)];
    [varNames_bezierPath addLineToPoint: CGPointMake(5.96, 1.57)];
    [varNames_bezierPath addLineToPoint: CGPointMake(5.96, 1.57)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(4.37, 2.83) controlPoint1: CGPointMake(5.16, 1.59) controlPoint2: CGPointMake(4.48, 2.12)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.72, 2.82)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.74, 2.82)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2, 4.27) controlPoint1: CGPointMake(2.81, 2.79) controlPoint2: CGPointMake(2.03, 3.44)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2, 4.32) controlPoint1: CGPointMake(2, 4.29) controlPoint2: CGPointMake(2, 4.3)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2, 18.4)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2, 18.4)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.68, 19.9) controlPoint1: CGPointMake(2, 19.23) controlPoint2: CGPointMake(2.75, 19.9)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.74, 19.9) controlPoint1: CGPointMake(3.7, 19.9) controlPoint2: CGPointMake(3.72, 19.9)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.1, 19.9)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.09, 19.9)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.83, 18.46) controlPoint1: CGPointMake(17.02, 19.93) controlPoint2: CGPointMake(17.79, 19.28)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(17.83, 18.4) controlPoint1: CGPointMake(17.83, 18.44) controlPoint2: CGPointMake(17.83, 18.42)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.83, 4.32)];
    [varNames_bezierPath addLineToPoint: CGPointMake(17.83, 4.32)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.15, 2.82) controlPoint1: CGPointMake(17.83, 3.49) controlPoint2: CGPointMake(17.08, 2.82)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.09, 2.82) controlPoint1: CGPointMake(16.13, 2.82) controlPoint2: CGPointMake(16.11, 2.82)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.1, 2.82)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(9.5, 0.86)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.5, 0.86)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(10.84, 1.57) controlPoint1: CGPointMake(10.06, 0.87) controlPoint2: CGPointMake(10.57, 1.14)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.15, 1.57)];
    [varNames_bezierPath addLineToPoint: CGPointMake(8.15, 1.57)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(9.49, 0.86) controlPoint1: CGPointMake(8.43, 1.14) controlPoint2: CGPointMake(8.93, 0.87)];
    [varNames_bezierPath addLineToPoint: CGPointMake(9.5, 0.86)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(5.96, 2.41)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.41, 2.41)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.41, 2.41)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.1, 3.03) controlPoint1: CGPointMake(13.79, 2.41) controlPoint2: CGPointMake(14.1, 2.69)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13.41, 3.66) controlPoint1: CGPointMake(14.1, 3.38) controlPoint2: CGPointMake(13.79, 3.66)];
    [varNames_bezierPath addLineToPoint: CGPointMake(5.96, 3.66)];
    [varNames_bezierPath addLineToPoint: CGPointMake(5.96, 3.66)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.26, 3.03) controlPoint1: CGPointMake(5.57, 3.66) controlPoint2: CGPointMake(5.26, 3.38)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.96, 2.41) controlPoint1: CGPointMake(5.26, 2.69) controlPoint2: CGPointMake(5.57, 2.41)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(16.9, 18.4)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.9, 18.4)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.15, 19.07) controlPoint1: CGPointMake(16.9, 18.77) controlPoint2: CGPointMake(16.56, 19.07)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.1, 19.07) controlPoint1: CGPointMake(16.13, 19.07) controlPoint2: CGPointMake(16.12, 19.07)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.72, 19.07)];
    [varNames_bezierPath addLineToPoint: CGPointMake(3.73, 19.07)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.93, 18.45) controlPoint1: CGPointMake(3.32, 19.1) controlPoint2: CGPointMake(2.96, 18.82)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(2.93, 18.4) controlPoint1: CGPointMake(2.93, 18.44) controlPoint2: CGPointMake(2.93, 18.42)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.93, 4.32)];
    [varNames_bezierPath addLineToPoint: CGPointMake(2.93, 4.32)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.68, 3.65) controlPoint1: CGPointMake(2.93, 3.95) controlPoint2: CGPointMake(3.27, 3.65)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(3.73, 3.66) controlPoint1: CGPointMake(3.69, 3.65) controlPoint2: CGPointMake(3.71, 3.65)];
    [varNames_bezierPath addLineToPoint: CGPointMake(4.51, 3.66)];
    [varNames_bezierPath addLineToPoint: CGPointMake(4.51, 3.65)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(5.96, 4.49) controlPoint1: CGPointMake(4.77, 4.15) controlPoint2: CGPointMake(5.34, 4.48)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.41, 4.49)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13.4, 4.49)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(14.89, 3.62) controlPoint1: CGPointMake(14.05, 4.49) controlPoint2: CGPointMake(14.63, 4.15)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.11, 3.61)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.1, 3.61)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.9, 4.23) controlPoint1: CGPointMake(16.51, 3.59) controlPoint2: CGPointMake(16.87, 3.87)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.9, 4.31) controlPoint1: CGPointMake(16.9, 4.26) controlPoint2: CGPointMake(16.9, 4.29)];
    [varNames_bezierPath addLineToPoint: CGPointMake(16.9, 18.4)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_color.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* varNames_bezier2Path = [UIBezierPath bezierPath];
    [varNames_bezier2Path moveToPoint: CGPointMake(9.91, 6.57)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(9.91, 6.57)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(4.33, 11.57) controlPoint1: CGPointMake(6.83, 6.57) controlPoint2: CGPointMake(4.33, 8.81)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(9.91, 16.57) controlPoint1: CGPointMake(4.33, 14.33) controlPoint2: CGPointMake(6.83, 16.57)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(15.5, 11.57) controlPoint1: CGPointMake(13, 16.57) controlPoint2: CGPointMake(15.5, 14.33)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(15.5, 11.57)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(9.91, 6.57) controlPoint1: CGPointMake(15.5, 8.81) controlPoint2: CGPointMake(13, 6.57)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(9.91, 6.57)];
    [varNames_bezier2Path closePath];
    [varNames_bezier2Path moveToPoint: CGPointMake(9.91, 15.74)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(9.91, 15.74)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(5.26, 11.57) controlPoint1: CGPointMake(7.34, 15.74) controlPoint2: CGPointMake(5.26, 13.87)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(9.91, 7.41) controlPoint1: CGPointMake(5.26, 9.27) controlPoint2: CGPointMake(7.34, 7.41)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(14.57, 11.57) controlPoint1: CGPointMake(12.48, 7.41) controlPoint2: CGPointMake(14.57, 9.27)];
    [varNames_bezier2Path addLineToPoint: CGPointMake(14.57, 11.57)];
    [varNames_bezier2Path addCurveToPoint: CGPointMake(9.91, 15.74) controlPoint1: CGPointMake(14.57, 13.87) controlPoint2: CGPointMake(12.48, 15.74)];
    [varNames_bezier2Path closePath];
    
    CAShapeLayer *varNames_layer1 = [CAShapeLayer layer];
    //设置描边色
    varNames_layer1.fillColor = varNames_color.CGColor;
    varNames_layer1.path = varNames_bezier2Path.CGPath;
    
    [varNames_returnLayer addSublayer:varNames_layer];
    [varNames_returnLayer addSublayer:varNames_layer1];
    
    [varNames_view.layer addSublayer:varNames_returnLayer];
    
    return varNames_returnLayer;
    
}








static inline CAShapeLayer *methodNames_drawProtocolSelect(UIView *varNames_view, UIColor *varNames_color) {
    NSInteger varNames_type = methodNames_getDefault_inputViewType_config();
    switch (varNames_type) {
        case 0:
        {
            return methodNames_drawProtocolSelect1(varNames_view, varNames_color);
        }
            break;
        case 1:
        {
            return methodNames_drawProtocolSelect1(varNames_view, varNames_color);
        }
            break;
        case 2:
        {
            return methodNames_drawProtocolSelect2(varNames_view, varNames_color);
        }
            break;
        case 3:
        {
            return methodNames_drawProtocolSelect3(varNames_view, varNames_color);
        }
            break;
        case 4:
        {
            return methodNames_drawProtocolSelect4(varNames_view, varNames_color);
        }
            break;
        case 5:
        {
            return methodNames_drawProtocolSelect5(varNames_view, varNames_color);
        }
            break;
        default:
        {
            return methodNames_drawProtocolSelect6(varNames_view, varNames_color);
        }
            break;
    }
}

static inline CAShapeLayer *methodNames_drawProtocolUnselect(UIView *varNames_view, UIColor *varNames_color) {
    NSInteger varNames_type = methodNames_getDefault_inputViewType_config();
    switch (varNames_type) {
        case 0:
        {
            return methodNames_drawProtocolUnselect1(varNames_view, varNames_color);
        }
            break;
        case 1:
        {
            return methodNames_drawProtocolUnselect1(varNames_view, varNames_color);
        }
            break;
        case 2:
        {
            return methodNames_drawProtocolUnselect2(varNames_view, varNames_color);
        }
            break;
        case 3:
        {
            return methodNames_drawProtocolUnselect3(varNames_view, varNames_color);
        }
            break;
        case 4:
        {
            return methodNames_drawProtocolUnselect4(varNames_view, varNames_color);
        }
            break;
        case 5:
        {
            return methodNames_drawProtocolUnselect5(varNames_view, varNames_color);
        }
            break;
        default:
        {
            return methodNames_drawProtocolUnselect6(varNames_view, varNames_color);
        }
            break;
    }
}
