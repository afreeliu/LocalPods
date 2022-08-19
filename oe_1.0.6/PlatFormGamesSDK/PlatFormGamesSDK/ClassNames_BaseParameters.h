//
//  ClassNames_BaseParameters.h
//  PlatFormGamesSDK
//
//  Created by lufee on 2022/8/19.
//  Copyright © 2022 TB. All rights reserved.
//

#import <Foundation/Foundation.h>


FOUNDATION_EXTERN NSString *const varNames_gid_Key; // 主游戏ID
FOUNDATION_EXTERN NSString *const varNames_sub_gid_Key; // 子游戏ID
FOUNDATION_EXTERN NSString *const varNames_opr_cid_Key; // 联运渠道ID
FOUNDATION_EXTERN NSString *const varNames_adv_cid_Key; // 媒体渠道ID
FOUNDATION_EXTERN NSString *const varNames_pkg_id_Key; // 包ID，iOS为0; 安卓为分包ID，如无分包ID则为0
FOUNDATION_EXTERN NSString *const varNames_model_type_Key; // 设备型号
FOUNDATION_EXTERN NSString *const varNames_device_code_Key; // 设备码，iOS为IDFA，安卓为 IMEI
FOUNDATION_EXTERN NSString *const varNames_device_uniq_Key; // 每次重新安装都会生成,安卓为 and_uniq, ios 为 ios_uniq , uniq 算法为md5(毫秒+随机字符串)再转大写； 小游戏直接使用 openid 即可 用于快速登陆生成账号的
FOUNDATION_EXTERN NSString *const varNames_mac_Key;
FOUNDATION_EXTERN NSString *const varNames_resolution_Key; // 设备分辨率
FOUNDATION_EXTERN NSString *const varNames_os_ver_Key; // 系统版本
FOUNDATION_EXTERN NSString *const varNames_sdk_ver_Key; // SDK版本
FOUNDATION_EXTERN NSString *const varNames_game_ver_Key; // 游戏版本
FOUNDATION_EXTERN NSString *const varNames_uuid_Key; // 设备uid，安卓为Android_id，iOS为空
FOUNDATION_EXTERN NSString *const varNames_wifi_name_Key; // wifi名字
FOUNDATION_EXTERN NSString *const varNames_net_Key; // 网络状况， WIFI , 4G , 5G , GPRS , 3G
FOUNDATION_EXTERN NSString *const varNames_os_Key; // 系统类型， 1 iOS； 2 安卓； 3 小游戏



@interface ClassNames_BaseParameters : NSObject

/// 获取网络请求最基本参数
+ (NSMutableDictionary *)methodNames_getBaseParameters;

@end

