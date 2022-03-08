//
//  UIColor+RandomColor.m
//  LFModulesDemo
//
//  Created by lufee on 2022/3/8.
//

#import "UIColor+RandomColor.h"

@implementation UIColor (RandomColor)

+ (UIColor *)lf_randomColor {
#if DEBUG
    int red = arc4random() % 256;
    int green = arc4random() % 256;
    int blue = arc4random() % 256;
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1];
#endif
    return nil;
}

@end
