

#import "ClassNames_BaseViewLayout.h"

@implementation ClassNames_BaseViewLayout

/**
 *  X 轴居中
 */
+ (NSLayoutConstraint *)methodNames_layoutCenterX:(UIView *)varNames_view
                           methodNames_constriant:(CGFloat)varNames_constant {
    NSAssert(varNames_view, @"subView 不能为nil");
    NSAssert(varNames_view.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *varNames_layout = [NSLayoutConstraint constraintWithItem:varNames_view.superview attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:varNames_view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:varNames_constant];
    [varNames_view.superview addConstraint:varNames_layout];
    return varNames_layout;
}
/**
 *  Y 轴居中
 */
+ (NSLayoutConstraint *)methodNames_layoutCenterY:(UIView *)varNames_view
                           methodNames_constriant:(CGFloat)varNames_constant {
    NSAssert(varNames_view, @"subView 不能为nil");
    NSAssert(varNames_view.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *varNames_layout = [NSLayoutConstraint constraintWithItem:varNames_view.superview attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:varNames_view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:varNames_constant];
    [varNames_view.superview addConstraint:varNames_layout];
    return varNames_layout;
    
}
/**
 *  设置宽度
 */
+ (NSLayoutConstraint *)methodNames_layoutWidth:(UIView *)varNames_view
                         methodNames_constriant:(CGFloat)varNames_constant {
    NSAssert(varNames_view, @"subView 不能为nil");
    NSAssert(varNames_view.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *varNames_layout = [NSLayoutConstraint constraintWithItem:varNames_view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:varNames_constant];
    [varNames_view addConstraint:varNames_layout];
    return varNames_layout;
    
    
}
/**
 *  设置高度
 */
+ (NSLayoutConstraint *)methodNames_layoutHeight:(UIView *)varNames_view
                          methodNames_constriant:(CGFloat)varNames_constant {
    NSAssert(varNames_view, @"subView 不能为nil");
    NSAssert(varNames_view.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *varNames_layout = [NSLayoutConstraint constraintWithItem:varNames_view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:varNames_constant];
    [varNames_view addConstraint:varNames_layout];
    return varNames_layout;
}
/**
 *  设置Top
 */
+ (NSLayoutConstraint *)methodNames_layoutTop:(UIView *)varNames_view
                       methodNames_constriant:(CGFloat)varNames_constant {
    NSAssert(varNames_view, @"subView 不能为nil");
    NSAssert(varNames_view.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *varNames_layout = [NSLayoutConstraint constraintWithItem:varNames_view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:varNames_view.superview attribute:NSLayoutAttributeTop multiplier:1.0 constant:varNames_constant];
    [varNames_view.superview addConstraint:varNames_layout];
    return varNames_layout;
}
/**
 *  设置Left
 */
+ (NSLayoutConstraint *)methodNames_layoutLeft:(UIView *)varNames_view
                        methodNames_constriant:(CGFloat)varNames_constant {
    NSAssert(varNames_view, @"subView 不能为nil");
    NSAssert(varNames_view.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *varNames_layout = [NSLayoutConstraint constraintWithItem:varNames_view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:varNames_view.superview attribute:NSLayoutAttributeLeft multiplier:1.0 constant:varNames_constant];
    [varNames_view.superview addConstraint:varNames_layout];
    return varNames_layout;
}
/**
 *  设置Bottom
 */
+ (NSLayoutConstraint *)methodNames_layoutBottom:(UIView *)varNames_view
                          methodNames_constriant:(CGFloat)varNames_constant {
    NSAssert(varNames_view, @"subView 不能为nil");
    NSAssert(varNames_view.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *varNames_layout = [NSLayoutConstraint constraintWithItem:varNames_view.superview attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:varNames_view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:varNames_constant];
    [varNames_view.superview addConstraint:varNames_layout];
    return varNames_layout;
}
/**
 *  设置Right
 */
+ (NSLayoutConstraint *)methodNames_layoutRight:(UIView *)varNames_view
                         methodNames_constriant:(CGFloat)varNames_constant {
    NSAssert(varNames_view, @"subView 不能为nil");
    NSAssert(varNames_view.superview, @"subView 的superView 不能为nil");
    NSLayoutConstraint *varNames_layout = [NSLayoutConstraint constraintWithItem:varNames_view.superview attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:varNames_view attribute:NSLayoutAttributeRight multiplier:1.0 constant:varNames_constant];
    [varNames_view.superview addConstraint:varNames_layout];
    return varNames_layout;
}

/**
 *  设置两个view之间的约束
 */
+ (NSLayoutConstraint *)methodNames_layoutSubView1:(UIView *)varNames_subView1 methodNames_attribute1:(NSLayoutAttribute)varNames_attribute1 methodNames_layoutSubView2:(UIView *)varNames_subView2 methodNames_attribute2:(NSLayoutAttribute)varNames_attribute2 methodNames_constriant:(CGFloat)varNames_constant {
    
    
    
    NSAssert(varNames_subView1, @"subView 不能为nil");
    NSAssert(varNames_subView1.superview, @"subView 的superView 不能为nil");
    NSAssert(varNames_subView2, @"subView 不能为nil");
    NSAssert(varNames_subView2.superview, @"subView 的superView 不能为nil");
    NSAssert([varNames_subView1.superview isEqual:varNames_subView2.superview], @"subView1 和 subView2 不在同一个父视图中");
    NSLayoutConstraint *varNames_layout = [NSLayoutConstraint constraintWithItem:varNames_subView1 attribute:varNames_attribute1 relatedBy:NSLayoutRelationEqual toItem:varNames_subView2 attribute:varNames_attribute2 multiplier:1.0 constant:varNames_constant];
    [varNames_subView1.superview addConstraint:varNames_layout];
    return varNames_layout;
}




@end
