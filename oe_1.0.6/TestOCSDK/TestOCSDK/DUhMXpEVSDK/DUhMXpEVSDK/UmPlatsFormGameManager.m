

#import "UmPlatsFormGameManager.h"

#import "DUAaXhHMroqv.h"
#import "DUJwXyISMdzCUh.h"

#import "DUzXTHIFNQxAn.h"
#import "DUBVqmhD.h"

#import "DUyUrAEagzMZ.h"

#import "DULuTVJrxFsUiADz.h"
#import "DUBUucLDItTQF.h"
#import "DURGvtkixp.h"
#import "DUGcbRnKpJlPkyoY.h"
#import "DULCiQqMJAk.h"
#import "DUjHPamSNKWkfM.h"
#import "DUIBriUTudq.h"
#import "DUMsxKfgyw.h"
#import "DUqEONnQKwFro.h"

#import "DUmZjChQNHcbXvD.h"
#import "DUPnFUxRSujZJwh.h"

#import "DUKxuUIr.h"
#import "DUXJHWecmLtAMlNOi.h"
#import "DUJwXADgdmyteGzZl.h"
@interface UmPlatsFormGameManager ()

@property (nonatomic, readwrite, strong) UIWindow *eBCTumNbkDOJGMsq;

@property (nonatomic, readwrite, strong) DUXJHWecmLtAMlNOi *eTgAMRutSl;

@property (nonatomic, readwrite, strong) DUJwXADgdmyteGzZl *erfJVLRYvuzUKpE;
/// SDK界面开始前的请求
@property (nonatomic, readwrite, strong) DUzXTHIFNQxAn *eqmVECFMhjoArLn;

@property (nonatomic, readwrite, strong) DUzXTHIFNQxAn *ezPpRtLbxHDveFg;

@property (nonatomic, readwrite, strong) DUBVqmhD *eJODpSLoWtzVbU;

@property (nonatomic, readwrite, strong) DUjmZRSlJeTuw *epWCGVreHadM;

@property (nonatomic, readwrite, strong) NSLayoutConstraint *eVHmjcTv;
@property (nonatomic, readwrite, strong) NSLayoutConstraint *eYlTkxt;


@property (nonatomic, readwrite, assign) BOOL eqxPzUryE;
@property (nonatomic, readwrite, copy) NSString *etdLcsJ;

@end

@implementation UmPlatsFormGameManager
{
    CGFloat _eLcWkUATbmEG;
}


///**
// * 单例方法
//
// @return 返回 UmPlatFormGameManager 对象
// */
+(instancetype)umPlatsFormManagerDeafaults {
    static UmPlatsFormGameManager *enlSYBUHDRIbuKwF = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        enlSYBUHDRIbuKwF = [[UmPlatsFormGameManager alloc]init];
        
        [[NSNotificationCenter defaultCenter] addObserver:enlSYBUHDRIbuKwF selector:@selector(kthyorZz:) name:eMapQoRwN object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:enlSYBUHDRIbuKwF selector:@selector(kTnMJOctFjQlN:) name:evTjyASpkdREBHsI object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:enlSYBUHDRIbuKwF selector:@selector(kXnoKsruIJqaVt:) name:eqFBhKwLo object:nil];
        
    });
    return enlSYBUHDRIbuKwF;
}

#pragma mark ---------- 在登陆页面显示前插入视频
-(void)umPlatsFormPlayVideo:(NSString *)videoName
                  videoType:(NSString *)videoType
           passVideoPresent:(CGFloat)present
                 finishPlay:(void(^)(void))block {
    
    NSString *ewtmOuDoKvs = kFEbqUBpyNxZ();
    NSString *eyeFSTH = kQqzsRTulK();
    CGFloat esbqMGwlkjB = kFyhavoCduXwBPpg();
    
    if (videoName && videoName.length) {
        ewtmOuDoKvs = videoName;
    }
    if (videoType && videoType.length) {
        eyeFSTH = videoType;
    }
    if (present) {
        esbqMGwlkjB = present;
    }
    
    
    self.eTgAMRutSl = [DUXJHWecmLtAMlNOi kdSzeClsBhOtZIYxVideoWithVideoName:ewtmOuDoKvs kenwbxNzGcMaQ:eyeFSTH kOYScsxTQXmhjtCF:esbqMGwlkjB kDPBTbpAu:block];
    
}



