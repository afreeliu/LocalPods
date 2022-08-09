

#import "DUjHPamSNKWkfM.h"

@implementation DUjHPamSNKWkfM

/**
 *  X 轴居中
 */
+ (NSLayoutConstraint *)ktGjyplNWv:(UIView *)elpZwvNR
                           kjwoMfYHX:(CGFloat)eClnAmYKkZbpjd {
    NSAssert(elpZwvNR, @"subView 不能为nil");
    NSAssert(elpZwvNR.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *eNmoDtWO = [NSLayoutConstraint constraintWithItem:elpZwvNR.superview attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:elpZwvNR attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:eClnAmYKkZbpjd];
    [elpZwvNR.superview addConstraint:eNmoDtWO];
    return eNmoDtWO;
}
/**
 *  Y 轴居中
 */
+ (NSLayoutConstraint *)kxRZbHCcF:(UIView *)elpZwvNR
                           kjwoMfYHX:(CGFloat)eClnAmYKkZbpjd {
    NSAssert(elpZwvNR, @"subView 不能为nil");
    NSAssert(elpZwvNR.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *eNmoDtWO = [NSLayoutConstraint constraintWithItem:elpZwvNR.superview attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:elpZwvNR attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:eClnAmYKkZbpjd];
    [elpZwvNR.superview addConstraint:eNmoDtWO];
    return eNmoDtWO;
    
}
/**
 *  设置宽度
 */
+ (NSLayoutConstraint *)kYzDgmEuJZa:(UIView *)elpZwvNR
                         kjwoMfYHX:(CGFloat)eClnAmYKkZbpjd {
    NSAssert(elpZwvNR, @"subView 不能为nil");
    NSAssert(elpZwvNR.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *eNmoDtWO = [NSLayoutConstraint constraintWithItem:elpZwvNR attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:eClnAmYKkZbpjd];
    [elpZwvNR addConstraint:eNmoDtWO];
    return eNmoDtWO;
    
    
}
/**
 *  设置高度
 */
+ (NSLayoutConstraint *)kgrLjqVbGpvdykZl:(UIView *)elpZwvNR
                          kjwoMfYHX:(CGFloat)eClnAmYKkZbpjd {
    NSAssert(elpZwvNR, @"subView 不能为nil");
    NSAssert(elpZwvNR.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *eNmoDtWO = [NSLayoutConstraint constraintWithItem:elpZwvNR attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:eClnAmYKkZbpjd];
    [elpZwvNR addConstraint:eNmoDtWO];
    return eNmoDtWO;
}
/**
 *  设置Top
 */
+ (NSLayoutConstraint *)khXiHKlJYIcsWTb:(UIView *)elpZwvNR
                       kjwoMfYHX:(CGFloat)eClnAmYKkZbpjd {
    NSAssert(elpZwvNR, @"subView 不能为nil");
    NSAssert(elpZwvNR.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *eNmoDtWO = [NSLayoutConstraint constraintWithItem:elpZwvNR attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:elpZwvNR.superview attribute:NSLayoutAttributeTop multiplier:1.0 constant:eClnAmYKkZbpjd];
    [elpZwvNR.superview addConstraint:eNmoDtWO];
    return eNmoDtWO;
}
/**
 *  设置Left
 */
+ (NSLayoutConstraint *)kcNCfuJpSgtid:(UIView *)elpZwvNR
                        kjwoMfYHX:(CGFloat)eClnAmYKkZbpjd {
    NSAssert(elpZwvNR, @"subView 不能为nil");
    NSAssert(elpZwvNR.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *eNmoDtWO = [NSLayoutConstraint constraintWithItem:elpZwvNR attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:elpZwvNR.superview attribute:NSLayoutAttributeLeft multiplier:1.0 constant:eClnAmYKkZbpjd];
    [elpZwvNR.superview addConstraint:eNmoDtWO];
    return eNmoDtWO;
}
/**
 *  设置Bottom
 */
+ (NSLayoutConstraint *)kKvyLhTYV:(UIView *)elpZwvNR
                          kjwoMfYHX:(CGFloat)eClnAmYKkZbpjd {
    NSAssert(elpZwvNR, @"subView 不能为nil");
    NSAssert(elpZwvNR.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *eNmoDtWO = [NSLayoutConstraint constraintWithItem:elpZwvNR.superview attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:elpZwvNR attribute:NSLayoutAttributeBottom multiplier:1.0 constant:eClnAmYKkZbpjd];
    [elpZwvNR.superview addConstraint:eNmoDtWO];
    return eNmoDtWO;
}
/**
 *  设置Right
 */
+ (NSLayoutConstraint *)kdMvtuRCVqTon:(UIView *)elpZwvNR
                         kjwoMfYHX:(CGFloat)eClnAmYKkZbpjd {
    NSAssert(elpZwvNR, @"subView 不能为nil");
    NSAssert(elpZwvNR.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *eNmoDtWO = [NSLayoutConstraint constraintWithItem:elpZwvNR.superview attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:elpZwvNR attribute:NSLayoutAttributeRight multiplier:1.0 constant:eClnAmYKkZbpjd];
    [elpZwvNR.superview addConstraint:eNmoDtWO];
    return eNmoDtWO;
}

/**
 *  设置两个view之间的约束
 */
+ (NSLayoutConstraint *)kQiLrTkJhOKMIs1:(UIView *)eEbTgJBQWkom ktiOVqYfTER:(NSLayoutAttribute)eOCXRbW kQiLrTkJhOKMIs2:(UIView *)edMrHftgjeAYBxh kNAPzsLnZYo:(NSLayoutAttribute)esYnRdLqpG kjwoMfYHX:(CGFloat)eClnAmYKkZbpjd {
    
    
    
    NSAssert(eEbTgJBQWkom, @"subView 不能为nil");
    NSAssert(eEbTgJBQWkom.superview, @"subView 的superView 不能为nil");
    NSAssert(edMrHftgjeAYBxh, @"subView 不能为nil");
    NSAssert(edMrHftgjeAYBxh.superview, @"subView 的superView 不能为nil");
    NSAssert([eEbTgJBQWkom.superview isEqual:edMrHftgjeAYBxh.superview], @"subView1 和 subView2 不在同一个父视图中");
    NSLayoutConstraint *eNmoDtWO = [NSLayoutConstraint constraintWithItem:eEbTgJBQWkom attribute:eOCXRbW relatedBy:NSLayoutRelationEqual toItem:edMrHftgjeAYBxh attribute:esYnRdLqpG multiplier:1.0 constant:eClnAmYKkZbpjd];
    [eEbTgJBQWkom.superview addConstraint:eNmoDtWO];
    return eNmoDtWO;
}




@end
