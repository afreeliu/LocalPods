
#import "UmPlatsFormGameManager.h"

#import "ClassNames_DeviceConfigure.h"
#import "ClassNames_SecurityTool.h"

#import "ClassNames_GameInitialiseModel.h"
#import "ClassNames_MemberOrderModel.h"

#import "ClassNames_PGHubView.h"

#import "ClassName_IAPFail.h"
#import "ClassName_IAPInfo.h"
#import "ClassName_IAPMain.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_Color.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_RegularMatch.h"
#import "ClassNames_ViewTool.h"
#import "ClassNames_AnimateTool.h"

#import "ClassNames_NotificationConfigure.h"
#import "ClassNames_InitGamesConfigure.h"

#import "ClassNames_VideoPlayView.h"
#import "ClassNames_MainView.h"
#import "ClassNames_CustomServerView.h"
#import "ClassNames_SuspensionBallButton.h"

#import "ClassNames_RechargeView.h"


#import "ClassNames_BaseParameters.h"
@interface UmPlatsFormGameManager ()

@property (nonatomic, readwrite, strong) UIWindow *varNames_window;

@property (nonatomic, readwrite, strong) ClassNames_VideoPlayView *varNames_videoPlayView;

@property (nonatomic, readwrite, strong) ClassNames_MainView *varNames_mainView;

/// SDK界面开始前的请求
@property (nonatomic, readwrite, strong) ClassNames_GameInitialiseModel *varNames_loginInitModel;

@property (nonatomic, readwrite, strong) ClassNames_GameInitialiseModel *varNames_gameInitModel;

@property (nonatomic, readwrite, strong) ClassNames_MemberOrderModel *varNames_orderModel;

@property (nonatomic, readwrite, strong) ClassNames_BaseModel *varNames_updateRoleModel;

@property (nonatomic, readwrite, strong) NSLayoutConstraint *varNames_topConstraint;
@property (nonatomic, readwrite, strong) NSLayoutConstraint *varNames_bottomConstraint;

@property (nonatomic, readwrite, assign) BOOL varNames_isSendInitNOti;
@property (nonatomic, readwrite, copy) NSString *varNames_appleCheck;

@property (nonatomic, readwrite, strong) ClassNames_SuspensionBallButton *varNames_suspensionBall;

@property (nonatomic, readwrite, strong) ClassNames_BaseModel *varNames_suspensionModel;

@end

@implementation UmPlatsFormGameManager
{
    CGFloat _varNames_originY;
}

+(instancetype)umPlatsFormManagerDeafaults {
    static UmPlatsFormGameManager *varNames_umPlatsForm = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        varNames_umPlatsForm = [[UmPlatsFormGameManager alloc]init];
        
        [[NSNotificationCenter defaultCenter] addObserver:varNames_umPlatsForm selector:@selector(methodNames_showSuspensionBallNoti:) name:varNames_showSuspensionBallNoti object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:varNames_umPlatsForm selector:@selector(methodNames_loginNoti:) name:varNames_userLoginSuceessNoti object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:varNames_umPlatsForm selector:@selector(methodNames_iapResultCall:) name:varNames_IapPayResultNoti object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:varNames_umPlatsForm selector:@selector(methodNames_appleResultCall:) name:varNames_appleResultNoti object:nil];
        
    });
    return varNames_umPlatsForm;
}

#pragma mark ---------------------  启动游戏调用方法
-(void)umPlatsFormLaunchConfigGameID:(NSString *)gid WithSub_GameID:(NSString *)sub_gid WithOpr_Cid:(NSString *)opr_cid WithSdk_Ver:(NSString *)sdk_ver WithGame_Ver:(NSString *)game_ver{
    NSLog(@"最后登录的方式:%ld", methodNames_readLoginType());
    
    if (!gid) {
        
        methodNames_debugLog(@"gameId...NOT NULL");
        return ;
    } else {
        methodNames_saveGameID(gid);
    }
    if (!sub_gid) {
        methodNames_debugLog(@"subGame...NOT NULL");
        return ;
    } else {
        methodNames_saveSubGameID(sub_gid);
    }
    if (!opr_cid) {
        methodNames_debugLog(@"opr_cid...NOT NULL");
    } else {
        methodNames_saveChannelID(opr_cid);
    }
    if (!game_ver) {
        methodNames_debugLog(@"game_ver...NOT NULL");
    } else {
        methodNames_saveGameVersion(game_ver);
    }
    NSMutableDictionary *varNames_parameters = [ClassNames_BaseParameters methodNames_getBaseParameters];
    // 这个 sid 的值需要再确定
    [varNames_parameters setValue:@"10086" forKey:@"sid"];
    __weak typeof(self) weakSelf = self;
    [self.varNames_gameInitModel methodNames_fetchDataWithdURL:methodNames_gameInit() parameters:varNames_parameters];
    self.varNames_gameInitModel.methodNames_completeFetchData = ^(id object) {
        [weakSelf methodNames_configInitGame:object];
    };
    self.varNames_gameInitModel.methodNames_FetchError = ^(NSError *error) {
        NSLog(@"error:%@", error.userInfo);
        dispatch_async(dispatch_get_main_queue(), ^{
            /// 是否发送了初始化的通知,如果没有发送，那么这里发送一次
            [weakSelf methodNames_postInitNotiModel:nil];
        });
    };
    
    // 激活游戏
    [self methodNames_initDevice];
    
}

#pragma mark -------------------- 保存初始化的内容
- (void)methodNames_saveInitData:(ClassNames_GameInitialiseModel *)model {
    methodNames_saveNeedFastLogin(model.varNames_quick_login);
    methodNames_saveNeedBindPhone(model.varNames_bind_phone);
    methodNames_saveNeedBindPersonID(model.varNames_bind_idcard);
    methodNames_saveAppleCheck(model.varNames_apple_check);
}

