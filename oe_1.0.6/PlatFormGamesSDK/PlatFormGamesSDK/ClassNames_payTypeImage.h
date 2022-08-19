//
//  ClassNames_payTypeImage.h
//  PlatFormGamesSDK
//
//  Created by 刘飞 on 2022/8/14.
//  Copyright © 2022 TB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


static inline void methodNames_drawWechatPay(UIView *varNames_view, UIColor *varNames_imageColor, UIColor *varNames_titleColor, NSString *varNames_title) {
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(32.88, 41.57)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(32.04, 41.76) controlPoint1: CGPointMake(32.62, 41.7) controlPoint2: CGPointMake(32.36, 41.76)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(30.41, 40.78) controlPoint1: CGPointMake(31.32, 41.76) controlPoint2: CGPointMake(30.74, 41.37)];
    [varNames_bezierPath addLineToPoint: CGPointMake(30.28, 40.52)];
    [varNames_bezierPath addLineToPoint: CGPointMake(25.15, 29.23)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25.09, 28.84) controlPoint1: CGPointMake(25.09, 29.1) controlPoint2: CGPointMake(25.09, 28.97)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26, 27.92) controlPoint1: CGPointMake(25.09, 28.31) controlPoint2: CGPointMake(25.48, 27.92)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.58, 28.11) controlPoint1: CGPointMake(26.2, 27.92) controlPoint2: CGPointMake(26.39, 27.98)];
    [varNames_bezierPath addLineToPoint: CGPointMake(32.62, 32.45)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(34.18, 32.9) controlPoint1: CGPointMake(33.07, 32.71) controlPoint2: CGPointMake(33.59, 32.9)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(35.15, 32.71) controlPoint1: CGPointMake(34.5, 32.9) controlPoint2: CGPointMake(34.82, 32.84)];
    [varNames_bezierPath addLineToPoint: CGPointMake(63.45, 19.98)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(40.54, 10) controlPoint1: CGPointMake(58.39, 13.94) controlPoint2: CGPointMake(50.02, 10)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(12.5, 33.62) controlPoint1: CGPointMake(25.09, 10) controlPoint2: CGPointMake(12.5, 20.57)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.17, 51.47) controlPoint1: CGPointMake(12.5, 40.71) controlPoint2: CGPointMake(16.26, 47.14)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.95, 52.98) controlPoint1: CGPointMake(22.62, 51.8) controlPoint2: CGPointMake(22.95, 52.39)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.81, 53.57) controlPoint1: CGPointMake(22.95, 53.18) controlPoint2: CGPointMake(22.88, 53.37)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.58, 58.36) controlPoint1: CGPointMake(22.36, 55.34) controlPoint2: CGPointMake(21.58, 58.23)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(21.45, 59.08) controlPoint1: CGPointMake(21.52, 58.55) controlPoint2: CGPointMake(21.45, 58.81)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.36, 60) controlPoint1: CGPointMake(21.45, 59.61) controlPoint2: CGPointMake(21.84, 60)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.88, 59.8) controlPoint1: CGPointMake(22.55, 60) controlPoint2: CGPointMake(22.75, 59.94)];
    [varNames_bezierPath addLineToPoint: CGPointMake(28.97, 56.19)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(30.47, 55.74) controlPoint1: CGPointMake(29.43, 55.93) controlPoint2: CGPointMake(29.95, 55.74)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(31.31, 55.87) controlPoint1: CGPointMake(30.73, 55.74) controlPoint2: CGPointMake(31.05, 55.8)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(40.46, 57.18) controlPoint1: CGPointMake(34.16, 56.72) controlPoint2: CGPointMake(37.28, 57.18)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(68.5, 33.56) controlPoint1: CGPointMake(55.91, 57.18) controlPoint2: CGPointMake(68.5, 46.62)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(65.32, 22.6) controlPoint1: CGPointMake(68.5, 29.62) controlPoint2: CGPointMake(67.33, 25.89)];
    [varNames_bezierPath addLineToPoint: CGPointMake(33.07, 41.43)];
    [varNames_bezierPath addLineToPoint: CGPointMake(32.88, 41.57)];
    [varNames_bezierPath closePath];
    
    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_imageColor.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
    