#pragma mark ---------- 停止播放视频
-(void)umPlatsFormStopPlayVideo {
    if (self.eTgAMRutSl) {
        [self.eTgAMRutSl kZfRoNYBgcay];
    }
}


/**
 * SDK 登录入口
 */
-(void)umPlatsFormLogin {
    
    kwskAYzGy();
    
    [DUyUrAEagzMZ kdSzeClsBhOtZIYxIndicatorWithTitlte:@"加载中..."];
    NSDictionary *para = @{
                           @"gid": kEJsVuODloh(),
                           @"sub_gid": kOVNImM(),
                           @"game_ver": kIahkVXmio()
                           };
    __weak typeof(self) weakSelf = self;
    DUzXTHIFNQxAn *initModel = [[DUzXTHIFNQxAn alloc]init];
    [initModel kXLPOEpCBozkZM:kGJQLTCEcyhsPjOx() parameters:para];
    initModel.kurcxnG = ^(id object) {
        DUzXTHIFNQxAn *model = (DUzXTHIFNQxAn *)object;
        
        
        kQSqyDRhaTC(model.eTChzKusYcGxWVO);
        kAPeNfy(model.epIRBCvleugMKE);
        kJDPdHBOSrhc(model.eqGjcvWFKQMygECS);
        kfybMdImjJz(model.eipZbkWcqlRm);
        ksRopzFMmfcTqNy(model.eeYBbRniwMT);
        dispatch_async(dispatch_get_main_queue(), ^{
            [DUyUrAEagzMZ kmBSjbQ];
            
            /// 是否发送了初始化的通知,如果没有发送，那么这里发送一次
            if (!weakSelf.eqxPzUryE) {
                weakSelf.etdLcsJ = model.eeYBbRniwMT;
                weakSelf.eqxPzUryE = YES;
                [weakSelf initNotification:YES
                           WithCallMessage:@"init...Success"];
            }
            
            
            if (!kOLChpPmfzcwq()) {
                /// 不进行登录的隐藏
                [weakSelf kHbAkQSM];
            } else {
                /// 是否需要隐藏登录还需根据 是否正在审----------核
                if (!kIvtCmpxbDJfeXMy()) {
                    /// 通过审----------核
                    [weakSelf kHbAkQSM];
                } else {
                    NSString *eYocBIbTsXjueOSM = kdeUwSYBiGN();
                    NSString *elxPqeEIsfUJSa = kjxzpeV();
                    if (!eYocBIbTsXjueOSM.length || !elxPqeEIsfUJSa.length) {
                        NSLog(@"没有设置bundle的plist中uid和username的值");
                        return ;
                    }
                    NSDictionary *userInfo = @{
                                               @"uid": eYocBIbTsXjueOSM,
                                               @"username": elxPqeEIsfUJSa
                                               };
                    kqsEGtorOQ(eYocBIbTsXjueOSM);
                    kZjvHqnW(elxPqeEIsfUJSa);
                    kXQPAZNUwrm(eMapQoRwN, nil, userInfo);
                }
            }
            
            
        });
    };
    initModel.kkMohviBYIVtrnEm = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [DUyUrAEagzMZ kmBSjbQ];
            [weakSelf kHbAkQSM];
            [DUyUrAEagzMZ kdSzeClsBhOtZIYxErrorMessage:@"网络出了小差!!!"];
        });
    };
    self.eqmVECFMhjoArLn = initModel;
}

