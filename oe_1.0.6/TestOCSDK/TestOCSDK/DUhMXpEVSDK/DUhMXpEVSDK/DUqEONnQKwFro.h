

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "DULCiQqMJAk.h"
#pragma mark ---------- 使view根据path路径动画移动
static inline CAKeyframeAnimation * kzEZvyWHInXNq(UIView *elpZwvNR, UIBezierPath *eZPFYWlpnE, CGFloat eTfaGis) {
    CAKeyframeAnimation *eQUDivVE = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    
    eQUDivVE.path = [eZPFYWlpnE CGPath];
    eQUDivVE.removedOnCompletion = false;
    eQUDivVE.fillMode = kCAFillModeForwards;
    eQUDivVE.calculationMode = kCAAnimationCubic;
    eQUDivVE.repeatCount = CGFLOAT_MAX;
    eQUDivVE.duration = eTfaGis;
    eQUDivVE.autoreverses = NO;
    
    eQUDivVE.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [elpZwvNR.layer addAnimation:eQUDivVE forKey:@"animation"];
    return eQUDivVE;
}
#pragma mark ---------- 颜色变化
static inline void keLQljWr(UIView *elpZwvNR, UIColor *eDCoOjIBh1, UIColor *eDCoOjIBh2, CGFloat eTfaGis) {
    
    CABasicAnimation *eDCoOjIBhAnim = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
    eDCoOjIBhAnim.toValue = (__bridge id _Nullable)([eDCoOjIBh2 CGColor]);
    eDCoOjIBhAnim.fromValue = (__bridge id _Nullable)([eDCoOjIBh1 CGColor]);
    eDCoOjIBhAnim.duration = eTfaGis;
    eDCoOjIBhAnim.autoreverses = NO;
    eDCoOjIBhAnim.fillMode = kCAFillModeForwards;
    eDCoOjIBhAnim.removedOnCompletion = NO;
    eDCoOjIBhAnim.repeatCount = CGFLOAT_MAX;
    [elpZwvNR.layer addAnimation:eDCoOjIBhAnim forKey:@"backgroundColor"];
}
#pragma mark ---------- view的放大缩小动画
static inline void kUjJPSVCFDe(UIView *elpZwvNR, CGFloat eRiYQNhFVu) {
    elpZwvNR.transform = CGAffineTransformMakeScale(eRiYQNhFVu, eRiYQNhFVu);
}

#pragma mark ---------- 设置view的圆角和阴影
static inline void kFSBuYOzQvkCgeJH(UIView *elpZwvNR, CGFloat egtkRYpbvFqB, CGFloat etyrkoYqNG, CGSize eguTGbHLcfA) {
    elpZwvNR.layer.shadowColor = UIColor.lightGrayColor.CGColor;
    elpZwvNR.layer.borderColor = elpZwvNR.layer.shadowColor; // 边框颜色建议和阴影颜色一致
    elpZwvNR.layer.borderWidth = 0.000001; // 只要不为0就行
    if (egtkRYpbvFqB) {
        elpZwvNR.layer.cornerRadius = egtkRYpbvFqB;
    }
    elpZwvNR.layer.shadowOpacity = 0.8;
    if (etyrkoYqNG) {
        elpZwvNR.layer.shadowRadius = etyrkoYqNG;
    }
    elpZwvNR.layer.shadowOffset = eguTGbHLcfA;
}


