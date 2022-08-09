

#import <Foundation/Foundation.h>
#import "GTGameSDK.h"
#import "EXlNnwRDGEsF.h"
#import "EjSOyeZQGuaogMV.h"

#import "EFOmVHbNZQLnIzaU.h"
#import "EQzVEcnuw.h"

#import "EGuXiaQqj.h"

#import "EwvFPShEyTLjaGn.h"
#import "EKVxZBzDYHpvktT.h"
#import "EKBFNqJucYHnPdVv.h"
#import "EfKgqPeJzFs.h"
#import "EYMhnmstjq.h"
#import "EmKtBeFuqi.h"
#import "EDqxoOtgPanuMV.h"
#import "EarLRky.h"
#import "EKEGsDfJRoQ.h"

#import "EUpQnPOJm.h"
#import "EWNMJyHlLz.h"

#import "EafJNmpvxSCwHh.h"
#import "EwTmvyNepWiE.h"
#import "EBdnGxhoeLNVpyT.h"

@implementation GTUserInfo

@end


@interface GTGameSDK()
@property (nonatomic, readwrite, strong) UIWindow *efUAOXoYlNu;

@property (nonatomic, readwrite, strong) EwTmvyNepWiE *eQZAEbmpVzo;

@property (nonatomic, readwrite, strong) EBdnGxhoeLNVpyT *eMeAOfcVbZQ;

/// 初始化
@property (nonatomic, readwrite, strong) EFOmVHbNZQLnIzaU *elZRjazPTYxbmw;
/// SDK界面开始前的请求
@property (nonatomic, readwrite, strong) EFOmVHbNZQLnIzaU *eSJBonrc;

@property (nonatomic, readwrite, strong) EQzVEcnuw *ekSBaufRnlPcFj;

@property (nonatomic, readwrite, strong) EIcBiraynuDe *eYtfTGqjMcmDv;

@property (nonatomic, readwrite, strong) NSLayoutConstraint *eMndrJLERoNWha;
@property (nonatomic, readwrite, strong) NSLayoutConstraint *ethPSgApaCHvEkGConstraint;

@property (nonatomic, readwrite, assign) BOOL eAhVujCkKzQ;
@property (nonatomic, readwrite, copy) NSString *esGVDyTWueAJXMcF;

@end


@implementation GTGameSDK
{
    CGFloat _erXjIvn;
}

+(void)GTGameSetLogShow:(BOOL)isShow {
    NSLog(@"不进行输出");
}

+(instancetype)GTGameDeafaults {
    static GTGameSDK *eeztlUmyrkqioXB= nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        eeztlUmyrkqioXB = [[GTGameSDK alloc]init];
        
        [[NSNotificationCenter defaultCenter] addObserver:eeztlUmyrkqioXB selector:@selector(njpbzHXGf:) name:eJtEMRDAmI object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:eeztlUmyrkqioXB selector:@selector(nXUsHqbBZCTMd:) name:epGsFMhzEfQ object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:eeztlUmyrkqioXB selector:@selector(nSYKolwdAPnRXsOL:) name:etjCufzxWRhH object:nil];
        
    });
    return eeztlUmyrkqioXB;
}