- (void)kHbAkQSM {
    
    if (!self.erfJVLRYvuzUKpE || !self.erfJVLRYvuzUKpE.superview) {
        self.erfJVLRYvuzUKpE = [DUJwXADgdmyteGzZl kLGwidT];
        self.erfJVLRYvuzUKpE.translatesAutoresizingMaskIntoConstraints = NO;
        self.eVHmjcTv = [DUjHPamSNKWkfM khXiHKlJYIcsWTb:self.erfJVLRYvuzUKpE kjwoMfYHX:0];
        [DUjHPamSNKWkfM kcNCfuJpSgtid:self.erfJVLRYvuzUKpE kjwoMfYHX:0];
        self.eYlTkxt = [DUjHPamSNKWkfM kKvyLhTYV:self.erfJVLRYvuzUKpE kjwoMfYHX:0];
        [DUjHPamSNKWkfM kdMvtuRCVqTon:self.erfJVLRYvuzUKpE kjwoMfYHX:0];
        // 设备激活
        [self kcvjLCseuQMlxGS];
    }
}



/// 激活设备
- (void)kcvjLCseuQMlxGS {
    
    /// 激活设备
    if (!kPumWDdkClqwIz()) {
        
        NSDictionary *para = @{
                               @"gid": kEJsVuODloh(),
                               @"sub_gid": kOVNImM(),
                               @"adv_id": kXsJmMxSNAyp(),
                               @"channel_id": kGxWjgvIUlbJhFoO(),
                               @"platform_id": kKQumhviO(),
                               @"device_code": kGvYpKkCRTLiA(),
                               @"mac": @"0",
                               @"game_version": kIahkVXmio(),
                               @"model_type": kiDdoFwSNbfKBsr(),
                               @"model_no": kiDdoFwSNbfKBsr(),
                               @"resolution": klerbWxBCsa(),
                               @"os_version": kqCLScxJow(),
                               @"brand": kJKnliAjUr(),
                               @"net": kctPdYo(),
                               @"other": @"0",
                               @"idfv":kXtTBUJcGCenIV(),
                               @"sdk_ver": kqghLJHpV()
                               };
        [[DUuTWZnmQbKezC kuaDrosxkO]kMhtULydG:kPsVLbMvl() parameters:para success:^(NSDictionary *responseData) {
            kEAeIdtmZSPcfuB();
        } error:^(NSError *error) {
            kbOZhoQJ(@"激活设备失败");
            kbOZhoQJ(error.userInfo);
        }];
    } else {
//        NSLog(@"不激活设备");
    }
    
}


#pragma mark ---------- 接收登陆成功的通知
- (void)kthyorZz:(NSNotification *)noti {
    NSMutableDictionary *loginDict = [NSMutableDictionary dictionaryWithDictionary:[noti userInfo]];
    
    NSString *uid = [loginDict objectForKey:@"uid"];
    NSString *username = [loginDict objectForKey:@"username"];
    __weak typeof(self) weakSelf = self;
    if (uid.length && username.length) {
        [loginDict setValue:@"1" forKey:@"result"];
        [loginDict setValue:@"登陆成功" forKey:@"msg"];
        [loginDict setValue:self.ezPpRtLbxHDveFg.eeYBbRniwMT forKey:@"appleCheck"];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self loginNotification:YES WithCallMessage:loginDict];
            [DULuTVJrxFsUiADz kWeyvOM];
            weakSelf.eBCTumNbkDOJGMsq.hidden = YES;
            weakSelf.eBCTumNbkDOJGMsq = nil;
        });
    } else {
        kbOZhoQJ(@"接收不到登录成功的信息");
    }
    
    
}
-(void)loginNotification:(BOOL)YorN WithCallMessage:(NSDictionary *)loginMsg{
    if (YorN) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"umplatformgamelogin" object:nil userInfo:loginMsg];
    }else{
        [[NSNotificationCenter defaultCenter] postNotificationName:@"umplatformgamelogin" object:nil userInfo:loginMsg];
    }
}