#pragma mark ---------- 给view画边框并在仍一角添加图案
static inline void kGJozOHQaMnCy(UIView *elpZwvNR, BOOL ePTxbgvoQKHsGAIW, BOOL ewYZWbyKtolz, BOOL eYHAeVagpMr, BOOL ebEAfNcUM, NSString *eqhFaLjUbIK, NSString *edZhyORIfFrepN) {
    CGRect elpZwvNRRect = elpZwvNR.bounds;
    CGFloat elpZwvNRWidth = CGRectGetWidth(elpZwvNRRect);
    CGFloat elpZwvNRHeight = CGRectGetHeight(elpZwvNRRect);
    UIColor *imgColor = [UIColor whiteColor];
    UIColor *lColor = [UIColor blackColor];
    if (eqhFaLjUbIK && eqhFaLjUbIK.length) {
        imgColor = [DULCiQqMJAk kzqvYPK:eqhFaLjUbIK];
    }
    if (edZhyORIfFrepN && edZhyORIfFrepN.length) {
        lColor = [DULCiQqMJAk kzqvYPK:edZhyORIfFrepN];
    }
    
    UIBezierPath *eKyHDlg = [UIBezierPath bezierPath];
    
    if (ePTxbgvoQKHsGAIW) {
        [eKyHDlg moveToPoint:CGPointMake(1, 12)];
    } else {
        [eKyHDlg moveToPoint:CGPointMake(1, 1)];
    }
    if (ewYZWbyKtolz) {
        [eKyHDlg addLineToPoint:CGPointMake(1, elpZwvNRHeight - 12)];
        [eKyHDlg moveToPoint:CGPointMake(12, elpZwvNRHeight - 1)];
    } else {
        [eKyHDlg addLineToPoint:CGPointMake(1, elpZwvNRHeight - 1)];
        [eKyHDlg moveToPoint:CGPointMake(0, elpZwvNRHeight - 1)];
    }
    if (ebEAfNcUM) {
        [eKyHDlg addLineToPoint:CGPointMake(elpZwvNRWidth - 12, elpZwvNRHeight - 1)];
        [eKyHDlg moveToPoint:CGPointMake(elpZwvNRWidth - 1, elpZwvNRHeight - 12)];
    } else {
        [eKyHDlg addLineToPoint:CGPointMake(elpZwvNRWidth, elpZwvNRHeight - 1)];
        [eKyHDlg moveToPoint:CGPointMake(elpZwvNRWidth-1, elpZwvNRHeight - 1)];
    }
    if (eYHAeVagpMr) {
        [eKyHDlg addLineToPoint:CGPointMake(elpZwvNRWidth - 1, 12)];
        [eKyHDlg moveToPoint:CGPointMake(elpZwvNRWidth - 12, 1)];
    } else {
        [eKyHDlg addLineToPoint:CGPointMake(elpZwvNRWidth - 1, 1)];
        [eKyHDlg moveToPoint:CGPointMake(elpZwvNRWidth, 1)];
    }
    if (ePTxbgvoQKHsGAIW) {
        [eKyHDlg addLineToPoint:CGPointMake(12, 1)];
    } else {
        [eKyHDlg addLineToPoint:CGPointMake(0, 1)];
    }
    CAShapeLayer *eUYJlPBrIW = [CAShapeLayer layer];
    //设置描边色
    eUYJlPBrIW.strokeColor = lColor.CGColor;
    eUYJlPBrIW.fillColor = [UIColor clearColor].CGColor;
    eUYJlPBrIW.path = eKyHDlg.CGPath;
    eUYJlPBrIW.lineWidth = 2;
    [elpZwvNR.layer addSublayer:eUYJlPBrIW];
    
    if (ePTxbgvoQKHsGAIW) {
        UIBezierPath *eCeUJBvEVbN = [UIBezierPath bezierPath];
        [eCeUJBvEVbN moveToPoint:CGPointMake(9, 3)];
        [eCeUJBvEVbN addLineToPoint:CGPointMake(6, 3)];
        [eCeUJBvEVbN addLineToPoint:CGPointMake(6, 6)];
        [eCeUJBvEVbN addLineToPoint:CGPointMake(12, 6)];
        [eCeUJBvEVbN addLineToPoint:CGPointMake(12, 0)];
        [eCeUJBvEVbN addLineToPoint:CGPointMake(0, 0)];
        [eCeUJBvEVbN addLineToPoint:CGPointMake(0, 12)];
        [eCeUJBvEVbN addLineToPoint:CGPointMake(6, 12)];
        [eCeUJBvEVbN addLineToPoint:CGPointMake(6, 6)];
        [eCeUJBvEVbN addLineToPoint:CGPointMake(3, 6)];
        [eCeUJBvEVbN addLineToPoint:CGPointMake(3, 9)];
        CAShapeLayer *eaXrlCysJUzRhkx = [CAShapeLayer layer];
        //设置描边色
        eaXrlCysJUzRhkx.strokeColor = lColor.CGColor;
        eaXrlCysJUzRhkx.fillColor = imgColor.CGColor;
        eaXrlCysJUzRhkx.path = eCeUJBvEVbN.CGPath;
        [elpZwvNR.layer addSublayer:eaXrlCysJUzRhkx];
    }
    if (ewYZWbyKtolz) {
        UIBezierPath *edlOSpuRCPi = [UIBezierPath bezierPath];
        [edlOSpuRCPi moveToPoint:CGPointMake(3, elpZwvNRHeight - 9)];
        [edlOSpuRCPi addLineToPoint:CGPointMake(3, elpZwvNRHeight - 6)];
        [edlOSpuRCPi addLineToPoint:CGPointMake(6, elpZwvNRHeight - 6)];
        [edlOSpuRCPi addLineToPoint:CGPointMake(6, elpZwvNRHeight - 12)];
        [edlOSpuRCPi addLineToPoint:CGPointMake(0, elpZwvNRHeight - 12)];
        [edlOSpuRCPi addLineToPoint:CGPointMake(0, elpZwvNRHeight)];
        [edlOSpuRCPi addLineToPoint:CGPointMake(12, elpZwvNRHeight)];
        [edlOSpuRCPi addLineToPoint:CGPointMake(12, elpZwvNRHeight - 6)];
        [edlOSpuRCPi addLineToPoint:CGPointMake(6, elpZwvNRHeight - 6)];
        [edlOSpuRCPi addLineToPoint:CGPointMake(6, elpZwvNRHeight - 3)];
        [edlOSpuRCPi addLineToPoint:CGPointMake(9, elpZwvNRHeight - 3)];
        CAShapeLayer *efAUsGFzcH = [CAShapeLayer layer];
        //设置描边色
        efAUsGFzcH.strokeColor = [UIColor colorWithRed:234/255 green:218/255 blue:205/255 alpha:1].CGColor;
        efAUsGFzcH.fillColor = imgColor.CGColor;
        efAUsGFzcH.path = edlOSpuRCPi.CGPath;
        [elpZwvNR.layer addSublayer:efAUsGFzcH];
    }
    if (eYHAeVagpMr) {
        UIBezierPath *enqMhfdweaWG = [UIBezierPath bezierPath];
        [enqMhfdweaWG moveToPoint:CGPointMake(elpZwvNRWidth - 9, 3)];
        [enqMhfdweaWG addLineToPoint:CGPointMake(elpZwvNRWidth - 6, 3)];
        [enqMhfdweaWG addLineToPoint:CGPointMake(elpZwvNRWidth - 6, 6)];
        [enqMhfdweaWG addLineToPoint:CGPointMake(elpZwvNRWidth - 12, 6)];
        [enqMhfdweaWG addLineToPoint:CGPointMake(elpZwvNRWidth - 12, 0)];
        [enqMhfdweaWG addLineToPoint:CGPointMake(elpZwvNRWidth, 0)];
        [enqMhfdweaWG addLineToPoint:CGPointMake(elpZwvNRWidth, 12)];
        [enqMhfdweaWG addLineToPoint:CGPointMake(elpZwvNRWidth - 6, 12)];
        [enqMhfdweaWG addLineToPoint:CGPointMake(elpZwvNRWidth - 6, 6)];
        [enqMhfdweaWG addLineToPoint:CGPointMake(elpZwvNRWidth - 3, 6)];
        [enqMhfdweaWG addLineToPoint:CGPointMake(elpZwvNRWidth - 3, 9)];
        CAShapeLayer *eNAsZeGiLCWgB = [CAShapeLayer layer];
        //设置描边色
        eNAsZeGiLCWgB.strokeColor = lColor.CGColor;
        eNAsZeGiLCWgB.fillColor = imgColor.CGColor;
        eNAsZeGiLCWgB.path = enqMhfdweaWG.CGPath;
        [elpZwvNR.layer addSublayer:eNAsZeGiLCWgB];
    }
    if (ebEAfNcUM) {
        UIBezierPath *ezHZkuXjsevWLiS = [UIBezierPath bezierPath];
        [ezHZkuXjsevWLiS moveToPoint:CGPointMake(elpZwvNRWidth - 9, elpZwvNRHeight - 3)];
        [ezHZkuXjsevWLiS addLineToPoint:CGPointMake(elpZwvNRWidth - 6, elpZwvNRHeight - 3)];
        [ezHZkuXjsevWLiS addLineToPoint:CGPointMake(elpZwvNRWidth - 6, elpZwvNRHeight - 6)];
        [ezHZkuXjsevWLiS addLineToPoint:CGPointMake(elpZwvNRWidth - 12, elpZwvNRHeight - 6)];
        [ezHZkuXjsevWLiS addLineToPoint:CGPointMake(elpZwvNRWidth - 12, elpZwvNRHeight - 0)];
        [ezHZkuXjsevWLiS addLineToPoint:CGPointMake(elpZwvNRWidth - 0, elpZwvNRHeight - 0)];
        [ezHZkuXjsevWLiS addLineToPoint:CGPointMake(elpZwvNRWidth - 0, elpZwvNRHeight - 12)];
        [ezHZkuXjsevWLiS addLineToPoint:CGPointMake(elpZwvNRWidth - 6, elpZwvNRHeight - 12)];
        [ezHZkuXjsevWLiS addLineToPoint:CGPointMake(elpZwvNRWidth - 6, elpZwvNRHeight - 6)];
        [ezHZkuXjsevWLiS addLineToPoint:CGPointMake(elpZwvNRWidth - 3, elpZwvNRHeight - 6)];
        [ezHZkuXjsevWLiS addLineToPoint:CGPointMake(elpZwvNRWidth - 3, elpZwvNRHeight - 9)];
        CAShapeLayer *eXfgVkocUPs = [CAShapeLayer layer];
        eXfgVkocUPs.fillColor = imgColor.CGColor;
        eXfgVkocUPs.strokeColor = lColor.CGColor;
        eXfgVkocUPs.path = ezHZkuXjsevWLiS.CGPath;
        [elpZwvNR.layer addSublayer:eXfgVkocUPs];
    }
}

