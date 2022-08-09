
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "EYMhnmstjq.h"
#pragma mark ---------- 使view根据path路径动画移动
static inline CAKeyframeAnimation * nxLMUsXZnvkHD(UIView *evsYTmPyDceUSja, UIBezierPath *eEIetUwx, CGFloat euehQCvsHxlnBX) {
    CAKeyframeAnimation *ezZDlOcmEuRFUT = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    
    ezZDlOcmEuRFUT.path = [eEIetUwx CGPath];
    ezZDlOcmEuRFUT.removedOnCompletion = false;
    ezZDlOcmEuRFUT.fillMode = kCAFillModeForwards;
    ezZDlOcmEuRFUT.calculationMode = kCAAnimationCubic;
    ezZDlOcmEuRFUT.repeatCount = CGFLOAT_MAX;
    ezZDlOcmEuRFUT.duration = euehQCvsHxlnBX;
    ezZDlOcmEuRFUT.autoreverses = NO;
    
    ezZDlOcmEuRFUT.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [evsYTmPyDceUSja.layer addAnimation:ezZDlOcmEuRFUT forKey:@"animation"];
    return ezZDlOcmEuRFUT;
}
#pragma mark ---------- 颜色变化
static inline void nqsgwFISMp(UIView *evsYTmPyDceUSja, UIColor *eZsbJALNlVya, UIColor *emWMpqYbIlKTCP, CGFloat euehQCvsHxlnBX) {
    
    CABasicAnimation *eIbzshv = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
    eIbzshv.toValue = (__bridge id _Nullable)([emWMpqYbIlKTCP CGColor]);
    eIbzshv.fromValue = (__bridge id _Nullable)([eZsbJALNlVya CGColor]);
    eIbzshv.duration = euehQCvsHxlnBX;
    eIbzshv.autoreverses = NO;
    eIbzshv.fillMode = kCAFillModeForwards;
    eIbzshv.removedOnCompletion = NO;
    eIbzshv.repeatCount = CGFLOAT_MAX;
    [evsYTmPyDceUSja.layer addAnimation:eIbzshv forKey:@"backgroundColor"];
}
#pragma mark ---------- view的放大缩小动画
static inline void nOMXpJxia(UIView *evsYTmPyDceUSja, CGFloat ebxVaMsGCSLODB) {
    evsYTmPyDceUSja.transform = CGAffineTransformMakeScale(ebxVaMsGCSLODB, ebxVaMsGCSLODB);
}

#pragma mark ---------- 设置view的圆角和阴影
static inline void nuzTvtdKDRZU(UIView *evsYTmPyDceUSja, CGFloat ewpIAigrnJakWRadius, CGFloat eWArasECRzUfVmx, CGSize eXAHBZcUK) {
    evsYTmPyDceUSja.layer.shadowColor = UIColor.lightGrayColor.CGColor;
    evsYTmPyDceUSja.layer.borderColor = evsYTmPyDceUSja.layer.shadowColor; // 边框颜色建议和阴影颜色一致
    evsYTmPyDceUSja.layer.borderWidth = 0.000001; // 只要不为0就行
    if (ewpIAigrnJakWRadius) {
        evsYTmPyDceUSja.layer.cornerRadius = ewpIAigrnJakWRadius;
    }
    evsYTmPyDceUSja.layer.shadowOpacity = 0.8;
    if (eWArasECRzUfVmx) {
        evsYTmPyDceUSja.layer.shadowRadius = eWArasECRzUfVmx;
    }
    evsYTmPyDceUSja.layer.shadowOffset = eXAHBZcUK;
}


