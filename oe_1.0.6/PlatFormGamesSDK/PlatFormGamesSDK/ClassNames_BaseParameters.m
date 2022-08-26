//
//  ClassNames_BaseParameters.m
//  PlatFormGamesSDK
//
//  Created by lufee on 2022/8/19.
//  Copyright © 2022 TB. All rights reserved.
//

#import "ClassNames_BaseParameters.h"
#import "ClassNames_InitGamesConfigure.h"
#import "ClassNames_DeviceConfigure.h"

NSString *const varNames_gid_Key = @"gid"; // 主游戏ID

NSString *const varNames_sub_gid_Key = @"sub_gid"; // 子游戏ID

NSString *const varNames_opr_cid_Key = @"opr_cid"; // 联运渠道ID

NSString *const varNames_adv_cid_Key = @"adv_cid"; // 媒体渠道ID

NSString *const varNames_pkg_id_Key = @"pkg_id"; // 包ID，iOS为0; 安卓为分包ID，如无分包ID则为0

NSString *const varNames_model_type_Key = @"model_type"; // 设备型号

NSString *const varNames_device_code_Key = @"device_code"; // 设备码，iOS为IDFA，安卓为 IMEI

NSString *const varNames_device_uniq_Key = @"device_uniq"; // 每次重新安装都会生成,安卓为 and_uniq, ios 为 ios_uniq , uniq 算法为md5(毫秒+随机字符串)再转大写； 小游戏直接使用 openid 即可 用于快速登陆生成账号的

NSString *const varNames_mac_Key = @"mac";

NSString *const varNames_resolution_Key = @"resolution"; // 设备分辨率

NSString *const varNames_os_ver_Key = @"os_ver"; // 系统版本

NSString *const varNames_sdk_ver_Key = @"sdk_ver"; // SDK版本

NSString *const varNames_game_ver_Key = @"game_ver"; // 游戏版本

NSString *const varNames_uuid_Key = @"uuid"; // 设备uid，安卓为Android_id，iOS为空

NSString *const varNames_wifi_name_Key = @"wifi_name"; // wifi名字

NSString *const varNames_net_Key = @"net"; // 网络状况， WIFI , 4G , 5G , GPRS , 3G

NSString *const varNames_os_Key = @"os"; // 系统类型， 1 iOS； 2 安卓； 3 小游戏




@implementation ClassNames_BaseParameters


+ (NSMutableDictionary *)methodNames_getBaseParameters {
    
    NSString *varNames_time = methodNames_getCurrentTimestamp();
    NSString *varNames_randString = methodNames_getRandString();
    NSString *varNames_md5String = [varNames_time stringByAppendingString:varNames_randString];
    
    NSString *varNames_sec = methodNames_md5(varNames_md5String);
    
    
    
    
    NSMutableDictionary *varNames_tmpDic = [NSMutableDictionary dictionary];
    [varNames_tmpDic setValue:methodNames_readGameID() forKey:varNames_gid_Key];
    [varNames_tmpDic setValue:methodNames_readSubGameID() forKey:varNames_sub_gid_Key];
    [varNames_tmpDic setValue:methodNames_readOpr_CID() forKey:varNames_opr_cid_Key];
    [varNames_tmpDic setValue:methodNames_readAdvID() forKey:varNames_adv_cid_Key];
    [varNames_tmpDic setValue:@"0" forKey:varNames_pkg_id_Key];
    [varNames_tmpDic setValue:methodNames_getDeviceType() forKey:varNames_model_type_Key];
    [varNames_tmpDic setValue:methodNames_getDeviceIDFA() forKey:varNames_device_code_Key];
    
    [varNames_tmpDic setValue:varNames_sec forKey:varNames_device_uniq_Key];
    
    [varNames_tmpDic setValue:@"" forKey:varNames_mac_Key];
    
    [varNames_tmpDic setValue:methodNames_getDeviceResolution() forKey:varNames_resolution_Key];
    [varNames_tmpDic setValue:methodNames_getDeviceSystemVersion() forKey:varNames_os_ver_Key];
    [varNames_tmpDic setValue:methodNames_getGameVersion() forKey:varNames_game_ver_Key];
    
    [varNames_tmpDic setValue:@"" forKey:varNames_uuid_Key];
    [varNames_tmpDic setValue:methodNames_getWifiName() forKey:varNames_wifi_name_Key];
    [varNames_tmpDic setValue:methodNames_getDeviceNetType() forKey:varNames_net_Key];
    [varNames_tmpDic setValue:@"1" forKey:varNames_os_Key];
    
    
    return varNames_tmpDic;
}





@end
