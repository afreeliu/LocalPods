
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface GTUserInfo : NSObject

@property (nonatomic,copy) NSString *channelId;
@property (nonatomic,copy) NSString *userName;
@property (nonatomic,copy) NSString *uid;
@property (nonatomic,copy) NSString *msg;
@property (nonatomic,copy) NSString *appleCheck;
@end

@protocol GTSDKDelegate <NSObject>

-(void)GTGameLaunchConfigResult:(BOOL)isResult WithMessage:(NSDictionary*)initDic;

-(void)GTGameLoginResult:(BOOL)isResult WithMessage:(GTUserInfo*)info;

-(void)GTGameLogoutResult:(BOOL)isResult WithMessage:(NSString*)msg;

-(void)GTGamePayResult:(BOOL)isResult WithMessage:(NSString*)msg;

@end

@interface GTGameSDK : NSObject

@property (nonatomic,assign)id<GTSDKDelegate> GTGameDelegate;

+(void)GTGameSetLogShow:(BOOL)isShow;

+(instancetype)GTGameDeafaults;

-(void)GTGameLogin;

-(void)GTGameLogout;

-(void)GTGamePayMoney:(NSString*)money
          withProductId:(NSString*)productId
          withCpOrderId:(NSString*)cpOrderId
              withGoods:(NSString*)goods
   withGoodsDescription:(NSString*)description
             withRoleID:(NSString*)roleId
           withRoleName:(NSString*)roleName
          withRoleLevel:(NSString*)roleLevel
           withServerID:(NSString*)serverId
         withServerName:(NSString*)serverName
               withMemo:(NSString*)memo;

-(void)GTGameRoleInfoUploadType:(int)upType WithRoleName:(NSString*)roleName
                       withRoleId:(NSString*)roleId withRoleLevel:(NSString*)roleLevel
                     withServerId:(NSString*)serverId withServerName:(NSString*)serverName
                     withVipLevel:(NSString*)vipLevel withGameCoin:(NSString*)coin;

-(void)GTGameLaunchConfigSDKGameID:(NSString *)gameId andSDKSubGame:(NSString *)subGame;

-(void)GTGameApplicationWillEnterForeground;

@end