#pragma mark ---------- 给view画边框并在仍一角添加图案
static inline void nWGfDJr(UIView *evsYTmPyDceUSja, BOOL etdlcLWJs, BOOL enAmpHXhlbDc, BOOL eaDZpjTifJBol, BOOL eDjyBHLVmWTa, NSString *eqLtTAvGBColor, NSString *eqpTzcLJjmftKsg) {
    CGRect evsYTmPyDceUSjaRect = evsYTmPyDceUSja.bounds;
    CGFloat evsYTmPyDceUSjaWidth = CGRectGetWidth(evsYTmPyDceUSjaRect);
    CGFloat eqKciVMfjp = CGRectGetHeight(evsYTmPyDceUSjaRect);
    UIColor *imgColor = [UIColor whiteColor];
    UIColor *lColor = [UIColor blackColor];
    if (eqLtTAvGBColor && eqLtTAvGBColor.length) {
        imgColor = [EYMhnmstjq nWsORqEFbUChPdH:eqLtTAvGBColor];
    }
    if (eqpTzcLJjmftKsg && eqpTzcLJjmftKsg.length) {
        lColor = [EYMhnmstjq nWsORqEFbUChPdH:eqpTzcLJjmftKsg];
    }
    
    UIBezierPath *eMwPiVlAdTQKpG = [UIBezierPath bezierPath];
    
    if (etdlcLWJs) {
        [eMwPiVlAdTQKpG moveToPoint:CGPointMake(1, 12)];
    } else {
        [eMwPiVlAdTQKpG moveToPoint:CGPointMake(1, 1)];
    }
    if (enAmpHXhlbDc) {
        [eMwPiVlAdTQKpG addLineToPoint:CGPointMake(1, eqKciVMfjp - 12)];
        [eMwPiVlAdTQKpG moveToPoint:CGPointMake(12, eqKciVMfjp - 1)];
    } else {
        [eMwPiVlAdTQKpG addLineToPoint:CGPointMake(1, eqKciVMfjp - 1)];
        [eMwPiVlAdTQKpG moveToPoint:CGPointMake(0, eqKciVMfjp - 1)];
    }
    if (eDjyBHLVmWTa) {
        [eMwPiVlAdTQKpG addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 12, eqKciVMfjp - 1)];
        [eMwPiVlAdTQKpG moveToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 1, eqKciVMfjp - 12)];
    } else {
        [eMwPiVlAdTQKpG addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth, eqKciVMfjp - 1)];
        [eMwPiVlAdTQKpG moveToPoint:CGPointMake(evsYTmPyDceUSjaWidth-1, eqKciVMfjp - 1)];
    }
    if (eaDZpjTifJBol) {
        [eMwPiVlAdTQKpG addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 1, 12)];
        [eMwPiVlAdTQKpG moveToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 12, 1)];
    } else {
        [eMwPiVlAdTQKpG addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 1, 1)];
        [eMwPiVlAdTQKpG moveToPoint:CGPointMake(evsYTmPyDceUSjaWidth, 1)];
    }
    if (etdlcLWJs) {
        [eMwPiVlAdTQKpG addLineToPoint:CGPointMake(12, 1)];
    } else {
        [eMwPiVlAdTQKpG addLineToPoint:CGPointMake(0, 1)];
    }
    CAShapeLayer *efTFWEeU = [CAShapeLayer layer];
    //设置描边色
    efTFWEeU.strokeColor = lColor.CGColor;
    efTFWEeU.fillColor = [UIColor clearColor].CGColor;
    efTFWEeU.path = eMwPiVlAdTQKpG.CGPath;
    efTFWEeU.lineWidth = 2;
    [evsYTmPyDceUSja.layer addSublayer:efTFWEeU];
    
    if (etdlcLWJs) {
        UIBezierPath *ehlnvgDVYkM = [UIBezierPath bezierPath];
        [ehlnvgDVYkM moveToPoint:CGPointMake(9, 3)];
        [ehlnvgDVYkM addLineToPoint:CGPointMake(6, 3)];
        [ehlnvgDVYkM addLineToPoint:CGPointMake(6, 6)];
        [ehlnvgDVYkM addLineToPoint:CGPointMake(12, 6)];
        [ehlnvgDVYkM addLineToPoint:CGPointMake(12, 0)];
        [ehlnvgDVYkM addLineToPoint:CGPointMake(0, 0)];
        [ehlnvgDVYkM addLineToPoint:CGPointMake(0, 12)];
        [ehlnvgDVYkM addLineToPoint:CGPointMake(6, 12)];
        [ehlnvgDVYkM addLineToPoint:CGPointMake(6, 6)];
        [ehlnvgDVYkM addLineToPoint:CGPointMake(3, 6)];
        [ehlnvgDVYkM addLineToPoint:CGPointMake(3, 9)];
        CAShapeLayer *eIPaslorTxBp = [CAShapeLayer layer];
        //设置描边色
        eIPaslorTxBp.strokeColor = lColor.CGColor;
        eIPaslorTxBp.fillColor = imgColor.CGColor;
        eIPaslorTxBp.path = ehlnvgDVYkM.CGPath;
        [evsYTmPyDceUSja.layer addSublayer:eIPaslorTxBp];
    }
    if (enAmpHXhlbDc) {
        UIBezierPath *eXwuEBfJNoGZDLFz = [UIBezierPath bezierPath];
        [eXwuEBfJNoGZDLFz moveToPoint:CGPointMake(3, eqKciVMfjp - 9)];
        [eXwuEBfJNoGZDLFz addLineToPoint:CGPointMake(3, eqKciVMfjp - 6)];
        [eXwuEBfJNoGZDLFz addLineToPoint:CGPointMake(6, eqKciVMfjp - 6)];
        [eXwuEBfJNoGZDLFz addLineToPoint:CGPointMake(6, eqKciVMfjp - 12)];
        [eXwuEBfJNoGZDLFz addLineToPoint:CGPointMake(0, eqKciVMfjp - 12)];
        [eXwuEBfJNoGZDLFz addLineToPoint:CGPointMake(0, eqKciVMfjp)];
        [eXwuEBfJNoGZDLFz addLineToPoint:CGPointMake(12, eqKciVMfjp)];
        [eXwuEBfJNoGZDLFz addLineToPoint:CGPointMake(12, eqKciVMfjp - 6)];
        [eXwuEBfJNoGZDLFz addLineToPoint:CGPointMake(6, eqKciVMfjp - 6)];
        [eXwuEBfJNoGZDLFz addLineToPoint:CGPointMake(6, eqKciVMfjp - 3)];
        [eXwuEBfJNoGZDLFz addLineToPoint:CGPointMake(9, eqKciVMfjp - 3)];
        CAShapeLayer *eyYsxCEpgb = [CAShapeLayer layer];
        //设置描边色
        eyYsxCEpgb.strokeColor = [UIColor colorWithRed:234/255 green:218/255 blue:205/255 alpha:1].CGColor;
        eyYsxCEpgb.fillColor = imgColor.CGColor;
        eyYsxCEpgb.path = eXwuEBfJNoGZDLFz.CGPath;
        [evsYTmPyDceUSja.layer addSublayer:eyYsxCEpgb];
    }
    if (eaDZpjTifJBol) {
        UIBezierPath *ezyfgOlW = [UIBezierPath bezierPath];
        [ezyfgOlW moveToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 9, 3)];
        [ezyfgOlW addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 6, 3)];
        [ezyfgOlW addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 6, 6)];
        [ezyfgOlW addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 12, 6)];
        [ezyfgOlW addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 12, 0)];
        [ezyfgOlW addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth, 0)];
        [ezyfgOlW addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth, 12)];
        [ezyfgOlW addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 6, 12)];
        [ezyfgOlW addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 6, 6)];
        [ezyfgOlW addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 3, 6)];
        [ezyfgOlW addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 3, 9)];
        CAShapeLayer *eqxmhkGlYnFHr = [CAShapeLayer layer];
        //设置描边色
        eqxmhkGlYnFHr.strokeColor = lColor.CGColor;
        eqxmhkGlYnFHr.fillColor = imgColor.CGColor;
        eqxmhkGlYnFHr.path = ezyfgOlW.CGPath;
        [evsYTmPyDceUSja.layer addSublayer:eqxmhkGlYnFHr];
    }
    if (eDjyBHLVmWTa) {
        UIBezierPath *eNtGTpfHLOMWchZr = [UIBezierPath bezierPath];
        [eNtGTpfHLOMWchZr moveToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 9, eqKciVMfjp - 3)];
        [eNtGTpfHLOMWchZr addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 6, eqKciVMfjp - 3)];
        [eNtGTpfHLOMWchZr addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 6, eqKciVMfjp - 6)];
        [eNtGTpfHLOMWchZr addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 12, eqKciVMfjp - 6)];
        [eNtGTpfHLOMWchZr addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 12, eqKciVMfjp - 0)];
        [eNtGTpfHLOMWchZr addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 0, eqKciVMfjp - 0)];
        [eNtGTpfHLOMWchZr addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 0, eqKciVMfjp - 12)];
        [eNtGTpfHLOMWchZr addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 6, eqKciVMfjp - 12)];
        [eNtGTpfHLOMWchZr addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 6, eqKciVMfjp - 6)];
        [eNtGTpfHLOMWchZr addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 3, eqKciVMfjp - 6)];
        [eNtGTpfHLOMWchZr addLineToPoint:CGPointMake(evsYTmPyDceUSjaWidth - 3, eqKciVMfjp - 9)];
        CAShapeLayer *eBkwuqPEKrlRLW = [CAShapeLayer layer];
        eBkwuqPEKrlRLW.fillColor = imgColor.CGColor;
        eBkwuqPEKrlRLW.strokeColor = lColor.CGColor;
        eBkwuqPEKrlRLW.path = eNtGTpfHLOMWchZr.CGPath;
        [evsYTmPyDceUSja.layer addSublayer:eBkwuqPEKrlRLW];
    }
}

