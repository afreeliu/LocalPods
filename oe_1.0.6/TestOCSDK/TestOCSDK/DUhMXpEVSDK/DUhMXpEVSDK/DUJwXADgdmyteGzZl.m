

#import "DUJwXADgdmyteGzZl.h"
#import "DUpUrBjoLuxMlDO.h"
#import "DUSlUFnqyJeECwvhg.h"
#import "DUxfYatjiTF.h"
#import "DUSYRxTio.h"
#import "DUNmrIhBA.h"
#import "DUEWTKiRjzYcCl.h"
#import "DUxTmftBsAd.h"
#import "DUKhBOlzxLobvsp.h"
#import "DUUZfpXsimvzTK.h"
#import "DUyUrAEagzMZ.h"

#import "DUjHPamSNKWkfM.h"
#import "DUAaXhHMroqv.h"
#import "DUJwXyISMdzCUh.h"
#import "DUSjbEICauYHGti.h"
#import "DUngTeHD.h"
#import "DULCiQqMJAk.h"
#import "DUGcbRnKpJlPkyoY.h"
#import "DUPnFUxRSujZJwh.h"
#import "DUmZjChQNHcbXvD.h"

#import "DUiMTntv.h"
#import "DUfmzYMdhCyOA.h"

@interface DUJwXADgdmyteGzZl ()





@property (nonatomic, readwrite, strong) UIView *eWZdICF;

@property (nonatomic, readwrite, strong) UIButton *eqaiSjFny;
@property (nonatomic, readwrite, strong) CAShapeLayer *eJIsSxrdPGFUDqXO;
@property (nonatomic, readwrite, strong) UIButton *eFkZBHW;
@property (nonatomic, readwrite, strong) CAShapeLayer *enaMAXKFGo;
@property (nonatomic, readwrite, strong) UIButton *eSPCBzyI;
@property (nonatomic, readwrite, strong) CAShapeLayer *eWodgQODTltZyxCk;

/// 功能页面的约束偏移量
@property (nonatomic, readwrite, assign) CGFloat eeQhnZqKNHy;
@property (nonatomic, readwrite, assign) CGFloat eNmoDtWOConstriantHeight;
@property (nonatomic, readwrite, assign) CGFloat eNmoDtWOConstriantOffset;

/// 功能页面的动画时长
@property (nonatomic, readwrite, assign) CGFloat eKPvpCEm;


@property (nonatomic, readwrite, strong) UIView *emzdcsXNjCW;

@property (nonatomic, readwrite, assign) BOOL eenvtcJmXMP;
@property (nonatomic, readwrite, assign) BOOL eWpHdDZxVuAcUg;
@property (nonatomic, readwrite, assign) BOOL eqRclzmgKb;

/// 背景页面的约束
@property (nonatomic, readwrite, strong) NSLayoutConstraint *expysWtaL;
/// 北京页面的约束偏移量
@property (nonatomic, readwrite, assign) CGFloat egYpWuFrJID;

/// 功能按钮页面的约束
@property (nonatomic, readwrite, strong) NSLayoutConstraint *eODmXIQHPxNWnUC;
/// 功能按钮页面的约束偏移量
@property (nonatomic, readwrite, assign) CGFloat eZPkefq;

/// 各大页面
@property (nonatomic, readwrite, strong) DUSlUFnqyJeECwvhg *enmsyfGAIqwNSB;
@property (nonatomic, readwrite, strong) DUUZfpXsimvzTK *eOClhTB;
@property (nonatomic, readwrite, strong) DUxfYatjiTF *efXuGjmHki;
@property (nonatomic, readwrite, strong) DUSYRxTio *eBriWcMfpRvDgwV;
@property (nonatomic, readwrite, strong) DUNmrIhBA *evFlphHeidT;
@property (nonatomic, readwrite, strong) DUEWTKiRjzYcCl *eDGdpMwaCk;
/// 单独页面
@property (nonatomic, readwrite, strong) DUpUrBjoLuxMlDO *eZNWgrCklyfnXmpF;
@property (nonatomic, readwrite, strong) DUxTmftBsAd *eaMJBeCfpWUgXxzS;
@property (nonatomic, readwrite, strong) DUKhBOlzxLobvsp *eFCIXyY;

/// 是否绑定手机，是否绑定身份证
@property (nonatomic, readwrite, assign) BOOL eXrqYTLxsV;
@property (nonatomic, readwrite, assign) BOOL ePtvIODUMzyofXK;

/// 快速登陆
@property (nonatomic, readwrite, strong) DUiMTntv *eVjNfmBXnIoZwi;

/// 是否正在执行动画
@property (nonatomic, readwrite, assign) BOOL eWnjQlZLmJD;
/// 当前处在的页面
@property (nonatomic, readwrite, assign) BOOL ewzyhCauM;

@end


@implementation DUJwXADgdmyteGzZl

#pragma mark ---------- 登录成功，并不需要进入绑定任何内容
- (void)kvCRMpWxbkHcusd {
    self.hidden = YES;
    [self removeFromSuperview];
}