#pragma mark ---------- 监听H5支付的回调
- (void)kTnMJOctFjQlN:(NSNotification *)noti {
    BOOL isResult = [[[noti userInfo] objectForKey:@"isResult"] boolValue];
    if (isResult) {
        [self appStoreNotification:YES WithCallMessage:@{@"result":@"1",@"order_no":[[[noti userInfo] objectForKey:@"info"] objectForKey:@"order_no"],@"msg":@"appStore...Success"}];
    }else{
        [self appStoreNotification:NO WithCallMessage:@{@"result":@"0",@"msg":[[noti userInfo] objectForKey:@"msg"]}];
    }
    
}
-(void)appStoreNotification:(BOOL)YorN WithCallMessage:(NSDictionary *)loginMsg{
    if (YorN) {
        kXQPAZNUwrm(@"umplatformgameappStore", nil, loginMsg);
    }else{
        kXQPAZNUwrm(@"umplatformgameappStore", nil, loginMsg);
    }
}

- (void)kXnoKsruIJqaVt:(NSNotification *)noti {
    /// 在WebView中实现了监听方法
//    //接受当应用返回前台时是否关闭web界面
//    if ([[noti object] integerValue] == 1) {
//        if (VC.payVC.view) {
//            [VC.payVC.view removeFromSuperview];
//        }
//        [self iapStarPay:[noti userInfo]];
//    }else{
//        [ClassName_SDKConfigs kwHAPfqzmJbsxZag].eAjDHVNZsP = YES;
//    }
}


/**
 * SDK 注销
 * 在登录状态下，需要重新弹出 SDK 界面的都需要先调用注销接口。先移除登录状态
 */
-(void)umPlatsFormLogout {
    
    [self logoutNotification:YES WithCallMessage:@"logout...Success"];
}
-(void)logoutNotification:(BOOL)YorN WithCallMessage:(NSString *)msg{
    if (YorN) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"umplatformgamelogout" object:nil userInfo:@{@"result":@"1",@"msg":[NSString stringWithFormat:@"%@",msg]}];
    }else{
        [[NSNotificationCenter defaultCenter] postNotificationName:@"umplatformgamelogout" object:nil userInfo:@{@"result":@"0",@"msg":[NSString stringWithFormat:@"%@",msg]}];
    }
}

