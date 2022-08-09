

#import <Foundation/Foundation.h>

#pragma mark ---------- 通知相关的key

FOUNDATION_EXTERN NSString *const varNames_moveWindowNoti;
FOUNDATION_EXTERN NSString *const varNames_durationKey;
FOUNDATION_EXTERN NSString *const varNames_isUpWindowKey;
FOUNDATION_EXTERN NSString *const varNames_moveValueKey;
FOUNDATION_EXTERN NSString *const varNames_userLoginSuceessNoti;
FOUNDATION_EXTERN NSString *const varNames_IapPayResultNoti;
FOUNDATION_EXTERN NSString *const varNames_appleResultNoti;

#pragma mark ---------- 发送通知
static inline void methodNames_postNotification(NSString *notiName, id object, NSDictionary *userInfo) {
    [[NSNotificationCenter defaultCenter]postNotificationName:notiName object:object userInfo:userInfo];
}