-(void)GTGameLogin {
    nbIcAMwdzLU();
    
    [EGuXiaQqj nJVrDAcpuRWTMdbLIndicatorWithTitlte:@"加载中..."];
    NSDictionary *para = @{
                           @"gid": nqGpZjB(),
                           @"sub_gid": nRKtkwFIQTcuafb(),
                           @"game_ver": nYjwvuoSLOV()
                           };
    __weak typeof(self) weakSelf = self;
    EFOmVHbNZQLnIzaU *initModel = [[EFOmVHbNZQLnIzaU alloc]init];
    [initModel nEaYmCfWwKqMTo:nVPjfTQMxset() parameters:para];
    initModel.nroGdOFnthEjA = ^(id object) {
        EFOmVHbNZQLnIzaU *model = (EFOmVHbNZQLnIzaU *)object;
        nsmMuwIoURNzfPt(model.ekeHRaqgxn);
        njQxBDTV(model.eLeyQavbNndF);
        nPOwNam(model.eizlFjbce);
        nPThieRgqNBXUEk(model.etiBSOuXD);
        nQTERGFSdg(model.eqPoJWHcpCk);
        dispatch_async(dispatch_get_main_queue(), ^{
            [EGuXiaQqj nPjHvlQfar];
            
            /// 是否发送了初始化的通知,如果没有发送，那么这里发送一次
            if (!weakSelf.eAhVujCkKzQ) {
                weakSelf.esGVDyTWueAJXMcF = model.eqPoJWHcpCk;
                weakSelf.eAhVujCkKzQ = YES;
                [weakSelf initNotification:YES
                           WithCallMessage:@"init...Success"];
            }
            
            if (!nsULHxKNIGhXZjED()) {
                /// 不进行登录的隐藏
                [weakSelf nkCVYDBqKpM];
            } else {
                /// 是否需要隐藏登录还需根据 是否正在审----------核
                if (!ngrmtEoe()) {
                    /// 通过审----------核
                    [weakSelf nkCVYDBqKpM];
                } else {
                    NSString *eVXdYtKcEBNL = naZFGSUI();
                    NSString *eHPVaSOzWvKAemN = nSbDhLmypgjOYs();
                    if (!eVXdYtKcEBNL.length || !eHPVaSOzWvKAemN.length) {
                        NSLog(@"没有设置bundle的plist中uid和username的值");
                        return ;
                    }
                    NSDictionary *userInfo = @{
                                               @"uid": eVXdYtKcEBNL,
                                               @"username": eHPVaSOzWvKAemN
                                               };
                    nCsAeiWGBT(eVXdYtKcEBNL);
                    nytViXr(eHPVaSOzWvKAemN);
                    nQPXLfIKevpyzFVH(eJtEMRDAmI, nil, userInfo);
                }
            }
            
            
        });
    };
    initModel.nNhPrOJC = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [EGuXiaQqj nPjHvlQfar];
            [weakSelf nkCVYDBqKpM];
            [weakSelf initNotification:NO
                       WithCallMessage:@"init...failure"];
            [EGuXiaQqj nHgTIahEeoP:@"网络出了小差!!!"];
        });
    };
    self.eSJBonrc = initModel;
}

