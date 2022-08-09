

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


/// 是否属于手机号的格式
static inline BOOL methodNames_phoneNumberRegular(NSString *str) {
    if (str.length == 0 || str.length != 11) {
        return NO;
    }
    NSString *varNames_tmpregex = @"[0-9]*";
    NSPredicate *varNames_tmppred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",varNames_tmpregex];
    if ([varNames_tmppred evaluateWithObject:str]) {
        return YES;
    }
    return NO;
}
/// 纯数字
static inline BOOL methodNames_pureNumberRegular(NSString *str) {
    if (str.length == 0 || str.length != 6) {
        return NO;
    }
    NSString *varNames_tmpregex = @"[0-9]*";
    NSPredicate *varNames_tmppred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",varNames_tmpregex];
    if ([varNames_tmppred evaluateWithObject:str]) {
        return YES;
    }
    return NO;
}
/// 数字字母，长度为6-20位
static inline BOOL methodNames_numberLetterRegular(NSString *str) {
    if (str.length == 0) {
        return NO;
    }
    NSString *varNames_tmpregex = @"[0-9A-Za-z]{6,20}";
    NSPredicate *varNames_tmppred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",varNames_tmpregex];
    if ([varNames_tmppred evaluateWithObject:str]) {
        return YES;
    }
    return NO;
}

/// 身份证判断长度X
static inline BOOL methodNames_personIDRegular(NSString *str) {
    if (str.length == 0) {
        return NO;
    }
    NSString *varNames_tmpregex = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    NSPredicate *varNames_tmppred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",varNames_tmpregex];
    if ([varNames_tmppred evaluateWithObject:str]) {
        return YES;
    }
    return NO;
}
/// 判断中文名字
static inline BOOL methodNames_chineseNameRegular(NSString *str) {
    if (str.length == 0) {
        return NO;
    }
    NSString *varNames_tmpregex = @"^[\u4E00-\u9FA5]*$";
    NSPredicate *varNames_tmppred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",varNames_tmpregex];
    if ([varNames_tmppred evaluateWithObject:str]) {
        return YES;
    }
    return NO;
}



