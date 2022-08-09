

#import "EPDMaSEYbehG.h"
#import "EGuXiaQqj.h"
#import "EUQviyEIHT.h"

#import "EuSIGAwOrj.h"
#import "EdutLyV.h"
#import "EYMhnmstjq.h"
#import "EmKtBeFuqi.h"
#import "EfKgqPeJzFs.h"
#import "EDqxoOtgPanuMV.h"
#import "EWNMJyHlLz.h"
#import "EUpQnPOJm.h"
#import "EjSOyeZQGuaogMV.h"
#import "EiwdWfvrnB.h"
#import "EpSBOQT.h"

@interface EPDMaSEYbehG ()

@property (nonatomic, readwrite, strong) UIView *embSotwQATK;

@property (nonatomic, readwrite, strong) EdutLyV *epbLBykUwDiROJ;

@property (nonatomic, readwrite, strong) EdutLyV *eSzhJxadGMq;

@property (nonatomic, readwrite, strong) EuSIGAwOrj *ebSQeGw;

@property (nonatomic, readwrite, assign) CGFloat eeLhKcyI;

@property (nonatomic, readwrite, strong) EUQviyEIHT *eHXdfWuyjlSTLM;

@property (nonatomic, readwrite, strong) UIButton *eHMhwXEJRKiU;

@property (nonatomic, readwrite, strong) UIButton *ebNUdxpkSLJATIuh;

@end


@implementation EPDMaSEYbehG

#pragma mark ---------- public MethodNames
+(instancetype)nkCVYDBqKpM {
    EPDMaSEYbehG *eTRtNElhkQ = [[EPDMaSEYbehG alloc]init];
    eTRtNElhkQ.translatesAutoresizingMaskIntoConstraints = NO;
    return eTRtNElhkQ;
}


#pragma mark --------------------------------------------------------------------------------

-(instancetype)init {
    self = [super init];
    if (self) {
        [self nwnEIDYWlsFNbhu];
        [self nmuOLvMh];
    }
    return self;;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self nLYuaGKCs];
}


- (void)nwnEIDYWlsFNbhu {
    __weak typeof(self) weakSelf = self;
    UIView *eVHunKhsfva = [[UIView alloc]init];
    eVHunKhsfva.translatesAutoresizingMaskIntoConstraints = NO;
    UIImage *logintitle = nBSjbOCNdlsTEfq(@"EghNJycmisxZnHI");
    eVHunKhsfva.layer.contents = (__bridge id)logintitle.CGImage;
    self.embSotwQATK = eVHunKhsfva;
    
    EdutLyV *eRFIGLiag = [EdutLyV nNgFDdAHMfTWbRko:eewafLiELoginAccount];
    eRFIGLiag.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.epbLBykUwDiROJ = eRFIGLiag;
    
    EdutLyV *eHBCXnu = [EdutLyV nNgFDdAHMfTWbRko:eewafLiELoginPassword];
    eHBCXnu.translatesAutoresizingMaskIntoConstraints = NO;
    eHBCXnu.nkUqZdBMiECH = ^{
        [weakSelf.epbLBykUwDiROJ nNahMwrSRuypIqeO];
    };
    
    self.eSzhJxadGMq = eHBCXnu;
    
    EuSIGAwOrj *eYDcyFKEweRL = [[EuSIGAwOrj alloc]init];
    eYDcyFKEweRL.translatesAutoresizingMaskIntoConstraints = NO;
    UIImage *lBouKLcpQRaUgM = nBSjbOCNdlsTEfq(@"EcPaYghKZblk");
    [eYDcyFKEweRL setBackgroundImage:lBouKLcpQRaUgM forState:UIControlStateNormal];
    [eYDcyFKEweRL addTarget:self action:@selector(nrpVUWwOA:) forControlEvents:UIControlEventTouchUpInside];
    self.ebSQeGw = eYDcyFKEweRL;
    
    eRFIGLiag.nWExVFvYSUbzTsZ = ^(NSString *account) {
        NSString *password = neVYdQWlDyHGfzS(account);
        [weakSelf.eSzhJxadGMq nhrHSVncXDl:password ngrlYtHiy:YES];
    };
    
    UIButton *ebNUdxpkSLJATIuh = [[UIButton alloc]init];
    ebNUdxpkSLJATIuh.translatesAutoresizingMaskIntoConstraints = NO;
    [ebNUdxpkSLJATIuh setTitle:@"修改密码" forState:UIControlStateNormal];
    ebNUdxpkSLJATIuh.titleLabel.font = [UIFont systemFontOfSize:12];
    [ebNUdxpkSLJATIuh setTitleColor:[EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()] forState:UIControlStateNormal];
    [ebNUdxpkSLJATIuh addTarget:self action:@selector(nQXFzBIkMveEOjxy:) forControlEvents:UIControlEventTouchUpInside];
    self.ebNUdxpkSLJATIuh = ebNUdxpkSLJATIuh;
    
    UIButton *eHMhwXEJRKiU = [[UIButton alloc]init];
    eHMhwXEJRKiU.translatesAutoresizingMaskIntoConstraints = NO;
    [eHMhwXEJRKiU addTarget:self action:@selector(npySjFDmUg:) forControlEvents:UIControlEventTouchUpInside];
    [eHMhwXEJRKiU setTitle:@"忘记密码" forState:UIControlStateNormal];
    eHMhwXEJRKiU.titleLabel.font = [UIFont systemFontOfSize:12];
    [eHMhwXEJRKiU setTitleColor:[EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()] forState:UIControlStateNormal];
    self.eHMhwXEJRKiU = eHMhwXEJRKiU;
    
    [self addSubview:self.embSotwQATK];
    [self addSubview:self.epbLBykUwDiROJ];
    [self addSubview:self.eSzhJxadGMq];
    [self addSubview:self.eHMhwXEJRKiU];
    [self addSubview:self.ebNUdxpkSLJATIuh];
    [self addSubview:self.ebSQeGw];
}