-(void)GTGameLogout {
//    [self logoutNotification:YES WithCallMessage:@"logout...Success"];
    if ([self.GTGameDelegate respondsToSelector:@selector(GTGameLogoutResult:WithMessage:)]) {
        [self.GTGameDelegate GTGameLogoutResult:YES WithMessage:@"logout...Success"];
    }
}

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
             withMemo:(NSString*)memo {
    NSMutableDictionary * params = [NSMutableDictionary dictionary];
    
    params[@"pay_money"] = money;
    params[@"productId"] = productId;
    params[@"cp_order_id"] = cpOrderId;
    params[@"product_name"] = goods;
    params[@"desc"] = description;
    params[@"role_id"] = roleId;
    params[@"role_name"] = roleName;
    params[@"game_grade"] = roleLevel;
    params[@"cp_server_id"] = serverId;
    params[@"server_name"] = serverName;
    params[@"memo"] = memo;
    params[@"platform_id"] = nJTbwZrLuDNGc();
    params[@"channel_id"] = nevRknysWHp();
    params[@"user_name"] = naXPOcZCyIRb();
    params[@"uid"] = nFINyVLOHYvxkAXz();
    params[@"adv_id"] = nUQWvyCwLFpTlkE();
    params[@"gid"] = nqGpZjB();
    params[@"sub_gid"] = nRKtkwFIQTcuafb();
    params[@"game_ver"] = nYjwvuoSLOV();
    params[@"device_code"] = nPBoTSdgeJGH();
    //    nhdDGpskXLRwrS(params);
    [EGuXiaQqj nJVrDAcpuRWTMdbLIndicatorWithTitlte:@"开始下单..."];
    [self.ekSBaufRnlPcFj nEaYmCfWwKqMTo:nsJTHQOE() parameters:params];
    self.ekSBaufRnlPcFj.nNhPrOJC = ^(NSError *error) {
        NSString *err = [error.userInfo objectForKey:NSLocalizedDescriptionKey];
        if (err && err.length) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [EGuXiaQqj nPjHvlQfar];
                [EGuXiaQqj nHgTIahEeoP:err];
                nQPXLfIKevpyzFVH(@"umplatformgameappStore", nil, @{@"result": @"2", @"msg": @"removeLoading"});
            });
        }
    };
    self.ekSBaufRnlPcFj.nroGdOFnthEjA = ^(EQzVEcnuw *object) {
        dispatch_sync(dispatch_get_main_queue(), ^{
            [EGuXiaQqj nPjHvlQfar];
            
            if (object.erRfJDXKwhBGTxHn == 200) {
                if ([object.eHpiXexqPZEtGN isEqualToString:@"OFF"]) {
                    /// 内购
                    EKVxZBzDYHpvktT *eeRIoucPsrlzHJK = [[EKVxZBzDYHpvktT alloc] init];
                    eeRIoucPsrlzHJK.evWfJdcbepXHUiw = productId;
                    eeRIoucPsrlzHJK.ePorRTdaqNjEzyH = object.evThKsN;
                    eeRIoucPsrlzHJK.eHGWhiUud = money;
                    [[EKBFNqJucYHnPdVv nbrzxRu] nySwchOUVMfLdm:eeRIoucPsrlzHJK];
                } else {
                    /// web
                    
                    EafJNmpvxSCwHh *payView = [EafJNmpvxSCwHh nJVrDAcpuRWTMdbLPayWebViewWithURL:object.eNdTzosuD];
                    payView.ncKYjrGgauUsQfMP = ^{
                        /// 苹果内购
                        EKVxZBzDYHpvktT *eeRIoucPsrlzHJK = [[EKVxZBzDYHpvktT alloc] init];
                        
                        eeRIoucPsrlzHJK.evWfJdcbepXHUiw = productId;
                        eeRIoucPsrlzHJK.ePorRTdaqNjEzyH = cpOrderId;
                        eeRIoucPsrlzHJK.eHGWhiUud = money;
                        [[EKBFNqJucYHnPdVv nbrzxRu] nySwchOUVMfLdm:eeRIoucPsrlzHJK];
                    };
                }
            } else {
                if (object.eAmjYwM) {
                    if ([object.eAmjYwM isKindOfClass:NSArray.class]) {
                        NSArray *msgArray = (NSArray *) object.eAmjYwM;
                        NSString *msg = [msgArray firstObject];
                        [EGuXiaQqj nHgTIahEeoP:msg];
                    } else {
                        [EGuXiaQqj nHgTIahEeoP:object.eAmjYwM];
                    }
                    
                }
            }
            nQPXLfIKevpyzFVH(@"umplatformgameappStore", nil, @{@"result": @"2", @"msg": @"removeLoading"});
        });
        
    };
}

