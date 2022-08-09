

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/// 绘制圆角的inputView
static inline void krqEnVxs(UIView *elpZwvNR, BOOL ePTxbgvoQKHsGAIW, BOOL ewYZWbyKtolz, BOOL eYHAeVagpMr, BOOL ebEAfNcUM, CGFloat egtkRYpbvFqB, UIColor *eUmdpAuqatvWeo, UIColor *eyDckpTtQVS) {
    
    CGRect eMkCIwTxc = elpZwvNR.bounds;
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
    UIBezierPath *eZPFYWlpnE = [UIBezierPath bezierPathWithRoundedRect:eMkCIwTxc byRoundingCorners:ecGwxjLH cornerRadii:CGSizeMake(egtkRYpbvFqB, egtkRYpbvFqB)];
    CAShapeLayer *elpZwvNRLayer = [CAShapeLayer layer];
    elpZwvNRLayer.path = eZPFYWlpnE.CGPath;
    elpZwvNRLayer.strokeColor = eUmdpAuqatvWeo.CGColor;
    elpZwvNRLayer.fillColor = eyDckpTtQVS.CGColor;
    [elpZwvNR.layer addSublayer:elpZwvNRLayer];
    
}

/// 绘制底部下划线
static inline void kNGmwecQF(UIView *elpZwvNR, UIColor *eUmdpAuqatvWeo) {
    
    CGRect eMkCIwTxc = elpZwvNR.bounds;
    UIBezierPath *eZPFYWlpnE = [UIBezierPath bezierPathWithRect:CGRectMake(0, CGRectGetMaxY(eMkCIwTxc) - 1, CGRectGetWidth(eMkCIwTxc), 1)];
    CAShapeLayer *elpZwvNRLayer = [CAShapeLayer layer];
    elpZwvNRLayer.path = eZPFYWlpnE.CGPath;
    elpZwvNRLayer.fillColor = eUmdpAuqatvWeo.CGColor;
    [elpZwvNR.layer addSublayer:elpZwvNRLayer];
}

/// 绘制方形边框
static inline void kkPrywosn(UIView *elpZwvNR, UIColor *eUmdpAuqatvWeo, UIColor *eyDckpTtQVS) {
    
    CGRect eMkCIwTxc = elpZwvNR.bounds;
    UIBezierPath *eZPFYWlpnE = [UIBezierPath bezierPathWithRect:eMkCIwTxc];
    CAShapeLayer *elpZwvNRLayer = [CAShapeLayer layer];
    elpZwvNRLayer.path = eZPFYWlpnE.CGPath;
    elpZwvNRLayer.strokeColor = eUmdpAuqatvWeo.CGColor;
    elpZwvNRLayer.fillColor = eyDckpTtQVS.CGColor;
    [elpZwvNR.layer addSublayer:elpZwvNRLayer];
}