#pragma mark ---------- public Methodnames
+ (instancetype)kLGwidT {
    
    UIWindow *etOviTlVh = kOjcdzAgI();
    
    
    DUJwXADgdmyteGzZl *erfJVLRYvuzUKpE = [[DUJwXADgdmyteGzZl alloc]init];
    [etOviTlVh addSubview:erfJVLRYvuzUKpE];
    return erfJVLRYvuzUKpE;
}


-(void)dealloc {
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

-(instancetype)init {
    self = [super init];
    if (self) {
        
        /// 页面的宽
        _eeQhnZqKNHy = 260.0;
        /// 页面的高
        _eNmoDtWOConstriantHeight = 210.0;
        /// 偏移量
        _eNmoDtWOConstriantOffset = 3.0;
        
        _egYpWuFrJID = 30.0;
        _eZPkefq = -60.0;
        
        _eKPvpCEm = 0.5;
        
        /// 是否能自动登录
        _eenvtcJmXMP = kdSDzAUuCVyjspnZ();
        /// 是否支持快速登陆
        _eWpHdDZxVuAcUg = kyMFGiPQtIoqrL();
        
        [self kDISvbZChgf];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(kLoilRKFtkmGc:)];
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer:tap];
    }
    return self;
}

#pragma mark ---------- 结束编辑输入
- (void)kLoilRKFtkmGc:(UITapGestureRecognizer *)noti {
    
    [self endEditing:YES];
    NSDictionary *object = @{
                             eTfaGisKey: @(0.25),
                             eDqijpIoVxcPzdE : @(NO),
                             eNRTAwP : @(0)
                             };
    [[NSNotificationCenter defaultCenter]postNotificationName:efGAtFYNhpcB object:object];
}




#pragma mark ---------- 主背景页面
- (void)kDISvbZChgf {
    UIView *eWZdICF = [[UIView alloc]init];
    eWZdICF.translatesAutoresizingMaskIntoConstraints = NO;
    _eWZdICF = eWZdICF;
    kdfAjgCyeP(_eWZdICF, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    [self addSubview:_eWZdICF];
    
    [DUjHPamSNKWkfM ktGjyplNWv:_eWZdICF kjwoMfYHX:0];
    _expysWtaL = [DUjHPamSNKWkfM kxRZbHCcF:self.eWZdICF kjwoMfYHX:kdSDzAUuCVyjspnZ()?0:_egYpWuFrJID];
    [DUjHPamSNKWkfM kYzDgmEuJZa:_eWZdICF kjwoMfYHX:kiltXoj()];
    [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:_eWZdICF kjwoMfYHX:kSIWegN() - 50];
    
    [self kXosAjPgbi:kdSDzAUuCVyjspnZ()];
    
    if (kdSDzAUuCVyjspnZ()) {
        
        [self kzskunBpWIj];
    } else {
        self.eenvtcJmXMP = YES;
        [self kHbAkQSM];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [DUyUrAEagzMZ kmBSjbQ];
            
        });
    }
    
    [self setNeedsLayout];
}




#pragma mark ---------- 自动登录页面
- (void)kzskunBpWIj {
    __weak typeof(self) weakSelf = self;
    if (!_eZNWgrCklyfnXmpF) {
        _eZNWgrCklyfnXmpF = [DUpUrBjoLuxMlDO kzskunBpWIj];
        _eZNWgrCklyfnXmpF.kDgdraxnjk = ^{
            weakSelf.eZNWgrCklyfnXmpF.hidden = YES;
            [weakSelf.eZNWgrCklyfnXmpF removeFromSuperview];
            [weakSelf kdSzeClsBhOtZIYxSkillView:^{
                [weakSelf kHbAkQSM];
            }];
        };
        _eZNWgrCklyfnXmpF.kMQdkvGJsYV = ^(BOOL eXrqYTLxsV, BOOL ePtvIODUMzyofXK) {
            weakSelf.eXrqYTLxsV = eXrqYTLxsV;
            weakSelf.ePtvIODUMzyofXK = ePtvIODUMzyofXK;
            weakSelf.eZNWgrCklyfnXmpF.hidden = YES;
            [weakSelf.eZNWgrCklyfnXmpF removeFromSuperview];
            [weakSelf kVSxFmLwelh];
        };
        _eZNWgrCklyfnXmpF.kigEsrvyBqjQPAUC = ^{
            weakSelf.eZNWgrCklyfnXmpF.hidden = YES;
            [weakSelf.eZNWgrCklyfnXmpF removeFromSuperview];
            [weakSelf kdSzeClsBhOtZIYxSkillView:^{
                [weakSelf kHbAkQSM];
            }];
        };

        [_eWZdICF addSubview:_eZNWgrCklyfnXmpF];
    }
    
    
    [DUjHPamSNKWkfM ktGjyplNWv:_eZNWgrCklyfnXmpF kjwoMfYHX:0];
    [DUjHPamSNKWkfM khXiHKlJYIcsWTb:_eZNWgrCklyfnXmpF kjwoMfYHX:ktaMSrs() * 2];
    [DUjHPamSNKWkfM kYzDgmEuJZa:_eZNWgrCklyfnXmpF kjwoMfYHX:260];
    [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:_eZNWgrCklyfnXmpF kjwoMfYHX:210];
    
}