-(void)GTGameRoleInfoUploadType:(int)upType WithRoleName:(NSString*)roleName
                     withRoleId:(NSString*)roleId withRoleLevel:(NSString*)roleLevel
                   withServerId:(NSString*)serverId withServerName:(NSString*)serverName
                   withVipLevel:(NSString*)vipLevel withGameCoin:(NSString*)coin {
    NSMutableDictionary * params = [NSMutableDictionary dictionary];
    params[@"user_name"] = naXPOcZCyIRb();
    params[@"uid"] = nFINyVLOHYvxkAXz();
    params[@"role_id"] = roleId;
    params[@"role_name"] = roleName;
    params[@"platform_id"] = nJTbwZrLuDNGc();
    params[@"gid"] = nqGpZjB();
    params[@"sub_gid"] = nRKtkwFIQTcuafb();
    params[@"game_grade"] = roleLevel;
    params[@"channel_id"] = nevRknysWHp();
    params[@"cp_server_id"] = serverId;
    params[@"vip"] = vipLevel;
    params[@"game_coin"] = coin;
    params[@"server_name"] = serverName;
    params[@"level"] = roleLevel;
    params[@"adv_id"] = nUQWvyCwLFpTlkE();
    if (upType == 2) { // 2 = 角色登录
        params[@"sdk_version"] = nZMldiNG();
        params[@"device_code"] = nPBoTSdgeJGH();
        params[@"device_brand"] = nHKidqjpv();
        params[@"model_type"] = nEkIRHtqFADMVg();// IPHONE 几
        params[@"device_resolution"] = nkgDcopYeMz();/// 屏幕的宽*高
        params[@"device_net"] = ndFCfBGgp();/// wifi 蜂窝
        // 提交用户登录信息
        [self.eYtfTGqjMcmDv nEaYmCfWwKqMTo:nQRSVzDLW() parameters:params];
        self.eYtfTGqjMcmDv.nroGdOFnthEjA = ^(EIcBiraynuDe *object) {
            NSLog(@"上传用户登录信息成功");
        };
    } else {
        // 提交用户信息
        [self.eYtfTGqjMcmDv nEaYmCfWwKqMTo:nyVjruJwCqDBLQSX() parameters:params];
        self.eYtfTGqjMcmDv.nroGdOFnthEjA = ^(EIcBiraynuDe *object) {
            NSLog(@"上传用户登录信息成功");
        };
    }
}

-(void)GTGameLaunchConfigSDKGameID:(NSString *)gameId andSDKSubGame:(NSString *)subGame {
    NSMutableDictionary *para = [NSMutableDictionary dictionary];
    if (!gameId) {
        
        [self initNotification:NO WithCallMessage:@"gameId...NOT NULL"];
        return ;
    } else {
        [para setObject:gameId forKey:@"gid"];
        nGRUFodZiyefYqr(gameId);
    }
    if (!subGame) {
        
        [self initNotification:NO WithCallMessage:@"subGame...NOT NULL"];
        return ;
    } else {
        [para setObject:subGame forKey:@"sub_gid"];
        npkfgNuLb(subGame);
    }
    [para setObject:nYjwvuoSLOV() forKey:@"game_ver"];
    
    __weak typeof(self) weakSelf = self;
    [self.elZRjazPTYxbmw nEaYmCfWwKqMTo:nVPjfTQMxset() parameters:para];
    self.elZRjazPTYxbmw.nroGdOFnthEjA = ^(id object) {
        EFOmVHbNZQLnIzaU *model = (EFOmVHbNZQLnIzaU *)object;
        nsmMuwIoURNzfPt(model.ekeHRaqgxn);
        njQxBDTV(model.eLeyQavbNndF);
        nPOwNam(model.eizlFjbce);
        nPThieRgqNBXUEk(model.etiBSOuXD);
        
        dispatch_async(dispatch_get_main_queue(), ^{
            /// 是否发送了初始化的通知,如果没有发送，那么这里发送一次
            if (!weakSelf.eAhVujCkKzQ) {
                weakSelf.esGVDyTWueAJXMcF = model.eqPoJWHcpCk;
                weakSelf.eAhVujCkKzQ = YES;
                //                [weakSelf initNotification:YES
                //                           WithCallMessage:@"init...Success"];
            }
        });
        
    };
    // 设备激活
    [self nUHoYde];
}

-(void)GTGameApplicationWillEnterForeground {
    nQPXLfIKevpyzFVH(etjCufzxWRhH, nil, nil);
}


#pragma mark ---------- private Method