- (void)nLYuaGKCs {
    
    self.eeLhKcyI = nxoZcUBXRr();
    
    [EmKtBeFuqi nmlcLxvfi:self.embSotwQATK naigAGwYRNfBte:self.eeLhKcyI];
    [EmKtBeFuqi navgXGEYtfjL:self.embSotwQATK naigAGwYRNfBte:0];
    [EmKtBeFuqi nwNALxocFyJupkm:self.embSotwQATK naigAGwYRNfBte:nOdlHiR()];
    [EmKtBeFuqi ntIjPqxLTDs:self.embSotwQATK naigAGwYRNfBte:nMaShjmCpeiZ()];
    
    self.eeLhKcyI += nMaShjmCpeiZ();
    self.eeLhKcyI += nQuUqIovRAg();
    
    [EmKtBeFuqi nmlcLxvfi:self.epbLBykUwDiROJ naigAGwYRNfBte:self.eeLhKcyI];
    [EmKtBeFuqi nLRCtGMFQZAYsc:self.epbLBykUwDiROJ naigAGwYRNfBte:nlYQvETRDiu()];
    [EmKtBeFuqi nGTVpsCaIbgQwO:self.epbLBykUwDiROJ naigAGwYRNfBte:nlYQvETRDiu()];
    [EmKtBeFuqi ntIjPqxLTDs:self.epbLBykUwDiROJ naigAGwYRNfBte:nNHqwETFgyCduZ()];
    
    self.eeLhKcyI += nNHqwETFgyCduZ();
    self.eeLhKcyI += nQuUqIovRAg();
    
    [EmKtBeFuqi nmlcLxvfi:self.eSzhJxadGMq naigAGwYRNfBte:self.eeLhKcyI];
    [EmKtBeFuqi nLRCtGMFQZAYsc:self.eSzhJxadGMq naigAGwYRNfBte:nlYQvETRDiu()];
    [EmKtBeFuqi nGTVpsCaIbgQwO:self.eSzhJxadGMq naigAGwYRNfBte:nlYQvETRDiu()];
    [EmKtBeFuqi ntIjPqxLTDs:self.eSzhJxadGMq naigAGwYRNfBte:nNHqwETFgyCduZ()];
    
    
    self.eeLhKcyI += nNHqwETFgyCduZ();
    self.eeLhKcyI += nxoZcUBXRr();
    
    // width 84   height 29
    [EmKtBeFuqi nmlcLxvfi:self.self.eHMhwXEJRKiU naigAGwYRNfBte:self.eeLhKcyI];
    [EmKtBeFuqi nLYuaGKC1:self.eHMhwXEJRKiU noGOglK:NSLayoutAttributeRight nLYuaGKC2:self.eSzhJxadGMq nZMdTVtLS:NSLayoutAttributeRight naigAGwYRNfBte:0];
    [EmKtBeFuqi ntIjPqxLTDs:self.self.eHMhwXEJRKiU naigAGwYRNfBte:20];
    
    [EmKtBeFuqi nmlcLxvfi:self.ebNUdxpkSLJATIuh naigAGwYRNfBte:self.eeLhKcyI];
    [EmKtBeFuqi nLYuaGKC1:self.ebNUdxpkSLJATIuh noGOglK:NSLayoutAttributeLeft nLYuaGKC2:self.eSzhJxadGMq nZMdTVtLS:NSLayoutAttributeLeft naigAGwYRNfBte:0];
    [EmKtBeFuqi ntIjPqxLTDs:self.ebNUdxpkSLJATIuh naigAGwYRNfBte:20];
    
    self.eeLhKcyI += 23;
    
    
     [EmKtBeFuqi nmlcLxvfi:self.ebSQeGw naigAGwYRNfBte:self.eeLhKcyI];
     [EmKtBeFuqi nLRCtGMFQZAYsc:self.ebSQeGw naigAGwYRNfBte:nlYQvETRDiu()];
     [EmKtBeFuqi nGTVpsCaIbgQwO:self.ebSQeGw naigAGwYRNfBte:nlYQvETRDiu()];
     [EmKtBeFuqi ntIjPqxLTDs:self.ebSQeGw naigAGwYRNfBte:nASyHwmJvCnsVg()];
    
    self.eeLhKcyI += nNHqwETFgyCduZ();
    [self nmWvLHBT];
}