#pragma mark ---------- 绑定相关的 手机绑定和身份证绑定
- (void)kVSxFmLwelh {
    
    if (_eXrqYTLxsV) {
        [self kwIjlQeZBOkfH];
        return;
    }
    if (_ePtvIODUMzyofXK) {
        [self kAraRISWYXw];
        return;
    }
    _eWZdICF.hidden = YES;
    [self removeFromSuperview];
}

#pragma mark ---------- 登录页面
- (void)kHbAkQSM {
    __weak typeof(self) weakSelf = self;
    if (!_enmsyfGAIqwNSB) {
        _enmsyfGAIqwNSB = [DUSlUFnqyJeECwvhg kHbAkQSM];
        _enmsyfGAIqwNSB.clipsToBounds = YES;
        _enmsyfGAIqwNSB.krJfATa = ^(BOOL eXrqYTLxsV, BOOL ePtvIODUMzyofXK) {
            weakSelf.eXrqYTLxsV = eXrqYTLxsV;
            weakSelf.ePtvIODUMzyofXK = ePtvIODUMzyofXK;
            weakSelf.enmsyfGAIqwNSB.hidden = YES;
            [weakSelf.enmsyfGAIqwNSB removeFromSuperview];
            [weakSelf kOVtIQxCaLNGmsH:^{
                [weakSelf kVSxFmLwelh];
            }];
        };
        _enmsyfGAIqwNSB.kcTqlstC = ^{
            NSLog(@"login error");
        };
        _enmsyfGAIqwNSB.kFUkiEgIlsrc = ^{
            weakSelf.enmsyfGAIqwNSB.hidden = YES;
            [weakSelf kFUkiEgIlsrc];
        };
        _enmsyfGAIqwNSB.kdFWgluev = ^{
            weakSelf.enmsyfGAIqwNSB.hidden = YES;
            [weakSelf kdFWgluev];
        };
        [_eWZdICF addSubview:_enmsyfGAIqwNSB];
    } else {
        _enmsyfGAIqwNSB.hidden = NO;
    }
    _ewzyhCauM = YES;
    [DUjHPamSNKWkfM ktGjyplNWv:_enmsyfGAIqwNSB kjwoMfYHX:_eNmoDtWOConstriantOffset];
    [DUjHPamSNKWkfM khXiHKlJYIcsWTb:_enmsyfGAIqwNSB kjwoMfYHX:ktaMSrs() * 2];
    [DUjHPamSNKWkfM kYzDgmEuJZa:_enmsyfGAIqwNSB kjwoMfYHX:_eeQhnZqKNHy];
    [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:_enmsyfGAIqwNSB kjwoMfYHX:_eNmoDtWOConstriantHeight];
}


#pragma mark ---------- 隐藏功能按钮view，下移功能view
- (void)kOVtIQxCaLNGmsH:(void (^)(void))eheDcpTgQIKR {
    __weak typeof(self) weakSelf = self;
    _eODmXIQHPxNWnUC.constant = _eZPkefq;
    [UIView animateWithDuration:_eKPvpCEm animations:^{
        [weakSelf layoutIfNeeded];
    } completion:^(BOOL finished) {
        if (finished) {
            weakSelf.expysWtaL.constant = 0;
            [UIView animateWithDuration:0.3 animations:^{
                [weakSelf layoutIfNeeded];
            } completion:^(BOOL finished) {
                if (eheDcpTgQIKR) {
                    eheDcpTgQIKR();
                }
            }];
        }
    }];
}
#pragma mark ---------- 上移功能view， 显示功能按钮view
- (void)kdSzeClsBhOtZIYxSkillView:(void (^)(void))eOcHiMtLrNQpKyIF {
    __weak typeof(self) weakSelf = self;
    _expysWtaL.constant = _egYpWuFrJID;
    [UIView animateWithDuration:_eKPvpCEm animations:^{
        [weakSelf layoutIfNeeded];
    } completion:^(BOOL finished) {
        if (finished) {
            weakSelf.eODmXIQHPxNWnUC.constant = 0;
            [UIView animateWithDuration:0.3 animations:^{
                [weakSelf layoutIfNeeded];
            } completion:^(BOOL finished) {
                if (eOcHiMtLrNQpKyIF) {
                    eOcHiMtLrNQpKyIF();
                }
            }];
        }
    }];
}