#pragma mark -------------------- 激活
- (void)methodNames_initDevice {
    
    /// 激活设备
    if (!methodNames_readActivateDevice()) {
        NSMutableDictionary *varNames_tmppara = [ClassNames_BaseParameters methodNames_getBaseParameters];
        [[ClassNames_URLSessionManager methodNames_shareSessionManager]methodNames_requestWithUrl:methodNames_gameSipequ() parameters:varNames_tmppara success:^(NSDictionary *responseData) {
            methodNames_saveActivateDevice();
            // 409 则为当前数据已存在
            NSLog(@"激活设备返回内容:%@", responseData);
        } error:^(NSError *error) {
            methodNames_debugLog(error.userInfo);
        }];
    } else {
        NSLog(@"不激活设备");
    }
    
}



#pragma mark ------------------ 初始化成功，配置初始化信息
- (void)methodNames_configInitGame:(ClassNames_GameInitialiseModel *)varNames_gameInitModel {
    
    if (self.varNames_gameInitModel.varNames_status == ClassNames_FetchDataStatusSuccess) {
        // 是否开启快速登陆 1 为关闭 ， 2 为开启,
        methodNames_saveNeedFastLogin(self.varNames_gameInitModel.varNames_quick_login);
        // 是否绑定手机号 1 为关闭 ， 2 为开启,
        methodNames_saveNeedBindPhone(self.varNames_gameInitModel.varNames_bind_phone);
        // 是否实名制 1 为关闭 ， 2 为开启,
        methodNames_saveNeedBindPersonID(self.varNames_gameInitModel.varNames_bind_idcard);
        // 苹果校验
        methodNames_saveAppleCheck(self.varNames_gameInitModel.varNames_apple_check);
        // 版式  1:横版 2：竖版,
        methodNames_saveVertical(self.varNames_gameInitModel.varNames_is_vertical);
        // 悬浮球 1 为关闭 ， 2 为开启,
        methodNames_saveSoftBall(self.varNames_gameInitModel.varNames_soft_ball);
        // qq 客服
        methodNames_saveKouKou(self.varNames_gameInitModel.varNames_qqId);
        // wx id
        methodNames_savewxID(self.varNames_gameInitModel.varNames_wxId);
        // 宫众号ID
        methodNames_saveServerWchatNumber(self.varNames_gameInitModel.varNames_mpId);
        // 宫众号名称
        methodNames_saveServerWchatName(self.varNames_gameInitModel.varNames_mpName);
        // 二维码
        methodNames_saveServerCodeData(self.varNames_gameInitModel.varNames_follow_wechat_url);
        
    }
    dispatch_async(dispatch_get_main_queue(), ^{
        /// 是否发送了初始化的通知,如果没有发送，那么这里发送一次
        [self methodNames_postInitNotiModel:self.varNames_gameInitModel];
    });
    
}
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
                    withExt:(NSString*)ext {
    NSMutableDictionary *varName_tmpParameter = [ClassNames_BaseParameters methodNames_getBaseParameters];
    [varName_tmpParameter setValue:methodNames_readUserID() forKey:@"udi"];
    [varName_tmpParameter setValue:methodNames_readUserName() forKey:@"uname"];
    [varName_tmpParameter setValue:product_id forKey:@"product_id"];
    [varName_tmpParameter setValue:product_name forKey:@"product_name"];
    [varName_tmpParameter setValue:product_desc forKey:@"product_desc"];
    [varName_tmpParameter setValue:pay_money forKey:@"pay_money"];
    [varName_tmpParameter setValue:cp_order_id forKey:@"cp_order_id"];
    [varName_tmpParameter setValue:cp_server_id forKey:@"cp_server_id"];
    [varName_tmpParameter setValue:cp_server_name forKey:@"cp_server_name"];
    [varName_tmpParameter setValue:role_id forKey:@"role_id"];
    [varName_tmpParameter setValue:role_name forKey:@"role_name"];
    [varName_tmpParameter setValue:level forKey:@"level"];
    [varName_tmpParameter setValue:vip_lv forKey:@"vip_lv"];
    [varName_tmpParameter setValue:gender forKey:@"gender"];
    [varName_tmpParameter setValue:gold forKey:@"gold"];
    [varName_tmpParameter setValue:coin forKey:@"coin"];
    [varName_tmpParameter setValue:ext forKey:@"ext"];
    
    [ClassNames_PGHubView methodNames_showIndicatorWithTitlte:@"开始下单..."];
    [self.varNames_orderModel methodNames_fetchDataWithdURL:methodNames_gameIosplace() parameters:varName_tmpParameter];
    self.varNames_orderModel.methodNames_FetchError = ^(NSError *error) {
        NSString *err = [error.userInfo objectForKey:NSLocalizedDescriptionKey];
        if (err && err.length) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [ClassNames_PGHubView methodNames_hide];
                [ClassNames_PGHubView methodNames_showErrorMessage:err];
                methodNames_postNotification(@"umplatformgameappStore", nil, @{@"result": @"2", @"msg": @"removeLoading"});
            });
        }
    };
    self.varNames_orderModel.methodNames_completeFetchData = ^(ClassNames_MemberOrderModel *object) {
        dispatch_sync(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            
            if (object.varNames_code == 200) {
                if ([object.varNames_pay_type isEqualToString:@"OFF"]) {
                    /// 内购
                    ClassName_IAPInfo *varNames_info = [[ClassName_IAPInfo alloc] init];
                    varNames_info.varNames_productID = product_id;
                    varNames_info.varNames_orderID = object.varNames_order_code;
                    varNames_info.varNames_orderMoney = pay_money;
                    [[ClassName_IAPMain methodNames_iapMainDefaults] methodNames_starBuy:varNames_info];
                } else {
                    /// web
                    [ClassNames_RechargeView methodNames_showPayWebViewWithURL:object.varNames_pay_url];
                }
            } else {
                if (object.varNames_msg) {
                    if ([object.varNames_msg isKindOfClass:NSArray.class]) {
                        NSArray *varNames_tmpmsgArray = (NSArray *) object.varNames_msg;
                        NSString *varNames_tmpmsg = [varNames_tmpmsgArray firstObject];
                        [ClassNames_PGHubView methodNames_showErrorMessage:varNames_tmpmsg];
                    } else {
                        [ClassNames_PGHubView methodNames_showErrorMessage:object.varNames_msg];
                    }
                    
                }
            }
            methodNames_postNotification(@"umplatformgameappStore", nil, @{@"result": @"2", @"msg": @"removeLoading"});
        });
        
    };
    
    
}








