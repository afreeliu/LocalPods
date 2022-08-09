

#import "EBdnGxhoeLNVpyT.h"
#import "ERwEMnco.h"
#import "EPDMaSEYbehG.h"
#import "EVGPEoxgDvUFc.h"
#import "EGSUylLiuV.h"
#import "EZcUbDA.h"
#import "EKEzlyHJFWTjSaR.h"
#import "EHFeEzjfVm.h"
#import "EFBfhnHaLXqv.h"
#import "EYChkBIevtUL.h"
#import "EGuXiaQqj.h"

#import "EmKtBeFuqi.h"
#import "EXlNnwRDGEsF.h"
#import "EjSOyeZQGuaogMV.h"
#import "EdtskMNz.h"
#import "ENpvcRedBrhfMZo.h"
#import "EYMhnmstjq.h"
#import "EfKgqPeJzFs.h"
#import "EWNMJyHlLz.h"
#import "EUpQnPOJm.h"

#import "EfzOYSICwm.h"
#import "EYRtmpXHyePuZ.h"

@interface EBdnGxhoeLNVpyT ()





@property (nonatomic, readwrite, strong) UIView *eDIzgXpiFwOH;

@property (nonatomic, readwrite, strong) UIButton *ekIJADutgKdS;
@property (nonatomic, readwrite, strong) CAShapeLayer *elQGPERg;
@property (nonatomic, readwrite, strong) UIButton *ecGeIRflrLXsPgm;
@property (nonatomic, readwrite, strong) CAShapeLayer *ekWBPesxF;
@property (nonatomic, readwrite, strong) UIButton *euREMokyFJKbIDxW;
@property (nonatomic, readwrite, strong) CAShapeLayer *eudowmUN;

/// 背景页面的约束偏移量
@property (nonatomic, readwrite, assign) CGFloat eNwmhnlxjIbWConstriantCenterXOffset;
@property (nonatomic, readwrite, assign) CGFloat eNwmhnlxjIbWConstriantWidth;
@property (nonatomic, readwrite, assign) CGFloat eNwmhnlxjIbWConstriantHeight;
@property (nonatomic, readwrite, assign) CGFloat eNwmhnlxjIbWConstriantOffset;

/// 功能页面的动画时长
@property (nonatomic, readwrite, assign) CGFloat emrlpSGkRXTwY;


@property (nonatomic, readwrite, strong) UIView *eyzhFWwm;

@property (nonatomic, readwrite, assign) BOOL eSrQlcbTEtmwaUj;
@property (nonatomic, readwrite, assign) BOOL eaKxkHVpAydb;
@property (nonatomic, readwrite, assign) BOOL eIVJOoKRZdU;

/// 背景页面的约束
@property (nonatomic, readwrite, strong) NSLayoutConstraint *eDIzgXpiFwOHCenterYConstraint;
/// width
@property (nonatomic, readwrite, strong) NSLayoutConstraint *eDIzgXpiFwOHWidthConstraint;
/// height
@property (nonatomic, readwrite, strong) NSLayoutConstraint *eDIzgXpiFwOHHeightConstraint;

/// 背景页面的约束偏移量
@property (nonatomic, readwrite, assign) CGFloat eDIzgXpiFwOHCenterYMarginValue;

/// 功能按钮页面的约束
@property (nonatomic, readwrite, strong) NSLayoutConstraint *ePqvOpEbGXQgh;
/// 功能按钮页面的约束偏移量
@property (nonatomic, readwrite, assign) CGFloat eHpOXmYDN;

/// 各大页面
@property (nonatomic, readwrite, strong) EPDMaSEYbehG *evYzfTrQtSAeZy;
@property (nonatomic, readwrite, strong) EYChkBIevtUL *eXTRGWySLomaw;
@property (nonatomic, readwrite, strong) EVGPEoxgDvUFc *ejEKigBGodIc;
@property (nonatomic, readwrite, strong) EGSUylLiuV *epuhwzoWygjdXA;
@property (nonatomic, readwrite, strong) EZcUbDA *epdcULeWTnGg;
@property (nonatomic, readwrite, strong) EKEzlyHJFWTjSaR *eMXUmtkv;
/// 单独页面
@property (nonatomic, readwrite, strong) ERwEMnco *eBYlwuI;
@property (nonatomic, readwrite, strong) EHFeEzjfVm *evspwVdXQ;
@property (nonatomic, readwrite, strong) EFBfhnHaLXqv *eKayoPgjBDYIxtb;

/// 是否绑定手机，是否绑定身份证
@property (nonatomic, readwrite, assign) BOOL eadshfSgXvp;
@property (nonatomic, readwrite, assign) BOOL exwyLibaC;

/// 快速登录
@property (nonatomic, readwrite, strong) EfzOYSICwm *eRtbOwBQN;

/// 是否正在执行动画
@property (nonatomic, readwrite, assign) BOOL edkzrEiQCY;
/// 当前处在的页面
@property (nonatomic, readwrite, assign) BOOL eNAEkLbuIairnPVm;

@end


@implementation EBdnGxhoeLNVpyT

#pragma mark ---------- 登录成功，并不需要进入绑定任何内容
- (void)nMNtVqhFar {
    self.hidden = YES;
    [self removeFromSuperview];
}

#pragma mark ---------- public Methodnames
+ (instancetype)nnloRyDOeQxdSwAu {
    
    UIWindow *eFtlqWOBuyQ = nLyAxbKV();
    EBdnGxhoeLNVpyT *eMeAOfcVbZQ = [[EBdnGxhoeLNVpyT alloc]init];
    [eFtlqWOBuyQ addSubview:eMeAOfcVbZQ];
    return eMeAOfcVbZQ;
}


