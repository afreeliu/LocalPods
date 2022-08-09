

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
/// 截取对应view的视图
static inline UIImage *nYgMlxAz(UIView *evsYTmPyDceUSja) {
    //1.开启上下文
    UIGraphicsBeginImageContext(evsYTmPyDceUSja.frame.size);
    //2.绘制图形
    CGContextRef ctx =UIGraphicsGetCurrentContext();
    //把layer上的内容绘制到上下文当中
    [evsYTmPyDceUSja.layer renderInContext:ctx];
    UIImage*newImage =UIGraphicsGetImageFromCurrentImageContext();
    //3.关闭上下文
    UIGraphicsEndImageContext();
    return newImage;
}


static inline UIImage *nTQJbRPNzrm(NSString *ekghWbPmYQ, NSString *eqLtTAvGBType, CGRect eFCiQmXZSVysv) {
    NSLog(@"rect:%@", NSStringFromCGRect(eFCiQmXZSVysv));
    NSString *imageString = [[NSBundle mainBundle]pathForResource:ekghWbPmYQ ofType:eqLtTAvGBType];
    UIImage *originImage = [UIImage imageWithContentsOfFile:imageString];
    NSLog(@"originImage:%@", originImage);
    CGImageRef subImageRef = CGImageCreateWithImageInRect(originImage.CGImage, eFCiQmXZSVysv);
    CGRect smallBounds = CGRectMake(0, 0, CGImageGetWidth(subImageRef), CGImageGetHeight(subImageRef));
    
    UIGraphicsBeginImageContext(smallBounds.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextDrawImage(context, smallBounds, subImageRef);
    UIImage* smallImage = [UIImage imageWithCGImage:subImageRef];
    NSLog(@"smallImage:%@", smallImage);
    UIGraphicsEndImageContext();
    
    return smallImage;
}