#pragma mark --------------------- SDK 登录入口
-(void)umPlatsFormLogin {
    [ClassNames_PGHubView methodNames_showIndicatorWithTitlte:@"加载中..."];
    NSDictionary *varNames_tmppara = [ClassNames_BaseParameters methodNames_getBaseParameters];
    __weak typeof(self) weakSelf = self;
    
    if (self.varNames_gameInitModel.varNames_status == ClassNames_FetchDataStatusSuccess) {
        [self methodNames_handleGameInit];
    } else {
        // 初始化出错了
        methodNames_debugLog(@"初始化出错了");
        methodNames_debugLog(@"需要进行初始化请求");
        
        [self.varNames_gameInitModel methodNames_fetchDataWithdURL:methodNames_gameinitialiseURL() parameters:varNames_tmppara];
        self.varNames_gameInitModel.methodNames_completeFetchData = ^(id object) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [weakSelf methodNames_handleGameInit];
            });
        };
        self.varNames_gameInitModel.methodNames_FetchError = ^(NSError *error) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [ClassNames_PGHubView methodNames_hide];
                [weakSelf methodNames_createLoginView];
                [weakSelf methodNames_postInitNotiModel:nil];
                [ClassNames_PGHubView methodNames_showErrorMessage:@"网络出了小差!!!"];
            });
        };
    }
    
    
    
//    ClassNames_GameInitialiseModel *varNames_tmpinitModel = [[ClassNames_GameInitialiseModel alloc]init];
//    [varNames_tmpinitModel methodNames_fetchDataWithdURL:methodNames_gameinitialiseURL() parameters:varNames_tmppara];
//    varNames_tmpinitModel.methodNames_completeFetchData = ^(id object) {
//        ClassNames_GameInitialiseModel *model = (ClassNames_GameInitialiseModel *)object;
//        dispatch_async(dispatch_get_main_queue(), ^{
//            [ClassNames_PGHubView methodNames_hide];
//
//            /// 是否发送了初始化的通知,如果没有发送，那么这里发送一次
//            if (!weakSelf.varNames_isSendInitNOti) {
////                weakSelf.varNames_appleCheck = model.varNames_switch_appleCheck;
//                [weakSelf methodNames_postInitNotiModel:model];
//            }
//
//            if (!methodNames_getDefault_isPassLogin_config()) {
//                /// 不进行登录的隐藏
////                methodNames_debugLog(@"plist中isPassLogin设置为0");
//                [weakSelf methodNames_createLoginView];
//            } else {
//                methodNames_debugLog(@"plist中isPassLogin设置为1");
//                /// 是否需要隐藏登录还需根据 是否正在审----------核
//                if (!methodNames_readAppleCheck()) {
//                    /// 通过审----------核
//                    [weakSelf methodNames_createLoginView];
//                    methodNames_debugLog(@"审通过了");
//                } else {
//                    methodNames_debugLog(@"审中");
//                    NSString *varNames_tmpUid = methodNames_getDefault_uid();
//                    NSString *varNames_tmpUsername = methodNames_getDefault_userName();
//                    if (!varNames_tmpUid.length || !varNames_tmpUsername.length) {
//                        NSLog(@"没有设置bundle的plist中uid和username的值");
//                        return ;
//                    }
//                    NSDictionary *userInfo = @{
//                                               @"uid": varNames_tmpUid,
//                                               @"username": varNames_tmpUsername
//                                               };
//                    methodNames_saveUserID(varNames_tmpUid);
//                    methodNames_saveUserName(varNames_tmpUsername);
//                    methodNames_postNotification(varNames_userLoginSuceessNoti, nil, userInfo);
//                }
//            }
//
//
//        });
//    };
//    varNames_tmpinitModel.methodNames_FetchError = ^(NSError *error) {
//        dispatch_async(dispatch_get_main_queue(), ^{
//            [ClassNames_PGHubView methodNames_hide];
//            [weakSelf methodNames_createLoginView];
//            [weakSelf methodNames_postInitNotiModel:nil];
//            [ClassNames_PGHubView methodNames_showErrorMessage:@"网络出了小差!!!"];
//        });
//    };
//    self.varNames_loginInitModel = varNames_tmpinitModel;
}



#pragma mark --------------------------------------------------------------------






