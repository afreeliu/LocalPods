
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UmPlatsFormGameManager : NSObject


+(instancetype)umPlatsFormManagerDeafaults;

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