-(void)dealloc {
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

-(instancetype)init {
    self = [super init];
    if (self) {
        /// 各个功能页面相对于中间X轴的偏移量
        _eNwmhnlxjIbWConstriantCenterXOffset = 5;
        /// 背景页面的宽
        _eNwmhnlxjIbWConstriantWidth = ndcPZSJMxRqzw();
        /// 背景页面的高
        _eNwmhnlxjIbWConstriantHeight = ndokIaElZgFHci();
        /// 背景偏移量
        _eNwmhnlxjIbWConstriantOffset = 3.0;
        
        _eDIzgXpiFwOHCenterYMarginValue = 30.0;
        _eHpOXmYDN = 35.0;
        
        _emrlpSGkRXTwY = 0.5;
        
        /// 是否能自动登录
        _eSrQlcbTEtmwaUj = nBpENnxljCua();
        /// 是否支持快速登录
        _eaKxkHVpAydb = naBbsmHFCn();
        
        [self nZOPCqyo];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(naBAmRqkPiIu:)];
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer:tap];
    }
    return self;
}

#pragma mark ---------- 结束编辑输入
- (void)naBAmRqkPiIu:(UITapGestureRecognizer *)noti {
    
    [self endEditing:YES];
    NSDictionary *object = @{
                             eupKMnOsWwqLr: @(0.25),
                             erMjmAWpTeXlwKey : @(NO),
                             eJnLsZKE : @(0)
                             };
    [[NSNotificationCenter defaultCenter]postNotificationName:ekBiylArxKdMU object:object];
}




#pragma mark ---------- 主背景页面
- (void)nZOPCqyo {
    
    UIView *eDIzgXpiFwOH = [[UIView alloc]init];
    eDIzgXpiFwOH.translatesAutoresizingMaskIntoConstraints = NO;
    UIImage *image = nBSjbOCNdlsTEfq(@"EQWBZEmpOj");
    eDIzgXpiFwOH.layer.contents = (__bridge id)image.CGImage;
    _eDIzgXpiFwOH = eDIzgXpiFwOH;

    [self addSubview:_eDIzgXpiFwOH];
    
    [EmKtBeFuqi navgXGEYtfjL:_eDIzgXpiFwOH naigAGwYRNfBte:0];
    [EmKtBeFuqi niqOtbXFszpxGLMY:_eDIzgXpiFwOH naigAGwYRNfBte:0];
    

    if (nBpENnxljCua()) {
        _eDIzgXpiFwOHWidthConstraint = [EmKtBeFuqi nwNALxocFyJupkm:_eDIzgXpiFwOH naigAGwYRNfBte:nWjcCXd()];
        _eDIzgXpiFwOHHeightConstraint = [EmKtBeFuqi ntIjPqxLTDs:_eDIzgXpiFwOH naigAGwYRNfBte:noWZfOtAQbLTeP()];
        [self nompxqTZvaAugt];
    } else {
        _eDIzgXpiFwOHWidthConstraint = [EmKtBeFuqi nwNALxocFyJupkm:_eDIzgXpiFwOH naigAGwYRNfBte:ndcPZSJMxRqzw()];
        _eDIzgXpiFwOHHeightConstraint = [EmKtBeFuqi ntIjPqxLTDs:_eDIzgXpiFwOH naigAGwYRNfBte:ndokIaElZgFHci()];
        self.eSrQlcbTEtmwaUj = YES;
        [self nkCVYDBqKpM];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [EGuXiaQqj nPjHvlQfar];
        });
    }
    
    [self setNeedsLayout];
}




#pragma mark ---------- 自动登录页面
- (void)nompxqTZvaAugt {
    __weak typeof(self) weakSelf = self;
    if (!_eBYlwuI) {
        _eBYlwuI = [ERwEMnco nompxqTZvaAugt];
        _eBYlwuI.nfkBYGD = ^{
            weakSelf.eBYlwuI.hidden = YES;
            [weakSelf.eBYlwuI removeFromSuperview];
            [weakSelf nHTLqYzvInCojXp:^{
                [weakSelf nkCVYDBqKpM];
            }];
        };
        _eBYlwuI.nZmOAwvdcktWjYUB = ^(BOOL eadshfSgXvp, BOOL exwyLibaC) {
            weakSelf.eadshfSgXvp = eadshfSgXvp;
            weakSelf.exwyLibaC = exwyLibaC;
            weakSelf.eBYlwuI.hidden = YES;
            [weakSelf.eBYlwuI removeFromSuperview];
            [weakSelf nebHTzUi];
            [weakSelf nlBLgYmWSRx];
        };
        _eBYlwuI.neDLCIkgT = ^{
            weakSelf.eBYlwuI.hidden = YES;
            [weakSelf.eBYlwuI removeFromSuperview];
            [weakSelf nHTLqYzvInCojXp:^{
                [weakSelf nebHTzUi];
                [weakSelf nkCVYDBqKpM];
            }];
        };

        [_eDIzgXpiFwOH addSubview:_eBYlwuI];
    }
    [EmKtBeFuqi nmlcLxvfi:_eBYlwuI naigAGwYRNfBte:0];
    [EmKtBeFuqi nWcbUXozlk:_eBYlwuI naigAGwYRNfBte:0];
    [EmKtBeFuqi nGTVpsCaIbgQwO:_eBYlwuI naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:_eBYlwuI naigAGwYRNfBte:0];
}

- (void)nebHTzUi {
    self.eDIzgXpiFwOHHeightConstraint.constant = _eNwmhnlxjIbWConstriantHeight;
}