- (void)methodNames_handleGameInit {
    // 初始化成功了
    [ClassNames_PGHubView methodNames_hide];
    /// 是否发送了初始化的通知,如果没有发送，那么这里发送一次
    if (!self.varNames_isSendInitNOti) {
        [self methodNames_postInitNotiModel:self.varNames_gameInitModel];
    }
    
    if (!methodNames_getDefault_isPassLogin_config()) {
        /// 不进行登录的隐藏。即需要进行登录
        //methodNames_debugLog(@"plist中isPassLogin设置为0");
//        [self methodNames_createLoginView];
        [[ClassNames_MainView methodNames_instanceMainView]methodNames_showLoginView];
        if ([self.varNames_gameInitModel.varNames_notice objectForKey:@"title"] && [self.varNames_gameInitModel.varNames_notice objectForKey:@"tips"]) {
            [[ClassNames_MainView methodNames_instanceMainView]methodNames_showNoticeViewWithTitle:[self.varNames_gameInitModel.varNames_notice objectForKey:@"title"]?:@"" methodNames_content:[self.varNames_gameInitModel.varNames_notice objectForKey:@"tips"]?:@""];
        }
    } else {
        //methodNames_debugLog(@"plist中isPassLogin设置为1");
        /// 是否需要隐藏登录还需根据 是否正在审----------核
        if (!methodNames_readAppleCheck()) {
            /// 通过审----------核
//            [self methodNames_createLoginView];
            [[ClassNames_MainView methodNames_instanceMainView]methodNames_showLoginView];
            methodNames_debugLog(@"审通过了");
        } else {
            methodNames_debugLog(@"审中");
            NSString *varNames_tmpUid = methodNames_getDefault_uid();
            NSString *varNames_tmpUsername = methodNames_getDefault_userName();
            if (!varNames_tmpUid.length || !varNames_tmpUsername.length) {
                NSLog(@"没有设置bundle的plist中uid和username的值");
                return ;
            }
            NSDictionary *userInfo = @{
                                       @"uid": varNames_tmpUid,
                                       @"username": varNames_tmpUsername
                                       };
            methodNames_saveUserID(varNames_tmpUid);
            methodNames_saveUserName(varNames_tmpUsername);
            methodNames_postNotification(varNames_userLoginSuceessNoti, nil, userInfo);
        }
    }
    
    
}


#pragma mark --------------------- 创建登录页面
- (void)methodNames_createLoginView {
    
    self.varNames_mainView = [ClassNames_MainView methodNames_showMainView];
    self.varNames_mainView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_topConstraint = [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_mainView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_mainView methodNames_constriant:0];
    self.varNames_bottomConstraint = [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_mainView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_mainView methodNames_constriant:0];
    // 设备激活
    [self methodNames_initDevice];
}












#pragma mark ---------- 在登陆页面显示前插入视频
-(void)umPlatsFormPlayVideo:(NSString *)videoName
                  videoType:(NSString *)videoType
           passVideoPresent:(CGFloat)present
                 finishPlay:(void(^)(void))block {
    
    NSString *varNames_videoNames = methodNames_getDefault_videoName_config();
    NSString *varNames_videoType = methodNames_getDefault_videoType_config();
    CGFloat varNames_passVideoPresent = methodNames_getDefault_passVideoDuration_config();
    
    if (videoName && videoName.length) {
        varNames_videoNames = videoName;
    }
    if (videoType && videoType.length) {
        varNames_videoType = videoType;
    }
    if (present) {
        varNames_passVideoPresent = present;
    }
    
    
    self.varNames_videoPlayView = [ClassNames_VideoPlayView methodNames_showVideoWithVideoName:varNames_videoNames methodNames_videoType:varNames_videoType methodNames_showPassButton:varNames_passVideoPresent methodNames_finishPlay:block];
    
}



#pragma mark ---------- 停止播放视频
-(void)umPlatsFormStopPlayVideo {
    if (self.varNames_videoPlayView) {
        [self.varNames_videoPlayView methodNames_stopPlayer];
    }
}

///**
// * SDK 登录入口
// */
//-(void)umPlatsFormLogin {
//
////    [[ClassNames_MainView methodNames_instanceMainView]methodNames_showUserCenterView];
////    [[ClassNames_MainView methodNames_instanceMainView]methodNames_showLoginView];
//    [[ClassNames_MainView methodNames_instanceMainView]methodNames_showNoticeView];
//    [self methodNames_showSuspensionBall];
//    return;
//
//    [ClassNames_PGHubView methodNames_showIndicatorWithTitlte:@"加载中..."];
//    NSDictionary *varNames_tmppara = @{
//                           @"gid": methodNames_readGameID(),
//                           @"sub_gid": methodNames_readSubGameID(),
//                           @"game_ver": methodNames_getProjectVersion()
//                           };
//    __weak typeof(self) weakSelf = self;
//    ClassNames_GameInitialiseModel *varNames_tmpinitModel = [[ClassNames_GameInitialiseModel alloc]init];
//    [varNames_tmpinitModel methodNames_fetchDataWithdURL:methodNames_gameinitialiseURL() parameters:varNames_tmppara];
//    varNames_tmpinitModel.methodNames_completeFetchData = ^(id object) {
//        ClassNames_GameInitialiseModel *model = (ClassNames_GameInitialiseModel *)object;
//
//
////        methodNames_saveNeedFastLogin(model.varNames_switch_1login);
////        methodNames_saveNeedBindPhone(model.varNames_switch_bind);
////        methodNames_saveProtocolSwitch(model.varNames_is_protocol);
////        methodNames_saveProtocolURL(model.varNames_url);
////        methodNames_saveAppleCheck(model.varNames_switch_appleCheck);
//
//
//        dispatch_async(dispatch_get_main_queue(), ^{
//            [ClassNames_PGHubView methodNames_hide];
//
//            /// 是否发送了初始化的通知,如果没有发送，那么这里发送一次
//            if (!weakSelf.varNames_isSendInitNOti) {
////                weakSelf.varNames_appleCheck = model.varNames_switch_appleCheck;
//                [weakSelf methodNames_postInitNotiModel:model];
//            }
//
//            if (!methodNames_getDefault_isPassLogin_config()) {
//                /// 不进行登录的隐藏
////                methodNames_debugLog(@"plist中isPassLogin设置为0");
//                [weakSelf methodNames_createLoginView];
//            } else {
//                methodNames_debugLog(@"plist中isPassLogin设置为1");
//                /// 是否需要隐藏登录还需根据 是否正在审----------核
//                if (!methodNames_readAppleCheck()) {
//                    /// 通过审----------核
//                    [weakSelf methodNames_createLoginView];
//                    methodNames_debugLog(@"审通过了");
//                } else {
//                    methodNames_debugLog(@"审中");
//                    NSString *varNames_tmpUid = methodNames_getDefault_uid();
//                    NSString *varNames_tmpUsername = methodNames_getDefault_userName();
//                    if (!varNames_tmpUid.length || !varNames_tmpUsername.length) {
//                        NSLog(@"没有设置bundle的plist中uid和username的值");
//                        return ;
//                    }
//                    NSDictionary *userInfo = @{
//                                               @"uid": varNames_tmpUid,
//                                               @"username": varNames_tmpUsername
//                                               };
//                    methodNames_saveUserID(varNames_tmpUid);
//                    methodNames_saveUserName(varNames_tmpUsername);
//                    methodNames_postNotification(varNames_userLoginSuceessNoti, nil, userInfo);
//                }
//            }
//
//
//        });
//    };
//    varNames_tmpinitModel.methodNames_FetchError = ^(NSError *error) {
//        dispatch_async(dispatch_get_main_queue(), ^{
//            [ClassNames_PGHubView methodNames_hide];
//            [weakSelf methodNames_createLoginView];
//            [weakSelf methodNames_postInitNotiModel:nil];
//            [ClassNames_PGHubView methodNames_showErrorMessage:@"网络出了小差!!!"];
//        });
//    };
//    self.varNames_loginInitModel = varNames_tmpinitModel;
//}

