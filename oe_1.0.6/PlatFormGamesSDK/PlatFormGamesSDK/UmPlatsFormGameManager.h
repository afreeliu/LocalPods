
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UmPlatsFormGameManager : NSObject


+(instancetype)umPlatsFormManagerDeafaults;

#pragma mark ---------------------  启动游戏调用方法
-(void)umPlatsFormLaunchConfigGameID:(NSString *)gid
                      WithSub_GameID:(NSString *)sub_gid
                         WithOpr_Cid:(NSString *)opr_cid
                         WithSdk_Ver:(NSString *)sdk_ver
                        WithGame_Ver:(NSString *)game_ver;

#pragma mark ---------------------- 充值
-(void)umPlatsFormProductId:(NSString*)product_id
            WithProductName:(NSString*)product_name
            withProductDesc:(NSString*)product_desc
               withPayMoney:(NSString*)pay_money
              withCpOrderId:(NSString*)cp_order_id
             withCpServerID:(NSString*)cp_server_id
           withCpServerName:(NSString*)cp_server_name
                 withRoleId:(NSString*)role_id
               withRoleName:(NSString*)role_name
                  withLevel:(NSString*)level
                  withVipLv:(NSString*)vip_lv
                 withGender:(NSString*)gender
                   withGold:(NSString*)gold
                   withCoin:(NSString*)coin
                    withExt:(NSString*)ext;


- (void)methodNames_showSuspensionBall;

-(void)umPlatsFormPlayVideo:(NSString *)videoName
                  videoType:(NSString *)videoType
           passVideoPresent:(CGFloat)present
                 finishPlay:(void(^)(void))block;


-(void)umPlatsFormStopPlayVideo;



-(void)umPlatsFormLogin;


-(void)umPlatsFormLogout;



-(void)umPlatsFormProductId:(NSString*)productId
            withAppleMoney:(NSString*)money
             withCpOrderId:(NSString*)cpOrderId
           WithProductName:(NSString*)ProductName
           withProductDesc:(NSString*)description
                withRoleId:(NSString*)roleId
              withRoleName:(NSString*)roleName
             withRoleLevel:(NSString*)roleLevel
              withServerID:(NSString*)serverId
            withServerName:(NSString*)serverName
                  withMemo:(NSString*)memo;


-(void)umPlatsFormUploadRoleInfoType:(int)upType
                       WithRoleName:(NSString*)roleName
                         withRoleId:(NSString*)roleId
                      withRoleLevel:(NSString*)roleLevel
                       withServerId:(NSString*)serverId
                     withServerName:(NSString*)serverName
                       withVipLevel:(NSString*)vipLevel
                       withGameCoin:(NSString*)coin;



-(void)umPlatsFormLaunchConfigGameID:(NSString *)gid WithSub_GameID:(NSString *)sub_gid;

-(void)umPlatsFormApplicationWillEnterForeground;

@end