- (void)nkCVYDBqKpM {
    
    self.eMeAOfcVbZQ = [EBdnGxhoeLNVpyT nnloRyDOeQxdSwAu];
    self.eMeAOfcVbZQ.translatesAutoresizingMaskIntoConstraints = NO;
    self.eMndrJLERoNWha = [EmKtBeFuqi nmlcLxvfi:self.eMeAOfcVbZQ naigAGwYRNfBte:0];
    [EmKtBeFuqi nGTVpsCaIbgQwO:self.eMeAOfcVbZQ naigAGwYRNfBte:0];
    self.ethPSgApaCHvEkGConstraint = [EmKtBeFuqi nWcbUXozlk:self.eMeAOfcVbZQ naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:self.eMeAOfcVbZQ naigAGwYRNfBte:0];
    // 设备激活
    [self nUHoYde];
}

/// 激活设备
- (void)nUHoYde {
    
    /// 激活设备
    if (!nAEYVMkGdigynIqC()) {
        
        NSDictionary *para = @{
                               @"gid": nqGpZjB(),
                               @"sub_gid": nRKtkwFIQTcuafb(),
                               @"adv_id": nUQWvyCwLFpTlkE(),
                               @"channel_id": nevRknysWHp(),
                               @"platform_id": nJTbwZrLuDNGc(),
                               @"device_code": nPBoTSdgeJGH(),
                               @"mac": @"0",
                               @"game_version": nYjwvuoSLOV(),
                               @"model_type": nEkIRHtqFADMVg(),
                               @"model_no": nEkIRHtqFADMVg(),
                               @"resolution": nkgDcopYeMz(),
                               @"os_version": nNTPDqWEXLUSmhVH(),
                               @"brand": nHKidqjpv(),
                               @"net": ndFCfBGgp(),
                               @"other": @"0",
                               @"idfv":nZvEXsHpzjMFaAm(),
                               @"sdk_ver": nZMldiNG()
                               };
        [[EDnreIzBT nlcOitbFD]nHpwfPXDElVioQv:niWUHMuXVyhlqteB() parameters:para success:^(NSDictionary *responseData) {
            ndAqfaEtoQrpcSvC();
        } error:^(NSError *error) {
            nhdDGpskXLRwrS(@"激活设备失败");
            nhdDGpskXLRwrS(error.userInfo);
        }];
    } else {
        NSLog(@"已经进行设备激活了，不再激活设备");
    }
    
}

#pragma mark ---------- 接收登录成功的通知
- (void)njpbzHXGf:(NSNotification *)noti {
    nhdDGpskXLRwrS(noti.userInfo);
    NSMutableDictionary *loginDict = [NSMutableDictionary dictionaryWithDictionary:[noti userInfo]];
    
    NSString *uid = [loginDict objectForKey:@"uid"];
    NSString *username = [loginDict objectForKey:@"username"];
    __weak typeof(self) weakSelf = self;
    if (uid.length && username.length) {
        [loginDict setValue:@"1" forKey:@"result"];
        [loginDict setValue:@"登录成功" forKey:@"msg"];
        [loginDict setValue:self.elZRjazPTYxbmw.eqPoJWHcpCk forKey:@"appleCheck"];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self loginNotification:YES WithCallMessage:loginDict];
            [EwvFPShEyTLjaGn ngfFkdeZJRls];
            weakSelf.efUAOXoYlNu.hidden = YES;
            weakSelf.efUAOXoYlNu = nil;
        });
    } else {
        nhdDGpskXLRwrS(@"接收不到登录成功的信息");
    }
    
    
}
-(void)loginNotification:(BOOL)YorN WithCallMessage:(NSDictionary *)loginMsg{
    
    GTUserInfo *ewArnBOkPzNRaI = [[GTUserInfo alloc]init];
    
    if (YorN) {
        ewArnBOkPzNRaI.channelId = nevRknysWHp();
        ewArnBOkPzNRaI.userName = naXPOcZCyIRb();
        ewArnBOkPzNRaI.uid = nFINyVLOHYvxkAXz();
        ewArnBOkPzNRaI.msg = @"登陆成功";
        if (ngrmtEoe()) {
            ewArnBOkPzNRaI.appleCheck = @"1";
        } else {
            ewArnBOkPzNRaI.appleCheck = @"0";
        }
        if ([self.GTGameDelegate respondsToSelector:@selector(GTGameLoginResult:WithMessage:)]) {
            [self.GTGameDelegate GTGameLoginResult:YorN WithMessage:ewArnBOkPzNRaI];
        }
        
//        [[NSNotificationCenter defaultCenter] postNotificationName:@"umplatformgamelogin" object:nil userInfo:loginMsg];
    }else{
        ewArnBOkPzNRaI.channelId = @"";
        ewArnBOkPzNRaI.userName = @"";
        ewArnBOkPzNRaI.uid = @"";
        ewArnBOkPzNRaI.msg = @"登陆失败";
        if (ngrmtEoe()) {
            ewArnBOkPzNRaI.appleCheck = @"1";
        } else {
            ewArnBOkPzNRaI.appleCheck = @"0";
        }
        if ([self.GTGameDelegate respondsToSelector:@selector(GTGameLoginResult:WithMessage:)]) {
            [self.GTGameDelegate GTGameLoginResult:YorN WithMessage:ewArnBOkPzNRaI];
        }
//        [[NSNotificationCenter defaultCenter] postNotificationName:@"umplatformgamelogin" object:nil userInfo:loginMsg];
        
    }
}