//- (void)methodNames_createLoginView {
//
//    self.varNames_mainView = [ClassNames_MainView methodNames_showMainView];
//    self.varNames_mainView.translatesAutoresizingMaskIntoConstraints = NO;
//    self.varNames_topConstraint = [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_mainView methodNames_constriant:0];
//    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_mainView methodNames_constriant:0];
//    self.varNames_bottomConstraint = [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_mainView methodNames_constriant:0];
//    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_mainView methodNames_constriant:0];
//    // 设备激活
//    [self methodNames_initDevice];
//}




///// 激活设备
//- (void)methodNames_initDevice {
//
//    /// 激活设备
//    if (!methodNames_readActivateDevice()) {
//
//        NSDictionary *varNames_tmppara = @{
//                               @"gid": methodNames_readGameID(),
//                               @"sub_gid": methodNames_readSubGameID(),
//                               @"adv_id": methodNames_readAdvID(),
//                               @"channel_id": methodNames_readOpr_CID(),
//                               @"platform_id": methodNames_readPlatformID(),
//                               @"device_code": methodNames_getDeviceIDFA(),
//                               @"mac": @"0",
//                               @"game_version": methodNames_getProjectVersion(),
//                               @"model_type": methodNames_getDeviceType(),
//                               @"model_no": methodNames_getDeviceType(),
//                               @"resolution": methodNames_getDeviceResolution(),
//                               @"os_version": methodNames_getDeviceSystemVersion(),
//                               @"brand": methodNames_getDeviceBrand(),
//                               @"net": methodNames_getDeviceNetType(),
//                               @"other": @"0",
//                               @"idfv":methodNames_getDeviceUUID(),
//                               @"sdk_ver": methodNames_getSDKVersion_config()
//                               };
//        [[ClassNames_URLSessionManager methodNames_shareSessionManager]methodNames_requestWithUrl:methodNames_activateURL() parameters:varNames_tmppara success:^(NSDictionary *responseData) {
//            methodNames_saveActivateDevice();
//            NSLog(@"激活设备返回内容:%@", responseData);
//        } error:^(NSError *error) {
//            methodNames_debugLog(error.userInfo);
//        }];
//    } else {
////        NSLog(@"不激活设备");
//    }
//
//}


#pragma mark ---------- 接收登陆成功的通知
- (void)methodNames_loginNoti:(NSNotification *)noti {
    methodNames_debugLog(noti.userInfo);
    NSMutableDictionary *varNames_tmploginDict = [NSMutableDictionary dictionaryWithDictionary:[noti userInfo]];
    
    NSString *varNames_tmpuid = [varNames_tmploginDict objectForKey:@"uid"];
    NSString *varNames_tmpusername = [varNames_tmploginDict objectForKey:@"username"];
    __weak typeof(self) weakSelf = self;
    if (varNames_tmpuid.length && varNames_tmpusername.length) {
        [varNames_tmploginDict setValue:@"1" forKey:@"result"];
        [varNames_tmploginDict setValue:@"登陆成功" forKey:@"msg"];
//        [varNames_tmploginDict setValue:self.varNames_gameInitModel.varNames_switch_appleCheck forKey:@"appleCheck"];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self methodNames_loginNotification:YES subMethodNames_callMessage:varNames_tmploginDict];
            [ClassName_IAPFail methodNames_CheckIAPFailOrders];
            weakSelf.varNames_window.hidden = YES;
            weakSelf.varNames_window = nil;
            
            
//            if ([self.varNames_gameInitModel.varNames_is_ball isEqualToString:@"1"]) {
//                /// 过了
//                NSInteger varNames_showballduration = methodNames_willshowBallAfterSecond();
//                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(varNames_showballduration * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//                    [weakSelf methodNames_showSuspensionBall];
//                });
//            }
            
        });
    } else {
        methodNames_debugLog(@"接收不到登录成功的信息");
        [weakSelf methodNames_showSuspensionBall];
    }
}