#pragma mark ---------- 切换到找回密码
- (void)kFUkiEgIlsrc {
    __weak typeof(self) weakSelf = self;
    _eODmXIQHPxNWnUC.constant = _eZPkefq;
    [UIView animateWithDuration:_eKPvpCEm animations:^{
        [weakSelf layoutIfNeeded];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:weakSelf.eWZdICF cache:YES];
    } completion:^(BOOL finished) {
        if (finished) {
            [weakSelf kJacqZxldLN];
            weakSelf.expysWtaL.constant = 0;
            [UIView animateWithDuration:0.3 animations:^{
                [weakSelf layoutIfNeeded];
            }];
        }
    }];
}
#pragma mark ---------- 切换到重置密码
- (void)kdFWgluev {
    __weak typeof(self) weakSelf = self;
    _eODmXIQHPxNWnUC.constant = _eZPkefq;
    [UIView animateWithDuration:_eKPvpCEm animations:^{
        [weakSelf layoutIfNeeded];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:weakSelf.eWZdICF cache:YES];
    } completion:^(BOOL finished) {
        if (finished) {
            [weakSelf kmvTetYyghDpZ];
            weakSelf.expysWtaL.constant = 0;
            [UIView animateWithDuration:0.3 animations:^{
                [weakSelf layoutIfNeeded];
            }];
        }
    }];
}


#pragma mark ---------- 功能按钮
- (void)kXosAjPgbi:(BOOL)egJWOvhdRoqYcEkm {
    
    if (!_emzdcsXNjCW) {
        _emzdcsXNjCW = [[UIView alloc]init];
        _emzdcsXNjCW.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:_emzdcsXNjCW];
    }
    
    UIButton *tmpBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 60, 60)];
    tmpBtn.tag = 10;
    [tmpBtn addTarget:self action:@selector(kxKCyDomQPY:) forControlEvents:UIControlEventTouchUpInside];
    self.eJIsSxrdPGFUDqXO = kJcaZKqAmFStPir(tmpBtn, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    self.eJIsSxrdPGFUDqXO.fillColor = [UIColor yellowColor].CGColor;
    [_emzdcsXNjCW addSubview:tmpBtn];
    
    UIButton *tmpBtn2 = [[UIButton alloc]initWithFrame:CGRectMake(70, 0, 60, 60)];
    tmpBtn2.tag = 11;
    self.enaMAXKFGo = klbnkKQwAY(tmpBtn2, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    [tmpBtn2 addTarget:self action:@selector(kxKCyDomQPY:) forControlEvents:UIControlEventTouchUpInside];
    [_emzdcsXNjCW addSubview:tmpBtn2];
    
    UIButton *tmpBtn3 = [[UIButton alloc]initWithFrame:CGRectMake(140, 0, 60, 60)];
    tmpBtn3.tag = 12;
    self.eWodgQODTltZyxCk = keDsVJw(tmpBtn3, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    [tmpBtn3 addTarget:self action:@selector(kxKCyDomQPY:) forControlEvents:UIControlEventTouchUpInside];
    [_emzdcsXNjCW addSubview:tmpBtn3];
    
    if (_eWpHdDZxVuAcUg) {
        tmpBtn3.hidden = NO;
    } else {
        tmpBtn3.hidden = YES;
    }
    
    [DUjHPamSNKWkfM ktGjyplNWv:_emzdcsXNjCW kjwoMfYHX:0];
    _eODmXIQHPxNWnUC = [DUjHPamSNKWkfM kQiLrTkJhOKMIs1:_emzdcsXNjCW ktiOVqYfTER:NSLayoutAttributeTop kQiLrTkJhOKMIs2:_eWZdICF kNAPzsLnZYo:NSLayoutAttributeBottom kjwoMfYHX:egJWOvhdRoqYcEkm?_eZPkefq:0];
    [DUjHPamSNKWkfM kYzDgmEuJZa:_emzdcsXNjCW kjwoMfYHX:_eWpHdDZxVuAcUg?200:140];
    [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:_emzdcsXNjCW kjwoMfYHX:60];
    
    [self bringSubviewToFront:_eWZdICF];
}

#pragma mark ---------- 功能按钮的事件
- (void)kxKCyDomQPY:(UIButton *)sender {
    
    [self endEditing:YES];
    [self.enmsyfGAIqwNSB klOFIBvDNWtEQah];
    switch (sender.tag) {
        case 10:
        {
            if (_eWnjQlZLmJD || _ewzyhCauM) {
                return;
            }
            _ewzyhCauM = YES;
            [self kckXsWa];
            self.eJIsSxrdPGFUDqXO.fillColor = [UIColor yellowColor].CGColor;
            self.enaMAXKFGo.fillColor = [UIColor grayColor].CGColor;
            self.eWodgQODTltZyxCk.fillColor = [UIColor grayColor].CGColor;
            
        }
            break;
        case 11:
        {
            if (_eWnjQlZLmJD || !_ewzyhCauM) {
                return;
            }
            _ewzyhCauM = NO;
            [self khiJDumpBQfGt];
            self.eJIsSxrdPGFUDqXO.fillColor = [UIColor grayColor].CGColor;
            self.enaMAXKFGo.fillColor = [UIColor yellowColor].CGColor;
            self.eWodgQODTltZyxCk.fillColor = [UIColor grayColor].CGColor;
        }
            break;
        case 12:
        {
            if (_eWnjQlZLmJD) {
                return;
            }
            _eWnjQlZLmJD = NO;
            _enmsyfGAIqwNSB.hidden = YES;
            _evFlphHeidT.hidden = YES;
            [self kOVtIQxCaLNGmsH:^{
                [self kdBDrEt];
            }];
        }
            break;
            
        default:
            break;
    }
}



#pragma mark ---------- 切换到登陆
- (void)kckXsWa {
    __weak typeof(self) weakSelf = self;
    [_evFlphHeidT kDlfUmNpWuRzrgq];
    _eWnjQlZLmJD = YES;
    [UIView animateWithDuration:_eKPvpCEm animations:^{
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:weakSelf.eWZdICF cache:YES];
        weakSelf.eDGdpMwaCk.hidden = YES;
        weakSelf.evFlphHeidT.hidden = YES;
        weakSelf.enmsyfGAIqwNSB.hidden = NO;
    } completion:^(BOOL finished) {
        if (finished) {
            weakSelf.eWnjQlZLmJD = NO;
            [weakSelf kHbAkQSM];
        }
    }];
}

#pragma mark ---------- 切换到注册账号
- (void)khiJDumpBQfGt {
    __weak typeof(self) weakSelf = self;
    _eWnjQlZLmJD = YES;
    [UIView animateWithDuration:_eKPvpCEm animations:^{
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:weakSelf.eWZdICF cache:YES];
        weakSelf.enmsyfGAIqwNSB.hidden = YES;
        weakSelf.evFlphHeidT.hidden = NO;
    } completion:^(BOOL finished) {
        if (finished) {
            weakSelf.eWnjQlZLmJD = NO;
            [weakSelf kxstzCpSHOYwW];
        }
    }];
}


