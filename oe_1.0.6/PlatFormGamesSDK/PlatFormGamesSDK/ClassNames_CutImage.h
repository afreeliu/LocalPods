

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
/// 截取对应view的视图
static inline UIImage *methodNames_getScreenImage(UIView *varNames_view) {
    //1.开启上下文
    UIGraphicsBeginImageContext(varNames_view.frame.size);
    //2.绘制图形
    CGContextRef ctx =UIGraphicsGetCurrentContext();
    //把layer上的内容绘制到上下文当中
    [varNames_view.layer renderInContext:ctx];
    UIImage*newImage =UIGraphicsGetImageFromCurrentImageContext();
    //3.关闭上下文
    UIGraphicsEndImageContext();
    return newImage;
}