#pragma mark ---------- 计算输入框的位置
- (void)nmWvLHBT {
    if (CGRectGetHeight(self.epbLBykUwDiROJ.bounds)) {
        [self nMkRofqpl:self.epbLBykUwDiROJ];
    }
    if (CGRectGetHeight(self.eSzhJxadGMq.bounds)) {
        [self nMkRofqpl:self.eSzhJxadGMq];
    }
}
- (void)nMkRofqpl:(EdutLyV *)evsYTmPyDceUSja {
    UIWindow *window = nLyAxbKV();
    CGRect rect = [evsYTmPyDceUSja convertRect:evsYTmPyDceUSja.bounds toView:window];
    CGFloat eGPjQyWU = CGRectGetMaxY(rect);
    [evsYTmPyDceUSja nMkRofqpl:eGPjQyWU];
}
#pragma mark ---------- setData
- (void)nmuOLvMh {
    __weak typeof(self) weakSelf = self;
    NSString *eSmGVlDXAwp = nNrQXxUPJCtnTazq();
    NSString *erJRwAnOkC = @"";
    if (eSmGVlDXAwp) {
         erJRwAnOkC = neVYdQWlDyHGfzS(eSmGVlDXAwp);
    }
    
    [self.epbLBykUwDiROJ nhrHSVncXDl:eSmGVlDXAwp ngrlYtHiy:YES];
    [self.eSzhJxadGMq nhrHSVncXDl:erJRwAnOkC ngrlYtHiy:YES];
    [self.epbLBykUwDiROJ nFtPJQbN:etXpuKkcjZHGSEboardReturnNext];
    [self.eSzhJxadGMq nFtPJQbN:etXpuKkcjZHGSEboardReturnDefault];
    self.epbLBykUwDiROJ.ngBTQjDUbCWrEFmt = ^{
        [weakSelf.eSzhJxadGMq nAmnLWC];
    };
}

#pragma mark ---------- 找回密码
- (void)npySjFDmUg:(UIButton *)sender {
    [self nNahMwrSRuypIqeO];
    if (self.nCRrDWSPiM) {
        self.nCRrDWSPiM();
    }
}
#pragma mark ---------- 重置密码
- (void)nQXFzBIkMveEOjxy:(UIButton *)sender {
    [self nNahMwrSRuypIqeO];
    if (self.nqYEkadezThSHO) {
        self.nqYEkadezThSHO();
    }
}

#pragma mark ---------- 注册
- (void)nHMciIK:(UIButton *)sender {
    if (self.njpBdKXkFsvJGi) {
        self.njpBdKXkFsvJGi();
    }
}