/**
 * 充值接口
 
 @param productId       苹果产品Id
 @param money           金额（元）
 @param cpOrderId       cp订单号Id
 @param ProductName     商品名字
 @param description     商品描述
 @param roleId          角色ID
 @param roleName        角色名字
 @param roleLevel       角色等级
 @param serverId        服务器ID
 @param serverName      服务器名字
 @param memo            透传参数
 */

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
                   withMemo:(NSString*)memo {
    NSMutableDictionary * params = [NSMutableDictionary dictionary];
    params[@"user_name"] = kgIYHJEOb();
    params[@"uid"] = kRPbtqU();
    params[@"adv_id"] = kXsJmMxSNAyp();
    params[@"gid"] = kEJsVuODloh();
    params[@"sub_gid"] = kOVNImM();
    params[@"cp_server_id"] = serverId;
    params[@"server_name"] = serverName;
    params[@"platform_id"] = kKQumhviO();
    params[@"channel_id"] = kGxWjgvIUlbJhFoO();
    params[@"pay_money"] = money;
    params[@"product_name"] = ProductName;
    params[@"game_grade"] = roleLevel;
    params[@"role_id"] = roleId;
    params[@"role_name"] = roleName;
    params[@"cp_order_id"] = cpOrderId;
    params[@"game_ver"] = kIahkVXmio();
    params[@"desc"] = description;
    params[@"memo"] = memo;
    params[@"productId"] = productId;
    params[@"device_code"] = kGvYpKkCRTLiA();
//    kbOZhoQJ(params);
    [DUyUrAEagzMZ kdSzeClsBhOtZIYxIndicatorWithTitlte:@"开始下单..."];
    [self.eJODpSLoWtzVbU kXLPOEpCBozkZM:kbwFygjqMf() parameters:params];
    self.eJODpSLoWtzVbU.kkMohviBYIVtrnEm = ^(NSError *error) {
        NSString *err = [error.userInfo objectForKey:NSLocalizedDescriptionKey];
        if (err && err.length) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [DUyUrAEagzMZ kmBSjbQ];
                [DUyUrAEagzMZ kdSzeClsBhOtZIYxErrorMessage:err];
                kXQPAZNUwrm(@"umplatformgameappStore", nil, @{@"result": @"2", @"msg": @"removeLoading"});
            });
        }
    };
    self.eJODpSLoWtzVbU.kurcxnG = ^(DUBVqmhD *object) {
        dispatch_sync(dispatch_get_main_queue(), ^{
            [DUyUrAEagzMZ kmBSjbQ];
            
            if (object.ebTBquLMZ == 200) {
                if ([object.efgaebwNo isEqualToString:@"OFF"]) {
                    /// 内购
                    DUBUucLDItTQF *ehFzcYRQxSTwl = [[DUBUucLDItTQF alloc] init];
                    ehFzcYRQxSTwl.eXZIHhGce = productId;
                    ehFzcYRQxSTwl.eynCKRtLQIOSj = object.eZkgPzphbNd;
                    ehFzcYRQxSTwl.eltoPruFHT = money;
                    [[DURGvtkixp kULvlpbE] kcFRimaHVxwWKUXD:ehFzcYRQxSTwl];
                } else {
                    /// web
                    
                    DUKxuUIr *payView = [DUKxuUIr kcTHZmNMzJuvjBa:object.eiEcDOZ];
                    payView.kSwHrjTcmkhNQo = ^{
                        /// 苹果内购
                        DUBUucLDItTQF *ehFzcYRQxSTwl = [[DUBUucLDItTQF alloc] init];
                        
                        ehFzcYRQxSTwl.eXZIHhGce = productId;
                        ehFzcYRQxSTwl.eynCKRtLQIOSj = cpOrderId;
                        ehFzcYRQxSTwl.eltoPruFHT = money;
                        [[DURGvtkixp kULvlpbE] kcFRimaHVxwWKUXD:ehFzcYRQxSTwl];
                    };
                }
            } else {
                if (object.euwmDFU) {
                    if ([object.euwmDFU isKindOfClass:NSArray.class]) {
                        NSArray *msgArray = (NSArray *) object.euwmDFU;
                        NSString *msg = [msgArray firstObject];
                        [DUyUrAEagzMZ kdSzeClsBhOtZIYxErrorMessage:msg];
                    } else {
                        [DUyUrAEagzMZ kdSzeClsBhOtZIYxErrorMessage:object.euwmDFU];
                    }
                    
                }
            }
            kXQPAZNUwrm(@"umplatformgameappStore", nil, @{@"result": @"2", @"msg": @"removeLoading"});
        });
        
    };
}

-(void)iapStarPay:(NSDictionary*)ipaDict{
    DUBUucLDItTQF *ehFzcYRQxSTwl = [[DUBUucLDItTQF alloc] init];
    ehFzcYRQxSTwl.eXZIHhGce = [ipaDict objectForKey:@"productId"];
    ehFzcYRQxSTwl.eynCKRtLQIOSj = [ipaDict objectForKey:@"order_code"];
    ehFzcYRQxSTwl.eltoPruFHT = [ipaDict objectForKey:@"pay_money"];
    [[DURGvtkixp kULvlpbE] kcFRimaHVxwWKUXD:ehFzcYRQxSTwl];
}

#pragma mark === === === === === === 数据上报 === === === === === ===

/**
 * 角色创建、登陆与升级时，调用此接口
 @param upType          接口类型 （1 == 创建角色 2 == 角色登陆 3 == 角色升级）
 @param roleName        角色名字
 @param roleId          角色ID
 @param roleLevel       角色等级
 @param serverId        服务器ID
 @param serverName      服务器名字
 @param vipLevel        VIP等级
 @param coin            金币数量
 */