//    //// varNames_aLiTitle Drawing
    CGRect varNames_aLiTitleRect = CGRectMake(0, 65, 75, 20);
    
    UILabel *varNames_tmpLabel = [[UILabel alloc]initWithFrame:varNames_aLiTitleRect];
    varNames_tmpLabel.text = varNames_title;
    varNames_tmpLabel.font = [UIFont systemFontOfSize:12];
    varNames_tmpLabel.textAlignment = NSTextAlignmentCenter;
    varNames_tmpLabel.textColor = varNames_titleColor;
    [varNames_view addSubview:varNames_tmpLabel];
    
}

// 支 lsdkjfd 付 sdfs 宝 sdfwe支sdfx237890岁离开的风景 付
static inline void methodNames_drawAliPay(UIView *varNames_view, UIColor *varNames_imageColor, UIColor *varNames_titleColor, NSString *varNames_title) {
    
    //// varNames_bezier Drawing
    UIBezierPath* varNames_bezierPath = [UIBezierPath bezierPath];
    [varNames_bezierPath moveToPoint: CGPointMake(63, 44.23)];
    [varNames_bezierPath addLineToPoint: CGPointMake(63, 19.61)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(53.38, 10) controlPoint1: CGPointMake(63, 14.31) controlPoint2: CGPointMake(58.69, 10)];
    [varNames_bezierPath addLineToPoint: CGPointMake(22.61, 10)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(13, 19.61) controlPoint1: CGPointMake(17.31, 10) controlPoint2: CGPointMake(13, 14.31)];
    [varNames_bezierPath addLineToPoint: CGPointMake(13, 50.39)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(22.61, 60) controlPoint1: CGPointMake(13, 55.69) controlPoint2: CGPointMake(17.3, 60)];
    [varNames_bezierPath addLineToPoint: CGPointMake(53.38, 60)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(62.85, 52.08) controlPoint1: CGPointMake(58.11, 60) controlPoint2: CGPointMake(62.05, 56.58)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(43.49, 43.46) controlPoint1: CGPointMake(60.3, 50.98) controlPoint2: CGPointMake(49.25, 46.21)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(27.61, 51.95) controlPoint1: CGPointMake(39.11, 48.77) controlPoint2: CGPointMake(34.53, 51.95)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(16.63, 42.48) controlPoint1: CGPointMake(20.69, 51.95) controlPoint2: CGPointMake(16.08, 47.69)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(29.54, 34.42) controlPoint1: CGPointMake(17, 39.06) controlPoint2: CGPointMake(19.34, 33.46)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(41.75, 37.38) controlPoint1: CGPointMake(34.91, 34.93) controlPoint2: CGPointMake(37.37, 35.93)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(44.54, 30.58) controlPoint1: CGPointMake(42.88, 35.3) controlPoint2: CGPointMake(43.82, 33.01)];
    [varNames_bezierPath addLineToPoint: CGPointMake(25.11, 30.58)];
    [varNames_bezierPath addLineToPoint: CGPointMake(25.11, 28.65)];
    [varNames_bezierPath addLineToPoint: CGPointMake(34.72, 28.65)];
    [varNames_bezierPath addLineToPoint: CGPointMake(34.72, 25.19)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23, 25.19)];
    [varNames_bezierPath addLineToPoint: CGPointMake(23, 23.08)];
    [varNames_bezierPath addLineToPoint: CGPointMake(34.72, 23.08)];
    [varNames_bezierPath addLineToPoint: CGPointMake(34.72, 18.09)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(35.69, 17.31) controlPoint1: CGPointMake(34.72, 18.09) controlPoint2: CGPointMake(34.83, 17.31)];
    [varNames_bezierPath addLineToPoint: CGPointMake(40.5, 17.31)];
    [varNames_bezierPath addLineToPoint: CGPointMake(40.5, 23.08)];
    [varNames_bezierPath addLineToPoint: CGPointMake(53, 23.08)];
    [varNames_bezierPath addLineToPoint: CGPointMake(53, 25.19)];
    [varNames_bezierPath addLineToPoint: CGPointMake(40.5, 25.19)];
    [varNames_bezierPath addLineToPoint: CGPointMake(40.5, 28.65)];
    [varNames_bezierPath addLineToPoint: CGPointMake(50.7, 28.65)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(46.56, 39.04) controlPoint1: CGPointMake(49.76, 32.47) controlPoint2: CGPointMake(48.34, 35.97)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(63, 44.23) controlPoint1: CGPointMake(49.52, 40.11) controlPoint2: CGPointMake(63, 44.23)];
    [varNames_bezierPath addLineToPoint: CGPointMake(63, 44.23)];
    [varNames_bezierPath addLineToPoint: CGPointMake(63, 44.23)];
    [varNames_bezierPath closePath];
    [varNames_bezierPath moveToPoint: CGPointMake(26.84, 48.65)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(18.77, 42.11) controlPoint1: CGPointMake(19.54, 48.65) controlPoint2: CGPointMake(18.38, 44.04)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(25.33, 37.69) controlPoint1: CGPointMake(19.15, 40.19) controlPoint2: CGPointMake(21.27, 37.69)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(39.2, 41.33) controlPoint1: CGPointMake(30, 37.69) controlPoint2: CGPointMake(34.18, 38.88)];
    [varNames_bezierPath addCurveToPoint: CGPointMake(26.84, 48.65) controlPoint1: CGPointMake(35.68, 45.92) controlPoint2: CGPointMake(31.34, 48.65)];
    [varNames_bezierPath addLineToPoint: CGPointMake(26.84, 48.65)];
    [varNames_bezierPath closePath];