- (void)methodNames_showSuspensionBallNoti:(NSNotification *)noti {
    [self methodNames_showSuspensionBall];
    if (self.varNames_gameInitModel.varNames_soft_ball.integerValue == 2) {
        [self methodNames_showSuspensionBall];
    }
}

- (void)methodNames_showSuspensionBall {
    __weak typeof(self) weakSelf = self;
    if (!self.varNames_suspensionBall || !self.varNames_suspensionBall.superview) {
        self.varNames_suspensionBall = [ClassNames_SuspensionBallButton methodNames_showSuspensionBallWithLanguageType:@"zh-cn"];
        self.varNames_suspensionBall.methodNames_clickBallMenu = ^(NSInteger index) {
            [ClassNames_MainView methodNames_cleanView];
            if (index == 0) {
                [[ClassNames_MainView methodNames_instanceMainView] methodNames_showCustomerGiftView];
            } else if (index == 1) {
                [[ClassNames_MainView methodNames_instanceMainView] methodNames_showDetailCustomerView];
            } else if (index == 2) {
                [[ClassNames_MainView methodNames_instanceMainView]methodNames_showUserCenterView];
            }
        };
    }
}

- (void)methodNames_showQQ {
    [ClassNames_PGHubView methodNames_showHubView];
    self.varNames_suspensionModel = [[ClassNames_BaseModel alloc]init];
    NSDictionary *varNames_tmppara = @{
                           @"sub_gid": methodNames_readSubGameID(),
                           @"user_name": methodNames_readUserName()
                           };
    [self.varNames_suspensionModel methodNames_fetchDataWithdURL:methodNames_suspensionCustomQQURL() parameters:varNames_tmppara];
    self.varNames_suspensionModel.methodNames_completeFetchData = ^(ClassNames_BaseModel *varNames_object) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            if (varNames_object.varNames_code == 200) {
                [ClassNames_CustomServerView methodNames_showCustomServerViewWithContentJson:varNames_object.varNames_data];
            } else {
                [ClassNames_PGHubView methodNames_showErrorMessage:varNames_object.varNames_msg];
            }
        });
    };
    self.varNames_suspensionModel.methodNames_FetchError = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            [ClassNames_PGHubView methodNames_showErrorMessage:@"网络链接超时"];
        });
    };
}

-(void)methodNames_loginNotification:(BOOL)YorN subMethodNames_callMessage:(NSDictionary *)loginMsg{
    if (YorN) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"umplatformgamelogin" object:nil userInfo:loginMsg];
    }else{
        [[NSNotificationCenter defaultCenter] postNotificationName:@"umplatformgamelogin" object:nil userInfo:loginMsg];
    }
}

#pragma mark ---------- 监听H5支付的回调
- (void)methodNames_iapResultCall:(NSNotification *)noti {
    BOOL varNames_tmpisResult = [[[noti userInfo] objectForKey:@"isResult"] boolValue];
    if (varNames_tmpisResult) {
        [self methodNames_appStoreNotification:YES subMethodNames_callMessage:@{@"result":@"1",@"order_no":[[[noti userInfo] objectForKey:@"info"] objectForKey:@"order_no"],@"msg":@"appStore...Success"}];
    }else{
        [self methodNames_appStoreNotification:NO subMethodNames_callMessage:@{@"result":@"0",@"msg":[[noti userInfo] objectForKey:@"msg"]}];
    }
    
}
-(void)methodNames_appStoreNotification:(BOOL)YorN subMethodNames_callMessage:(NSDictionary *)loginMsg{
    if (YorN) {
        methodNames_postNotification(@"umplatformgameappStore", nil, loginMsg);
    }else{
        methodNames_postNotification(@"umplatformgameappStore", nil, loginMsg);
    }
}

- (void)methodNames_appleResultCall:(NSNotification *)noti {

}


/**
 * SDK 注销
 * 在登录状态下，需要重新弹出 SDK 界面的都需要先调用注销接口。先移除登录状态
 */