#pragma mark ---------- 绑定相关的 手机绑定和身份证绑定
- (void)nlBLgYmWSRx {
    
    if (_eadshfSgXvp) {
        [self nMTIStYARe];
        return;
    }
    if (_exwyLibaC) {
        [self npmPdkqNB];
        return;
    }
    _eDIzgXpiFwOH.hidden = YES;
    [self removeFromSuperview];
}

#pragma mark ---------- 登录页面
- (void)nkCVYDBqKpM {
    [self nGfYOsbhpnTP:nBpENnxljCua()];
    __weak typeof(self) weakSelf = self;
    if (!_evYzfTrQtSAeZy) {
        _evYzfTrQtSAeZy = [EPDMaSEYbehG nkCVYDBqKpM];
        _evYzfTrQtSAeZy.clipsToBounds = YES;
        _evYzfTrQtSAeZy.nPtEpYcg = ^(BOOL eadshfSgXvp, BOOL exwyLibaC) {
            weakSelf.eadshfSgXvp = eadshfSgXvp;
            weakSelf.exwyLibaC = exwyLibaC;
            weakSelf.evYzfTrQtSAeZy.hidden = YES;
            [weakSelf.evYzfTrQtSAeZy removeFromSuperview];
            [weakSelf nPjHvlQfarSkillView:^{
                [weakSelf nlBLgYmWSRx];
            }];
        };
        _evYzfTrQtSAeZy.nxtvqIwZ = ^{
            NSLog(@"login error");
        };
        _evYzfTrQtSAeZy.nCRrDWSPiM = ^{
            weakSelf.evYzfTrQtSAeZy.hidden = YES;
            [weakSelf nCRrDWSPiM];
        };
        _evYzfTrQtSAeZy.nqYEkadezThSHO = ^{
            weakSelf.evYzfTrQtSAeZy.hidden = YES;
            [weakSelf nqYEkadezThSHO];
        };
        _evYzfTrQtSAeZy.njpBdKXkFsvJGi = ^{
            weakSelf.eNAEkLbuIairnPVm = NO;
            [weakSelf nlYryBwGoU];
        };
        _evYzfTrQtSAeZy.nqWIzCHa = ^{
            [weakSelf nOrHoJsj];
        };
        [_eDIzgXpiFwOH addSubview:_evYzfTrQtSAeZy];
    } else {
        _evYzfTrQtSAeZy.hidden = NO;
    }
    _eNAEkLbuIairnPVm = YES;
    self.eDIzgXpiFwOHHeightConstraint.constant = _eNwmhnlxjIbWConstriantHeight;
    [EmKtBeFuqi nmlcLxvfi:_evYzfTrQtSAeZy naigAGwYRNfBte:40];
    [EmKtBeFuqi nWcbUXozlk:_evYzfTrQtSAeZy naigAGwYRNfBte:0];
    [EmKtBeFuqi nGTVpsCaIbgQwO:_evYzfTrQtSAeZy naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:_evYzfTrQtSAeZy naigAGwYRNfBte:0];
}


#pragma mark ---------- 隐藏功能按钮view，下移功能view
- (void)nPjHvlQfarSkillView:(void (^)(void))eRjOoEmJcZe {
    __weak typeof(self) weakSelf = self;
    _eyzhFWwm.hidden = YES;
    _ePqvOpEbGXQgh.constant = _eHpOXmYDN;
    [UIView animateWithDuration:_emrlpSGkRXTwY animations:^{
        [weakSelf layoutIfNeeded];
    } completion:^(BOOL finished) {
        if (finished) {
            weakSelf.eDIzgXpiFwOHCenterYConstraint.constant = 0;
            [UIView animateWithDuration:0.3 animations:^{
                [weakSelf layoutIfNeeded];
            } completion:^(BOOL finished) {
                if (eRjOoEmJcZe) {
                    eRjOoEmJcZe();
                }
            }];
        }
    }];
}
#pragma mark ---------- 上移功能view， 显示功能按钮view
- (void)nHTLqYzvInCojXp:(void (^)(void))eWaHMtiAgelkGux {
    __weak typeof(self) weakSelf = self;
    _eyzhFWwm.hidden = NO;
//    _eDIzgXpiFwOHCenterYConstraint.constant = _eDIzgXpiFwOHCenterYMarginValue;
    [weakSelf nebHTzUi];
    [UIView animateWithDuration:_emrlpSGkRXTwY animations:^{
        [weakSelf layoutIfNeeded];
    } completion:^(BOOL finished) {
        if (finished) {
            weakSelf.ePqvOpEbGXQgh.constant = 0;
            [UIView animateWithDuration:0.3 animations:^{
                [weakSelf layoutIfNeeded];
            } completion:^(BOOL finished) {
                if (eWaHMtiAgelkGux) {
                    eWaHMtiAgelkGux();
                }
            }];
        }
    }];
}


#pragma mark ---------- 切换到找回密码
- (void)nCRrDWSPiM {
    __weak typeof(self) weakSelf = self;
    _ePqvOpEbGXQgh.constant = _eHpOXmYDN;
    [UIView animateWithDuration:_emrlpSGkRXTwY animations:^{
        [weakSelf layoutIfNeeded];
        weakSelf.eyzhFWwm.hidden = YES;
//        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:weakSelf.eDIzgXpiFwOH cache:YES];
    } completion:^(BOOL finished) {
        if (finished) {
            [weakSelf nSTYLZvlydih];
            weakSelf.eDIzgXpiFwOHCenterYConstraint.constant = 0;
            [UIView animateWithDuration:0.3 animations:^{
                [weakSelf layoutIfNeeded];
            }];
        }
    }];
}
#pragma mark ---------- 切换到重置密码
- (void)nqYEkadezThSHO {
    __weak typeof(self) weakSelf = self;
    _ePqvOpEbGXQgh.constant = _eHpOXmYDN;
    [UIView animateWithDuration:_emrlpSGkRXTwY animations:^{
        [weakSelf layoutIfNeeded];
        weakSelf.eyzhFWwm.hidden = YES;
//        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:weakSelf.eDIzgXpiFwOH cache:YES];
    } completion:^(BOOL finished) {
        if (finished) {
            [weakSelf neaSuDdRhxMZY];
            weakSelf.eDIzgXpiFwOHCenterYConstraint.constant = 0;
            [UIView animateWithDuration:0.3 animations:^{
                [weakSelf layoutIfNeeded];
            }];
        }
    }];
}