#pragma mark ---------- 监听H5支付的回调
- (void)nXUsHqbBZCTMd:(NSNotification *)noti {
    BOOL isResult = [[[noti userInfo] objectForKey:@"isResult"] boolValue];
    if (isResult) {
        [self appStoreNotification:YES WithCallMessage:@"支付成功"];
    }else{
        [self appStoreNotification:NO WithCallMessage:@"支付失败"];
    }
}
-(void)appStoreNotification:(BOOL)YorN WithCallMessage:(NSString *)loginMsg{
    
    if ([self.GTGameDelegate respondsToSelector:@selector(GTGamePayResult:WithMessage:)]) {
        [self.GTGameDelegate GTGamePayResult:YorN WithMessage:loginMsg];
    }
//    if (YorN) {
//        nQPXLfIKevpyzFVH(@"umplatformgameappStore", nil, loginMsg);
//    }else{
//        nQPXLfIKevpyzFVH(@"umplatformgameappStore", nil, loginMsg);
//    }
}

- (void)nSYKolwdAPnRXsOL:(NSNotification *)noti {
    /// 在WebView中实现了监听方法
    //    //接受当应用返回前台时是否关闭web界面
    //    if ([[noti object] integerValue] == 1) {
    //        if (VC.payVC.view) {
    //            [VC.payVC.view removeFromSuperview];
    //        }
    //        [self iapStarPay:[noti userInfo]];
    //    }else{
    //        [ClassName_SDKConfigs nTHQwxgl].eTySiLRU = YES;
    //    }
}

-(void)logoutNotification:(BOOL)YorN WithCallMessage:(NSString *)msg{
    if (YorN) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"umplatformgamelogout" object:nil userInfo:@{@"result":@"1",@"msg":[NSString stringWithFormat:@"%@",msg]}];
    }else{
        [[NSNotificationCenter defaultCenter] postNotificationName:@"umplatformgamelogout" object:nil userInfo:@{@"result":@"0",@"msg":[NSString stringWithFormat:@"%@",msg]}];
    }
}

