

#import "ClassNames_Color.h"

@implementation ClassNames_Color


+ (UIColor *)methodNames_colorWithHexString:(NSString *)HexString alpha:(CGFloat)alpha{
    
    NSString *varNames_tmpcString = [[HexString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]uppercaseString];//字符串处理
    
    //例子，stringToConvert #ffffff
    
    if ([varNames_tmpcString length] <6)
        
        return [UIColor whiteColor];//如果非十六进制，返回白色
    
    if ([varNames_tmpcString hasPrefix:@"#"])
        
        varNames_tmpcString = [varNames_tmpcString substringFromIndex:1];//去掉头
    
    if ([varNames_tmpcString length] !=6)//去头非十六进制，返回白色
        
        return [UIColor greenColor];
    
    //分别取RGB的值
    
    NSRange varNames_tmprange;
    
    varNames_tmprange.location =0;
    
    varNames_tmprange.length =2;
    
    NSString *varNames_tmprString = [varNames_tmpcString substringWithRange:varNames_tmprange];
    
    
    
    varNames_tmprange.location =2;
    
    NSString *varNames_tmpgString = [varNames_tmpcString substringWithRange:varNames_tmprange];
    
    
    
    varNames_tmprange.location =4;
    
    NSString *varNames_tmpbString = [varNames_tmpcString substringWithRange:varNames_tmprange];
    
    
    
    unsigned int varNames_tmpr, varNames_tmpg, varNames_tmpb;
    
    //NSScanner把扫描出的制定的字符串转换成Int类型
    
    [[NSScanner scannerWithString:varNames_tmprString] scanHexInt:&varNames_tmpr];
    
    [[NSScanner scannerWithString:varNames_tmpgString] scanHexInt:&varNames_tmpg];
    
    [[NSScanner scannerWithString:varNames_tmpbString] scanHexInt:&varNames_tmpb];
    
    //转换为UIColor
    
    return [UIColor colorWithRed:((float) varNames_tmpr /255.0f)
            
                           green:((float) varNames_tmpg /255.0f)
            
                            blue:((float) varNames_tmpb /255.0f)
            
                           alpha:alpha];
    
}


+ (UIColor *)methodNames_colorWithHexString:(NSString *)hexString {
    return [self methodNames_colorWithHexString:hexString alpha:1.0f];
}

@end