#pragma mark ---------- 创建功能按钮
- (void)nGfYOsbhpnTP:(BOOL)elFcSHro {
    
    if (!_eyzhFWwm) {
        _eyzhFWwm = [[UIView alloc]init];
        _eyzhFWwm.translatesAutoresizingMaskIntoConstraints = NO;
        
        [self.eDIzgXpiFwOH addSubview:_eyzhFWwm];
    } else {
        _eyzhFWwm.hidden = NO;
        return;
    }
    
    CGFloat eHDZcToPFL = nxoZcUBXRr();
    CGFloat ekIMrhxFOmzJSc = 50;
    CGFloat eZFMfJcI = 20;
    
    
    [EmKtBeFuqi nmlcLxvfi:_eyzhFWwm naigAGwYRNfBte:ngdbzvfscj() + 3];
    [EmKtBeFuqi nLRCtGMFQZAYsc:_eyzhFWwm naigAGwYRNfBte:nxoZcUBXRr()];
    [EmKtBeFuqi nwNALxocFyJupkm:_eyzhFWwm naigAGwYRNfBte:_eaKxkHVpAydb?154:102];
    [EmKtBeFuqi ntIjPqxLTDs:_eyzhFWwm naigAGwYRNfBte:eZFMfJcI];
    
    
    
    
    if (self.eaKxkHVpAydb) {
        
        UIImage *normalImage = nBSjbOCNdlsTEfq(@"ExvQcUuD");
        UIImage *selectImage = nBSjbOCNdlsTEfq(@"lSgZbPhErMDq");
        
        UIButton *eidaMhqN = [[UIButton alloc]init];
        eidaMhqN.tag = 12;
        eidaMhqN.translatesAutoresizingMaskIntoConstraints = NO;
        [eidaMhqN setBackgroundImage:normalImage forState:UIControlStateNormal];
        [eidaMhqN setBackgroundImage:selectImage forState:UIControlStateSelected];
        [eidaMhqN setSelected:NO];
        [eidaMhqN addTarget:self action:@selector(nBqbJnt:) forControlEvents:UIControlEventTouchUpInside];
        [_eyzhFWwm addSubview:eidaMhqN];
        
        [EmKtBeFuqi niqOtbXFszpxGLMY:eidaMhqN naigAGwYRNfBte:0];
        [EmKtBeFuqi nLRCtGMFQZAYsc:eidaMhqN naigAGwYRNfBte:eHDZcToPFL];
        [EmKtBeFuqi nwNALxocFyJupkm:eidaMhqN naigAGwYRNfBte:ekIMrhxFOmzJSc];
        [EmKtBeFuqi ntIjPqxLTDs:eidaMhqN naigAGwYRNfBte:eZFMfJcI];
        
        eHDZcToPFL += ekIMrhxFOmzJSc;
        eHDZcToPFL += 2;
    }
    
    UIImage *registernormalImage = nBSjbOCNdlsTEfq(@"EHsbDwF");
    UIImage *registerselectImage = nBSjbOCNdlsTEfq(@"EEBokNUgqOLaXDx");
    
    
    UIButton *eWDkAPYKRITmwvc = [[UIButton alloc]init];
    eWDkAPYKRITmwvc.tag = 11;
    eWDkAPYKRITmwvc.translatesAutoresizingMaskIntoConstraints = NO;
    [eWDkAPYKRITmwvc setBackgroundImage:registernormalImage forState:UIControlStateNormal];
    [eWDkAPYKRITmwvc setBackgroundImage:registerselectImage forState:UIControlStateSelected];
    [eWDkAPYKRITmwvc setSelected:NO];
    [eWDkAPYKRITmwvc addTarget:self action:@selector(nBqbJnt:) forControlEvents:UIControlEventTouchUpInside];
    [_eyzhFWwm addSubview:eWDkAPYKRITmwvc];
    [EmKtBeFuqi niqOtbXFszpxGLMY:eWDkAPYKRITmwvc naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:eWDkAPYKRITmwvc naigAGwYRNfBte:eHDZcToPFL];
    [EmKtBeFuqi nwNALxocFyJupkm:eWDkAPYKRITmwvc naigAGwYRNfBte:ekIMrhxFOmzJSc];
    [EmKtBeFuqi ntIjPqxLTDs:eWDkAPYKRITmwvc naigAGwYRNfBte:eZFMfJcI];
    
    
    eHDZcToPFL += ekIMrhxFOmzJSc;
    eHDZcToPFL += 2;
    
    UIImage *loginnormalImage = nBSjbOCNdlsTEfq(@"EVqsIMTCvjcRW");
    UIImage *loginselectImage = nBSjbOCNdlsTEfq(@"EUVqdbzJiwPr");
    
    UIButton *eFMHfVcqoItC = [[UIButton alloc]init];
    eFMHfVcqoItC.tag = 10;
    eFMHfVcqoItC.translatesAutoresizingMaskIntoConstraints = NO;
    [eFMHfVcqoItC setBackgroundImage:loginnormalImage forState:UIControlStateNormal];
    [eFMHfVcqoItC setBackgroundImage:loginselectImage forState:UIControlStateSelected];
    [eFMHfVcqoItC setSelected:YES];
    [eFMHfVcqoItC addTarget:self action:@selector(nBqbJnt:) forControlEvents:UIControlEventTouchUpInside];
    [_eyzhFWwm addSubview:eFMHfVcqoItC];
    [EmKtBeFuqi niqOtbXFszpxGLMY:eFMHfVcqoItC naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:eFMHfVcqoItC naigAGwYRNfBte:eHDZcToPFL];
    [EmKtBeFuqi nwNALxocFyJupkm:eFMHfVcqoItC naigAGwYRNfBte:ekIMrhxFOmzJSc];
    [EmKtBeFuqi ntIjPqxLTDs:eFMHfVcqoItC naigAGwYRNfBte:eZFMfJcI];
    
}