-(void)umPlatsFormLogout {
    
    [self methodNames_logoutNotification:YES subMethodNames_callMessage:@"logout...Success"];
    
    methodNames_saveAccount(@"");
    [self methodNames_createLoginView];
    if (self.varNames_suspensionBall) {
        [self.varNames_suspensionBall methodNames_hideSuspensionBall];
    }
}
-(void)methodNames_logoutNotification:(BOOL)YorN subMethodNames_callMessage:(NSString *)msg{
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
    NSMutableDictionary * varNames_tmpparams = [NSMutableDictionary dictionary];
    varNames_tmpparams[@"user_name"] = methodNames_readUserName();
    varNames_tmpparams[@"uid"] = methodNames_readUserID();
    varNames_tmpparams[@"adv_id"] = methodNames_readAdvID();
    varNames_tmpparams[@"gid"] = methodNames_readGameID();
    varNames_tmpparams[@"sub_gid"] = methodNames_readSubGameID();
    varNames_tmpparams[@"cp_server_id"] = serverId;
    varNames_tmpparams[@"server_name"] = serverName;
    varNames_tmpparams[@"platform_id"] = methodNames_readPlatformID();
    varNames_tmpparams[@"channel_id"] = methodNames_readOpr_CID();
    varNames_tmpparams[@"pay_money"] = money;
    varNames_tmpparams[@"product_name"] = ProductName;
    varNames_tmpparams[@"game_grade"] = roleLevel;
    varNames_tmpparams[@"role_id"] = roleId;
    varNames_tmpparams[@"role_name"] = roleName;
    varNames_tmpparams[@"cp_order_id"] = cpOrderId;
    varNames_tmpparams[@"game_ver"] = methodNames_getProjectVersion();
    varNames_tmpparams[@"desc"] = description;
    varNames_tmpparams[@"memo"] = memo;
    varNames_tmpparams[@"productId"] = productId;
    varNames_tmpparams[@"device_code"] = methodNames_getDeviceIDFA();

    [ClassNames_PGHubView methodNames_showIndicatorWithTitlte:@"开始下单..."];
    [self.varNames_orderModel methodNames_fetchDataWithdURL:methodNames_memberorderURL() parameters:varNames_tmpparams];
    self.varNames_orderModel.methodNames_FetchError = ^(NSError *error) {
        NSString *err = [error.userInfo objectForKey:NSLocalizedDescriptionKey];
        if (err && err.length) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [ClassNames_PGHubView methodNames_hide];
                [ClassNames_PGHubView methodNames_showErrorMessage:err];
                methodNames_postNotification(@"umplatformgameappStore", nil, @{@"result": @"2", @"msg": @"removeLoading"});
            });
        }
    };
    self.varNames_orderModel.methodNames_completeFetchData = ^(ClassNames_MemberOrderModel *object) {
        dispatch_sync(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_hide];
            
            if (object.varNames_code == 200) {
                if ([object.varNames_pay_type isEqualToString:@"OFF"]) {
                    /// 内购
                    ClassName_IAPInfo *varNames_info = [[ClassName_IAPInfo alloc] init];
                    varNames_info.varNames_productID = productId;
                    varNames_info.varNames_orderID = object.varNames_order_code;
                    varNames_info.varNames_orderMoney = money;
                    [[ClassName_IAPMain methodNames_iapMainDefaults] methodNames_starBuy:varNames_info];
                } else {
                    /// web
                    [ClassNames_RechargeView methodNames_showPayWebViewWithURL:object.varNames_pay_url];
                }
            } else {
                if (object.varNames_msg) {
                    if ([object.varNames_msg isKindOfClass:NSArray.class]) {
                        NSArray *varNames_tmpmsgArray = (NSArray *) object.varNames_msg;
                        NSString *varNames_tmpmsg = [varNames_tmpmsgArray firstObject];
                        [ClassNames_PGHubView methodNames_showErrorMessage:varNames_tmpmsg];
                    } else {
                        [ClassNames_PGHubView methodNames_showErrorMessage:object.varNames_msg];
                    }
                    
                }
            }
            methodNames_postNotification(@"umplatformgameappStore", nil, @{@"result": @"2", @"msg": @"removeLoading"});
        });
        
    };
}

-(void)iapStarPay:(NSDictionary*)ipaDict{
    ClassName_IAPInfo *varNames_info = [[ClassName_IAPInfo alloc] init];
    varNames_info.varNames_productID = [ipaDict objectForKey:@"productId"];
    varNames_info.varNames_orderID = [ipaDict objectForKey:@"order_code"];
    varNames_info.varNames_orderMoney = [ipaDict objectForKey:@"pay_money"];
    [[ClassName_IAPMain methodNames_iapMainDefaults] methodNames_starBuy:varNames_info];
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
    NSMutableDictionary * varNames_tmpparams = [NSMutableDictionary dictionary];
    varNames_tmpparams[@"user_name"] = methodNames_readUserName();
    varNames_tmpparams[@"uid"] = methodNames_readUserID();
    varNames_tmpparams[@"role_id"] = roleId;
    varNames_tmpparams[@"role_name"] = roleName;
    varNames_tmpparams[@"platform_id"] = methodNames_readPlatformID();
    varNames_tmpparams[@"gid"] = methodNames_readGameID();
    varNames_tmpparams[@"sub_gid"] = methodNames_readSubGameID();
    varNames_tmpparams[@"game_grade"] = roleLevel;
    varNames_tmpparams[@"channel_id"] = methodNames_readOpr_CID();
    varNames_tmpparams[@"cp_server_id"] = serverId;
    varNames_tmpparams[@"vip"] = vipLevel;
    varNames_tmpparams[@"game_coin"] = coin;
    varNames_tmpparams[@"server_name"] = serverName;
    varNames_tmpparams[@"level"] = roleLevel;
    varNames_tmpparams[@"adv_id"] = methodNames_readAdvID();
    if (upType == 2) { // 2 = 角色登录
        varNames_tmpparams[@"sdk_version"] = methodNames_getSDKVersion_config();
        varNames_tmpparams[@"device_code"] = methodNames_getDeviceIDFA();
        varNames_tmpparams[@"device_brand"] = methodNames_getDeviceBrand();
        varNames_tmpparams[@"model_type"] = methodNames_getDeviceType();// IPHONE 几
        varNames_tmpparams[@"device_resolution"] = methodNames_getDeviceResolution();/// 屏幕的宽*高
        varNames_tmpparams[@"device_net"] = methodNames_getDeviceNetType();/// wifi 蜂窝
        // 提交用户登录信息
        [self.varNames_updateRoleModel methodNames_fetchDataWithdURL:methodNames_updateuserloginURL() parameters:varNames_tmpparams];
        self.varNames_updateRoleModel.methodNames_completeFetchData = ^(ClassNames_BaseModel *object) {
            NSLog(@"上传用户登陆信息成功");
        };
    } else {
        // 提交用户信息
        [self.varNames_updateRoleModel methodNames_fetchDataWithdURL:methodNames_memberoleURL() parameters:varNames_tmpparams];
        self.varNames_updateRoleModel.methodNames_completeFetchData = ^(ClassNames_BaseModel *object) {
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
    return;
    NSMutableDictionary *varNames_tmppara = [NSMutableDictionary dictionary];
    if (!gid) {
        
        methodNames_debugLog(@"gameId...NOT NULL");
        return ;
    } else {
        [varNames_tmppara setValue:gid forKey:@"gid"];
        methodNames_saveGameID(gid);
    }
    if (!sub_gid) {
        methodNames_debugLog(@"subGame...NOT NULL");
        return ;
    } else {
        [varNames_tmppara setValue:sub_gid forKey:@"sub_gid"];
        methodNames_saveSubGameID(sub_gid);
    }
    [varNames_tmppara setValue:methodNames_getProjectVersion() forKey:@"game_ver"];
    [varNames_tmppara setValue:methodNames_getDeviceIDFA() forKey:@"device_code"];
    __weak typeof(self) weakSelf = self;
    [self.varNames_gameInitModel methodNames_fetchDataWithdURL:methodNames_gameinitialiseURL() parameters:varNames_tmppara];
    self.varNames_gameInitModel.methodNames_completeFetchData = ^(id object) {
        ClassNames_GameInitialiseModel *model = (ClassNames_GameInitialiseModel *)object;
        
        
//        methodNames_saveNeedFastLogin(model.varNames_switch_1login);
//        methodNames_saveNeedBindPhone(model.varNames_switch_bind);
//        methodNames_saveProtocolSwitch(model.varNames_is_protocol);
//        methodNames_saveProtocolURL(model.varNames_url);
        
        dispatch_async(dispatch_get_main_queue(), ^{
            /// 是否发送了初始化的通知,如果没有发送，那么这里发送一次
//            weakSelf.varNames_appleCheck = model.varNames_switch_appleCheck;
            [weakSelf methodNames_postInitNotiModel:model];
        });
    };
    self.varNames_gameInitModel.methodNames_FetchError = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            /// 是否发送了初始化的通知,如果没有发送，那么这里发送一次
            [weakSelf methodNames_postInitNotiModel:nil];
        });
    };
    // 设备激活
    [self methodNames_initDevice];
}