#pragma mark ---------- 设置view的任一角为圆角
static inline void nLSNFqWmKbg(UIView *evsYTmPyDceUSja, BOOL etdlcLWJs, BOOL enAmpHXhlbDc, BOOL eaDZpjTifJBol, BOOL eDjyBHLVmWTa, CGFloat ewpIAigrnJakWRadius) {
    CGRect bound = evsYTmPyDceUSja.bounds;
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
    UIBezierPath *eEIetUwx = [UIBezierPath bezierPathWithRoundedRect:bound byRoundingCorners:ewpIAigrnJakW cornerRadii:CGSizeMake(ewpIAigrnJakWRadius, ewpIAigrnJakWRadius)];
    CAShapeLayer *evsYTmPyDceUSjaLayer = [CAShapeLayer layer];
    evsYTmPyDceUSjaLayer.path = eEIetUwx.CGPath;
    evsYTmPyDceUSjaLayer.strokeColor = [UIColor clearColor].CGColor;
    evsYTmPyDceUSjaLayer.fillColor = evsYTmPyDceUSja.backgroundColor.CGColor;
    evsYTmPyDceUSja.backgroundColor = [UIColor clearColor];
    [evsYTmPyDceUSja.layer addSublayer:evsYTmPyDceUSjaLayer];
}
#pragma mark ---------- 绘制棱形 宽不定，高30
static inline void noBngTCSvARdOQ(UIView *evsYTmPyDceUSja, UIColor *edpwambVSEL) {
    CGFloat ednakLrMmbKfpEzV = CGRectGetWidth(evsYTmPyDceUSja.frame);
    UIBezierPath* eImvfZDjPiEdLYOl = [UIBezierPath bezierPath];
    [eImvfZDjPiEdLYOl moveToPoint: CGPointMake(0, 15)];
    [eImvfZDjPiEdLYOl addLineToPoint: CGPointMake(ednakLrMmbKfpEzV/4, 30)];
    [eImvfZDjPiEdLYOl addLineToPoint: CGPointMake(ednakLrMmbKfpEzV/4*3, 30)];
    [eImvfZDjPiEdLYOl addLineToPoint: CGPointMake(ednakLrMmbKfpEzV, 15)];
    [eImvfZDjPiEdLYOl addLineToPoint: CGPointMake(ednakLrMmbKfpEzV/4*3, 0)];
    [eImvfZDjPiEdLYOl addLineToPoint: CGPointMake(ednakLrMmbKfpEzV/4, 0)];
    [eImvfZDjPiEdLYOl addLineToPoint: CGPointMake(0, 15)];
    [eImvfZDjPiEdLYOl closePath];
    
    CAShapeLayer *epdQPFDHykgqAU = [CAShapeLayer layer];
    epdQPFDHykgqAU.fillColor = edpwambVSEL.CGColor;
    epdQPFDHykgqAU.path = eImvfZDjPiEdLYOl.CGPath;
    [evsYTmPyDceUSja.layer addSublayer:epdQPFDHykgqAU];
}













#pragma mark -----不使用----- 绘画一个 X  viewFrame:30*30
static inline void nDxSdJYLCRUgmwKr(UIView *evsYTmPyDceUSja, CGFloat lineWidth, UIColor *imgColor) {
    CGRect bound = evsYTmPyDceUSja.bounds;
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
    [evsYTmPyDceUSja.layer addSublayer:errorLayer];
}