-(void)iapStarPay:(NSDictionary*)ipaDict{
    EKVxZBzDYHpvktT *eeRIoucPsrlzHJK = [[EKVxZBzDYHpvktT alloc] init];
    eeRIoucPsrlzHJK.evWfJdcbepXHUiw = [ipaDict objectForKey:@"productId"];
    eeRIoucPsrlzHJK.ePorRTdaqNjEzyH = [ipaDict objectForKey:@"order_code"];
    eeRIoucPsrlzHJK.eHGWhiUud = [ipaDict objectForKey:@"pay_money"];
    [[EKBFNqJucYHnPdVv nbrzxRu] nySwchOUVMfLdm:eeRIoucPsrlzHJK];
}
#pragma mark ---------- 发送激活通知
-(void)initNotification:(BOOL)YorN WithCallMessage:(NSString *)msg{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    if (self.esGVDyTWueAJXMcF.length) {
        if (YorN) {
            [dic setObject:self.esGVDyTWueAJXMcF forKey:@"appleCheck"];
        } else {
            [dic setObject:@"0" forKey:@"appleCheck"];
        }
    } else {
        [dic setObject:@"0" forKey:@"appleCheck"];
    }
    if (YorN) {
        [dic setObject:@"1" forKey:@"result"];
        [dic setObject:[NSString stringWithFormat:@"%@",msg] forKey:@"msg"];
        if ([self.GTGameDelegate respondsToSelector:@selector(GTGameLaunchConfigResult:WithMessage:)]) {
            [self.GTGameDelegate GTGameLaunchConfigResult:YorN WithMessage:dic];
        }
//        [[NSNotificationCenter defaultCenter] postNotificationName:@"umplatformgameinit" object:nil userInfo:dic];
        
        
    }else{
        if ([self.GTGameDelegate respondsToSelector:@selector(GTGameLaunchConfigResult:WithMessage:)]) {
            [self.GTGameDelegate GTGameLaunchConfigResult:YorN WithMessage:dic];
        }
//        [[NSNotificationCenter defaultCenter] postNotificationName:@"umplatformgameinit" object:nil userInfo:dic];
    }
    nhdDGpskXLRwrS(dic);
}

#pragma mark ---------- 监听键盘事件
- (void)nWgnkEsBiRSIJ:(NSNotification *)noti {
    NSDictionary *dic = noti.object;
    CGFloat duration = [[dic objectForKey:eupKMnOsWwqLr] floatValue];
    CGFloat moveValue = [[dic objectForKey:eJnLsZKE] floatValue];
    BOOL isUpWindow = [[dic objectForKey:erMjmAWpTeXlwKey] boolValue];
    __weak typeof(self) weakSelf = self;
    NSLog(@"========noti:%@", noti);
    if (isUpWindow) {
        self.eMndrJLERoNWha.constant = moveValue;
        self.ethPSgApaCHvEkGConstraint.constant = -moveValue;
        [self.eMeAOfcVbZQ setNeedsLayout];
        
    } else {
        
        [UIView animateWithDuration:duration animations:^{
            
            weakSelf.eMndrJLERoNWha.constant = 0;
            weakSelf.ethPSgApaCHvEkGConstraint.constant = 0;
            [weakSelf.eMeAOfcVbZQ setNeedsLayout];
        }];
    }
}

-(void)dealloc {
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

-(instancetype)init {
    self = [super init];
    if (self) {
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(nWgnkEsBiRSIJ:) name:ekBiylArxKdMU object:nil];
        
    }
    return self;
}





-(EQzVEcnuw *)ekSBaufRnlPcFj {
    if (!_ekSBaufRnlPcFj) {
        _ekSBaufRnlPcFj = [[EQzVEcnuw alloc]init];
    }
    return _ekSBaufRnlPcFj;
}

-(EFOmVHbNZQLnIzaU *)elZRjazPTYxbmw {
    if (!_elZRjazPTYxbmw) {
        _elZRjazPTYxbmw = [[EFOmVHbNZQLnIzaU alloc]init];
    }
    return _elZRjazPTYxbmw;
}

-(EIcBiraynuDe *)eYtfTGqjMcmDv {
    if (!_eYtfTGqjMcmDv) {
        _eYtfTGqjMcmDv = [[EIcBiraynuDe alloc]init];
    }
    return _eYtfTGqjMcmDv;
}
@end

