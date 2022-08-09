

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ClassNames_Color.h"
#pragma mark ---------- 使view根据path路径动画移动
static inline CAKeyframeAnimation * methodNames_setViewMoveAnimat(UIView *varNames_view, UIBezierPath *varNames_path, CGFloat varNames_duration) {
    CAKeyframeAnimation *varNames_animat = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    
    varNames_animat.path = [varNames_path CGPath];
    varNames_animat.removedOnCompletion = false;
    varNames_animat.fillMode = kCAFillModeForwards;
    varNames_animat.calculationMode = kCAAnimationCubic;
    varNames_animat.repeatCount = CGFLOAT_MAX;
    varNames_animat.duration = varNames_duration;
    varNames_animat.autoreverses = NO;
    
    varNames_animat.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [varNames_view.layer addAnimation:varNames_animat forKey:@"animation"];
    return varNames_animat;
}
#pragma mark ---------- 颜色变化
static inline void methodNames_setViewColorAnimat(UIView *varNames_view, UIColor *varNames_color1, UIColor *varNames_color2, CGFloat varNames_duration) {
    
    CABasicAnimation *varNames_colorAnim = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
    varNames_colorAnim.toValue = (__bridge id _Nullable)([varNames_color2 CGColor]);
    varNames_colorAnim.fromValue = (__bridge id _Nullable)([varNames_color1 CGColor]);
    varNames_colorAnim.duration = varNames_duration;
    varNames_colorAnim.autoreverses = NO;
    varNames_colorAnim.fillMode = kCAFillModeForwards;
    varNames_colorAnim.removedOnCompletion = NO;
    varNames_colorAnim.repeatCount = CGFLOAT_MAX;
    [varNames_view.layer addAnimation:varNames_colorAnim forKey:@"backgroundColor"];
}
#pragma mark ---------- view的放大缩小动画
static inline void methodNames_setViewScaleAnimat(UIView *varNames_view, CGFloat varNames_scale) {
    varNames_view.transform = CGAffineTransformMakeScale(varNames_scale, varNames_scale);
}

#pragma mark ---------- 设置view的圆角和阴影
static inline void methodNames_setViewShadowCornerRadius(UIView *varNames_view, CGFloat varNames_cornerRadius, CGFloat varNames_shadowRadius, CGSize varNames_offset) {
    varNames_view.layer.shadowColor = UIColor.lightGrayColor.CGColor;
    varNames_view.layer.borderColor = varNames_view.layer.shadowColor; // 边框颜色建议和阴影颜色一致
    varNames_view.layer.borderWidth = 0.000001; // 只要不为0就行
    if (varNames_cornerRadius) {
        varNames_view.layer.cornerRadius = varNames_cornerRadius;
    }
    varNames_view.layer.shadowOpacity = 0.8;
    if (varNames_shadowRadius) {
        varNames_view.layer.shadowRadius = varNames_shadowRadius;
    }
    varNames_view.layer.shadowOffset = varNames_offset;
}