#pragma mark ---------- 快速登陆按钮执行的事件
#pragma mark ---------- commitAction

- (void)kdBDrEt {
    
    NSDictionary *para = @{
                           @"adv_id": kXsJmMxSNAyp(),
                           @"channel_id": kGxWjgvIUlbJhFoO(),
                           @"material_id": @"0",
                           @"gid": kEJsVuODloh(),
                           @"sub_gid": kOVNImM(),
                           @"platform_id": kKQumhviO(),
                           @"device_code": kGvYpKkCRTLiA()
                           };
    
//    kGvYpKkCRTLiA()
//    NSLog(@"para:%@6EEDB406-EF02-4E95-95BE-3B83484B1ACD", para);
    [DUyUrAEagzMZ kdSzeClsBhOtZIYxIndicatorWithTitlte:@"登陆中..."];
    __weak typeof(self) weakSelf = self;
    [self.eVjNfmBXnIoZwi kXLPOEpCBozkZM:kpdXuNcPfvIhgFxz() parameters:para];
    self.eVjNfmBXnIoZwi.kurcxnG = ^(DUiMTntv *object) {
        dispatch_async(dispatch_get_main_queue(), ^{
            
            [DUyUrAEagzMZ kmBSjbQ];
            if (object.ebTBquLMZ == 200) {
                [weakSelf kTkhfWoKGFPjswi:object];
            } else {
                if (object.euwmDFU) {
                    [DUyUrAEagzMZ kdSzeClsBhOtZIYxErrorMessage:object.euwmDFU];
                }
            }
            
        });
    };
    self.eVjNfmBXnIoZwi.kkMohviBYIVtrnEm = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [DUyUrAEagzMZ kmBSjbQ];
            [DUyUrAEagzMZ kdSzeClsBhOtZIYxErrorMessage:@"网络出了小差!!!"];
            weakSelf.eWnjQlZLmJD = NO;
            [weakSelf kdSzeClsBhOtZIYxSkillView:^{
                [weakSelf ksgwWva];
            }];
        });
    };
}
- (void)kjTheDEsUarn:(UIView *)elpZwvNR kWPXJNAqVsezBRH:(NSString *)eCEYSsLnTkwQUxzp kVmtHqNuxylYXwDk:(NSString *)eBVIOmLofsPQDU{
    __weak typeof(self) weakSelf = self;
    if (!_eOClhTB) {
        _eOClhTB = [DUUZfpXsimvzTK krMCuzIdYbQPG];
        _eOClhTB.clipsToBounds = YES;
        _eOClhTB.kWMpoGXLlFbYgks = ^{
            weakSelf.eXrqYTLxsV = NO;
            weakSelf.ePtvIODUMzyofXK = NO;
            [weakSelf kVSxFmLwelh];
        };
        self.eOClhTB.kXtTBMO = ^{
            weakSelf.eOClhTB.hidden = YES;
            [weakSelf kwIjlQeZBOkfH];
        };
        [_eWZdICF addSubview:_eOClhTB];
    }
    
    [self.eOClhTB kdYkRjulNJQSimgO:eCEYSsLnTkwQUxzp kYaFhxTEUwPNlr:eBVIOmLofsPQDU];
    [self.eOClhTB knFYuoyBUIEtfc:self.eXrqYTLxsV];
    
    
    [DUjHPamSNKWkfM ktGjyplNWv:_eOClhTB kjwoMfYHX:_eNmoDtWOConstriantOffset];
    [DUjHPamSNKWkfM khXiHKlJYIcsWTb:_eOClhTB kjwoMfYHX:ktaMSrs() * 2];
    [DUjHPamSNKWkfM kYzDgmEuJZa:_eOClhTB kjwoMfYHX:_eeQhnZqKNHy];
    [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:_eOClhTB kjwoMfYHX:_eNmoDtWOConstriantHeight];
    
}
/// 快速登陆成功
- (void)kTkhfWoKGFPjswi:(DUiMTntv *)model {
    kqsEGtorOQ(model.eGzNRZFM);
    kZjvHqnW(model.eHKOtDbFEsVUQThW);
    kyUBVeNCYO(model.eBVIOmLofsPQDU.length? YES : NO);
    kzGnMDim(model.eSILRhOzGbpCrli);
    kLZcFgxmYytaunN(model.eWmXbyHJhiYDB);
    self.eXrqYTLxsV = [model.eSILRhOzGbpCrli isEqualToString:@"1"];
    self.ePtvIODUMzyofXK = [model.eWmXbyHJhiYDB isEqualToString:@"1"];
    NSDictionary *userInfo = @{
                               @"uid": model.eGzNRZFM,
                               @"username": model.eHKOtDbFEsVUQThW
                               };
    kXQPAZNUwrm(eMapQoRwN, nil, userInfo);
    
    /// 设备为第一次快速登陆，然后需要保存账号密码，显示快速登陆页面
    if (model.eBVIOmLofsPQDU && model.eBVIOmLofsPQDU.length) {
        /// 保存账户
        kgLROBiPX(model.eHKOtDbFEsVUQThW);
        /// 保存最后登陆的账户
        ktkehrHfaJV(model.eHKOtDbFEsVUQThW);
        /// 保存账户密码
        krIVPZxslkvLmD(model.eBVIOmLofsPQDU, model.eHKOtDbFEsVUQThW);
        
        [self kjTheDEsUarn:nil kWPXJNAqVsezBRH:model.eHKOtDbFEsVUQThW kVmtHqNuxylYXwDk:model.eBVIOmLofsPQDU];
    } else {
        __weak typeof(self) weakSelf = self;
        [self kOVtIQxCaLNGmsH:^{
            [weakSelf kVSxFmLwelh];
        }];
    }
    
}
- (void)ksgwWva{
    if (_ewzyhCauM) {
        _ewzyhCauM = YES;
        _enmsyfGAIqwNSB.hidden = NO;
        _evFlphHeidT.hidden = YES;
    } else {
        _ewzyhCauM = NO;
        _enmsyfGAIqwNSB.hidden = YES;
        if (_evFlphHeidT) {
            _evFlphHeidT.hidden = NO;
        } else {
            [self kxstzCpSHOYwW];
        }
    }
}