#pragma mark ---------- 发送激活通知
- (void)methodNames_postInitNotiModel:(ClassNames_GameInitialiseModel *)varNames_argModel {
    NSMutableDictionary *varNames_tmpDic = [NSMutableDictionary dictionary];
    if (varNames_argModel && varNames_argModel.varNames_code == 200) {
        
        [varNames_tmpDic setValue:@"1" forKey:@"result"];
        [varNames_tmpDic setValue:@"init....success" forKey:@"msg"];
        [varNames_tmpDic setValue:varNames_argModel.varNames_apple_check forKey:@"appleCheck"];
        // 致富回调url
        [varNames_tmpDic setValue:varNames_argModel.varNames_pay_notify_url forKey:@"set_url"];
    } else {
        [varNames_tmpDic setValue:@"0" forKey:@"result"];
        [varNames_tmpDic setValue:@"" forKey:@"set_url"];
        [varNames_tmpDic setValue:@"1" forKey:@"appleCheck"];
        [varNames_tmpDic setValue:@"init....fail" forKey:@"msg"];
    }
    methodNames_debugLog(varNames_tmpDic);
    if (!self.varNames_isSendInitNOti) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"umplatformgameinit" object:nil userInfo:varNames_tmpDic];
        if (varNames_argModel.varNames_code == 200) {
            self.varNames_isSendInitNOti = YES;
        }
    }
}


/**
 * SDK 返回应用设置
 * 需要返回应用接口调用 - (void)applicationWillEnterForeground:(UIApplication *)application
 
 */
-(void)umPlatsFormApplicationWillEnterForeground {
    
    methodNames_postNotification(varNames_appleResultNoti, nil, nil);
}


#pragma mark ---------- 监听键盘事件
- (void)methodNames_moveWindow:(NSNotification *)noti {
    NSDictionary *varNames_tmpdic = noti.object;
    CGFloat varNames_tmpduration = [[varNames_tmpdic objectForKey:varNames_durationKey] floatValue];
    CGFloat varNames_tmpmoveValue = [[varNames_tmpdic objectForKey:varNames_moveValueKey] floatValue];
    BOOL varNames_tmpisUpWindow = [[varNames_tmpdic objectForKey:varNames_isUpWindowKey] boolValue];
    __weak typeof(self) weakSelf = self;
    if (varNames_tmpisUpWindow) {
        self.varNames_topConstraint.constant = varNames_tmpmoveValue;
        self.varNames_bottomConstraint.constant = -self.varNames_topConstraint.constant;
        [self.varNames_mainView setNeedsLayout];
        
    } else {
        
        [UIView animateWithDuration:varNames_tmpduration animations:^{
            
            weakSelf.varNames_topConstraint.constant = 0;
            weakSelf.varNames_bottomConstraint.constant = 0;
            [weakSelf.varNames_mainView setNeedsLayout];
        }];
    }
}

-(void)dealloc {
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

-(instancetype)init {
    self = [super init];
    if (self) {
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(methodNames_moveWindow:) name:varNames_moveWindowNoti object:nil];
        
    }
    return self;
}





-(ClassNames_MemberOrderModel *)varNames_orderModel {
    if (!_varNames_orderModel) {
        _varNames_orderModel = [[ClassNames_MemberOrderModel alloc]init];
    }
    return _varNames_orderModel;
}

-(ClassNames_GameInitialiseModel *)varNames_gameInitModel {
    if (!_varNames_gameInitModel) {
        _varNames_gameInitModel = [[ClassNames_GameInitialiseModel alloc]init];
    }
    return _varNames_gameInitModel;
}

-(ClassNames_BaseModel *)varNames_updateRoleModel {
    if (!_varNames_updateRoleModel) {
        _varNames_updateRoleModel = [[ClassNames_BaseModel alloc]init];
    }
    return _varNames_updateRoleModel;
}

@end