#pragma mark ---------- 给view画边框并在仍一角添加图案
static inline void methodNames_setViewBorderImage1(UIView *varNames_view, BOOL varNames_lfTop, BOOL varNames_lfBottom, BOOL varNames_rTop, BOOL varNames_rBottom, NSString *varNames_imgColor, NSString *varNames_lineColor) {
    CGRect varNames_viewRect = varNames_view.bounds;
    CGFloat varNames_viewWidth = CGRectGetWidth(varNames_viewRect);
    CGFloat varNames_viewHeight = CGRectGetHeight(varNames_viewRect);
    UIColor *imgColor = [UIColor whiteColor];
    UIColor *lColor = [UIColor blackColor];
    if (varNames_imgColor && varNames_imgColor.length) {
        imgColor = [ClassNames_Color methodNames_colorWithHexString:varNames_imgColor];
    }
    if (varNames_lineColor && varNames_lineColor.length) {
        lColor = [ClassNames_Color methodNames_colorWithHexString:varNames_lineColor];
    }
    
    UIBezierPath *varNames_linePath = [UIBezierPath bezierPath];
    
    if (varNames_lfTop) {
        [varNames_linePath moveToPoint:CGPointMake(1, 12)];
    } else {
        [varNames_linePath moveToPoint:CGPointMake(1, 1)];
    }
    if (varNames_lfBottom) {
        [varNames_linePath addLineToPoint:CGPointMake(1, varNames_viewHeight - 12)];
        [varNames_linePath moveToPoint:CGPointMake(12, varNames_viewHeight - 1)];
    } else {
        [varNames_linePath addLineToPoint:CGPointMake(1, varNames_viewHeight - 1)];
        [varNames_linePath moveToPoint:CGPointMake(0, varNames_viewHeight - 1)];
    }
    if (varNames_rBottom) {
        [varNames_linePath addLineToPoint:CGPointMake(varNames_viewWidth - 12, varNames_viewHeight - 1)];
        [varNames_linePath moveToPoint:CGPointMake(varNames_viewWidth - 1, varNames_viewHeight - 12)];
    } else {
        [varNames_linePath addLineToPoint:CGPointMake(varNames_viewWidth, varNames_viewHeight - 1)];
        [varNames_linePath moveToPoint:CGPointMake(varNames_viewWidth-1, varNames_viewHeight - 1)];
    }
    if (varNames_rTop) {
        [varNames_linePath addLineToPoint:CGPointMake(varNames_viewWidth - 1, 12)];
        [varNames_linePath moveToPoint:CGPointMake(varNames_viewWidth - 12, 1)];
    } else {
        [varNames_linePath addLineToPoint:CGPointMake(varNames_viewWidth - 1, 1)];
        [varNames_linePath moveToPoint:CGPointMake(varNames_viewWidth, 1)];
    }
    if (varNames_lfTop) {
        [varNames_linePath addLineToPoint:CGPointMake(12, 1)];
    } else {
        [varNames_linePath addLineToPoint:CGPointMake(0, 1)];
    }
    CAShapeLayer *varNames_lineLayer = [CAShapeLayer layer];
    //设置描边色
    varNames_lineLayer.strokeColor = lColor.CGColor;
    varNames_lineLayer.fillColor = [UIColor clearColor].CGColor;
    varNames_lineLayer.path = varNames_linePath.CGPath;
    varNames_lineLayer.lineWidth = 2;
    [varNames_view.layer addSublayer:varNames_lineLayer];
    
    if (varNames_lfTop) {
        UIBezierPath *varNames_ltPath = [UIBezierPath bezierPath];
        [varNames_ltPath moveToPoint:CGPointMake(9, 3)];
        [varNames_ltPath addLineToPoint:CGPointMake(6, 3)];
        [varNames_ltPath addLineToPoint:CGPointMake(6, 6)];
        [varNames_ltPath addLineToPoint:CGPointMake(12, 6)];
        [varNames_ltPath addLineToPoint:CGPointMake(12, 0)];
        [varNames_ltPath addLineToPoint:CGPointMake(0, 0)];
        [varNames_ltPath addLineToPoint:CGPointMake(0, 12)];
        [varNames_ltPath addLineToPoint:CGPointMake(6, 12)];
        [varNames_ltPath addLineToPoint:CGPointMake(6, 6)];
        [varNames_ltPath addLineToPoint:CGPointMake(3, 6)];
        [varNames_ltPath addLineToPoint:CGPointMake(3, 9)];
        CAShapeLayer *varNames_ltLayer = [CAShapeLayer layer];
        //设置描边色
        varNames_ltLayer.strokeColor = lColor.CGColor;
        varNames_ltLayer.fillColor = imgColor.CGColor;
        varNames_ltLayer.path = varNames_ltPath.CGPath;
        [varNames_view.layer addSublayer:varNames_ltLayer];
    }
    if (varNames_lfBottom) {
        UIBezierPath *varNames_lbPath = [UIBezierPath bezierPath];
        [varNames_lbPath moveToPoint:CGPointMake(3, varNames_viewHeight - 9)];
        [varNames_lbPath addLineToPoint:CGPointMake(3, varNames_viewHeight - 6)];
        [varNames_lbPath addLineToPoint:CGPointMake(6, varNames_viewHeight - 6)];
        [varNames_lbPath addLineToPoint:CGPointMake(6, varNames_viewHeight - 12)];
        [varNames_lbPath addLineToPoint:CGPointMake(0, varNames_viewHeight - 12)];
        [varNames_lbPath addLineToPoint:CGPointMake(0, varNames_viewHeight)];
        [varNames_lbPath addLineToPoint:CGPointMake(12, varNames_viewHeight)];
        [varNames_lbPath addLineToPoint:CGPointMake(12, varNames_viewHeight - 6)];
        [varNames_lbPath addLineToPoint:CGPointMake(6, varNames_viewHeight - 6)];
        [varNames_lbPath addLineToPoint:CGPointMake(6, varNames_viewHeight - 3)];
        [varNames_lbPath addLineToPoint:CGPointMake(9, varNames_viewHeight - 3)];
        CAShapeLayer *varNames_lbLayer = [CAShapeLayer layer];
        //设置描边色
        varNames_lbLayer.strokeColor = [UIColor colorWithRed:234/255 green:218/255 blue:205/255 alpha:1].CGColor;
        varNames_lbLayer.fillColor = imgColor.CGColor;
        varNames_lbLayer.path = varNames_lbPath.CGPath;
        [varNames_view.layer addSublayer:varNames_lbLayer];
    }
    if (varNames_rTop) {
        UIBezierPath *varNames_rtPath = [UIBezierPath bezierPath];
        [varNames_rtPath moveToPoint:CGPointMake(varNames_viewWidth - 9, 3)];
        [varNames_rtPath addLineToPoint:CGPointMake(varNames_viewWidth - 6, 3)];
        [varNames_rtPath addLineToPoint:CGPointMake(varNames_viewWidth - 6, 6)];
        [varNames_rtPath addLineToPoint:CGPointMake(varNames_viewWidth - 12, 6)];
        [varNames_rtPath addLineToPoint:CGPointMake(varNames_viewWidth - 12, 0)];
        [varNames_rtPath addLineToPoint:CGPointMake(varNames_viewWidth, 0)];
        [varNames_rtPath addLineToPoint:CGPointMake(varNames_viewWidth, 12)];
        [varNames_rtPath addLineToPoint:CGPointMake(varNames_viewWidth - 6, 12)];
        [varNames_rtPath addLineToPoint:CGPointMake(varNames_viewWidth - 6, 6)];
        [varNames_rtPath addLineToPoint:CGPointMake(varNames_viewWidth - 3, 6)];
        [varNames_rtPath addLineToPoint:CGPointMake(varNames_viewWidth - 3, 9)];
        CAShapeLayer *varNames_rtLayer = [CAShapeLayer layer];
        //设置描边色
        varNames_rtLayer.strokeColor = lColor.CGColor;
        varNames_rtLayer.fillColor = imgColor.CGColor;
        varNames_rtLayer.path = varNames_rtPath.CGPath;
        [varNames_view.layer addSublayer:varNames_rtLayer];
    }
    if (varNames_rBottom) {
        UIBezierPath *varNames_rbPath = [UIBezierPath bezierPath];
        [varNames_rbPath moveToPoint:CGPointMake(varNames_viewWidth - 9, varNames_viewHeight - 3)];
        [varNames_rbPath addLineToPoint:CGPointMake(varNames_viewWidth - 6, varNames_viewHeight - 3)];
        [varNames_rbPath addLineToPoint:CGPointMake(varNames_viewWidth - 6, varNames_viewHeight - 6)];
        [varNames_rbPath addLineToPoint:CGPointMake(varNames_viewWidth - 12, varNames_viewHeight - 6)];
        [varNames_rbPath addLineToPoint:CGPointMake(varNames_viewWidth - 12, varNames_viewHeight - 0)];
        [varNames_rbPath addLineToPoint:CGPointMake(varNames_viewWidth - 0, varNames_viewHeight - 0)];
        [varNames_rbPath addLineToPoint:CGPointMake(varNames_viewWidth - 0, varNames_viewHeight - 12)];
        [varNames_rbPath addLineToPoint:CGPointMake(varNames_viewWidth - 6, varNames_viewHeight - 12)];
        [varNames_rbPath addLineToPoint:CGPointMake(varNames_viewWidth - 6, varNames_viewHeight - 6)];
        [varNames_rbPath addLineToPoint:CGPointMake(varNames_viewWidth - 3, varNames_viewHeight - 6)];
        [varNames_rbPath addLineToPoint:CGPointMake(varNames_viewWidth - 3, varNames_viewHeight - 9)];
        CAShapeLayer *varNames_rbLayer = [CAShapeLayer layer];
        varNames_rbLayer.fillColor = imgColor.CGColor;
        varNames_rbLayer.strokeColor = lColor.CGColor;
        varNames_rbLayer.path = varNames_rbPath.CGPath;
        [varNames_view.layer addSublayer:varNames_rbLayer];
    }
}