#pragma mark ---------- 找回密码按钮事件
- (void)kJacqZxldLN{
    __weak typeof(self) weakSelf = self;
    if (!_efXuGjmHki) {
        _efXuGjmHki = [DUxfYatjiTF kJacqZxldLN];
        _efXuGjmHki.clipsToBounds = YES;
        _efXuGjmHki.kDsFGXQPWn = ^{
            weakSelf.efXuGjmHki.hidden = YES;
            [weakSelf kTfVwDSekLt];
        };
        _efXuGjmHki.kvABkErUSyhAction = ^{
            [weakSelf kTfVwDSekLt];
        };
    } else {
        _efXuGjmHki.hidden = NO;
    }
    [_eWZdICF addSubview:_efXuGjmHki];
    [DUjHPamSNKWkfM ktGjyplNWv:_efXuGjmHki kjwoMfYHX:_eNmoDtWOConstriantOffset];
    [DUjHPamSNKWkfM khXiHKlJYIcsWTb:_efXuGjmHki kjwoMfYHX:ktaMSrs() * 2];
    [DUjHPamSNKWkfM kYzDgmEuJZa:_efXuGjmHki kjwoMfYHX:_eeQhnZqKNHy];
    [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:_efXuGjmHki kjwoMfYHX:_eNmoDtWOConstriantHeight];
    [self setNeedsLayout];
}
#pragma mark ---------- 从找回密码返回到登陆页面
- (void)kTfVwDSekLt {
    __weak typeof(self) weakSelf = self;
    
    _expysWtaL.constant = _egYpWuFrJID;
    [UIView animateWithDuration:_eKPvpCEm animations:^{
        [weakSelf layoutIfNeeded];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:weakSelf.eWZdICF cache:YES];
    } completion:^(BOOL finished) {
        if (finished) {
            [weakSelf kHbAkQSM];
            weakSelf.eODmXIQHPxNWnUC.constant = 0;
            [UIView animateWithDuration:0.3 animations:^{
                [weakSelf layoutIfNeeded];
            }];
        }
    }];
}
#pragma mark ---------- 重置密码按钮事件
- (void)kmvTetYyghDpZ{
    __weak typeof(self) weakSelf = self;
    if (!_eBriWcMfpRvDgwV) {
        _eBriWcMfpRvDgwV = [DUSYRxTio kmvTetYyghDpZ];
        _eBriWcMfpRvDgwV.clipsToBounds = YES;
        _eBriWcMfpRvDgwV.hidden = NO;
        _eBriWcMfpRvDgwV.kueUPIvsgjkWnOic = ^{
            weakSelf.eBriWcMfpRvDgwV.hidden = YES;
            [weakSelf kxAEXruW];
        };
        _eBriWcMfpRvDgwV.kvABkErUSyhAction = ^{  
            [weakSelf kxAEXruW];
        };
    } else {
        _eBriWcMfpRvDgwV.hidden = NO;
        
    }
    [_eWZdICF addSubview:_eBriWcMfpRvDgwV];
    [DUjHPamSNKWkfM ktGjyplNWv:_eBriWcMfpRvDgwV kjwoMfYHX:_eNmoDtWOConstriantOffset];
    [DUjHPamSNKWkfM khXiHKlJYIcsWTb:_eBriWcMfpRvDgwV kjwoMfYHX:ktaMSrs() * 2];
    [DUjHPamSNKWkfM kYzDgmEuJZa:_eBriWcMfpRvDgwV kjwoMfYHX:_eeQhnZqKNHy];
    [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:_eBriWcMfpRvDgwV kjwoMfYHX:_eNmoDtWOConstriantHeight];
    [self setNeedsLayout];
}
- (void)kxAEXruW {
    __weak typeof(self) weakSelf = self;
    _expysWtaL.constant = _egYpWuFrJID;
    [UIView animateWithDuration:_eKPvpCEm animations:^{
        // 详见UIViewAnimationCurve
        [weakSelf layoutIfNeeded];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:weakSelf.eWZdICF cache:YES];
    } completion:^(BOOL finished) {
        if (finished) {
            [weakSelf kHbAkQSM];
            weakSelf.eODmXIQHPxNWnUC.constant = 0;
            [UIView animateWithDuration:0.3 animations:^{
                [weakSelf layoutIfNeeded];
            }];
        }
    }];
}
#pragma mark ---------- 账号注册View
- (void)kxstzCpSHOYwW {
    __weak typeof(self) weakSelf = self;
    if (!_evFlphHeidT) {
        _evFlphHeidT = [DUNmrIhBA kxstzCpSHOYwW];
        _evFlphHeidT.kjdlcEiANeMrpKk = ^(BOOL eXrqYTLxsV, BOOL ePtvIODUMzyofXK) {
            weakSelf.eXrqYTLxsV = eXrqYTLxsV;
            weakSelf.ePtvIODUMzyofXK = ePtvIODUMzyofXK;
            [weakSelf kOVtIQxCaLNGmsH:^{
                [weakSelf kVSxFmLwelh];
            }];
        };
        _evFlphHeidT.kaMPnrYCW = ^{
            weakSelf.evFlphHeidT.hidden = YES;
            [weakSelf kZJLxlIhGedTgFaq];
        };
        _evFlphHeidT.clipsToBounds = YES;
        
        [_eWZdICF addSubview:_evFlphHeidT];
    } else {
        _evFlphHeidT.hidden = NO;
    }
    
    [DUjHPamSNKWkfM ktGjyplNWv:_evFlphHeidT kjwoMfYHX:_eNmoDtWOConstriantOffset];
    [DUjHPamSNKWkfM khXiHKlJYIcsWTb:_evFlphHeidT kjwoMfYHX:ktaMSrs() * 2];
    [DUjHPamSNKWkfM kYzDgmEuJZa:_evFlphHeidT kjwoMfYHX:_eeQhnZqKNHy];
    [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:_evFlphHeidT kjwoMfYHX:_eNmoDtWOConstriantHeight];
    [self setNeedsLayout];
}
#pragma mark ---------- 切换到手机
- (void)kZJLxlIhGedTgFaq {
    __weak typeof(self) weakSelf = self;
    _eODmXIQHPxNWnUC.constant = _eZPkefq;
    [UIView animateWithDuration:_eKPvpCEm animations:^{
        [weakSelf layoutIfNeeded];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:weakSelf.eWZdICF cache:YES];
    } completion:^(BOOL finished) {
        if (finished) {
            [weakSelf kpnbDxtaflQk];
            weakSelf.expysWtaL.constant = 0;
            [UIView animateWithDuration:0.3 animations:^{
                [weakSelf layoutIfNeeded];
            }];
        }
    }];
}