#pragma mark ---------- 功能按钮的事件
- (void)nBqbJnt:(UIButton *)sender {
    
    [self endEditing:YES];
    
    NSArray *esOZPtupXxIJQs = self.eyzhFWwm.subviews;
    for (UIView *view in esOZPtupXxIJQs) {
        if ([view isKindOfClass:[UIButton class]]) {
            UIButton *btn = (UIButton *)view;
            [btn setSelected:NO];
        }
    }
    sender.selected = !sender.selected;
    [self.evYzfTrQtSAeZy nNahMwrSRuypIqeO];
    switch (sender.tag) {
        case 10:
        {
            if (_edkzrEiQCY || _eNAEkLbuIairnPVm) {
                return;
            }
            _eNAEkLbuIairnPVm = YES;
            [self niYIFvRMabZxlTV];
        }
            break;
        case 11:
        {
            if (_edkzrEiQCY || !_eNAEkLbuIairnPVm) {
                return;
            }
            _eNAEkLbuIairnPVm = NO;
            [self nlYryBwGoU];
        }
            break;
        case 12:
        {
            if (_edkzrEiQCY) {
                return;
            }
            _edkzrEiQCY = NO;
            _evYzfTrQtSAeZy.hidden = YES;
            _epdcULeWTnGg.hidden = YES;
            __weak typeof(self) weakSelf = self;
            [self nPjHvlQfarSkillView:^{
                [weakSelf nOrHoJsj];
            }];
        }
            break;
            
        default:
            break;
    }
}



#pragma mark ---------- 切换到登录
- (void)niYIFvRMabZxlTV {
    __weak typeof(self) weakSelf = self;
    [_epdcULeWTnGg nxiEODI];
    _edkzrEiQCY = YES;
    [UIView animateWithDuration:_emrlpSGkRXTwY animations:^{
//        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//        [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:weakSelf.eDIzgXpiFwOH cache:YES];
        weakSelf.eMXUmtkv.hidden = YES;
        weakSelf.epdcULeWTnGg.hidden = YES;
        weakSelf.evYzfTrQtSAeZy.hidden = NO;
    } completion:^(BOOL finished) {
        if (finished) {
            weakSelf.edkzrEiQCY = NO;
            [weakSelf nkCVYDBqKpM];
        }
    }];
}

#pragma mark ---------- 切换到注册账号
- (void)nlYryBwGoU {
    __weak typeof(self) weakSelf = self;
    _edkzrEiQCY = YES;
    [UIView animateWithDuration:_emrlpSGkRXTwY animations:^{
//        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
//        [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:weakSelf.eDIzgXpiFwOH cache:YES];
        weakSelf.evYzfTrQtSAeZy.hidden = YES;
        weakSelf.epdcULeWTnGg.hidden = NO;
    } completion:^(BOOL finished) {
        if (finished) {
            weakSelf.edkzrEiQCY = NO;
            [weakSelf nxAjFiuM];
        }
    }];
}


#pragma mark ---------- 快速登录按钮执行的事件
#pragma mark ---------- commitAction