//    [varNames_imageColor setFill];
//    [varNames_bezierPath fill];


    CAShapeLayer *varNames_layer = [CAShapeLayer layer];
    //设置描边色
    varNames_layer.fillColor = varNames_imageColor.CGColor;
    varNames_layer.path = varNames_bezierPath.CGPath;
    
    [varNames_view.layer addSublayer:varNames_layer];
    
    
//    //// varNames_aLiTitle Drawing
    CGRect varNames_aLiTitleRect = CGRectMake(0, 65, 75, 20);
    
    UILabel *varNames_tmpLabel = [[UILabel alloc]initWithFrame:varNames_aLiTitleRect];
    varNames_tmpLabel.text = varNames_title;
    varNames_tmpLabel.font = [UIFont systemFontOfSize:12];
    varNames_tmpLabel.textAlignment = NSTextAlignmentCenter;
    varNames_tmpLabel.textColor = varNames_titleColor;
    [varNames_view addSubview:varNames_tmpLabel];
    
    
//    UIBezierPath* varNames_aLiTitlePath = [UIBezierPath bezierPathWithRect: varNames_aLiTitleRect];
//    [UIColor.whiteColor setFill];
//    [varNames_aLiTitlePath fill];
//    {
//        NSString* textContent = varNames_title;
//        NSMutableParagraphStyle* varNames_aLiTitleStyle = [[NSMutableParagraphStyle alloc] init];
//        varNames_aLiTitleStyle.alignment = NSTextAlignmentCenter;
//        NSDictionary* varNames_aLiTitleFontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"HelveticaNeue" size: 11], NSForegroundColorAttributeName: UIColor.blackColor, NSParagraphStyleAttributeName: varNames_aLiTitleStyle};
//
//        CGFloat varNames_aLiTitleTextHeight = [textContent boundingRectWithSize: CGSizeMake(varNames_aLiTitleRect.size.width, INFINITY) options: NSStringDrawingUsesLineFragmentOrigin attributes: varNames_aLiTitleFontAttributes context: nil].size.height;
//        CGContextSaveGState(context);
//        CGContextClipToRect(context, varNames_aLiTitleRect);
//        [textContent drawInRect: CGRectMake(CGRectGetMinX(varNames_aLiTitleRect), CGRectGetMinY(varNames_aLiTitleRect) + (varNames_aLiTitleRect.size.height - varNames_aLiTitleTextHeight) / 2, varNames_aLiTitleRect.size.width, varNames_aLiTitleTextHeight) withAttributes: varNames_aLiTitleFontAttributes];
//        CGContextRestoreGState(context);
//    }
}



