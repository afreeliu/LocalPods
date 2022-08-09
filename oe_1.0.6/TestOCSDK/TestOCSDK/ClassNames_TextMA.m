//
//  ClassNames_TextMA.m
//  TestOCSDK
//
//  Created by TB on 2018/8/8.
//  Copyright © 2018年 TB. All rights reserved.
//

#import "ClassNames_TextMA.h"

@implementation ClassNames_TextMA

-(void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    [self methodNames_drawTextMa];
}

- (void)methodNames_drawTextMa {
    //// Color Declarations
    UIColor* fillColor = [UIColor colorWithRed: 0.008 green: 0.008 blue: 0.008 alpha: 1];
    UIColor* fillColor2 = [UIColor colorWithRed: 0.188 green: 0.188 blue: 0.188 alpha: 1];
    UIColor* fillColor3 = [UIColor colorWithRed: 0.302 green: 0.302 blue: 0.302 alpha: 1];
    UIColor* fillColor4 = [UIColor colorWithRed: 0.424 green: 0.424 blue: 0.424 alpha: 1];
    UIColor* fillColor5 = [UIColor colorWithRed: 0.569 green: 0.569 blue: 0.569 alpha: 1];
    UIColor* fillColor6 = [UIColor colorWithRed: 0.698 green: 0.698 blue: 0.698 alpha: 1];
    UIColor* fillColor7 = [UIColor colorWithRed: 0.82 green: 0.82 blue: 0.82 alpha: 1];
    
    //// layer101
    {
        //// Bezier Drawing
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(13.34, 19.78)];
        [bezierPath addCurveToPoint: CGPointMake(11.43, 17.99) controlPoint1: CGPointMake(12.03, 19.55) controlPoint2: CGPointMake(11.6, 19.16)];
        [bezierPath addCurveToPoint: CGPointMake(10.36, 17.02) controlPoint1: CGPointMake(11.28, 17.07) controlPoint2: CGPointMake(11.23, 17.02)];
        [bezierPath addCurveToPoint: CGPointMake(9.34, 17.32) controlPoint1: CGPointMake(9.83, 17.02) controlPoint2: CGPointMake(9.39, 17.14)];
        [bezierPath addCurveToPoint: CGPointMake(3.94, 17.64) controlPoint1: CGPointMake(9.22, 17.69) controlPoint2: CGPointMake(5.88, 17.89)];
        [bezierPath addCurveToPoint: CGPointMake(1.45, 13.89) controlPoint1: CGPointMake(1.79, 17.37) controlPoint2: CGPointMake(1.59, 17.07)];
        [bezierPath addCurveToPoint: CGPointMake(1.01, 10.98) controlPoint1: CGPointMake(1.37, 11.95) controlPoint2: CGPointMake(1.25, 11.13)];
        [bezierPath addCurveToPoint: CGPointMake(0.28, 10.01) controlPoint1: CGPointMake(0.82, 10.88) controlPoint2: CGPointMake(0.5, 10.44)];
        [bezierPath addCurveToPoint: CGPointMake(0.91, 6.58) controlPoint1: CGPointMake(-0.25, 8.97) controlPoint2: CGPointMake(-0.03, 7.8)];
        [bezierPath addLineToPoint: CGPointMake(1.67, 5.62)];
        [bezierPath addLineToPoint: CGPointMake(1.04, 4.99)];
        [bezierPath addCurveToPoint: CGPointMake(0.43, 3.06) controlPoint1: CGPointMake(0.55, 4.47) controlPoint2: CGPointMake(0.43, 4.12)];
        [bezierPath addCurveToPoint: CGPointMake(0.62, 1.42) controlPoint1: CGPointMake(0.43, 2.34) controlPoint2: CGPointMake(0.53, 1.59)];
        [bezierPath addCurveToPoint: CGPointMake(5.44, 0.65) controlPoint1: CGPointMake(0.99, 0.84) controlPoint2: CGPointMake(2.46, 0.6)];
        [bezierPath addCurveToPoint: CGPointMake(8.81, 0.35) controlPoint1: CGPointMake(7.7, 0.7) controlPoint2: CGPointMake(8.5, 0.62)];
        [bezierPath addCurveToPoint: CGPointMake(13, 0) controlPoint1: CGPointMake(9.13, 0.07) controlPoint2: CGPointMake(10.09, 0)];
        [bezierPath addCurveToPoint: CGPointMake(18.23, 0.8) controlPoint1: CGPointMake(17.09, 0) controlPoint2: CGPointMake(17.97, 0.12)];
        [bezierPath addCurveToPoint: CGPointMake(18.55, 4.6) controlPoint1: CGPointMake(18.35, 1.04) controlPoint2: CGPointMake(18.47, 2.76)];
        [bezierPath addCurveToPoint: CGPointMake(19.13, 8.6) controlPoint1: CGPointMake(18.64, 7.43) controlPoint2: CGPointMake(18.72, 8.03)];
        [bezierPath addCurveToPoint: CGPointMake(19.52, 13.22) controlPoint1: CGPointMake(19.59, 9.22) controlPoint2: CGPointMake(19.61, 9.57)];
        [bezierPath addCurveToPoint: CGPointMake(18.06, 19.35) controlPoint1: CGPointMake(19.39, 17.47) controlPoint2: CGPointMake(19.13, 18.63)];
        [bezierPath addCurveToPoint: CGPointMake(13.34, 19.78) controlPoint1: CGPointMake(17.41, 19.8) controlPoint2: CGPointMake(14.77, 20.05)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(17.94, 18.81)];
        [bezierPath addCurveToPoint: CGPointMake(19.01, 13.52) controlPoint1: CGPointMake(18.67, 17.99) controlPoint2: CGPointMake(18.89, 16.87)];
        [bezierPath addCurveToPoint: CGPointMake(18.35, 8.7) controlPoint1: CGPointMake(19.15, 9.71) controlPoint2: CGPointMake(19.06, 8.92)];
        [bezierPath addCurveToPoint: CGPointMake(17.87, 4.97) controlPoint1: CGPointMake(17.89, 8.55) controlPoint2: CGPointMake(17.87, 8.32)];
        [bezierPath addCurveToPoint: CGPointMake(17.48, 1.02) controlPoint1: CGPointMake(17.87, 2.06) controlPoint2: CGPointMake(17.8, 1.34)];
        [bezierPath addCurveToPoint: CGPointMake(13.17, 0.62) controlPoint1: CGPointMake(17.17, 0.7) controlPoint2: CGPointMake(16.42, 0.62)];
        [bezierPath addCurveToPoint: CGPointMake(8.96, 0.92) controlPoint1: CGPointMake(10.43, 0.62) controlPoint2: CGPointMake(9.15, 0.72)];
        [bezierPath addCurveToPoint: CGPointMake(9.08, 3.9) controlPoint1: CGPointMake(8.52, 1.37) controlPoint2: CGPointMake(8.59, 3.35)];
        [bezierPath addCurveToPoint: CGPointMake(11.86, 4.35) controlPoint1: CGPointMake(9.39, 4.27) controlPoint2: CGPointMake(9.85, 4.35)];
        [bezierPath addLineToPoint: CGPointMake(14.26, 4.35)];
        [bezierPath addLineToPoint: CGPointMake(14.19, 6.41)];
        [bezierPath addCurveToPoint: CGPointMake(13.58, 8.52) controlPoint1: CGPointMake(14.11, 8.3) controlPoint2: CGPointMake(14.07, 8.45)];
        [bezierPath addCurveToPoint: CGPointMake(13.02, 8.2) controlPoint1: CGPointMake(13.19, 8.57) controlPoint2: CGPointMake(13.02, 8.47)];
        [bezierPath addCurveToPoint: CGPointMake(13.27, 7.95) controlPoint1: CGPointMake(13.02, 7.98) controlPoint2: CGPointMake(13.15, 7.88)];
        [bezierPath addCurveToPoint: CGPointMake(13.51, 6.48) controlPoint1: CGPointMake(13.41, 8.05) controlPoint2: CGPointMake(13.51, 7.5)];
        [bezierPath addCurveToPoint: CGPointMake(13.27, 4.84) controlPoint1: CGPointMake(13.51, 5.57) controlPoint2: CGPointMake(13.41, 4.84)];
        [bezierPath addCurveToPoint: CGPointMake(13.02, 5.39) controlPoint1: CGPointMake(13.15, 4.84) controlPoint2: CGPointMake(13.02, 5.09)];
        [bezierPath addLineToPoint: CGPointMake(13.02, 5.94)];
        [bezierPath addLineToPoint: CGPointMake(12.64, 5.39)];
        [bezierPath addCurveToPoint: CGPointMake(11.11, 4.84) controlPoint1: CGPointMake(12.35, 4.97) controlPoint2: CGPointMake(12.03, 4.84)];
        [bezierPath addCurveToPoint: CGPointMake(9.68, 5.14) controlPoint1: CGPointMake(10.48, 4.84) controlPoint2: CGPointMake(9.85, 4.97)];
        [bezierPath addCurveToPoint: CGPointMake(9.68, 11.75) controlPoint1: CGPointMake(9.27, 5.57) controlPoint2: CGPointMake(9.27, 11.33)];
        [bezierPath addCurveToPoint: CGPointMake(12.54, 12.05) controlPoint1: CGPointMake(9.88, 11.95) controlPoint2: CGPointMake(10.87, 12.05)];
        [bezierPath addLineToPoint: CGPointMake(15.13, 12.05)];
        [bezierPath addLineToPoint: CGPointMake(15.4, 13.29)];
        [bezierPath addCurveToPoint: CGPointMake(15.01, 16.32) controlPoint1: CGPointMake(15.71, 14.68) controlPoint2: CGPointMake(15.57, 15.85)];
        [bezierPath addCurveToPoint: CGPointMake(13.41, 16.77) controlPoint1: CGPointMake(14.82, 16.5) controlPoint2: CGPointMake(14.09, 16.7)];
        [bezierPath addCurveToPoint: CGPointMake(12.1, 17.76) controlPoint1: CGPointMake(12.2, 16.89) controlPoint2: CGPointMake(12.18, 16.92)];
        [bezierPath addCurveToPoint: CGPointMake(15.2, 19.26) controlPoint1: CGPointMake(11.98, 19.03) controlPoint2: CGPointMake(12.44, 19.26)];
        [bezierPath addCurveToPoint: CGPointMake(17.94, 18.81) controlPoint1: CGPointMake(17.14, 19.26) controlPoint2: CGPointMake(17.63, 19.18)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(8.37, 16.45)];
        [bezierPath addCurveToPoint: CGPointMake(8.5, 12.6) controlPoint1: CGPointMake(7.21, 15.45) controlPoint2: CGPointMake(7.26, 13.22)];
        [bezierPath addCurveToPoint: CGPointMake(8.91, 11.65) controlPoint1: CGPointMake(9.05, 12.32) controlPoint2: CGPointMake(9.1, 12.2)];
        [bezierPath addCurveToPoint: CGPointMake(8.67, 9.09) controlPoint1: CGPointMake(8.76, 11.3) controlPoint2: CGPointMake(8.67, 10.16)];
        [bezierPath addCurveToPoint: CGPointMake(7.02, 6.19) controlPoint1: CGPointMake(8.67, 6.93) controlPoint2: CGPointMake(8.4, 6.46)];
        [bezierPath addCurveToPoint: CGPointMake(6.63, 5.32) controlPoint1: CGPointMake(6.27, 6.04) controlPoint2: CGPointMake(6.27, 6.01)];
        [bezierPath addCurveToPoint: CGPointMake(7.72, 4.6) controlPoint1: CGPointMake(6.9, 4.77) controlPoint2: CGPointMake(7.16, 4.6)];
        [bezierPath addCurveToPoint: CGPointMake(8.28, 3.78) controlPoint1: CGPointMake(8.42, 4.6) controlPoint2: CGPointMake(8.45, 4.57)];
        [bezierPath addCurveToPoint: CGPointMake(8.08, 2.24) controlPoint1: CGPointMake(8.18, 3.35) controlPoint2: CGPointMake(8.08, 2.66)];
        [bezierPath addLineToPoint: CGPointMake(8.06, 1.49)];
        [bezierPath addLineToPoint: CGPointMake(4.79, 1.42)];
        [bezierPath addCurveToPoint: CGPointMake(0.91, 3.08) controlPoint1: CGPointMake(1.13, 1.34) controlPoint2: CGPointMake(0.91, 1.44)];
        [bezierPath addCurveToPoint: CGPointMake(2.17, 4.84) controlPoint1: CGPointMake(0.91, 4.02) controlPoint2: CGPointMake(1.5, 4.84)];
        [bezierPath addCurveToPoint: CGPointMake(1.52, 6.68) controlPoint1: CGPointMake(2.8, 4.84) controlPoint2: CGPointMake(2.73, 5.04)];
        [bezierPath addCurveToPoint: CGPointMake(0.43, 8.62) controlPoint1: CGPointMake(0.91, 7.5) controlPoint2: CGPointMake(0.43, 8.37)];
        [bezierPath addCurveToPoint: CGPointMake(1.64, 10.63) controlPoint1: CGPointMake(0.43, 9.37) controlPoint2: CGPointMake(1.08, 10.48)];
        [bezierPath addCurveToPoint: CGPointMake(2.13, 13.44) controlPoint1: CGPointMake(2.1, 10.76) controlPoint2: CGPointMake(2.13, 10.96)];
        [bezierPath addCurveToPoint: CGPointMake(5.98, 17.02) controlPoint1: CGPointMake(2.13, 17.09) controlPoint2: CGPointMake(2.05, 17.02)];
        [bezierPath addLineToPoint: CGPointMake(9.03, 17.02)];
        [bezierPath addLineToPoint: CGPointMake(8.37, 16.45)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(14.67, 15.98)];
        [bezierPath addCurveToPoint: CGPointMake(14.67, 13.09) controlPoint1: CGPointMake(15.06, 15.58) controlPoint2: CGPointMake(15.06, 13.49)];
        [bezierPath addCurveToPoint: CGPointMake(8.47, 13.09) controlPoint1: CGPointMake(14.26, 12.67) controlPoint2: CGPointMake(8.88, 12.67)];
        [bezierPath addCurveToPoint: CGPointMake(8.18, 14.53) controlPoint1: CGPointMake(8.3, 13.27) controlPoint2: CGPointMake(8.18, 13.91)];
        [bezierPath addCurveToPoint: CGPointMake(8.47, 15.98) controlPoint1: CGPointMake(8.18, 15.16) controlPoint2: CGPointMake(8.3, 15.8)];
        [bezierPath addCurveToPoint: CGPointMake(14.67, 15.98) controlPoint1: CGPointMake(8.88, 16.4) controlPoint2: CGPointMake(14.26, 16.4)];
        [bezierPath closePath];
        [bezierPath moveToPoint: CGPointMake(8.67, 5.64)];
        [bezierPath addCurveToPoint: CGPointMake(7.94, 5.29) controlPoint1: CGPointMake(8.67, 5.27) controlPoint2: CGPointMake(8.52, 5.19)];
        [bezierPath addCurveToPoint: CGPointMake(7.77, 5.84) controlPoint1: CGPointMake(7.07, 5.42) controlPoint2: CGPointMake(7.04, 5.54)];
        [bezierPath addCurveToPoint: CGPointMake(8.67, 5.64) controlPoint1: CGPointMake(8.54, 6.16) controlPoint2: CGPointMake(8.67, 6.14)];
        [bezierPath closePath];
        [fillColor setFill];
        [bezierPath fill];
        
        
        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
        [bezier2Path moveToPoint: CGPointMake(5.03, 11.68)];
        [bezier2Path addCurveToPoint: CGPointMake(5.4, 9.81) controlPoint1: CGPointMake(5.03, 10.19) controlPoint2: CGPointMake(5.1, 9.81)];
        [bezier2Path addCurveToPoint: CGPointMake(5.76, 11.68) controlPoint1: CGPointMake(5.69, 9.81) controlPoint2: CGPointMake(5.76, 10.19)];
        [bezier2Path addCurveToPoint: CGPointMake(5.4, 13.54) controlPoint1: CGPointMake(5.76, 13.17) controlPoint2: CGPointMake(5.69, 13.54)];
        [bezier2Path addCurveToPoint: CGPointMake(5.03, 11.68) controlPoint1: CGPointMake(5.1, 13.54) controlPoint2: CGPointMake(5.03, 13.17)];
        [bezier2Path closePath];
        [fillColor setFill];
        [bezier2Path fill];
    }
    
    
    //// layer102
    {
        //// Bezier 3 Drawing
        UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
        [bezier3Path moveToPoint: CGPointMake(13.79, 20.32)];
        [bezier3Path addCurveToPoint: CGPointMake(14.27, 20.35) controlPoint1: CGPointMake(13.96, 20.25) controlPoint2: CGPointMake(14.19, 20.27)];
        [bezier3Path addCurveToPoint: CGPointMake(13.94, 20.47) controlPoint1: CGPointMake(14.37, 20.42) controlPoint2: CGPointMake(14.22, 20.5)];
        [bezier3Path addCurveToPoint: CGPointMake(13.79, 20.32) controlPoint1: CGPointMake(13.66, 20.47) controlPoint2: CGPointMake(13.58, 20.4)];
        [bezier3Path closePath];
        [fillColor2 setFill];
        [bezier3Path fill];
        
        
        //// Bezier 4 Drawing
        UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
        [bezier4Path moveToPoint: CGPointMake(16.44, 20.32)];
        [bezier4Path addCurveToPoint: CGPointMake(16.79, 20.32) controlPoint1: CGPointMake(16.54, 20.25) controlPoint2: CGPointMake(16.69, 20.25)];
        [bezier4Path addCurveToPoint: CGPointMake(16.62, 20.5) controlPoint1: CGPointMake(16.87, 20.42) controlPoint2: CGPointMake(16.79, 20.5)];
        [bezier4Path addCurveToPoint: CGPointMake(16.44, 20.32) controlPoint1: CGPointMake(16.44, 20.5) controlPoint2: CGPointMake(16.36, 20.42)];
        [bezier4Path closePath];
        [fillColor2 setFill];
        [bezier4Path fill];
        
        
        //// Bezier 5 Drawing
        UIBezierPath* bezier5Path = [UIBezierPath bezierPath];
        [bezier5Path moveToPoint: CGPointMake(11.66, 19.69)];
        [bezier5Path addCurveToPoint: CGPointMake(11.77, 19.59) controlPoint1: CGPointMake(11.56, 19.51) controlPoint2: CGPointMake(11.59, 19.49)];
        [bezier5Path addCurveToPoint: CGPointMake(11.97, 19.99) controlPoint1: CGPointMake(12.07, 19.77) controlPoint2: CGPointMake(12.17, 19.99)];
        [bezier5Path addCurveToPoint: CGPointMake(11.66, 19.69) controlPoint1: CGPointMake(11.89, 19.99) controlPoint2: CGPointMake(11.77, 19.87)];
        [bezier5Path closePath];
        [fillColor2 setFill];
        [bezier5Path fill];
        
        
        //// Bezier 6 Drawing
        UIBezierPath* bezier6Path = [UIBezierPath bezierPath];
        [bezier6Path moveToPoint: CGPointMake(18.38, 19.89)];
        [bezier6Path addCurveToPoint: CGPointMake(18.84, 19.46) controlPoint1: CGPointMake(18.38, 19.84) controlPoint2: CGPointMake(18.59, 19.64)];
        [bezier6Path addCurveToPoint: CGPointMake(18.91, 19.56) controlPoint1: CGPointMake(19.22, 19.13) controlPoint2: CGPointMake(19.24, 19.16)];
        [bezier6Path addCurveToPoint: CGPointMake(18.38, 19.89) controlPoint1: CGPointMake(18.59, 19.97) controlPoint2: CGPointMake(18.38, 20.09)];
        [bezier6Path closePath];
        [fillColor2 setFill];
        [bezier6Path fill];
        
        
        //// Bezier 7 Drawing
        UIBezierPath* bezier7Path = [UIBezierPath bezierPath];
        [bezier7Path moveToPoint: CGPointMake(3.05, 18.04)];
        [bezier7Path addCurveToPoint: CGPointMake(3.41, 18.04) controlPoint1: CGPointMake(3.15, 17.97) controlPoint2: CGPointMake(3.3, 17.97)];
        [bezier7Path addCurveToPoint: CGPointMake(3.23, 18.22) controlPoint1: CGPointMake(3.48, 18.14) controlPoint2: CGPointMake(3.41, 18.22)];
        [bezier7Path addCurveToPoint: CGPointMake(3.05, 18.04) controlPoint1: CGPointMake(3.05, 18.22) controlPoint2: CGPointMake(2.98, 18.14)];
        [bezier7Path closePath];
        [fillColor2 setFill];
        [bezier7Path fill];
        
        
        //// Bezier 8 Drawing
        UIBezierPath* bezier8Path = [UIBezierPath bezierPath];
        [bezier8Path moveToPoint: CGPointMake(8.38, 17.16)];
        [bezier8Path addCurveToPoint: CGPointMake(8.48, 17.05) controlPoint1: CGPointMake(8.28, 16.98) controlPoint2: CGPointMake(8.31, 16.95)];
        [bezier8Path addCurveToPoint: CGPointMake(8.68, 17.46) controlPoint1: CGPointMake(8.79, 17.23) controlPoint2: CGPointMake(8.89, 17.46)];
        [bezier8Path addCurveToPoint: CGPointMake(8.38, 17.16) controlPoint1: CGPointMake(8.61, 17.46) controlPoint2: CGPointMake(8.48, 17.33)];
        [bezier8Path closePath];
        [fillColor2 setFill];
        [bezier8Path fill];
        
        
        //// Bezier 9 Drawing
        UIBezierPath* bezier9Path = [UIBezierPath bezierPath];
        [bezier9Path moveToPoint: CGPointMake(19.14, 15.69)];
        [bezier9Path addCurveToPoint: CGPointMake(19.32, 15.51) controlPoint1: CGPointMake(19.14, 15.51) controlPoint2: CGPointMake(19.22, 15.43)];
        [bezier9Path addCurveToPoint: CGPointMake(19.32, 15.86) controlPoint1: CGPointMake(19.39, 15.61) controlPoint2: CGPointMake(19.39, 15.76)];
        [bezier9Path addCurveToPoint: CGPointMake(19.14, 15.69) controlPoint1: CGPointMake(19.22, 15.94) controlPoint2: CGPointMake(19.14, 15.86)];
        [bezier9Path closePath];
        [fillColor2 setFill];
        [bezier9Path fill];
        
        
        //// Bezier 10 Drawing
        UIBezierPath* bezier10Path = [UIBezierPath bezierPath];
        [bezier10Path moveToPoint: CGPointMake(15.61, 14.17)];
        [bezier10Path addCurveToPoint: CGPointMake(15.78, 13.99) controlPoint1: CGPointMake(15.61, 13.99) controlPoint2: CGPointMake(15.68, 13.91)];
        [bezier10Path addCurveToPoint: CGPointMake(15.78, 14.34) controlPoint1: CGPointMake(15.86, 14.09) controlPoint2: CGPointMake(15.86, 14.24)];
        [bezier10Path addCurveToPoint: CGPointMake(15.61, 14.17) controlPoint1: CGPointMake(15.68, 14.42) controlPoint2: CGPointMake(15.61, 14.34)];
        [bezier10Path closePath];
        [fillColor2 setFill];
        [bezier10Path fill];
        
        
        //// Bezier 11 Drawing
        UIBezierPath* bezier11Path = [UIBezierPath bezierPath];
        [bezier11Path moveToPoint: CGPointMake(19.97, 12.14)];
        [bezier11Path addCurveToPoint: CGPointMake(20.08, 11.58) controlPoint1: CGPointMake(19.97, 11.51) controlPoint2: CGPointMake(20.03, 11.25)];
        [bezier11Path addCurveToPoint: CGPointMake(20.08, 12.72) controlPoint1: CGPointMake(20.13, 11.89) controlPoint2: CGPointMake(20.13, 12.39)];
        [bezier11Path addCurveToPoint: CGPointMake(19.97, 12.14) controlPoint1: CGPointMake(20.03, 13.03) controlPoint2: CGPointMake(19.97, 12.77)];
        [bezier11Path closePath];
        [fillColor2 setFill];
        [bezier11Path fill];
        
        
        //// Bezier 12 Drawing
        UIBezierPath* bezier12Path = [UIBezierPath bezierPath];
        [bezier12Path moveToPoint: CGPointMake(8.66, 12.65)];
        [bezier12Path addCurveToPoint: CGPointMake(8.94, 12.39) controlPoint1: CGPointMake(8.73, 12.52) controlPoint2: CGPointMake(8.86, 12.39)];
        [bezier12Path addCurveToPoint: CGPointMake(8.91, 12.65) controlPoint1: CGPointMake(9.01, 12.39) controlPoint2: CGPointMake(8.99, 12.52)];
        [bezier12Path addCurveToPoint: CGPointMake(8.63, 12.9) controlPoint1: CGPointMake(8.84, 12.8) controlPoint2: CGPointMake(8.71, 12.9)];
        [bezier12Path addCurveToPoint: CGPointMake(8.66, 12.65) controlPoint1: CGPointMake(8.56, 12.9) controlPoint2: CGPointMake(8.58, 12.8)];
        [bezier12Path closePath];
        [fillColor2 setFill];
        [bezier12Path fill];
        
        
        //// Bezier 13 Drawing
        UIBezierPath* bezier13Path = [UIBezierPath bezierPath];
        [bezier13Path moveToPoint: CGPointMake(0.55, 10.57)];
        [bezier13Path addCurveToPoint: CGPointMake(0.65, 10.47) controlPoint1: CGPointMake(0.45, 10.39) controlPoint2: CGPointMake(0.48, 10.37)];
        [bezier13Path addCurveToPoint: CGPointMake(0.96, 10.77) controlPoint1: CGPointMake(0.83, 10.57) controlPoint2: CGPointMake(0.96, 10.7)];
        [bezier13Path addCurveToPoint: CGPointMake(0.55, 10.57) controlPoint1: CGPointMake(0.96, 10.98) controlPoint2: CGPointMake(0.73, 10.87)];
        [bezier13Path closePath];
        [fillColor2 setFill];
        [bezier13Path fill];
        
        
        //// Bezier 14 Drawing
        UIBezierPath* bezier14Path = [UIBezierPath bezierPath];
        [bezier14Path moveToPoint: CGPointMake(12.83, 7.33)];
        [bezier14Path addCurveToPoint: CGPointMake(13.08, 6.31) controlPoint1: CGPointMake(12.83, 6.34) controlPoint2: CGPointMake(12.9, 6.04)];
        [bezier14Path addCurveToPoint: CGPointMake(13.33, 7.33) controlPoint1: CGPointMake(13.21, 6.52) controlPoint2: CGPointMake(13.33, 6.97)];
        [bezier14Path addCurveToPoint: CGPointMake(13.08, 8.34) controlPoint1: CGPointMake(13.33, 7.68) controlPoint2: CGPointMake(13.21, 8.14)];
        [bezier14Path addCurveToPoint: CGPointMake(12.83, 7.33) controlPoint1: CGPointMake(12.9, 8.62) controlPoint2: CGPointMake(12.83, 8.32)];
        [bezier14Path closePath];
        [fillColor2 setFill];
        [bezier14Path fill];
        
        
        //// Bezier 15 Drawing
        UIBezierPath* bezier15Path = [UIBezierPath bezierPath];
        [bezier15Path moveToPoint: CGPointMake(0.07, 7.07)];
        [bezier15Path addCurveToPoint: CGPointMake(0.35, 6.82) controlPoint1: CGPointMake(0.15, 6.95) controlPoint2: CGPointMake(0.27, 6.82)];
        [bezier15Path addCurveToPoint: CGPointMake(0.32, 7.07) controlPoint1: CGPointMake(0.42, 6.82) controlPoint2: CGPointMake(0.4, 6.95)];
        [bezier15Path addCurveToPoint: CGPointMake(0.05, 7.33) controlPoint1: CGPointMake(0.25, 7.23) controlPoint2: CGPointMake(0.12, 7.33)];
        [bezier15Path addCurveToPoint: CGPointMake(0.07, 7.07) controlPoint1: CGPointMake(-0.03, 7.33) controlPoint2: CGPointMake(-0, 7.23)];
        [bezier15Path closePath];
        [fillColor2 setFill];
        [bezier15Path fill];
        
        
        //// Bezier 16 Drawing
        UIBezierPath* bezier16Path = [UIBezierPath bezierPath];
        [bezier16Path moveToPoint: CGPointMake(6.59, 6.39)];
        [bezier16Path addCurveToPoint: CGPointMake(6.94, 6.39) controlPoint1: CGPointMake(6.69, 6.31) controlPoint2: CGPointMake(6.84, 6.31)];
        [bezier16Path addCurveToPoint: CGPointMake(6.76, 6.57) controlPoint1: CGPointMake(7.02, 6.49) controlPoint2: CGPointMake(6.94, 6.57)];
        [bezier16Path addCurveToPoint: CGPointMake(6.59, 6.39) controlPoint1: CGPointMake(6.59, 6.57) controlPoint2: CGPointMake(6.51, 6.49)];
        [bezier16Path closePath];
        [fillColor2 setFill];
        [bezier16Path fill];
        
        
        //// Bezier 17 Drawing
        UIBezierPath* bezier17Path = [UIBezierPath bezierPath];
        [bezier17Path moveToPoint: CGPointMake(7.77, 3.27)];
        [bezier17Path addCurveToPoint: CGPointMake(7.95, 3.1) controlPoint1: CGPointMake(7.77, 3.1) controlPoint2: CGPointMake(7.85, 3.02)];
        [bezier17Path addCurveToPoint: CGPointMake(7.95, 3.45) controlPoint1: CGPointMake(8.03, 3.2) controlPoint2: CGPointMake(8.03, 3.35)];
        [bezier17Path addCurveToPoint: CGPointMake(7.77, 3.27) controlPoint1: CGPointMake(7.85, 3.53) controlPoint2: CGPointMake(7.77, 3.45)];
        [bezier17Path closePath];
        [fillColor2 setFill];
        [bezier17Path fill];
        
        
        //// Bezier 18 Drawing
        UIBezierPath* bezier18Path = [UIBezierPath bezierPath];
        [bezier18Path moveToPoint: CGPointMake(7.77, 2.01)];
        [bezier18Path addCurveToPoint: CGPointMake(7.95, 1.83) controlPoint1: CGPointMake(7.77, 1.83) controlPoint2: CGPointMake(7.85, 1.75)];
        [bezier18Path addCurveToPoint: CGPointMake(7.95, 2.18) controlPoint1: CGPointMake(8.03, 1.93) controlPoint2: CGPointMake(8.03, 2.08)];
        [bezier18Path addCurveToPoint: CGPointMake(7.77, 2.01) controlPoint1: CGPointMake(7.85, 2.26) controlPoint2: CGPointMake(7.77, 2.18)];
        [bezier18Path closePath];
        [fillColor2 setFill];
        [bezier18Path fill];
        
        
        //// Bezier 19 Drawing
        UIBezierPath* bezier19Path = [UIBezierPath bezierPath];
        [bezier19Path moveToPoint: CGPointMake(18.64, 2.01)];
        [bezier19Path addCurveToPoint: CGPointMake(18.81, 1.83) controlPoint1: CGPointMake(18.64, 1.83) controlPoint2: CGPointMake(18.71, 1.75)];
        [bezier19Path addCurveToPoint: CGPointMake(18.81, 2.18) controlPoint1: CGPointMake(18.89, 1.93) controlPoint2: CGPointMake(18.89, 2.08)];
        [bezier19Path addCurveToPoint: CGPointMake(18.64, 2.01) controlPoint1: CGPointMake(18.71, 2.26) controlPoint2: CGPointMake(18.64, 2.18)];
        [bezier19Path closePath];
        [fillColor2 setFill];
        [bezier19Path fill];
        
        
        //// Bezier 20 Drawing
        UIBezierPath* bezier20Path = [UIBezierPath bezierPath];
        [bezier20Path moveToPoint: CGPointMake(7.85, 0.82)];
        [bezier20Path addCurveToPoint: CGPointMake(8.2, 0.82) controlPoint1: CGPointMake(7.95, 0.74) controlPoint2: CGPointMake(8.1, 0.74)];
        [bezier20Path addCurveToPoint: CGPointMake(8.03, 0.99) controlPoint1: CGPointMake(8.28, 0.92) controlPoint2: CGPointMake(8.2, 0.99)];
        [bezier20Path addCurveToPoint: CGPointMake(7.85, 0.82) controlPoint1: CGPointMake(7.85, 0.99) controlPoint2: CGPointMake(7.77, 0.92)];
        [bezier20Path closePath];
        [fillColor2 setFill];
        [bezier20Path fill];
        
        
        //// Bezier 21 Drawing
        UIBezierPath* bezier21Path = [UIBezierPath bezierPath];
        [bezier21Path moveToPoint: CGPointMake(16.69, 0.06)];
        [bezier21Path addCurveToPoint: CGPointMake(17.04, 0.06) controlPoint1: CGPointMake(16.79, -0.02) controlPoint2: CGPointMake(16.94, -0.02)];
        [bezier21Path addCurveToPoint: CGPointMake(16.87, 0.23) controlPoint1: CGPointMake(17.12, 0.16) controlPoint2: CGPointMake(17.04, 0.23)];
        [bezier21Path addCurveToPoint: CGPointMake(16.69, 0.06) controlPoint1: CGPointMake(16.69, 0.23) controlPoint2: CGPointMake(16.62, 0.16)];
        [bezier21Path closePath];
        [fillColor2 setFill];
        [bezier21Path fill];
    }
    
    
    //// layer103
    {
        //// Bezier 22 Drawing
        UIBezierPath* bezier22Path = [UIBezierPath bezierPath];
        [bezier22Path moveToPoint: CGPointMake(18.23, 19.72)];
        [bezier22Path addCurveToPoint: CGPointMake(18.48, 19.33) controlPoint1: CGPointMake(18.23, 19.33) controlPoint2: CGPointMake(18.33, 19.17)];
        [bezier22Path addCurveToPoint: CGPointMake(18.48, 20.1) controlPoint1: CGPointMake(18.58, 19.55) controlPoint2: CGPointMake(18.58, 19.88)];
        [bezier22Path addCurveToPoint: CGPointMake(18.23, 19.72) controlPoint1: CGPointMake(18.33, 20.27) controlPoint2: CGPointMake(18.23, 20.1)];
        [bezier22Path closePath];
        [fillColor3 setFill];
        [bezier22Path fill];
        
        
        //// Bezier 23 Drawing
        UIBezierPath* bezier23Path = [UIBezierPath bezierPath];
        [bezier23Path moveToPoint: CGPointMake(19.36, 16.42)];
        [bezier23Path addCurveToPoint: CGPointMake(19.53, 15.75) controlPoint1: CGPointMake(19.36, 15.64) controlPoint2: CGPointMake(19.43, 15.37)];
        [bezier23Path addCurveToPoint: CGPointMake(19.53, 17.13) controlPoint1: CGPointMake(19.6, 16.08) controlPoint2: CGPointMake(19.6, 16.75)];
        [bezier23Path addCurveToPoint: CGPointMake(19.36, 16.42) controlPoint1: CGPointMake(19.43, 17.46) controlPoint2: CGPointMake(19.36, 17.19)];
        [bezier23Path closePath];
        [fillColor3 setFill];
        [bezier23Path fill];
        
        
        //// Bezier 24 Drawing
        UIBezierPath* bezier24Path = [UIBezierPath bezierPath];
        [bezier24Path moveToPoint: CGPointMake(19.36, 9.81)];
        [bezier24Path addCurveToPoint: CGPointMake(19.53, 9.15) controlPoint1: CGPointMake(19.36, 9.04) controlPoint2: CGPointMake(19.43, 8.76)];
        [bezier24Path addCurveToPoint: CGPointMake(19.53, 10.52) controlPoint1: CGPointMake(19.6, 9.48) controlPoint2: CGPointMake(19.6, 10.14)];
        [bezier24Path addCurveToPoint: CGPointMake(19.36, 9.81) controlPoint1: CGPointMake(19.43, 10.85) controlPoint2: CGPointMake(19.36, 10.58)];
        [bezier24Path closePath];
        [fillColor3 setFill];
        [bezier24Path fill];
        
        
        //// Bezier 25 Drawing
        UIBezierPath* bezier25Path = [UIBezierPath bezierPath];
        [bezier25Path moveToPoint: CGPointMake(0.04, 0.61)];
        [bezier25Path addCurveToPoint: CGPointMake(0.53, 0.61) controlPoint1: CGPointMake(0.18, 0.45) controlPoint2: CGPointMake(0.39, 0.45)];
        [bezier25Path addCurveToPoint: CGPointMake(0.29, 1) controlPoint1: CGPointMake(0.64, 0.83) controlPoint2: CGPointMake(0.53, 1)];
        [bezier25Path addCurveToPoint: CGPointMake(0.04, 0.61) controlPoint1: CGPointMake(0.04, 1) controlPoint2: CGPointMake(-0.06, 0.83)];
        [bezier25Path closePath];
        [fillColor3 setFill];
        [bezier25Path fill];
        
        
        //// Bezier 26 Drawing
        UIBezierPath* bezier26Path = [UIBezierPath bezierPath];
        [bezier26Path moveToPoint: CGPointMake(9.79, 0.45)];
        [bezier26Path addCurveToPoint: CGPointMake(10.03, 0.06) controlPoint1: CGPointMake(9.79, 0.06) controlPoint2: CGPointMake(9.89, -0.1)];
        [bezier26Path addCurveToPoint: CGPointMake(10.03, 0.83) controlPoint1: CGPointMake(10.14, 0.28) controlPoint2: CGPointMake(10.14, 0.61)];
        [bezier26Path addCurveToPoint: CGPointMake(9.79, 0.45) controlPoint1: CGPointMake(9.89, 1) controlPoint2: CGPointMake(9.79, 0.83)];
        [bezier26Path closePath];
        [fillColor3 setFill];
        [bezier26Path fill];
    }
    
    
    //// layer104
    {
        //// Bezier 27 Drawing
        UIBezierPath* bezier27Path = [UIBezierPath bezierPath];
        [bezier27Path moveToPoint: CGPointMake(19.88, 19.93)];
        [bezier27Path addCurveToPoint: CGPointMake(20.03, 19.72) controlPoint1: CGPointMake(19.88, 19.54) controlPoint2: CGPointMake(19.96, 19.44)];
        [bezier27Path addCurveToPoint: CGPointMake(20.01, 20.39) controlPoint1: CGPointMake(20.1, 19.97) controlPoint2: CGPointMake(20.08, 20.28)];
        [bezier27Path addCurveToPoint: CGPointMake(19.88, 19.93) controlPoint1: CGPointMake(19.93, 20.53) controlPoint2: CGPointMake(19.86, 20.32)];
        [bezier27Path closePath];
        [fillColor4 setFill];
        [bezier27Path fill];
        
        
        //// Bezier 28 Drawing
        UIBezierPath* bezier28Path = [UIBezierPath bezierPath];
        [bezier28Path moveToPoint: CGPointMake(0.23, 12.37)];
        [bezier28Path addCurveToPoint: CGPointMake(0.4, 12.12) controlPoint1: CGPointMake(0.23, 12.12) controlPoint2: CGPointMake(0.3, 12.01)];
        [bezier28Path addCurveToPoint: CGPointMake(0.4, 12.62) controlPoint1: CGPointMake(0.48, 12.26) controlPoint2: CGPointMake(0.48, 12.47)];
        [bezier28Path addCurveToPoint: CGPointMake(0.23, 12.37) controlPoint1: CGPointMake(0.3, 12.72) controlPoint2: CGPointMake(0.23, 12.62)];
        [bezier28Path closePath];
        [fillColor4 setFill];
        [bezier28Path fill];
        
        
        //// Bezier 29 Drawing
        UIBezierPath* bezier29Path = [UIBezierPath bezierPath];
        [bezier29Path moveToPoint: CGPointMake(2.04, 6.47)];
        [bezier29Path addCurveToPoint: CGPointMake(2.39, 6.47) controlPoint1: CGPointMake(2.14, 6.36) controlPoint2: CGPointMake(2.29, 6.36)];
        [bezier29Path addCurveToPoint: CGPointMake(2.22, 6.71) controlPoint1: CGPointMake(2.46, 6.61) controlPoint2: CGPointMake(2.39, 6.71)];
        [bezier29Path addCurveToPoint: CGPointMake(2.04, 6.47) controlPoint1: CGPointMake(2.04, 6.71) controlPoint2: CGPointMake(1.97, 6.61)];
        [bezier29Path closePath];
        [fillColor4 setFill];
        [bezier29Path fill];
        
        
        //// Bezier 30 Drawing
        UIBezierPath* bezier30Path = [UIBezierPath bezierPath];
        [bezier30Path moveToPoint: CGPointMake(10.99, 5.76)];
        [bezier30Path addCurveToPoint: CGPointMake(13.22, 5.76) controlPoint1: CGPointMake(11.63, 5.69) controlPoint2: CGPointMake(12.65, 5.69)];
        [bezier30Path addCurveToPoint: CGPointMake(12.03, 5.87) controlPoint1: CGPointMake(13.79, 5.83) controlPoint2: CGPointMake(13.27, 5.87)];
        [bezier30Path addCurveToPoint: CGPointMake(10.99, 5.76) controlPoint1: CGPointMake(10.81, 5.87) controlPoint2: CGPointMake(10.34, 5.83)];
        [bezier30Path closePath];
        [fillColor4 setFill];
        [bezier30Path fill];
        
        
        //// Bezier 31 Drawing
        UIBezierPath* bezier31Path = [UIBezierPath bezierPath];
        [bezier31Path moveToPoint: CGPointMake(0.78, 4.24)];
        [bezier31Path addCurveToPoint: CGPointMake(0.9, 3.82) controlPoint1: CGPointMake(0.78, 3.75) controlPoint2: CGPointMake(0.82, 3.57)];
        [bezier31Path addCurveToPoint: CGPointMake(0.9, 4.7) controlPoint1: CGPointMake(0.95, 4.03) controlPoint2: CGPointMake(0.95, 4.45)];
        [bezier31Path addCurveToPoint: CGPointMake(0.78, 4.24) controlPoint1: CGPointMake(0.82, 4.91) controlPoint2: CGPointMake(0.78, 4.74)];
        [bezier31Path closePath];
        [fillColor4 setFill];
        [bezier31Path fill];
        
        
        //// Bezier 32 Drawing
        UIBezierPath* bezier32Path = [UIBezierPath bezierPath];
        [bezier32Path moveToPoint: CGPointMake(0, 4.03)];
        [bezier32Path addCurveToPoint: CGPointMake(0.15, 3.82) controlPoint1: CGPointMake(0, 3.64) controlPoint2: CGPointMake(0.08, 3.53)];
        [bezier32Path addCurveToPoint: CGPointMake(0.13, 4.49) controlPoint1: CGPointMake(0.23, 4.06) controlPoint2: CGPointMake(0.2, 4.38)];
        [bezier32Path addCurveToPoint: CGPointMake(0, 4.03) controlPoint1: CGPointMake(0.05, 4.63) controlPoint2: CGPointMake(-0.02, 4.42)];
        [bezier32Path closePath];
        [fillColor4 setFill];
        [bezier32Path fill];
        
        
        //// Bezier 33 Drawing
        UIBezierPath* bezier33Path = [UIBezierPath bezierPath];
        [bezier33Path moveToPoint: CGPointMake(8.55, 0.35)];
        [bezier33Path addCurveToPoint: CGPointMake(8.83, 0) controlPoint1: CGPointMake(8.63, 0.18) controlPoint2: CGPointMake(8.75, 0)];
        [bezier33Path addCurveToPoint: CGPointMake(8.8, 0.35) controlPoint1: CGPointMake(8.9, 0) controlPoint2: CGPointMake(8.87, 0.18)];
        [bezier33Path addCurveToPoint: CGPointMake(8.53, 0.71) controlPoint1: CGPointMake(8.73, 0.57) controlPoint2: CGPointMake(8.6, 0.71)];
        [bezier33Path addCurveToPoint: CGPointMake(8.55, 0.35) controlPoint1: CGPointMake(8.45, 0.71) controlPoint2: CGPointMake(8.48, 0.57)];
        [bezier33Path closePath];
        [fillColor4 setFill];
        [bezier33Path fill];
    }
    
    
    //// layer105
    {
        //// Bezier 34 Drawing
        UIBezierPath* bezier34Path = [UIBezierPath bezierPath];
        [bezier34Path moveToPoint: CGPointMake(12.6, 19.35)];
        [bezier34Path addCurveToPoint: CGPointMake(12.94, 19.35) controlPoint1: CGPointMake(12.7, 19.26) controlPoint2: CGPointMake(12.84, 19.26)];
        [bezier34Path addCurveToPoint: CGPointMake(12.77, 19.58) controlPoint1: CGPointMake(13.01, 19.49) controlPoint2: CGPointMake(12.94, 19.58)];
        [bezier34Path addCurveToPoint: CGPointMake(12.6, 19.35) controlPoint1: CGPointMake(12.6, 19.58) controlPoint2: CGPointMake(12.53, 19.49)];
        [bezier34Path closePath];
        [fillColor5 setFill];
        [bezier34Path fill];
        
        
        //// Bezier 35 Drawing
        UIBezierPath* bezier35Path = [UIBezierPath bezierPath];
        [bezier35Path moveToPoint: CGPointMake(19.28, 16.64)];
        [bezier35Path addCurveToPoint: CGPointMake(19.45, 16.41) controlPoint1: CGPointMake(19.28, 16.41) controlPoint2: CGPointMake(19.35, 16.31)];
        [bezier35Path addCurveToPoint: CGPointMake(19.45, 16.87) controlPoint1: CGPointMake(19.52, 16.54) controlPoint2: CGPointMake(19.52, 16.74)];
        [bezier35Path addCurveToPoint: CGPointMake(19.28, 16.64) controlPoint1: CGPointMake(19.35, 16.96) controlPoint2: CGPointMake(19.28, 16.87)];
        [bezier35Path closePath];
        [fillColor5 setFill];
        [bezier35Path fill];
        
        
        //// Bezier 36 Drawing
        UIBezierPath* bezier36Path = [UIBezierPath bezierPath];
        [bezier36Path moveToPoint: CGPointMake(18.58, 15.46)];
        [bezier36Path addCurveToPoint: CGPointMake(18.72, 15.26) controlPoint1: CGPointMake(18.58, 15.1) controlPoint2: CGPointMake(18.65, 15)];
        [bezier36Path addCurveToPoint: CGPointMake(18.7, 15.88) controlPoint1: CGPointMake(18.8, 15.49) controlPoint2: CGPointMake(18.77, 15.79)];
        [bezier36Path addCurveToPoint: CGPointMake(18.58, 15.46) controlPoint1: CGPointMake(18.63, 16.02) controlPoint2: CGPointMake(18.55, 15.82)];
        [bezier36Path closePath];
        [fillColor5 setFill];
        [bezier36Path fill];
        
        
        //// Bezier 37 Drawing
        UIBezierPath* bezier37Path = [UIBezierPath bezierPath];
        [bezier37Path moveToPoint: CGPointMake(7.59, 14.02)];
        [bezier37Path addCurveToPoint: CGPointMake(7.86, 13.69) controlPoint1: CGPointMake(7.66, 13.85) controlPoint2: CGPointMake(7.78, 13.69)];
        [bezier37Path addCurveToPoint: CGPointMake(7.83, 14.02) controlPoint1: CGPointMake(7.93, 13.69) controlPoint2: CGPointMake(7.9, 13.85)];
        [bezier37Path addCurveToPoint: CGPointMake(7.57, 14.35) controlPoint1: CGPointMake(7.76, 14.21) controlPoint2: CGPointMake(7.64, 14.35)];
        [bezier37Path addCurveToPoint: CGPointMake(7.59, 14.02) controlPoint1: CGPointMake(7.49, 14.35) controlPoint2: CGPointMake(7.52, 14.21)];
        [bezier37Path closePath];
        [fillColor5 setFill];
        [bezier37Path fill];
        
        
        //// Bezier 38 Drawing
        UIBezierPath* bezier38Path = [UIBezierPath bezierPath];
        [bezier38Path moveToPoint: CGPointMake(14.94, 13.36)];
        [bezier38Path addCurveToPoint: CGPointMake(15.11, 13.13) controlPoint1: CGPointMake(14.94, 13.13) controlPoint2: CGPointMake(15.01, 13.04)];
        [bezier38Path addCurveToPoint: CGPointMake(15.11, 13.59) controlPoint1: CGPointMake(15.18, 13.26) controlPoint2: CGPointMake(15.18, 13.46)];
        [bezier38Path addCurveToPoint: CGPointMake(14.94, 13.36) controlPoint1: CGPointMake(15.01, 13.69) controlPoint2: CGPointMake(14.94, 13.59)];
        [bezier38Path closePath];
        [fillColor5 setFill];
        [bezier38Path fill];
        
        
        //// Bezier 39 Drawing
        UIBezierPath* bezier39Path = [UIBezierPath bezierPath];
        [bezier39Path moveToPoint: CGPointMake(18.55, 10.42)];
        [bezier39Path addCurveToPoint: CGPointMake(18.72, 10.19) controlPoint1: CGPointMake(18.55, 10.19) controlPoint2: CGPointMake(18.63, 10.09)];
        [bezier39Path addCurveToPoint: CGPointMake(18.72, 10.65) controlPoint1: CGPointMake(18.8, 10.32) controlPoint2: CGPointMake(18.8, 10.51)];
        [bezier39Path addCurveToPoint: CGPointMake(18.55, 10.42) controlPoint1: CGPointMake(18.63, 10.74) controlPoint2: CGPointMake(18.55, 10.65)];
        [bezier39Path closePath];
        [fillColor5 setFill];
        [bezier39Path fill];
        
        
        //// Bezier 40 Drawing
        UIBezierPath* bezier40Path = [UIBezierPath bezierPath];
        [bezier40Path moveToPoint: CGPointMake(7.81, 6.09)];
        [bezier40Path addCurveToPoint: CGPointMake(7.9, 5.96) controlPoint1: CGPointMake(7.71, 5.87) controlPoint2: CGPointMake(7.73, 5.83)];
        [bezier40Path addCurveToPoint: CGPointMake(8.1, 6.49) controlPoint1: CGPointMake(8.19, 6.19) controlPoint2: CGPointMake(8.29, 6.49)];
        [bezier40Path addCurveToPoint: CGPointMake(7.81, 6.09) controlPoint1: CGPointMake(8.02, 6.49) controlPoint2: CGPointMake(7.9, 6.32)];
        [bezier40Path closePath];
        [fillColor5 setFill];
        [bezier40Path fill];
        
        
        //// Bezier 41 Drawing
        UIBezierPath* bezier41Path = [UIBezierPath bezierPath];
        [bezier41Path moveToPoint: CGPointMake(0, 1.9)];
        [bezier41Path addCurveToPoint: CGPointMake(0.17, 1.67) controlPoint1: CGPointMake(0, 1.67) controlPoint2: CGPointMake(0.07, 1.58)];
        [bezier41Path addCurveToPoint: CGPointMake(0.17, 2.13) controlPoint1: CGPointMake(0.24, 1.81) controlPoint2: CGPointMake(0.24, 2)];
        [bezier41Path addCurveToPoint: CGPointMake(0, 1.9) controlPoint1: CGPointMake(0.07, 2.23) controlPoint2: CGPointMake(0, 2.13)];
        [bezier41Path closePath];
        [fillColor5 setFill];
        [bezier41Path fill];
        
        
        //// Bezier 42 Drawing
        UIBezierPath* bezier42Path = [UIBezierPath bezierPath];
        [bezier42Path moveToPoint: CGPointMake(0, 0.27)];
        [bezier42Path addCurveToPoint: CGPointMake(0.17, 0.04) controlPoint1: CGPointMake(0, 0.04) controlPoint2: CGPointMake(0.07, -0.06)];
        [bezier42Path addCurveToPoint: CGPointMake(0.17, 0.5) controlPoint1: CGPointMake(0.24, 0.17) controlPoint2: CGPointMake(0.24, 0.37)];
        [bezier42Path addCurveToPoint: CGPointMake(0, 0.27) controlPoint1: CGPointMake(0.07, 0.59) controlPoint2: CGPointMake(0, 0.5)];
        [bezier42Path closePath];
        [fillColor5 setFill];
        [bezier42Path fill];
    }
    
    
    //// layer106
    {
        //// Bezier 43 Drawing
        UIBezierPath* bezier43Path = [UIBezierPath bezierPath];
        [bezier43Path moveToPoint: CGPointMake(9.89, 20.11)];
        [bezier43Path addCurveToPoint: CGPointMake(10.17, 19.82) controlPoint1: CGPointMake(9.97, 19.96) controlPoint2: CGPointMake(10.09, 19.82)];
        [bezier43Path addCurveToPoint: CGPointMake(10.14, 20.11) controlPoint1: CGPointMake(10.24, 19.82) controlPoint2: CGPointMake(10.22, 19.96)];
        [bezier43Path addCurveToPoint: CGPointMake(9.87, 20.4) controlPoint1: CGPointMake(10.07, 20.28) controlPoint2: CGPointMake(9.94, 20.4)];
        [bezier43Path addCurveToPoint: CGPointMake(9.89, 20.11) controlPoint1: CGPointMake(9.79, 20.4) controlPoint2: CGPointMake(9.82, 20.28)];
        [bezier43Path closePath];
        [fillColor6 setFill];
        [bezier43Path fill];
        
        
        //// Bezier 44 Drawing
        UIBezierPath* bezier44Path = [UIBezierPath bezierPath];
        [bezier44Path moveToPoint: CGPointMake(14.23, 19.33)];
        [bezier44Path addCurveToPoint: CGPointMake(14.7, 19.36) controlPoint1: CGPointMake(14.4, 19.24) controlPoint2: CGPointMake(14.63, 19.27)];
        [bezier44Path addCurveToPoint: CGPointMake(14.38, 19.5) controlPoint1: CGPointMake(14.8, 19.45) controlPoint2: CGPointMake(14.65, 19.53)];
        [bezier44Path addCurveToPoint: CGPointMake(14.23, 19.33) controlPoint1: CGPointMake(14.1, 19.5) controlPoint2: CGPointMake(14.03, 19.42)];
        [bezier44Path closePath];
        [fillColor6 setFill];
        [bezier44Path fill];
        
        
        //// Bezier 45 Drawing
        UIBezierPath* bezier45Path = [UIBezierPath bezierPath];
        [bezier45Path moveToPoint: CGPointMake(2.86, 18.9)];
        [bezier45Path addCurveToPoint: CGPointMake(2.96, 18.78) controlPoint1: CGPointMake(2.76, 18.7) controlPoint2: CGPointMake(2.78, 18.67)];
        [bezier45Path addCurveToPoint: CGPointMake(3.16, 19.24) controlPoint1: CGPointMake(3.26, 18.98) controlPoint2: CGPointMake(3.36, 19.24)];
        [bezier45Path addCurveToPoint: CGPointMake(2.86, 18.9) controlPoint1: CGPointMake(3.08, 19.24) controlPoint2: CGPointMake(2.96, 19.1)];
        [bezier45Path closePath];
        [fillColor6 setFill];
        [bezier45Path fill];
        
        
        //// Bezier 46 Drawing
        UIBezierPath* bezier46Path = [UIBezierPath bezierPath];
        [bezier46Path moveToPoint: CGPointMake(19.86, 13.63)];
        [bezier46Path addCurveToPoint: CGPointMake(19.96, 12.71) controlPoint1: CGPointMake(19.86, 12.53) controlPoint2: CGPointMake(19.91, 12.1)];
        [bezier46Path addCurveToPoint: CGPointMake(19.96, 14.72) controlPoint1: CGPointMake(20.01, 13.28) controlPoint2: CGPointMake(20.01, 14.2)];
        [bezier46Path addCurveToPoint: CGPointMake(19.86, 13.63) controlPoint1: CGPointMake(19.91, 15.21) controlPoint2: CGPointMake(19.86, 14.75)];
        [bezier46Path closePath];
        [fillColor6 setFill];
        [bezier46Path fill];
        
        
        //// Bezier 47 Drawing
        UIBezierPath* bezier47Path = [UIBezierPath bezierPath];
        [bezier47Path moveToPoint: CGPointMake(0, 10.03)];
        [bezier47Path addCurveToPoint: CGPointMake(0.18, 9.83) controlPoint1: CGPointMake(0, 9.83) controlPoint2: CGPointMake(0.08, 9.74)];
        [bezier47Path addCurveToPoint: CGPointMake(0.18, 10.23) controlPoint1: CGPointMake(0.25, 9.94) controlPoint2: CGPointMake(0.25, 10.12)];
        [bezier47Path addCurveToPoint: CGPointMake(0, 10.03) controlPoint1: CGPointMake(0.08, 10.32) controlPoint2: CGPointMake(0, 10.23)];
        [bezier47Path closePath];
        [fillColor6 setFill];
        [bezier47Path fill];
        
        
        //// Bezier 48 Drawing
        UIBezierPath* bezier48Path = [UIBezierPath bezierPath];
        [bezier48Path moveToPoint: CGPointMake(1.6, 4.79)];
        [bezier48Path addCurveToPoint: CGPointMake(1.7, 4.67) controlPoint1: CGPointMake(1.5, 4.59) controlPoint2: CGPointMake(1.53, 4.56)];
        [bezier48Path addCurveToPoint: CGPointMake(1.9, 5.14) controlPoint1: CGPointMake(2, 4.88) controlPoint2: CGPointMake(2.1, 5.14)];
        [bezier48Path addCurveToPoint: CGPointMake(1.6, 4.79) controlPoint1: CGPointMake(1.83, 5.14) controlPoint2: CGPointMake(1.7, 4.99)];
        [bezier48Path closePath];
        [fillColor6 setFill];
        [bezier48Path fill];
        
        
        //// Bezier 49 Drawing
        UIBezierPath* bezier49Path = [UIBezierPath bezierPath];
        [bezier49Path moveToPoint: CGPointMake(18.89, 0.18)];
        [bezier49Path addCurveToPoint: CGPointMake(18.99, 0.07) controlPoint1: CGPointMake(18.79, -0.02) controlPoint2: CGPointMake(18.81, -0.05)];
        [bezier49Path addCurveToPoint: CGPointMake(19.29, 0.41) controlPoint1: CGPointMake(19.16, 0.18) controlPoint2: CGPointMake(19.29, 0.33)];
        [bezier49Path addCurveToPoint: CGPointMake(18.89, 0.18) controlPoint1: CGPointMake(19.29, 0.64) controlPoint2: CGPointMake(19.06, 0.53)];
        [bezier49Path closePath];
        [fillColor6 setFill];
        [bezier49Path fill];
    }
    
    
    //// layer107
    {
        //// Bezier 50 Drawing
        UIBezierPath* bezier50Path = [UIBezierPath bezierPath];
        [bezier50Path moveToPoint: CGPointMake(19.79, 19.73)];
        [bezier50Path addCurveToPoint: CGPointMake(20.07, 19.47) controlPoint1: CGPointMake(19.86, 19.6) controlPoint2: CGPointMake(19.99, 19.47)];
        [bezier50Path addCurveToPoint: CGPointMake(20.04, 19.73) controlPoint1: CGPointMake(20.14, 19.47) controlPoint2: CGPointMake(20.12, 19.6)];
        [bezier50Path addCurveToPoint: CGPointMake(19.76, 20) controlPoint1: CGPointMake(19.97, 19.89) controlPoint2: CGPointMake(19.84, 20)];
        [bezier50Path addCurveToPoint: CGPointMake(19.79, 19.73) controlPoint1: CGPointMake(19.68, 20) controlPoint2: CGPointMake(19.71, 19.89)];
        [bezier50Path closePath];
        [fillColor7 setFill];
        [bezier50Path fill];
        
        
        //// Bezier 51 Drawing
        UIBezierPath* bezier51Path = [UIBezierPath bezierPath];
        [bezier51Path moveToPoint: CGPointMake(15.01, 19.55)];
        [bezier51Path addCurveToPoint: CGPointMake(15.5, 19.57) controlPoint1: CGPointMake(15.19, 19.47) controlPoint2: CGPointMake(15.42, 19.49)];
        [bezier51Path addCurveToPoint: CGPointMake(15.17, 19.71) controlPoint1: CGPointMake(15.6, 19.65) controlPoint2: CGPointMake(15.45, 19.73)];
        [bezier51Path addCurveToPoint: CGPointMake(15.01, 19.55) controlPoint1: CGPointMake(14.88, 19.71) controlPoint2: CGPointMake(14.81, 19.63)];
        [bezier51Path closePath];
        [fillColor7 setFill];
        [bezier51Path fill];
        
        
        //// Bezier 52 Drawing
        UIBezierPath* bezier52Path = [UIBezierPath bezierPath];
        [bezier52Path moveToPoint: CGPointMake(17.44, 19.55)];
        [bezier52Path addCurveToPoint: CGPointMake(17.8, 19.55) controlPoint1: CGPointMake(17.54, 19.47) controlPoint2: CGPointMake(17.69, 19.47)];
        [bezier52Path addCurveToPoint: CGPointMake(17.62, 19.73) controlPoint1: CGPointMake(17.87, 19.65) controlPoint2: CGPointMake(17.8, 19.73)];
        [bezier52Path addCurveToPoint: CGPointMake(17.44, 19.55) controlPoint1: CGPointMake(17.44, 19.73) controlPoint2: CGPointMake(17.36, 19.65)];
        [bezier52Path closePath];
        [fillColor7 setFill];
        [bezier52Path fill];
        
        
        //// Bezier 53 Drawing
        UIBezierPath* bezier53Path = [UIBezierPath bezierPath];
        [bezier53Path moveToPoint: CGPointMake(0, 8)];
        [bezier53Path addCurveToPoint: CGPointMake(0.18, 7.81) controlPoint1: CGPointMake(0, 7.81) controlPoint2: CGPointMake(0.08, 7.73)];
        [bezier53Path addCurveToPoint: CGPointMake(0.18, 8.19) controlPoint1: CGPointMake(0.26, 7.92) controlPoint2: CGPointMake(0.26, 8.08)];
        [bezier53Path addCurveToPoint: CGPointMake(0, 8) controlPoint1: CGPointMake(0.08, 8.27) controlPoint2: CGPointMake(0, 8.19)];
        [bezier53Path closePath];
        [fillColor7 setFill];
        [bezier53Path fill];
        
        
        //// Bezier 54 Drawing
        UIBezierPath* bezier54Path = [UIBezierPath bezierPath];
        [bezier54Path moveToPoint: CGPointMake(0.89, 6.13)];
        [bezier54Path addCurveToPoint: CGPointMake(1.17, 5.87) controlPoint1: CGPointMake(0.97, 6) controlPoint2: CGPointMake(1.1, 5.87)];
        [bezier54Path addCurveToPoint: CGPointMake(1.15, 6.13) controlPoint1: CGPointMake(1.25, 5.87) controlPoint2: CGPointMake(1.23, 6)];
        [bezier54Path addCurveToPoint: CGPointMake(0.87, 6.4) controlPoint1: CGPointMake(1.07, 6.29) controlPoint2: CGPointMake(0.94, 6.4)];
        [bezier54Path addCurveToPoint: CGPointMake(0.89, 6.13) controlPoint1: CGPointMake(0.79, 6.4) controlPoint2: CGPointMake(0.82, 6.29)];
        [bezier54Path closePath];
        [fillColor7 setFill];
        [bezier54Path fill];
        
        
        //// Bezier 55 Drawing
        UIBezierPath* bezier55Path = [UIBezierPath bezierPath];
        [bezier55Path moveToPoint: CGPointMake(6.64, 5.6)];
        [bezier55Path addCurveToPoint: CGPointMake(6.82, 5.41) controlPoint1: CGPointMake(6.64, 5.41) controlPoint2: CGPointMake(6.71, 5.33)];
        [bezier55Path addCurveToPoint: CGPointMake(6.82, 5.79) controlPoint1: CGPointMake(6.89, 5.52) controlPoint2: CGPointMake(6.89, 5.68)];
        [bezier55Path addCurveToPoint: CGPointMake(6.64, 5.6) controlPoint1: CGPointMake(6.71, 5.87) controlPoint2: CGPointMake(6.64, 5.79)];
        [bezier55Path closePath];
        [fillColor7 setFill];
        [bezier55Path fill];
        
        
        //// Bezier 56 Drawing
        UIBezierPath* bezier56Path = [UIBezierPath bezierPath];
        [bezier56Path moveToPoint: CGPointMake(11.82, 4.35)];
        [bezier56Path addCurveToPoint: CGPointMake(12.59, 4.35) controlPoint1: CGPointMake(12.05, 4.29) controlPoint2: CGPointMake(12.41, 4.29)];
        [bezier56Path addCurveToPoint: CGPointMake(12.13, 4.48) controlPoint1: CGPointMake(12.74, 4.43) controlPoint2: CGPointMake(12.56, 4.48)];
        [bezier56Path addCurveToPoint: CGPointMake(11.82, 4.35) controlPoint1: CGPointMake(11.72, 4.48) controlPoint2: CGPointMake(11.57, 4.43)];
        [bezier56Path closePath];
        [fillColor7 setFill];
        [bezier56Path fill];
        
        
        //// Bezier 57 Drawing
        UIBezierPath* bezier57Path = [UIBezierPath bezierPath];
        [bezier57Path moveToPoint: CGPointMake(18.89, 1.33)];
        [bezier57Path addCurveToPoint: CGPointMake(19.07, 1.15) controlPoint1: CGPointMake(18.89, 1.15) controlPoint2: CGPointMake(18.97, 1.07)];
        [bezier57Path addCurveToPoint: CGPointMake(19.07, 1.52) controlPoint1: CGPointMake(19.15, 1.25) controlPoint2: CGPointMake(19.15, 1.41)];
        [bezier57Path addCurveToPoint: CGPointMake(18.89, 1.33) controlPoint1: CGPointMake(18.97, 1.6) controlPoint2: CGPointMake(18.89, 1.52)];
        [bezier57Path closePath];
        [fillColor7 setFill];
        [bezier57Path fill];
        
        
        //// Bezier 58 Drawing
        UIBezierPath* bezier58Path = [UIBezierPath bezierPath];
        [bezier58Path moveToPoint: CGPointMake(0.89, 0.27)];
        [bezier58Path addCurveToPoint: CGPointMake(1.17, 0) controlPoint1: CGPointMake(0.97, 0.13) controlPoint2: CGPointMake(1.1, 0)];
        [bezier58Path addCurveToPoint: CGPointMake(1.15, 0.27) controlPoint1: CGPointMake(1.25, 0) controlPoint2: CGPointMake(1.23, 0.13)];
        [bezier58Path addCurveToPoint: CGPointMake(0.87, 0.53) controlPoint1: CGPointMake(1.07, 0.43) controlPoint2: CGPointMake(0.94, 0.53)];
        [bezier58Path addCurveToPoint: CGPointMake(0.89, 0.27) controlPoint1: CGPointMake(0.79, 0.53) controlPoint2: CGPointMake(0.82, 0.43)];
        [bezier58Path closePath];
        [fillColor7 setFill];
        [bezier58Path fill];
    }

}


@end