#pragma mark ---------- 手机注册View
- (void)kpnbDxtaflQk {
    __weak typeof(self) weakSelf = self;
    if (!_eDGdpMwaCk) {
        _eDGdpMwaCk = [DUEWTKiRjzYcCl kpnbDxtaflQk];
        _eDGdpMwaCk.kNWDtGCgh = ^(BOOL ePtvIODUMzyofXK) {
            weakSelf.eXrqYTLxsV = NO;
            weakSelf.ePtvIODUMzyofXK = ePtvIODUMzyofXK;
            [weakSelf kOVtIQxCaLNGmsH:^{
                [weakSelf kVSxFmLwelh];
            }];
        };
        _eDGdpMwaCk.kvABkErUSyhAction = ^{
            [weakSelf kAbNfrhLYKkq];
        };
        _eDGdpMwaCk.clipsToBounds = YES;
        [_eWZdICF addSubview:_eDGdpMwaCk];
    } else {
        _eDGdpMwaCk.hidden = NO;
        [_eWZdICF addSubview:_eDGdpMwaCk];
    }
    
    
    [DUjHPamSNKWkfM ktGjyplNWv:_eDGdpMwaCk kjwoMfYHX:_eNmoDtWOConstriantOffset];
    [DUjHPamSNKWkfM khXiHKlJYIcsWTb:_eDGdpMwaCk kjwoMfYHX:ktaMSrs() * 2];
    [DUjHPamSNKWkfM kYzDgmEuJZa:_eDGdpMwaCk kjwoMfYHX:_eeQhnZqKNHy];
    [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:_eDGdpMwaCk kjwoMfYHX:_eNmoDtWOConstriantHeight];
    [self setNeedsLayout];
    
}
#pragma mark ---------- 返回账号注册view
- (void)kAbNfrhLYKkq {
    __weak typeof(self) weakSelf = self;
    
    _expysWtaL.constant = _egYpWuFrJID;
    [UIView animateWithDuration:_eKPvpCEm animations:^{
        [weakSelf layoutIfNeeded];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:weakSelf.eWZdICF cache:YES];
    } completion:^(BOOL finished) {
        if (finished) {
            [weakSelf kxstzCpSHOYwW];
            weakSelf.eODmXIQHPxNWnUC.constant = 0;
            [UIView animateWithDuration:0.3 animations:^{
                [weakSelf layoutIfNeeded];
            }];
        }
    }];
}

