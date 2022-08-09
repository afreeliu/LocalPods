

#import "EmKtBeFuqi.h"

@implementation EmKtBeFuqi

/**
 *  X 轴居中
 */
+ (NSLayoutConstraint *)navgXGEYtfjL:(UIView *)evsYTmPyDceUSja
                           naigAGwYRNfBte:(CGFloat)eXRCFicHlrPkZWS {
    NSAssert(evsYTmPyDceUSja, @"subView 不能为nil");
    NSAssert(evsYTmPyDceUSja.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *eNwmhnlxjIbW = [NSLayoutConstraint constraintWithItem:evsYTmPyDceUSja.superview attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:evsYTmPyDceUSja attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:eXRCFicHlrPkZWS];
    [evsYTmPyDceUSja.superview addConstraint:eNwmhnlxjIbW];
    return eNwmhnlxjIbW;
}
/**
 *  Y 轴居中
 */
+ (NSLayoutConstraint *)niqOtbXFszpxGLMY:(UIView *)evsYTmPyDceUSja
                           naigAGwYRNfBte:(CGFloat)eXRCFicHlrPkZWS {
    NSAssert(evsYTmPyDceUSja, @"subView 不能为nil");
    NSAssert(evsYTmPyDceUSja.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *eNwmhnlxjIbW = [NSLayoutConstraint constraintWithItem:evsYTmPyDceUSja.superview attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:evsYTmPyDceUSja attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:eXRCFicHlrPkZWS];
    [evsYTmPyDceUSja.superview addConstraint:eNwmhnlxjIbW];
    return eNwmhnlxjIbW;
    
}
/**
 *  设置宽度
 */
+ (NSLayoutConstraint *)nwNALxocFyJupkm:(UIView *)evsYTmPyDceUSja
                         naigAGwYRNfBte:(CGFloat)eXRCFicHlrPkZWS {
    NSAssert(evsYTmPyDceUSja, @"subView 不能为nil");
    NSAssert(evsYTmPyDceUSja.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *eNwmhnlxjIbW = [NSLayoutConstraint constraintWithItem:evsYTmPyDceUSja attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:eXRCFicHlrPkZWS];
    [evsYTmPyDceUSja addConstraint:eNwmhnlxjIbW];
    return eNwmhnlxjIbW;
    
    
}
/**
 *  设置高度
 */
+ (NSLayoutConstraint *)ntIjPqxLTDs:(UIView *)evsYTmPyDceUSja
                          naigAGwYRNfBte:(CGFloat)eXRCFicHlrPkZWS {
    NSAssert(evsYTmPyDceUSja, @"subView 不能为nil");
    NSAssert(evsYTmPyDceUSja.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *eNwmhnlxjIbW = [NSLayoutConstraint constraintWithItem:evsYTmPyDceUSja attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:eXRCFicHlrPkZWS];
    [evsYTmPyDceUSja addConstraint:eNwmhnlxjIbW];
    return eNwmhnlxjIbW;
}
/**
 *  设置Top
 */
+ (NSLayoutConstraint *)nmlcLxvfi:(UIView *)evsYTmPyDceUSja
                       naigAGwYRNfBte:(CGFloat)eXRCFicHlrPkZWS {
    NSAssert(evsYTmPyDceUSja, @"subView 不能为nil");
    NSAssert(evsYTmPyDceUSja.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *eNwmhnlxjIbW = [NSLayoutConstraint constraintWithItem:evsYTmPyDceUSja attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:evsYTmPyDceUSja.superview attribute:NSLayoutAttributeTop multiplier:1.0 constant:eXRCFicHlrPkZWS];
    [evsYTmPyDceUSja.superview addConstraint:eNwmhnlxjIbW];
    return eNwmhnlxjIbW;
}
/**
 *  设置Left
 */
+ (NSLayoutConstraint *)nGTVpsCaIbgQwO:(UIView *)evsYTmPyDceUSja
                        naigAGwYRNfBte:(CGFloat)eXRCFicHlrPkZWS {
    NSAssert(evsYTmPyDceUSja, @"subView 不能为nil");
    NSAssert(evsYTmPyDceUSja.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *eNwmhnlxjIbW = [NSLayoutConstraint constraintWithItem:evsYTmPyDceUSja attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:evsYTmPyDceUSja.superview attribute:NSLayoutAttributeLeft multiplier:1.0 constant:eXRCFicHlrPkZWS];
    [evsYTmPyDceUSja.superview addConstraint:eNwmhnlxjIbW];
    return eNwmhnlxjIbW;
}
/**
 *  设置Bottom
 */
+ (NSLayoutConstraint *)nWcbUXozlk:(UIView *)evsYTmPyDceUSja
                          naigAGwYRNfBte:(CGFloat)eXRCFicHlrPkZWS {
    NSAssert(evsYTmPyDceUSja, @"subView 不能为nil");
    NSAssert(evsYTmPyDceUSja.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *eNwmhnlxjIbW = [NSLayoutConstraint constraintWithItem:evsYTmPyDceUSja.superview attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:evsYTmPyDceUSja attribute:NSLayoutAttributeBottom multiplier:1.0 constant:eXRCFicHlrPkZWS];
    [evsYTmPyDceUSja.superview addConstraint:eNwmhnlxjIbW];
    return eNwmhnlxjIbW;
}
/**
 *  设置Right
 */
+ (NSLayoutConstraint *)nLRCtGMFQZAYsc:(UIView *)evsYTmPyDceUSja
                         naigAGwYRNfBte:(CGFloat)eXRCFicHlrPkZWS {
    NSAssert(evsYTmPyDceUSja, @"subView 不能为nil");
    NSAssert(evsYTmPyDceUSja.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *eNwmhnlxjIbW = [NSLayoutConstraint constraintWithItem:evsYTmPyDceUSja.superview attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:evsYTmPyDceUSja attribute:NSLayoutAttributeRight multiplier:1.0 constant:eXRCFicHlrPkZWS];
    [evsYTmPyDceUSja.superview addConstraint:eNwmhnlxjIbW];
    return eNwmhnlxjIbW;
}

/**
 *  设置两个view之间的约束
 */
+ (NSLayoutConstraint *)nLYuaGKC1:(UIView *)eguDoOi noGOglK:(NSLayoutAttribute)eDiUmhGfIAq nLYuaGKC2:(UIView *)eTzDEmbZeUJn nZMdTVtLS:(NSLayoutAttribute)efvTwzQReFHntAZ naigAGwYRNfBte:(CGFloat)eXRCFicHlrPkZWS {
    
    
    
    NSAssert(eguDoOi, @"subView 不能为nil");
    NSAssert(eguDoOi.superview, @"subView 的superView 不能为nil");
    NSAssert(eTzDEmbZeUJn, @"subView 不能为nil");
    NSAssert(eTzDEmbZeUJn.superview, @"subView 的superView 不能为nil");
    NSAssert([eguDoOi.superview isEqual:eTzDEmbZeUJn.superview], @"subView1 和 subView2 不在同一个父视图中");
    NSLayoutConstraint *eNwmhnlxjIbW = [NSLayoutConstraint constraintWithItem:eguDoOi attribute:eDiUmhGfIAq relatedBy:NSLayoutRelationEqual toItem:eTzDEmbZeUJn attribute:efvTwzQReFHntAZ multiplier:1.0 constant:eXRCFicHlrPkZWS];
    [eguDoOi.superview addConstraint:eNwmhnlxjIbW];
    return eNwmhnlxjIbW;
}




@end