-(void)umPlatsFormUploadRoleInfoType:(int)upType
                        WithRoleName:(NSString*)roleName
                          withRoleId:(NSString*)roleId
                       withRoleLevel:(NSString*)roleLevel
                        withServerId:(NSString*)serverId
                      withServerName:(NSString*)serverName
                        withVipLevel:(NSString*)vipLevel
                        withGameCoin:(NSString*)coin {
    NSMutableDictionary * params = [NSMutableDictionary dictionary];
    params[@"user_name"] = kgIYHJEOb();
    params[@"uid"] = kRPbtqU();
    params[@"role_id"] = roleId;
    params[@"role_name"] = roleName;
    params[@"platform_id"] = kKQumhviO();
    params[@"gid"] = kEJsVuODloh();
    params[@"sub_gid"] = kOVNImM();
    params[@"game_grade"] = roleLevel;
    params[@"channel_id"] = kGxWjgvIUlbJhFoO();
    params[@"cp_server_id"] = serverId;
    params[@"vip"] = vipLevel;
    params[@"game_coin"] = coin;
    params[@"server_name"] = serverName;
    params[@"level"] = roleLevel;
    params[@"adv_id"] = kXsJmMxSNAyp();
    if (upType == 2) { // 2 = 角色登录
        params[@"sdk_version"] = kqghLJHpV();
        params[@"device_code"] = kGvYpKkCRTLiA();
        params[@"device_brand"] = kJKnliAjUr();
        params[@"model_type"] = kiDdoFwSNbfKBsr();// IPHONE 几
        params[@"device_resolution"] = klerbWxBCsa();/// 屏幕的宽*高
        params[@"device_net"] = kctPdYo();/// wifi 蜂窝
        // 提交用户登录信息
        [self.epWCGVreHadM kXLPOEpCBozkZM:ktxpRLKAv() parameters:params];
        self.epWCGVreHadM.kurcxnG = ^(DUjmZRSlJeTuw *object) {
            NSLog(@"上传用户登陆信息成功");
        };
    } else {
        // 提交用户信息
        [self.epWCGVreHadM kXLPOEpCBozkZM:kOupzXj() parameters:params];
        self.epWCGVreHadM.kurcxnG = ^(DUjmZRSlJeTuw *object) {
            NSLog(@"上传用户登陆信息成功");
        };
    }
}

#pragma mark === === === === === === 应用配置 === === === === === ===

/**
 * SDK 基本信息配置接口
 * 需要在启动函数里调用 - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
 
 ********** 由于激活统计需要，请务必把该接口放置所有接口之前。启动即调用。
 @param gid       字符串   游戏id
 @param sub_gid   字符串   游戏子包id
 */

-(void)umPlatsFormLaunchConfigGameID:(NSString *)gid WithSub_GameID:(NSString *)sub_gid {
    NSMutableDictionary *para = [NSMutableDictionary dictionary];
    if (!gid) {
        
        [self initNotification:NO WithCallMessage:@"gameId...NOT NULL"];
        return ;
    } else {
        [para setObject:gid forKey:@"gid"];
        kpRBmvdnrVzk(gid);
    }
    if (!sub_gid) {
        
        [self initNotification:NO WithCallMessage:@"subGame...NOT NULL"];
        return ;
    } else {
        [para setObject:sub_gid forKey:@"sub_gid"];
        kaHriPwB(sub_gid);
    }
    [para setObject:kIahkVXmio() forKey:@"game_ver"];
    
    __weak typeof(self) weakSelf = self;
    [self.ezPpRtLbxHDveFg kXLPOEpCBozkZM:kGJQLTCEcyhsPjOx() parameters:para];
    self.ezPpRtLbxHDveFg.kurcxnG = ^(id object) {
        DUzXTHIFNQxAn *model = (DUzXTHIFNQxAn *)object;
        kQSqyDRhaTC(model.eTChzKusYcGxWVO);
        kAPeNfy(model.epIRBCvleugMKE);
        kJDPdHBOSrhc(model.eqGjcvWFKQMygECS);
        kfybMdImjJz(model.eipZbkWcqlRm);
        
        dispatch_async(dispatch_get_main_queue(), ^{
            /// 是否发送了初始化的通知,如果没有发送，那么这里发送一次
            if (!weakSelf.eqxPzUryE) {
                weakSelf.etdLcsJ = model.eeYBbRniwMT;
                weakSelf.eqxPzUryE = YES;
                [weakSelf initNotification:YES
                           WithCallMessage:@"init...Success"];
            }
        });
    };
    
    // 设备激活
    [self kcvjLCseuQMlxGS];
}