- (void)nOrHoJsj {
    NSDictionary *para = @{
                           @"adv_id": nUQWvyCwLFpTlkE(),
                           @"channel_id": nevRknysWHp(),
                           @"material_id": @"0",
                           @"gid": nqGpZjB(),
                           @"sub_gid": nRKtkwFIQTcuafb(),
                           @"platform_id": nJTbwZrLuDNGc(),
                           @"device_code": nPBoTSdgeJGH()
                           };
//    nPBoTSdgeJGH()
//    NSLog(@"para:%@6EEDB406-EF02-4E95-95BE-3B83484B1ACD", para);
    [EGuXiaQqj nJVrDAcpuRWTMdbLIndicatorWithTitlte:@"登录中..."];
    __weak typeof(self) weakSelf = self;
    [self.eRtbOwBQN nEaYmCfWwKqMTo:nEDQlnRXF() parameters:para];
    self.eRtbOwBQN.nroGdOFnthEjA = ^(EfzOYSICwm *object) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [EGuXiaQqj nPjHvlQfar];
            if (object.erRfJDXKwhBGTxHn == 200) {
                weakSelf.evYzfTrQtSAeZy.hidden = YES;
                [weakSelf.evYzfTrQtSAeZy removeFromSuperview];
                [weakSelf nwvQRSfFcXdHiT:object];
            } else {
                if (object.eAmjYwM) {
                    [EGuXiaQqj nHgTIahEeoP:object.eAmjYwM];
                    weakSelf.edkzrEiQCY = NO;
                    [weakSelf nHTLqYzvInCojXp:^{
                        [weakSelf nyMtiFoBmsN];
                    }];
                }
            }
            
        });
    };
    self.eRtbOwBQN.nNhPrOJC = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [EGuXiaQqj nPjHvlQfar];
            [EGuXiaQqj nHgTIahEeoP:@"网络出了小差!!!"];
            weakSelf.edkzrEiQCY = NO;
            [weakSelf nHTLqYzvInCojXp:^{
                [weakSelf nyMtiFoBmsN];
            }];
        });
    };
}
- (void)nMaCisPzqBEAknU:(UIView *)evsYTmPyDceUSja ndjlGZVDcWEko:(NSString *)eaJLdnisSAFGhH noEWRudyUcztrPOa:(NSString *)eurbnsQlMY{
    __weak typeof(self) weakSelf = self;
    if (!_eXTRGWySLomaw) {
        _eXTRGWySLomaw = [EYChkBIevtUL nXmRklpQjG];
        _eXTRGWySLomaw.clipsToBounds = YES;
        _eXTRGWySLomaw.nwUArRvj = ^{
            weakSelf.eadshfSgXvp = NO;
            weakSelf.exwyLibaC = NO;
            [weakSelf nlBLgYmWSRx];
        };
        self.eXTRGWySLomaw.naVDYkmPF = ^{
            weakSelf.eXTRGWySLomaw.hidden = YES;
            [weakSelf nMTIStYARe];
        };
        [_eDIzgXpiFwOH addSubview:_eXTRGWySLomaw];
    }
    
    [self.eXTRGWySLomaw nKdmvYorDgTjwf:eaJLdnisSAFGhH nJdPqmFQSyiHMa:eurbnsQlMY];
    [self.eXTRGWySLomaw njhJxaIsG:self.eadshfSgXvp];
    
    
    self.eDIzgXpiFwOHHeightConstraint.constant = _eNwmhnlxjIbWConstriantHeight;
    [EmKtBeFuqi nmlcLxvfi:_eXTRGWySLomaw naigAGwYRNfBte:0];
    [EmKtBeFuqi nWcbUXozlk:_eXTRGWySLomaw naigAGwYRNfBte:0];
    [EmKtBeFuqi nGTVpsCaIbgQwO:_eXTRGWySLomaw naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:_eXTRGWySLomaw naigAGwYRNfBte:0];
    
}
/// 快速登录成功
- (void)nwvQRSfFcXdHiT:(EfzOYSICwm *)model {
    
    nCsAeiWGBT(model.eHIRquhplOQgw);
    nytViXr(model.eEJRiLHAkpwhY);
    nYdouRUCvmeh(model.eurbnsQlMY.length? YES : NO);
    nnJCqacRLmHh(model.eBVFRgHlmJe);
    nvRJcAbKHVqarx(model.eGUWxuLgnjhAm);
    self.eadshfSgXvp = [model.eBVFRgHlmJe isEqualToString:@"1"];
    self.exwyLibaC = [model.eGUWxuLgnjhAm isEqualToString:@"1"];
    NSDictionary *userInfo = @{
                               @"uid": model.eHIRquhplOQgw,
                               @"username": model.eEJRiLHAkpwhY
                               };
    nQPXLfIKevpyzFVH(eJtEMRDAmI, nil, userInfo);
    
    
    /// 设备为第一次快速登录，然后需要保存账号密码，显示快速登录页面
    if (model.eurbnsQlMY && model.eurbnsQlMY.length) {
        /// 保存账户
        nCRNGDXh(model.eEJRiLHAkpwhY);
        /// 保存最后登录的账户
        nwJYlcmnI(model.eEJRiLHAkpwhY);
        /// 保存账户密码
        ntqEHUVm(model.eurbnsQlMY, model.eEJRiLHAkpwhY);

        [self nMaCisPzqBEAknU:nil ndjlGZVDcWEko:model.eEJRiLHAkpwhY noEWRudyUcztrPOa:model.eurbnsQlMY];
    } else {

        [self nlBLgYmWSRx];
    }
    
}
- (void)nyMtiFoBmsN{
    if (_eNAEkLbuIairnPVm) {
        _eNAEkLbuIairnPVm = YES;
        _evYzfTrQtSAeZy.hidden = NO;
        _epdcULeWTnGg.hidden = YES;
    } else {
        _eNAEkLbuIairnPVm = NO;
        _evYzfTrQtSAeZy.hidden = YES;
        if (_epdcULeWTnGg) {
            _epdcULeWTnGg.hidden = NO;
        } else {
            [self nxAjFiuM];
        }
    }
}