#pragma mark ---------- 绑定手机号
- (void)kwIjlQeZBOkfH {
    __weak typeof(self) weakSelf = self;
    if (!_eaMJBeCfpWUgXxzS) {
        _eaMJBeCfpWUgXxzS = [DUxTmftBsAd kauPgHXp];
        _eaMJBeCfpWUgXxzS.clipsToBounds = YES;
        _eaMJBeCfpWUgXxzS.kXtTBMOSuccess = ^{
            
        };
        _eaMJBeCfpWUgXxzS.kZWXkavTuKpMQ = ^{
            weakSelf.eXrqYTLxsV = NO;
            [weakSelf kVSxFmLwelh];
        };
        [_eWZdICF addSubview:_eaMJBeCfpWUgXxzS];
    }
    
    
    [DUjHPamSNKWkfM ktGjyplNWv:_eaMJBeCfpWUgXxzS kjwoMfYHX:_eNmoDtWOConstriantOffset];
    [DUjHPamSNKWkfM khXiHKlJYIcsWTb:_eaMJBeCfpWUgXxzS kjwoMfYHX:ktaMSrs() * 2];
    [DUjHPamSNKWkfM kYzDgmEuJZa:_eaMJBeCfpWUgXxzS kjwoMfYHX:_eeQhnZqKNHy];
    [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:_eaMJBeCfpWUgXxzS kjwoMfYHX:_eNmoDtWOConstriantHeight];
    [self setNeedsLayout];
}
#pragma mark ---------- 绑定身份证
- (void)kAraRISWYXw {
    __weak typeof(self) weakSelf = self;
    if (!_eFCIXyY) {
        _eFCIXyY = [DUKhBOlzxLobvsp kAraRISWYXw];
        _eFCIXyY.clipsToBounds = YES;
        _eFCIXyY.khKBmEA = ^{
            
        };
        _eFCIXyY.keQLHZkIwaXO = ^{
            weakSelf.ePtvIODUMzyofXK = NO;
            [weakSelf kVSxFmLwelh];
        };
        [_eWZdICF addSubview:_eFCIXyY];
    }
    
    [DUjHPamSNKWkfM ktGjyplNWv:_eFCIXyY kjwoMfYHX:_eNmoDtWOConstriantOffset];
    [DUjHPamSNKWkfM khXiHKlJYIcsWTb:_eFCIXyY kjwoMfYHX:ktaMSrs() * 2];
    [DUjHPamSNKWkfM kYzDgmEuJZa:_eFCIXyY kjwoMfYHX:_eeQhnZqKNHy];
    [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:_eFCIXyY kjwoMfYHX:_eNmoDtWOConstriantHeight];
    [self setNeedsLayout];
}


#pragma mark ---------- 清空页面中的内容
- (void)kDlfUmNpWuRzrgq {
    if (self.efXuGjmHki) {
        [self.efXuGjmHki kDlfUmNpWuRzrgq];
    }
    if (self.eBriWcMfpRvDgwV) {
        [self.eBriWcMfpRvDgwV kDlfUmNpWuRzrgq];
    }
    if (self.evFlphHeidT) {
        [self.evFlphHeidT kDlfUmNpWuRzrgq];
    }
    if (self.eDGdpMwaCk) {
        [self.eDGdpMwaCk kDlfUmNpWuRzrgq];
    }
}





-(DUiMTntv *)eVjNfmBXnIoZwi {
    if (!_eVjNfmBXnIoZwi) {
        _eVjNfmBXnIoZwi = [[DUiMTntv alloc]init];
    }
    return _eVjNfmBXnIoZwi;
}

@end
