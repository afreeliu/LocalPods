

#import <Foundation/Foundation.h>

#pragma mark ---------- 通知相关的key

FOUNDATION_EXTERN NSString *const ekBiylArxKdMU;
FOUNDATION_EXTERN NSString *const eupKMnOsWwqLr;
FOUNDATION_EXTERN NSString *const erMjmAWpTeXlwKey;
FOUNDATION_EXTERN NSString *const eJnLsZKE;
FOUNDATION_EXTERN NSString *const eJtEMRDAmI;
FOUNDATION_EXTERN NSString *const epGsFMhzEfQ;
FOUNDATION_EXTERN NSString *const etjCufzxWRhH;

#pragma mark ---------- 发送通知
static inline void nQPXLfIKevpyzFVH(NSString *notiName, id object, NSDictionary *userInfo) {
    [[NSNotificationCenter defaultCenter]postNotificationName:notiName object:object userInfo:userInfo];
}