#pragma mark ---------- 找回密码View
- (void)nSTYLZvlydih{
    __weak typeof(self) weakSelf = self;
    if (!_ejEKigBGodIc) {
        _ejEKigBGodIc = [EVGPEoxgDvUFc nSTYLZvlydih];
        _ejEKigBGodIc.clipsToBounds = YES;
        _ejEKigBGodIc.njbxoZJ = ^{
            weakSelf.ejEKigBGodIc.hidden = YES;
            [weakSelf nWczywVgsSQ];
        };
        _ejEKigBGodIc.nscSoAxzknMbAction = ^{
            [weakSelf nWczywVgsSQ];
        };
    } else {
        _ejEKigBGodIc.hidden = NO;
    }
    [_eDIzgXpiFwOH addSubview:_ejEKigBGodIc];
    self.eDIzgXpiFwOHHeightConstraint.constant = _eNwmhnlxjIbWConstriantHeight;
    [EmKtBeFuqi nmlcLxvfi:_ejEKigBGodIc naigAGwYRNfBte:0];
    [EmKtBeFuqi nWcbUXozlk:_ejEKigBGodIc naigAGwYRNfBte:0];
    [EmKtBeFuqi nGTVpsCaIbgQwO:_ejEKigBGodIc naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:_ejEKigBGodIc naigAGwYRNfBte:0];
    [self setNeedsLayout];
}
#pragma mark ---------- 从找回密码返回到登录页面
- (void)nWczywVgsSQ {
    __weak typeof(self) weakSelf = self;
    [UIView animateWithDuration:_emrlpSGkRXTwY animations:^{
        [weakSelf layoutIfNeeded];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:weakSelf.eDIzgXpiFwOH cache:YES];
    } completion:^(BOOL finished) {
        if (finished) {
            [weakSelf nkCVYDBqKpM];
            weakSelf.ePqvOpEbGXQgh.constant = 0;
            [UIView animateWithDuration:0.3 animations:^{
                [weakSelf layoutIfNeeded];
            }];
        }
    }];
}
#pragma mark ---------- 重置密码View
- (void)neaSuDdRhxMZY{
    __weak typeof(self) weakSelf = self;
    if (!_epuhwzoWygjdXA) {
        _epuhwzoWygjdXA = [EGSUylLiuV neaSuDdRhxMZY];
        _epuhwzoWygjdXA.clipsToBounds = YES;
        _epuhwzoWygjdXA.hidden = NO;
        _epuhwzoWygjdXA.nRNkojx = ^{
            weakSelf.epuhwzoWygjdXA.hidden = YES;
            [weakSelf nTGVpIDtoea];
        };
        _epuhwzoWygjdXA.nscSoAxzknMbAction = ^{  
            [weakSelf nTGVpIDtoea];
        };
    } else {
        _epuhwzoWygjdXA.hidden = NO;
    }
    [_eDIzgXpiFwOH addSubview:_epuhwzoWygjdXA];
    self.eDIzgXpiFwOHHeightConstraint.constant = _eNwmhnlxjIbWConstriantHeight;
    [EmKtBeFuqi nmlcLxvfi:_epuhwzoWygjdXA naigAGwYRNfBte:0];
    [EmKtBeFuqi nWcbUXozlk:_epuhwzoWygjdXA naigAGwYRNfBte:0];
    [EmKtBeFuqi nGTVpsCaIbgQwO:_epuhwzoWygjdXA naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:_epuhwzoWygjdXA naigAGwYRNfBte:0];
    [self setNeedsLayout];
}
#pragma mark ---------- 从重置密码返回到登录页面
- (void)nTGVpIDtoea {
    __weak typeof(self) weakSelf = self;
//    _eDIzgXpiFwOHCenterYConstraint.constant = _eDIzgXpiFwOHCenterYMarginValue;
    [UIView animateWithDuration:_emrlpSGkRXTwY animations:^{
        // 详见UIViewAnimationCurve
        [weakSelf layoutIfNeeded];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:weakSelf.eDIzgXpiFwOH cache:YES];
    } completion:^(BOOL finished) {
        if (finished) {
            [weakSelf nkCVYDBqKpM];
            weakSelf.ePqvOpEbGXQgh.constant = 0;
            [UIView animateWithDuration:0.3 animations:^{
                [weakSelf layoutIfNeeded];
            }];
        }
    }];
}
#pragma mark ---------- 账号注册View
- (void)nxAjFiuM {
    __weak typeof(self) weakSelf = self;
    if (!_epdcULeWTnGg) {
        _epdcULeWTnGg = [EZcUbDA nxAjFiuM];
        _epdcULeWTnGg.nygwohYGEOlR = ^(BOOL eadshfSgXvp, BOOL exwyLibaC) {
            weakSelf.eadshfSgXvp = eadshfSgXvp;
            weakSelf.exwyLibaC = exwyLibaC;
            [weakSelf nPjHvlQfarSkillView:^{
                [weakSelf nlBLgYmWSRx];
            }];
        };
        _epdcULeWTnGg.nUpicaYNWuLZo = ^{
            weakSelf.epdcULeWTnGg.hidden = YES;
            [weakSelf niMBUFLIdRrafh];
        };
        _epdcULeWTnGg.nscSoAxzknMbAction = ^{
            weakSelf.eNAEkLbuIairnPVm = YES;
            [weakSelf niYIFvRMabZxlTV];
        };
        _epdcULeWTnGg.clipsToBounds = YES;
        
        [_eDIzgXpiFwOH addSubview:_epdcULeWTnGg];
    } else {
        _epdcULeWTnGg.hidden = NO;
    }
    self.eDIzgXpiFwOHHeightConstraint.constant = _eNwmhnlxjIbWConstriantHeight;
    [EmKtBeFuqi nmlcLxvfi:_epdcULeWTnGg naigAGwYRNfBte:40];
    [EmKtBeFuqi nWcbUXozlk:_epdcULeWTnGg naigAGwYRNfBte:0];
    [EmKtBeFuqi nGTVpsCaIbgQwO:_epdcULeWTnGg naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:_epdcULeWTnGg naigAGwYRNfBte:0];
    [self setNeedsLayout];
}
#pragma mark ---------- 切换到手机注册
- (void)niMBUFLIdRrafh {
    __weak typeof(self) weakSelf = self;
    _ePqvOpEbGXQgh.constant = _eHpOXmYDN;
    [UIView animateWithDuration:_emrlpSGkRXTwY animations:^{
        [weakSelf layoutIfNeeded];
        weakSelf.eyzhFWwm.hidden = YES;
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:weakSelf.eDIzgXpiFwOH cache:YES];
    } completion:^(BOOL finished) {
        if (finished) {
            [weakSelf nCrKSxtVovk];
            weakSelf.eDIzgXpiFwOHCenterYConstraint.constant = 0;
            [UIView animateWithDuration:0.3 animations:^{
                [weakSelf layoutIfNeeded];
            }];
        }
    }];
}