#pragma mark ---------- CommitAction
- (void)nrpVUWwOA:(UIButton *)sender {
    [self nNahMwrSRuypIqeO];
    NSString *account = self.epbLBykUwDiROJ.emsWldJuPwEnih;
    NSString *password = self.eSzhJxadGMq.emsWldJuPwEnih;
    
    if (!account || !account.length) {
        [EGuXiaQqj nHgTIahEeoP:@"请输入账号"];
        return;
    }
    if (!password || !password.length) {
        [EGuXiaQqj nHgTIahEeoP:@"请输入密码"];
        return;
    }
    if (!nfYKyouOGWr(password)) {
        [EGuXiaQqj nHgTIahEeoP:@"密码格式有误"];
        return;
    }
    NSDictionary *para = @{
                           @"user_name": account,
                           @"password": password,
                           @"adv_id": nUQWvyCwLFpTlkE(),
                           @"channel_id": nevRknysWHp(),
                           @"material_id": @"0",
                           @"gid": nqGpZjB(),
                           @"sub_gid": nRKtkwFIQTcuafb(),
                           @"platform_id": @"0",
                           @"device_code": nPBoTSdgeJGH()
                           };
    __weak typeof(self) weakSelf = self;
    [EGuXiaQqj nJVrDAcpuRWTMdbLIndicatorWithTitlte:@"登录中..."];
    [self.eHXdfWuyjlSTLM nEaYmCfWwKqMTo:nNdFTZxOzc() parameters:para];
    self.eHXdfWuyjlSTLM.nroGdOFnthEjA = ^(EUQviyEIHT *object) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [EGuXiaQqj nPjHvlQfar];
            [weakSelf nckLxEagzoJVFBH:object];
        });
    };
    self.eHXdfWuyjlSTLM.nNhPrOJC = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [EGuXiaQqj nPjHvlQfar];
            [EGuXiaQqj nHgTIahEeoP:@"网络出了小差!!!"];
        });
    };
}


/// 登录成功
- (void)nckLxEagzoJVFBH:(EUQviyEIHT *)memberLoginModel {
    if (memberLoginModel.erRfJDXKwhBGTxHn == 200) {
        
        nCsAeiWGBT(memberLoginModel.eHIRquhplOQgw);
        nytViXr(memberLoginModel.eEJRiLHAkpwhY);
        /// 保存账户
        nCRNGDXh(self.epbLBykUwDiROJ.emsWldJuPwEnih);
        /// 保存最后登录的账户
        nwJYlcmnI(self.epbLBykUwDiROJ.emsWldJuPwEnih);
        /// 保存账户密码
        nvRJcAbKHVqarx(memberLoginModel.eGUWxuLgnjhAm);
        ntqEHUVm(self.eSzhJxadGMq.emsWldJuPwEnih, self.epbLBykUwDiROJ.emsWldJuPwEnih);
        
        NSDictionary *userInfo = @{
                                   @"uid": memberLoginModel.eHIRquhplOQgw,
                                   @"username": memberLoginModel.eEJRiLHAkpwhY
                                   };
        nQPXLfIKevpyzFVH(eJtEMRDAmI, nil, userInfo);
        
        BOOL ejvXtmIYEyHqVDKg = NO;
        BOOL eaAyifGRep = NO;
        if ([memberLoginModel.eBVFRgHlmJe isEqualToString:@"1"]) {
            /// 没有绑定手机
            ejvXtmIYEyHqVDKg = YES;
        }
        if ([memberLoginModel.eGUWxuLgnjhAm isEqualToString:@"1"]) {
            /// 没有绑定身份证
            eaAyifGRep = YES;
        }
        if (self.nPtEpYcg) {
            self.nPtEpYcg(ejvXtmIYEyHqVDKg, eaAyifGRep);
        }
    } else {
        if (memberLoginModel.eAmjYwM) {
            [EGuXiaQqj nHgTIahEeoP:memberLoginModel.eAmjYwM];
        }
        if (self.nxtvqIwZ) {
            self.nxtvqIwZ();
        }
    }
}




- (void)nNahMwrSRuypIqeO {
    [self.epbLBykUwDiROJ nNahMwrSRuypIqeO];
}



-(EUQviyEIHT *)eHXdfWuyjlSTLM {
    if (!_eHXdfWuyjlSTLM) {
        _eHXdfWuyjlSTLM = [[EUQviyEIHT alloc]init];
    }
    return _eHXdfWuyjlSTLM;
}
@end
