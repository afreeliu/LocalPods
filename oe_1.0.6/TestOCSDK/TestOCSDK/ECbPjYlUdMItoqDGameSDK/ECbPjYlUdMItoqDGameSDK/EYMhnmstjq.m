

#import "EYMhnmstjq.h"

@implementation EYMhnmstjq


+ (UIColor *)nWsORqEFbUChPdH:(NSString *)HexString alpha:(CGFloat)alpha{
    
    NSString *cString = [[HexString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]uppercaseString];//字符串处理
    
    //例子，stringToConvert #ffffff
    
    if ([cString length] <6)
        
        return [UIColor whiteColor];//如果非十六进制，返回白色
    
    if ([cString hasPrefix:@"#"])
        
        cString = [cString substringFromIndex:1];//去掉头
    
    if ([cString length] !=6)//去头非十六进制，返回白色
        
        return [UIColor greenColor];
    
    //分别取RGB的值
    
    NSRange range;
    
    range.location =0;
    
    range.length =2;
    
    NSString *rString = [cString substringWithRange:range];
    
    
    
    range.location =2;
    
    NSString *gString = [cString substringWithRange:range];
    
    
    
    range.location =4;
    
    NSString *bString = [cString substringWithRange:range];
    
    
    
    unsigned int r, g, b;
    
    //NSScanner把扫描出的制定的字符串转换成Int类型
    
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    //转换为UIColor
    
    return [UIColor colorWithRed:((float) r /255.0f)
            
                           green:((float) g /255.0f)
            
                            blue:((float) b /255.0f)
            
                           alpha:alpha];
    
}


+ (UIColor *)nWsORqEFbUChPdH:(NSString *)hexString {
    return [self nWsORqEFbUChPdH:hexString alpha:1.0f];
}

@end