#pragma mark ---------- 手机注册View
- (void)nCrKSxtVovk {
    __weak typeof(self) weakSelf = self;
    if (!_eMXUmtkv) {
        _eMXUmtkv = [EKEzlyHJFWTjSaR nCrKSxtVovk];
        _eMXUmtkv.nMfzDkJgmFwI = ^(BOOL exwyLibaC) {
            weakSelf.eadshfSgXvp = NO;
            weakSelf.exwyLibaC = exwyLibaC;
            [weakSelf nPjHvlQfarSkillView:^{
                [weakSelf nlBLgYmWSRx];
            }];
        };
        _eMXUmtkv.nscSoAxzknMbAction = ^{
            [weakSelf nfMYQmTj];
        };
        _eMXUmtkv.clipsToBounds = YES;
        [_eDIzgXpiFwOH addSubview:_eMXUmtkv];
    } else {
        _eMXUmtkv.hidden = NO;
        [_eDIzgXpiFwOH addSubview:_eMXUmtkv];
    }
    
    self.eDIzgXpiFwOHHeightConstraint.constant = _eNwmhnlxjIbWConstriantHeight;
    [EmKtBeFuqi nmlcLxvfi:_eMXUmtkv naigAGwYRNfBte:0];
    [EmKtBeFuqi nWcbUXozlk:_eMXUmtkv naigAGwYRNfBte:0];
    [EmKtBeFuqi nGTVpsCaIbgQwO:_eMXUmtkv naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:_eMXUmtkv naigAGwYRNfBte:0];
    [self setNeedsLayout];
    
}
#pragma mark ---------- 返回账号注册view
- (void)nfMYQmTj {
    __weak typeof(self) weakSelf = self;
    
//    _eDIzgXpiFwOHCenterYConstraint.constant = _eDIzgXpiFwOHCenterYMarginValue;
    [UIView animateWithDuration:_emrlpSGkRXTwY animations:^{
        [weakSelf layoutIfNeeded];
        weakSelf.eyzhFWwm.hidden = NO;
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:weakSelf.eDIzgXpiFwOH cache:YES];
    } completion:^(BOOL finished) {
        if (finished) {
            [weakSelf nxAjFiuM];
            weakSelf.ePqvOpEbGXQgh.constant = 0;
            [UIView animateWithDuration:0.3 animations:^{
                [weakSelf layoutIfNeeded];
            }];
        }
    }];
}

#pragma mark ---------- 绑定手机号View
- (void)nMTIStYARe {
    __weak typeof(self) weakSelf = self;
    if (!_evspwVdXQ) {
        _evspwVdXQ = [EHFeEzjfVm nOKkTfFIgLuV];
        _evspwVdXQ.clipsToBounds = YES;
        _evspwVdXQ.nkVbFcSHOEgsvAKq = ^{
            
        };
        _evspwVdXQ.nRJDYEFomQxT = ^{
            weakSelf.eadshfSgXvp = NO;
            [weakSelf nlBLgYmWSRx];
        };
        [_eDIzgXpiFwOH addSubview:_evspwVdXQ];
    }
    
    
    self.eDIzgXpiFwOHHeightConstraint.constant = _eNwmhnlxjIbWConstriantHeight;
    [EmKtBeFuqi nmlcLxvfi:_evspwVdXQ naigAGwYRNfBte:0];
    [EmKtBeFuqi nWcbUXozlk:_evspwVdXQ naigAGwYRNfBte:0];
    [EmKtBeFuqi nGTVpsCaIbgQwO:_evspwVdXQ naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:_evspwVdXQ naigAGwYRNfBte:0];
    [self setNeedsLayout];
}
#pragma mark ---------- 绑定身份证
- (void)npmPdkqNB {
    __weak typeof(self) weakSelf = self;
    if (!_eKayoPgjBDYIxtb) {
        _eKayoPgjBDYIxtb = [EFBfhnHaLXqv npmPdkqNB];
        _eKayoPgjBDYIxtb.clipsToBounds = YES;
        _eKayoPgjBDYIxtb.nDJHWzyYNsdAI = ^{
            
        };
        _eKayoPgjBDYIxtb.nqFZmMPuK = ^{
            weakSelf.exwyLibaC = NO;
            [weakSelf nlBLgYmWSRx];
        };
        [_eDIzgXpiFwOH addSubview:_eKayoPgjBDYIxtb];
    }
    self.eDIzgXpiFwOHHeightConstraint.constant = _eNwmhnlxjIbWConstriantHeight;
    [EmKtBeFuqi nmlcLxvfi:_eKayoPgjBDYIxtb naigAGwYRNfBte:0];
    [EmKtBeFuqi nWcbUXozlk:_eKayoPgjBDYIxtb naigAGwYRNfBte:0];
    [EmKtBeFuqi nGTVpsCaIbgQwO:_eKayoPgjBDYIxtb naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:_eKayoPgjBDYIxtb naigAGwYRNfBte:0];
    [self setNeedsLayout];
}


#pragma mark ---------- 清空页面中的内容
- (void)nxiEODI {
    if (self.ejEKigBGodIc) {
        [self.ejEKigBGodIc nxiEODI];
    }
    if (self.epuhwzoWygjdXA) {
        [self.epuhwzoWygjdXA nxiEODI];
    }
    if (self.epdcULeWTnGg) {
        [self.epdcULeWTnGg nxiEODI];
    }
    if (self.eMXUmtkv) {
        [self.eMXUmtkv nxiEODI];
    }
}





-(EfzOYSICwm *)eRtbOwBQN {
    if (!_eRtbOwBQN) {
        _eRtbOwBQN = [[EfzOYSICwm alloc]init];
    }
    return _eRtbOwBQN;
}

@end