#pragma mark ---------- 设置view的任一角为圆角
static inline void kxwAamLYcP(UIView *elpZwvNR, BOOL ePTxbgvoQKHsGAIW, BOOL ewYZWbyKtolz, BOOL eYHAeVagpMr, BOOL ebEAfNcUM, CGFloat egtkRYpbvFqB) {
    CGRect bound = elpZwvNR.bounds;
    UIRectCorner ecGwxjLH = UIRectCornerAllCorners;
    if (ePTxbgvoQKHsGAIW) {
        ecGwxjLH = UIRectCornerTopLeft;
    }
    if (ewYZWbyKtolz) {
        if (ecGwxjLH) {
            ecGwxjLH = (ecGwxjLH|UIRectCornerBottomLeft);
        } else {
            ecGwxjLH = UIRectCornerBottomLeft;
        }
    }
    if (eYHAeVagpMr) {
        if (ecGwxjLH) {
            ecGwxjLH = (ecGwxjLH|UIRectCornerTopRight);
        } else {
            ecGwxjLH = UIRectCornerTopRight;
        }
    }
    if (ebEAfNcUM) {
        if (ecGwxjLH) {
            ecGwxjLH = (ecGwxjLH|UIRectCornerBottomRight);
        } else {
            ecGwxjLH = UIRectCornerBottomRight;
        }
    }
    UIBezierPath *eZPFYWlpnE = [UIBezierPath bezierPathWithRoundedRect:bound byRoundingCorners:ecGwxjLH cornerRadii:CGSizeMake(egtkRYpbvFqB, egtkRYpbvFqB)];
    CAShapeLayer *elpZwvNRLayer = [CAShapeLayer layer];
    elpZwvNRLayer.path = eZPFYWlpnE.CGPath;
    elpZwvNRLayer.strokeColor = [UIColor clearColor].CGColor;
    elpZwvNRLayer.fillColor = elpZwvNR.backgroundColor.CGColor;
    elpZwvNR.backgroundColor = [UIColor clearColor];
    [elpZwvNR.layer addSublayer:elpZwvNRLayer];
}
#pragma mark ---------- 绘制棱形 宽不定，高30
static inline void kAawzBNtIvuU(UIView *elpZwvNR, UIColor *eOxZzSfXKlaA) {
    CGFloat eiYOpUV = CGRectGetWidth(elpZwvNR.frame);
    UIBezierPath* epricvnIPFJGxUD = [UIBezierPath bezierPath];
    [epricvnIPFJGxUD moveToPoint: CGPointMake(0, 15)];
    [epricvnIPFJGxUD addLineToPoint: CGPointMake(eiYOpUV/4, 30)];
    [epricvnIPFJGxUD addLineToPoint: CGPointMake(eiYOpUV/4*3, 30)];
    [epricvnIPFJGxUD addLineToPoint: CGPointMake(eiYOpUV, 15)];
    [epricvnIPFJGxUD addLineToPoint: CGPointMake(eiYOpUV/4*3, 0)];
    [epricvnIPFJGxUD addLineToPoint: CGPointMake(eiYOpUV/4, 0)];
    [epricvnIPFJGxUD addLineToPoint: CGPointMake(0, 15)];
    [epricvnIPFJGxUD closePath];
    
    CAShapeLayer *eQUbAZElCiuWV = [CAShapeLayer layer];
    eQUbAZElCiuWV.fillColor = eOxZzSfXKlaA.CGColor;
    eQUbAZElCiuWV.path = epricvnIPFJGxUD.CGPath;
    [elpZwvNR.layer addSublayer:eQUbAZElCiuWV];
}













#pragma mark -----不使用----- 绘画一个 X  viewFrame:30*30
static inline void kcTuRdPnxtkWafV(UIView *elpZwvNR, CGFloat lineWidth, UIColor *imgColor) {
    CGRect bound = elpZwvNR.bounds;
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
    [elpZwvNR.layer addSublayer:errorLayer];
}