#pragma mark ---------- 发送激活通知
-(void)initNotification:(BOOL)YorN WithCallMessage:(NSString *)msg{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    if (self.etdLcsJ.length) {
        if (YorN) {
            [dic setObject:self.etdLcsJ forKey:@"appleCheck"];
        } else {
            [dic setObject:@"0" forKey:@"appleCheck"];
        }
    } else {
        [dic setObject:@"0" forKey:@"appleCheck"];
    }
    if (YorN) {
        [dic setObject:@"1" forKey:@"result"];
        [dic setObject:[NSString stringWithFormat:@"%@",msg] forKey:@"msg"];
        
        [[NSNotificationCenter defaultCenter] postNotificationName:@"umplatformgameinit" object:nil userInfo:dic];
    }else{
        [[NSNotificationCenter defaultCenter] postNotificationName:@"umplatformgameinit" object:nil userInfo:dic];
    }
    kbOZhoQJ(dic);
}


/**
 * SDK 返回应用设置
 * 需要返回应用接口调用 - (void)applicationWillEnterForeground:(UIApplication *)application
 
 */
-(void)umPlatsFormApplicationWillEnterForeground {
    
    kXQPAZNUwrm(eqFBhKwLo, nil, nil);
}


#pragma mark ---------- 监听键盘事件
- (void)kXfBAcGtPKdo:(NSNotification *)noti {
    NSDictionary *dic = noti.object;
    CGFloat duration = [[dic objectForKey:eTfaGisKey] floatValue];
    CGFloat moveValue = [[dic objectForKey:eNRTAwP] floatValue];
    BOOL isUpWindow = [[dic objectForKey:eDqijpIoVxcPzdE] boolValue];
    __weak typeof(self) weakSelf = self;
    if (isUpWindow) {
        self.eVHmjcTv.constant = moveValue;
        self.eYlTkxt.constant = -moveValue;
        [self.erfJVLRYvuzUKpE setNeedsLayout];
        
    } else {
        
        [UIView animateWithDuration:duration animations:^{
            
            weakSelf.eVHmjcTv.constant = 0;
            weakSelf.eYlTkxt.constant = 0;
            [weakSelf.erfJVLRYvuzUKpE setNeedsLayout];
        }];
    }
}

-(void)dealloc {
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

-(instancetype)init {
    self = [super init];
    if (self) {
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(kXfBAcGtPKdo:) name:efGAtFYNhpcB object:nil];
        
    }
    return self;
}





-(DUBVqmhD *)eJODpSLoWtzVbU {
    if (!_eJODpSLoWtzVbU) {
        _eJODpSLoWtzVbU = [[DUBVqmhD alloc]init];
    }
    return _eJODpSLoWtzVbU;
}

-(DUzXTHIFNQxAn *)ezPpRtLbxHDveFg {
    if (!_ezPpRtLbxHDveFg) {
        _ezPpRtLbxHDveFg = [[DUzXTHIFNQxAn alloc]init];
    }
    return _ezPpRtLbxHDveFg;
}

-(DUjmZRSlJeTuw *)epWCGVreHadM {
    if (!_epWCGVreHadM) {
        _epWCGVreHadM = [[DUjmZRSlJeTuw alloc]init];
    }
    return _epWCGVreHadM;
}

@end