#pragma mark ---------- 设置view的任一角为圆角
static inline void methodNames_setViewRound(UIView *varNames_view, BOOL varNames_lfTop, BOOL varNames_lfBottom, BOOL varNames_rTop, BOOL varNames_rBottom, CGFloat varNames_cornerRadius) {
    CGRect bound = varNames_view.bounds;
    UIRectCorner varNames_corner = UIRectCornerAllCorners;
    if (varNames_lfTop) {
        varNames_corner = UIRectCornerTopLeft;
    }
    if (varNames_lfBottom) {
        if (varNames_corner) {
            varNames_corner = (varNames_corner|UIRectCornerBottomLeft);
        } else {
            varNames_corner = UIRectCornerBottomLeft;
        }
    }
    if (varNames_rTop) {
        if (varNames_corner) {
            varNames_corner = (varNames_corner|UIRectCornerTopRight);
        } else {
            varNames_corner = UIRectCornerTopRight;
        }
    }
    if (varNames_rBottom) {
        if (varNames_corner) {
            varNames_corner = (varNames_corner|UIRectCornerBottomRight);
        } else {
            varNames_corner = UIRectCornerBottomRight;
        }
    }
    UIBezierPath *varNames_path = [UIBezierPath bezierPathWithRoundedRect:bound byRoundingCorners:varNames_corner cornerRadii:CGSizeMake(varNames_cornerRadius, varNames_cornerRadius)];
    CAShapeLayer *varNames_viewLayer = [CAShapeLayer layer];
    varNames_viewLayer.path = varNames_path.CGPath;
    varNames_viewLayer.strokeColor = [UIColor clearColor].CGColor;
    varNames_viewLayer.fillColor = varNames_view.backgroundColor.CGColor;
    varNames_view.backgroundColor = [UIColor clearColor];
    [varNames_view.layer addSublayer:varNames_viewLayer];
}
#pragma mark ---------- 绘制棱形 宽不定，高30
static inline void methodNames_createFiveCorView(UIView *varNames_view, UIColor *varNames_bgColor) {
    CGFloat varNames_width = CGRectGetWidth(varNames_view.frame);
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(0, 15)];
    [varNames_bezierPath addLineToPoint: CGPointMake(varNames_width/4, 30)];
    [varNames_bezierPath addLineToPoint: CGPointMake(varNames_width/4*3, 30)];
    [varNames_bezierPath addLineToPoint: CGPointMake(varNames_width, 15)];
    [varNames_bezierPath addLineToPoint: CGPointMake(varNames_width/4*3, 0)];
    [varNames_bezierPath addLineToPoint: CGPointMake(varNames_width/4, 0)];
    [varNames_bezierPath addLineToPoint: CGPointMake(0, 15)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_fiveLayer = [CAShapeLayer layer];
    varNames_fiveLayer.fillColor = varNames_bgColor.CGColor;
    varNames_fiveLayer.path = varNames_bezierPath.CGPath;
    [varNames_view.layer addSublayer:varNames_fiveLayer];
}













#pragma mark -----不使用----- 绘画一个 X  viewFrame:30*30
static inline void methodNames_createCloseImageForView(UIView *varNames_view, CGFloat lineWidth, UIColor *imgColor) {
    CGRect bound = varNames_view.bounds;
    CGFloat centerX = CGRectGetWidth(bound)/2;
    CGFloat centerY = CGRectGetHeight(bound)/2;
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(centerX/2 + 3, centerY/2 + 3)];
    [path addLineToPoint:CGPointMake(centerX / 2 * 3 - 3, centerY / 2 * 3 - 3)];
    [path moveToPoint:CGPointMake(centerX/2 + 3, centerY / 2 * 3 - 3)];
    [path addLineToPoint:CGPointMake(centerX / 2 * 3 - 3, centerY / 2 + 3)];
    
    CAShapeLayer *errorLayer = [CAShapeLayer layer];
    errorLayer.strokeColor = imgColor.CGColor;
    errorLayer.path = path.CGPath;
    errorLayer.lineWidth = lineWidth?:3.0;
    [varNames_view.layer addSublayer:errorLayer];
}
