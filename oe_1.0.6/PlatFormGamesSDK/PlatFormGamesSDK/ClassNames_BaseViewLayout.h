

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ClassNames_BaseViewLayout : NSObject

/**
 *  X 轴居中
 */
+ (NSLayoutConstraint *)methodNames_layoutCenterX:(UIView *)varNames_view
                           methodNames_constriant:(CGFloat)varNames_constant;
/**
 *  Y 轴居中
 */
+ (NSLayoutConstraint *)methodNames_layoutCenterY:(UIView *)varNames_view
                           methodNames_constriant:(CGFloat)varNames_constant;
/**
 *  设置宽度
 */
+ (NSLayoutConstraint *)methodNames_layoutWidth:(UIView *)varNames_view
                         methodNames_constriant:(CGFloat)varNames_constant;
/**
 *  设置高度
 */
+ (NSLayoutConstraint *)methodNames_layoutHeight:(UIView *)varNames_view
                          methodNames_constriant:(CGFloat)varNames_constant;
/**
 *  设置Top
 */
+ (NSLayoutConstraint *)methodNames_layoutTop:(UIView *)varNames_view
                       methodNames_constriant:(CGFloat)varNames_constant;
/**
 *  设置Left
 */
+ (NSLayoutConstraint *)methodNames_layoutLeft:(UIView *)varNames_view
                        methodNames_constriant:(CGFloat)varNames_constant;
/**
 *  设置Bottom
 */
+ (NSLayoutConstraint *)methodNames_layoutBottom:(UIView *)varNames_view
                          methodNames_constriant:(CGFloat)varNames_constant;
/**
 *  设置Right
 */
+ (NSLayoutConstraint *)methodNames_layoutRight:(UIView *)varNames_view
                         methodNames_constriant:(CGFloat)varNames_constant;

/**
 *  设置两个view之间的约束
 */
+ (NSLayoutConstraint *)methodNames_layoutSubView1:(UIView *)varNames_subView1 methodNames_attribute1:(NSLayoutAttribute)varNames_attribute1 methodNames_layoutSubView2:(UIView *)varNames_subView2 methodNames_attribute2:(NSLayoutAttribute)varNames_attribute2 methodNames_constriant:(CGFloat)varNames_constant;


@end
