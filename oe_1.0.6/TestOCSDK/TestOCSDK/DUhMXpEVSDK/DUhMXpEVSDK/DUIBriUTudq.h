

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


/// 是否属于手机号的格式
static inline BOOL kRAdaqkYIUOn(NSString *str) {
    if (str.length == 0 || str.length != 11) {
        return NO;
    }
    NSString *regex = @"[0-9]*";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    if ([pred evaluateWithObject:str]) {
        return YES;
    }
    return NO;
}
/// 纯数字
static inline BOOL kTGPLmOB(NSString *str) {
    if (str.length == 0 || str.length != 6) {
        return NO;
    }
    NSString *regex = @"[0-9]*";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    if ([pred evaluateWithObject:str]) {
        return YES;
    }
    return NO;
}
/// 数字字母，长度为6-20位
static inline BOOL kzJomuDbFgVxtUfX(NSString *str) {
    if (str.length == 0) {
        return NO;
    }
    NSString *regex = @"[0-9A-Za-z]{6,20}";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    if ([pred evaluateWithObject:str]) {
        return YES;
    }
    return NO;
}

/// 身份证判断长度X
static inline BOOL kDKwPpLdQelFNs(NSString *str) {
    if (str.length == 0) {
        return NO;
    }
    NSString *regex = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    if ([pred evaluateWithObject:str]) {
        return YES;
    }
    return NO;
}
/// 判断中文名字
static inline BOOL kJEACegW(NSString *str) {
    if (str.length == 0) {
        return NO;
    }
    NSString *regex = @"^[\u4E00-\u9FA5]*$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    if ([pred evaluateWithObject:str]) {
        return YES;
    }
    return NO;
}



