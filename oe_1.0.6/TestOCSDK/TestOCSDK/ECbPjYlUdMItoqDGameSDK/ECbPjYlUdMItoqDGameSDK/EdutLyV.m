

#import "EdutLyV.h"
#import "EfPcqlxEisYgVvey.h"
#import "EmKtBeFuqi.h"
#import "EfKgqPeJzFs.h"
#import "EdutLyVBorderTypeTool.h"
#import "EYMhnmstjq.h"
#import "EiwdWfvrnB.h"
#import "EMUSFQszCIq.h"
#import "EVTryYUK.h"
#import "EgruVXvaUKkGcymJ.h"
#import "EYjGFsnkmP.h"
#import "EqxyQcCF.h"
#import "EFEiAdYgWTj.h"
#import "EWsrTKHd.h"
#import "ExlyuZWfkQDHScF.h"
#import "EzWEXxisoAfOU.h"

#import "EDqxoOtgPanuMV.h"
#import "EjSOyeZQGuaogMV.h"
#import "EMyEwhJLZr.h"
#import "EUpQnPOJm.h"
#import "EGuXiaQqj.h"

#import "EIcBiraynuDe.h"

/// 在键盘一直出现的时候使用
static CGFloat VARNAMES_CONTINUEVALUE = 0;
/// 键盘的Y轴位置
static CGFloat VARNAMES_KEYBOARDMINY = 0;

@interface EdutLyV ()<UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, readwrite, strong) NSLayoutConstraint *eUbHhWx;

@property (nonatomic, readwrite, strong) NSLayoutConstraint *ebaYvGXTqJjW;

/// 哪个页面的输入框
@property (nonatomic, readwrite, assign) euMxtbUH eewafLiE;
/// 输入框的背景样式
@property (nonatomic, readwrite, assign) ePucVRkejDM elUBdyZfKQ;
/// 0 为文字， 其他为图标
@property (nonatomic, readwrite, assign) NSInteger eDxKOhndySpHTGX;

@property (nonatomic, readwrite, assign) eRBtzVsSjDTPqg eDWxLaKcilwgC;

@property (nonatomic, readwrite, strong) UILabel *embSotwQATK;

@property (nonatomic, readwrite, strong) UIView *eewafLiEImage;

@property (nonatomic, readwrite, strong) UITextField *eLMfKtzBUGcInWP;

@property (nonatomic, readwrite, strong) EfPcqlxEisYgVvey *enOBqMt;

@property (nonatomic, readwrite, assign) NSInteger etIcfYurQgo;

@property (nonatomic, readwrite, strong) UIColor *eTNloEgFy;
@property (nonatomic, readwrite, strong) UIColor *eqgOPQeEwD;

@property (nonatomic, readwrite, assign) CGFloat eImHXTDS;



/// textfield 的值
@property (nonatomic, readwrite, copy) NSString *emsWldJuPwEnih;

@property (nonatomic, readwrite, assign) BOOL eHmCZnjLOUSoXpqG;

@property (nonatomic, readwrite, strong) UITableView *eVyWIMkE;

@property (nonatomic, readwrite, strong) NSArray *ekoBXuhnlD;

/// 获取验证码框中会使用到
@property (nonatomic, readwrite, strong) CAShapeLayer *erRfJDXKwhBGTxHnLayer;

/// 密码输入框中会使用到
@property (nonatomic, readwrite, strong) CAShapeLayer *esHAXCI;
@property (nonatomic, readwrite, strong) CAShapeLayer *euOZfTgshmKNzjMEyesLayer;

@property (nonatomic, readwrite, strong) EIcBiraynuDe *eNilerZtVvh;
@property (nonatomic, readwrite, strong) EIcBiraynuDe *eZRbiQNBPgCdca;


@property (nonatomic, readwrite, assign) CGFloat etXpuKkcjZHGSEBoardHeight;

@end


@implementation EdutLyV
{
    CGFloat _eGPjQyWU;
    CGFloat _etXpuKkcjZHGSEBoardMinY;
    CGFloat _eOQoWZkdplPeq;
    /// 移动的距离
    BOOL _erMjmAWpTeXlw;
}


#pragma mark ---------- public methodNames
+ (instancetype)nNgFDdAHMfTWbRko:(euMxtbUH)eLaHoYxcpysM {
    EdutLyV *emXtKsFDpflvczj = [[EdutLyV alloc]init];
    [emXtKsFDpflvczj nNuqhkSzI:eLaHoYxcpysM];
    [emXtKsFDpflvczj nkGOzDovUC:1];
    
    
    UIButton *clearBtn = [emXtKsFDpflvczj.eLMfKtzBUGcInWP valueForKey:@"_clearButton"];
    UIImage *EXlEVtqPURAke = nBSjbOCNdlsTEfq(@"EXlEVtqPURAke");
    [clearBtn setImage:EXlEVtqPURAke forState:UIControlStateNormal];
    emXtKsFDpflvczj.eLMfKtzBUGcInWP.clearButtonMode = UITextFieldViewModeWhileEditing;
    return emXtKsFDpflvczj;
}

- (void)nhrHSVncXDl:(NSString *)ebPdByx ngrlYtHiy:(BOOL)eoAjamk {
    
    self.eLMfKtzBUGcInWP.text = ebPdByx;
    self.eLMfKtzBUGcInWP.enabled = eoAjamk;
    self.emsWldJuPwEnih = ebPdByx;
}

- (void)nAmnLWC {
    [self.eLMfKtzBUGcInWP becomeFirstResponder];
}
- (void)nwIYzxlVy {
    [self.eLMfKtzBUGcInWP resignFirstResponder];
}




#pragma mark ----------------------------------------------------------------------------------------------------

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
    if (object == self && [keyPath isEqualToString:@"etXpuKkcjZHGSEBoardHeight"]) {
        if (self.eLMfKtzBUGcInWP.isEditing) {
            [self njPgdZhr];
        }
        
    }
    
}

-(void)dealloc {
    [self removeObserver:self forKeyPath:@"etXpuKkcjZHGSEBoardHeight"];
    
}
-(instancetype)init {
    self = [super init];
    if (self) {
        
        
        UIImage *lRbkytnXNfuUi = nBSjbOCNdlsTEfq(@"EMxAXSRfPVTeDY");
        self.layer.contents = (__bridge id)lRbkytnXNfuUi.CGImage;
        
        
        self.etIcfYurQgo = ncfdJYV();
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *egbNoEqRFZCWLrh = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(nRKElxUJAoBed:)];
        [self addGestureRecognizer:egbNoEqRFZCWLrh];
        
        self.eTNloEgFy = [EYMhnmstjq nWsORqEFbUChPdH:naRuYJfmwH()];
        self.eqgOPQeEwD = [EYMhnmstjq nWsORqEFbUChPdH:nirSqYtRWzPB()];
        self.elUBdyZfKQ = nEOczPJL();
        self.eDxKOhndySpHTGX = nxQWFvoLDmE();
        
        [self nmGaRgnwPFOEQMcd:self.eDxKOhndySpHTGX];
        
        
        [self addObserver:self forKeyPath:@"etXpuKkcjZHGSEBoardHeight" options:(NSKeyValueObservingOptionNew |NSKeyValueObservingOptionOld) context:nil];
        
        //监听当键盘将要出现时
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(nKzbAnOUfQD:)
                                                     name:UIKeyboardWillShowNotification
                                                   object:nil];
        
    }
    return self;
}
#pragma mark ---------- 坚挺键盘出现
- (void)nKzbAnOUfQD:(NSNotification *)noti {
    
    
    if (!self.eLMfKtzBUGcInWP.isEditing) {
        return;
    }
    //获取键盘的高度
    NSDictionary *userInfo = [noti userInfo];
    VARNAMES_CONTINUEVALUE = 0;
    NSValue *value = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGRect keyboardRect = [value CGRectValue];
    VARNAMES_KEYBOARDMINY = CGRectGetMinY(keyboardRect);
    [self njPgdZhr];
}




- (void)nmGaRgnwPFOEQMcd:(euMxtbUH)eewafLiE {
    
    
    UILabel *eWuReUNxMv = [[UILabel alloc]init];
    eWuReUNxMv.translatesAutoresizingMaskIntoConstraints = NO;
    eWuReUNxMv.adjustsFontSizeToFitWidth = YES;
    eWuReUNxMv.textAlignment = NSTextAlignmentCenter;
    eWuReUNxMv.font = [UIFont systemFontOfSize:nyPwZcoJaAtgqYS()];
    eWuReUNxMv.textColor = [EYMhnmstjq nWsORqEFbUChPdH:nJKUgqRCXOQLH()];
    self.embSotwQATK = eWuReUNxMv;
    
    UIView *esOZPtupXxIJQ = [[UIView alloc]init];
    esOZPtupXxIJQ.translatesAutoresizingMaskIntoConstraints = NO;
    esOZPtupXxIJQ.contentMode = UIViewContentModeScaleAspectFit;
    self.eewafLiEImage = esOZPtupXxIJQ;
    
    UITextField *eGYCuqZjHRQ = [[UITextField alloc]init];
    eGYCuqZjHRQ.font = [UIFont systemFontOfSize:nyPwZcoJaAtgqYS()];
    eGYCuqZjHRQ.translatesAutoresizingMaskIntoConstraints = NO;
    eGYCuqZjHRQ.delegate = self;
    eGYCuqZjHRQ.adjustsFontSizeToFitWidth = YES;
    eGYCuqZjHRQ.placeholder = @" ";
    [eGYCuqZjHRQ setValue:[EYMhnmstjq nWsORqEFbUChPdH:nAGXPlnsowNIdr()] forKeyPath:@"_placeholderLabel.textColor"];
    [eGYCuqZjHRQ setValue:[UIFont boldSystemFontOfSize:nyPwZcoJaAtgqYS()] forKeyPath:@"_placeholderLabel.font"];
    eGYCuqZjHRQ.textColor = [EYMhnmstjq nWsORqEFbUChPdH:nAGXPlnsowNIdr()];
    [eGYCuqZjHRQ setTintColor:[EYMhnmstjq nWsORqEFbUChPdH:nAGXPlnsowNIdr()]];
    [eGYCuqZjHRQ addTarget:self action:@selector(nTkAnBFvwVlYxMat:) forControlEvents:UIControlEventEditingChanged];
    self.eLMfKtzBUGcInWP = eGYCuqZjHRQ;
    
    EfPcqlxEisYgVvey *emjoNXYSv = [EfPcqlxEisYgVvey nUFMWwyJ:ezcGNYaUp];
    emjoNXYSv.translatesAutoresizingMaskIntoConstraints = NO;
    [emjoNXYSv addTarget:self action:@selector(nYxLjZPDt:) forControlEvents:UIControlEventTouchUpInside];
    self.enOBqMt = emjoNXYSv;
    
    self.backgroundColor = self.eqgOPQeEwD;
    
    [self addSubview:self.embSotwQATK];
    [self addSubview:self.eewafLiEImage];
    [self addSubview:self.eLMfKtzBUGcInWP];
    [self addSubview:self.enOBqMt];
    self.backgroundColor = [UIColor clearColor];
    switch (eewafLiE) {
        case 0:
        {
            self.embSotwQATK.hidden = NO;
            self.eewafLiEImage.hidden = YES;
            self.eImHXTDS = nHUqduOL() + nQuUqIovRAg();
        }
            break;
            
        default:
        {
            self.embSotwQATK.hidden = YES;
            self.eewafLiEImage.hidden = NO;
            self.eImHXTDS = nlQnSOKz() + nQuUqIovRAg();
        }
            break;
    }
    [self nPjSJzmiWTkYoEgh:eewafLiE];
}

#pragma mark ---------- 布局
- (void)nPjSJzmiWTkYoEgh:(NSInteger)exAtrVBcv {
    
    /// 左边文字
    [EmKtBeFuqi nGTVpsCaIbgQwO:self.embSotwQATK naigAGwYRNfBte:nxoZcUBXRr()];
    [EmKtBeFuqi nmlcLxvfi:self.embSotwQATK naigAGwYRNfBte:nxoZcUBXRr()];
    [EmKtBeFuqi nWcbUXozlk:self.embSotwQATK naigAGwYRNfBte:nxoZcUBXRr()];
    [EmKtBeFuqi nwNALxocFyJupkm:self.embSotwQATK naigAGwYRNfBte:nHUqduOL()];
    
    /// 左边图标icon
    [EmKtBeFuqi nGTVpsCaIbgQwO:self.eewafLiEImage naigAGwYRNfBte:nxoZcUBXRr()];
    [EmKtBeFuqi niqOtbXFszpxGLMY:self.eewafLiEImage naigAGwYRNfBte:0];
    [EmKtBeFuqi nwNALxocFyJupkm:self.eewafLiEImage naigAGwYRNfBte:nlQnSOKz()];
    [EmKtBeFuqi ntIjPqxLTDs:self.eewafLiEImage naigAGwYRNfBte:nlQnSOKz()];
    /// 输入框
    self.eUbHhWx = [EmKtBeFuqi nGTVpsCaIbgQwO:self.eLMfKtzBUGcInWP naigAGwYRNfBte:self.eImHXTDS];
    [EmKtBeFuqi nmlcLxvfi:self.eLMfKtzBUGcInWP naigAGwYRNfBte:0];
    [EmKtBeFuqi nWcbUXozlk:self.eLMfKtzBUGcInWP naigAGwYRNfBte:0];
    self.ebaYvGXTqJjW =  [EmKtBeFuqi
                                     nLRCtGMFQZAYsc:self.eLMfKtzBUGcInWP naigAGwYRNfBte:nxoZcUBXRr()];
    
    /// 右边item
    [EmKtBeFuqi niqOtbXFszpxGLMY:self.enOBqMt naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:self.enOBqMt naigAGwYRNfBte:nxoZcUBXRr()];
    [EmKtBeFuqi nwNALxocFyJupkm:self.enOBqMt naigAGwYRNfBte:nHuGOezMN()];
    [EmKtBeFuqi ntIjPqxLTDs:self.enOBqMt naigAGwYRNfBte:nHuGOezMN()];

    [self setNeedsLayout];
}


#pragma mark ---------- 绘制inputView的边框类型
- (void)nkGOzDovUC:(ePucVRkejDM)eBfOZYlPquCzRDV {
    
    switch (eBfOZYlPquCzRDV) {
        case eSdarcN:
        {
            nABESDTwLGJcf(self, [UIColor redColor], [UIColor greenColor]);
        }
            break;
        case euTaSxdrNm:
        {
            nABESDTwLGJcf(self, [UIColor yellowColor], [UIColor blueColor]);
        }
            break;
        case ewsfPXqLTISEmk:
        {
            nABESDTwLGJcf(self, [UIColor redColor], [UIColor greenColor]);
        }
            break;
        case emXtKsFDpflvczjBorderImage1:
        {
            
        }
            break;
        case eNQVKDB:
        {
            
        }
            break;
        case emXtKsFDpflvczjBorderImage3:
        {
            
        }
            break;
        default:

            break;
    }
}


#pragma mark ---------- 配置inputView的类型
- (void)nNuqhkSzI:(euMxtbUH)eewafLiE {
    self.eewafLiE = eewafLiE;
    switch (eewafLiE) {
        case eewafLiELoginAccount:
        {
            [self niwGrDTOen];
        }
            break;
        case eewafLiELoginPassword:
        {
            [self nNuqhkSzILoginPassword];
        }
            break;
        case eewafLiEFindBackPasswordPhone:
        {
            [self nNuqhkSzIFindBackPasswordPhone];
        }
            break;
        case eewafLiEFindBackPasswordCode:
        {
            [self nNuqhkSzIFindBackPasswordCode];
        }
            break;
        case eewafLiEFindBackPasswordPassword:
        {
            [self nNuqhkSzIFindBackPasswordPassword];
        }
            break;
        case eewafLiEResetPasswordAccount:
        {
            [self nsKpGwSAP];
        }
            break;
        case eewafLiEResetPasswordPassword:
        {
            [self nNuqhkSzIResetPasswordPassword];
        }
            break;
        case eewafLiEResetPasswordNewPassword:
        {
            [self nEjGXomTx];
        }
            break;
        case eewafLiEResetPasswordRenewPassword:
        {
            [self nNuqhkSzIResetPasswordRenewPassword];
        }
            break;
        case eewafLiEPhoneRegisterPhone:
        {
            [self ntMVXdeERpCgxA];
        }
            break;
        case eewafLiEPhoneRegisterCode:
        {
            [self nNuqhkSzIPhoneRegisterCode];
        }
            break;
        case eewafLiEPhoneRegisterPassword:
        {
            [self nNuqhkSzIPhoneRegisterPassword];
        }
            break;
        case emUvOITEkLaFd:
        {
            [self nNuqhkSzINormalRegisterAccount];
        }
            break;
        case eewafLiENormalRegisterPassword:
        {
            [self nNuqhkSzINormalRegisterPassword];
        }
            break;
        case eewafLiEQuickLoginAccount:
        {
            [self nxKgzrVf];
        }
            break;
        case eewafLiEQuickLoginPassword:
        {
            [self nNuqhkSzIQuickLoginPassword];
        }
            break;
        case eewafLiEAutoLoginAccount:
        {
            [self nNuqhkSzIAutoLoginAccount];
        }
            break;
        case eewafLiEAutoLoginPassword:
        {
            [self nNuqhkSzIAutoLoginPassword];
        }
            break;
        case eRZEjWwUD:
        {
            [self nEXzdQJTveqkGSC];
        }
            break;
        case eewafLiEBindPhoneCode:
        {
            [self nmpnHwq];
        }
            break;
        case eXocmuPH:
        {
            [self nrhaUwgXnKmqoZ];
        }
            break;
        case eewafLiEBindPersonIDCard:
        {
            [self nnBbTOCaphZouAN];
        }
            break;
        default:
            break;
    }
    [self setNeedsLayout];
}
#pragma mark --------------------------------------------------

#pragma mark ---------- 登录页面的账号输入框
- (void)niwGrDTOen {
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = naGIxVFc();
        
    } else {
        
    }
    self.eLMfKtzBUGcInWP.placeholder = nNwxVIa();
    NSArray *edvzKDGeJE = nWjxRNUDod();
    if (edvzKDGeJE.count) {
        self.enOBqMt.hidden = NO;
        self.ebaYvGXTqJjW.constant = nQuUqIovRAg() + nHuGOezMN();
    } else {
        self.enOBqMt.hidden = YES;
        self.ebaYvGXTqJjW.constant = nQuUqIovRAg();
    }
    self.embSotwQATK.hidden = YES;
//    self.eewafLiEImage.hidden = YES;
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyNext;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnNext;
    
    UIImage *EoHWarVFpJ = nBSjbOCNdlsTEfq(@"EoHWarVFpJ");
    self.eewafLiEImage.layer.contents = (__bridge id)EoHWarVFpJ.CGImage;
    nmYwAWVTgn(self.enOBqMt, [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()]);
    
    
}
#pragma mark ---------- 登录页面的密码输入框
- (void)nNuqhkSzILoginPassword {
    self.enOBqMt.hidden = YES;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = noKQxPERW();
    }
    self.ebaYvGXTqJjW.constant = nxoZcUBXRr();
    
    self.embSotwQATK.hidden = YES;
//    self.eewafLiEImage.hidden = YES;
    self.eLMfKtzBUGcInWP.placeholder = nVzPTiy();
    self.eLMfKtzBUGcInWP.secureTextEntry = YES;
    self.eHmCZnjLOUSoXpqG = YES;
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyDefault;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnDefault;
    UIImage *EuEFcHLX = nBSjbOCNdlsTEfq(@"EuEFcHLX");
    self.eewafLiEImage.layer.contents = (__bridge id)EuEFcHLX.CGImage;
}
#pragma mark ---------- 找回密码的手机号输入框
- (void)nNuqhkSzIFindBackPasswordPhone {
    self.enOBqMt.hidden = YES;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = nOAgNJsEpDdxe();
    }
    self.eLMfKtzBUGcInWP.placeholder = nfrGYqDxWap();
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyNext;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnNext;
    self.ebaYvGXTqJjW.constant = nxoZcUBXRr();
    
    UIImage *leRQESZfLIJy = nBSjbOCNdlsTEfq(@"EsTWLDumXdZVzlqa");
    self.eewafLiEImage.layer.contents = (__bridge id)leRQESZfLIJy.CGImage;
}
#pragma mark ---------- 找回密码的验证码输入框
- (void)nNuqhkSzIFindBackPasswordCode {
    self.enOBqMt.hidden = NO;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = nxMjhQKT();
    }
    self.eLMfKtzBUGcInWP.placeholder = nABjpim();
    self.ebaYvGXTqJjW.constant = nxoZcUBXRr() + nHuGOezMN();
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyNext;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnNext;
    self.erRfJDXKwhBGTxHnLayer = ndgMifatwIB(self.enOBqMt, [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()]);
    
    UIImage *lPEneAS = nBSjbOCNdlsTEfq(@"ENtWJwsaoZqnlP");
    self.eewafLiEImage.layer.contents = (__bridge id)lPEneAS.CGImage;
}
#pragma mark ---------- 找回密码的密码输入框
- (void)nNuqhkSzIFindBackPasswordPassword {
    self.enOBqMt.hidden = NO;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = nlPhjELb();
    }
    self.eLMfKtzBUGcInWP.placeholder = neYHiBaguCDR();
    self.eLMfKtzBUGcInWP.secureTextEntry = YES;
    self.eHmCZnjLOUSoXpqG = YES;
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyDefault;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnDefault;
    self.ebaYvGXTqJjW.constant = nQuUqIovRAg() + nHuGOezMN();
    
    self.esHAXCI = ndnZOsck(self.enOBqMt, [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()]);
    self.euOZfTgshmKNzjMEyesLayer = nIyxidKoORnW(self.enOBqMt, [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()]);
    self.esHAXCI.hidden = YES;
    
    UIImage *EuEFcHLX = nBSjbOCNdlsTEfq(@"EuEFcHLX");
    self.eewafLiEImage.layer.contents = (__bridge id)EuEFcHLX.CGImage;
    
}
#pragma mark ---------- 重置密码的账户输入框
- (void)nsKpGwSAP {
    self.enOBqMt.hidden = YES;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = nmUHSbyLW();
    }
    self.eLMfKtzBUGcInWP.placeholder = nYLwuer();
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyNext;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnNext;
    self.ebaYvGXTqJjW.constant = nxoZcUBXRr();
    
    UIImage *EoHWarVFpJ = nBSjbOCNdlsTEfq(@"EoHWarVFpJ");
    self.eewafLiEImage.layer.contents = (__bridge id)EoHWarVFpJ.CGImage;
}
#pragma mark ---------- 重置密码的原密码输入框
- (void)nNuqhkSzIResetPasswordPassword {
    self.enOBqMt.hidden = NO;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = nRgKLcGSuW();
    }
    self.eLMfKtzBUGcInWP.placeholder = ntUcjBV();
    self.eLMfKtzBUGcInWP.secureTextEntry = YES;
    self.eHmCZnjLOUSoXpqG = YES;
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyNext;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnNext;
    self.ebaYvGXTqJjW.constant = nQuUqIovRAg() + nHuGOezMN();
    
    self.esHAXCI = ndnZOsck(self.enOBqMt, [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()]);
    self.euOZfTgshmKNzjMEyesLayer = nIyxidKoORnW(self.enOBqMt, [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()]);
    self.esHAXCI.hidden = YES;
    
    UIImage *EuEFcHLX = nBSjbOCNdlsTEfq(@"EuEFcHLX");
    self.eewafLiEImage.layer.contents = (__bridge id)EuEFcHLX.CGImage;
}
#pragma mark ---------- 重置密码的新密码输入框
- (void)nEjGXomTx {
    self.enOBqMt.hidden = NO;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = nNtnOiIKUcCL();
    }
    self.eLMfKtzBUGcInWP.placeholder = nTkhoWUiYOB();
    self.eLMfKtzBUGcInWP.secureTextEntry = YES;
    self.eHmCZnjLOUSoXpqG = YES;
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyNext;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnNext;
    self.ebaYvGXTqJjW.constant = nQuUqIovRAg() + nHuGOezMN();
    
    self.esHAXCI = ndnZOsck(self.enOBqMt, [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()]);
    self.euOZfTgshmKNzjMEyesLayer = nIyxidKoORnW(self.enOBqMt, [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()]);
    self.esHAXCI.hidden = YES;
    
    UIImage *EuEFcHLX = nBSjbOCNdlsTEfq(@"EuEFcHLX");
    self.eewafLiEImage.layer.contents = (__bridge id)EuEFcHLX.CGImage;
}
#pragma mark ---------- 重置密码的重复新密码输入框
- (void)nNuqhkSzIResetPasswordRenewPassword {
    self.enOBqMt.hidden = NO;
    if (self.embSotwQATK) {
        self.embSotwQATK.text = nPAtbISmc();
    }
    self.eLMfKtzBUGcInWP.placeholder = nJaPUIGNrEMVY();
    self.eLMfKtzBUGcInWP.secureTextEntry = YES;
    self.eHmCZnjLOUSoXpqG = YES;
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyDefault;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnDefault;
    self.ebaYvGXTqJjW.constant = nQuUqIovRAg() + nHuGOezMN();
    
    self.esHAXCI = ndnZOsck(self.enOBqMt, [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()]);
    self.euOZfTgshmKNzjMEyesLayer = nIyxidKoORnW(self.enOBqMt, [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()]);
    self.esHAXCI.hidden = YES;
    UIImage *EuEFcHLX = nBSjbOCNdlsTEfq(@"EuEFcHLX");
    self.eewafLiEImage.layer.contents = (__bridge id)EuEFcHLX.CGImage;
}
#pragma mark ---------- 手机注册手机号输入框
- (void)ntMVXdeERpCgxA {
    self.enOBqMt.hidden = YES;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = nhJqKETRgOlLyzMY();
    }
    self.eLMfKtzBUGcInWP.placeholder = nUlKZfFJAj();
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyNext;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnNext;
    self.ebaYvGXTqJjW.constant = nxoZcUBXRr();
    
    UIImage *lbPWyaUN = nBSjbOCNdlsTEfq(@"EctLBpZqVFEQPAa");
    self.eewafLiEImage.layer.contents = (__bridge id)lbPWyaUN.CGImage;
}
#pragma mark ---------- 手机注册验证码号输入框
- (void)nNuqhkSzIPhoneRegisterCode {
    self.enOBqMt.hidden = NO;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = nsvIVkRHcEmJqDO();
    }
    self.eLMfKtzBUGcInWP.placeholder = naNUMwJSQxqjus();
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyNext;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnNext;
    self.ebaYvGXTqJjW.constant = nQuUqIovRAg() + nHuGOezMN();
    
    self.erRfJDXKwhBGTxHnLayer = ndgMifatwIB(self.enOBqMt, [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()]);
    
    UIImage *EREPltzKgZieY = nBSjbOCNdlsTEfq(@"EREPltzKgZieY");
    self.eewafLiEImage.layer.contents = (__bridge id)EREPltzKgZieY.CGImage;
}
#pragma mark ---------- 手机注册密码输入框
- (void)nNuqhkSzIPhoneRegisterPassword {
    self.enOBqMt.hidden = NO;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = nKquYirfmTXRCegV();
    }
    self.eLMfKtzBUGcInWP.placeholder = nGszlMyKhWR();
    self.eLMfKtzBUGcInWP.secureTextEntry = YES;
    self.eHmCZnjLOUSoXpqG = YES;
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyDefault;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnDefault;
    self.ebaYvGXTqJjW.constant = nQuUqIovRAg() + nHuGOezMN();
    
    self.esHAXCI = ndnZOsck(self.enOBqMt, [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()]);
    self.euOZfTgshmKNzjMEyesLayer = nIyxidKoORnW(self.enOBqMt, [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()]);
    self.esHAXCI.hidden = YES;
    
    UIImage *EpuZRIEw = nBSjbOCNdlsTEfq(@"EpuZRIEw");
    self.eewafLiEImage.layer.contents = (__bridge id)EpuZRIEw.CGImage;
}
#pragma mark ---------- 普通注册的账户输入框
- (void)nNuqhkSzINormalRegisterAccount {
    self.enOBqMt.hidden = YES;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = njxzJLAobTWKCdi();
    }
    self.eLMfKtzBUGcInWP.placeholder = nMwnKxmEqpu();
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyNext;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnNext;
    self.ebaYvGXTqJjW.constant = nxoZcUBXRr();
    
    UIImage *EoHWarVFpJ = nBSjbOCNdlsTEfq(@"EoHWarVFpJ");
    self.eewafLiEImage.layer.contents = (__bridge id)EoHWarVFpJ.CGImage;
}
#pragma mark ---------- 普通注册的密码输入框
- (void)nNuqhkSzINormalRegisterPassword {
    self.enOBqMt.hidden = NO;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = nJwhdzrliMB();
    }
    self.eLMfKtzBUGcInWP.placeholder = neakorE();
    self.eLMfKtzBUGcInWP.secureTextEntry = YES;
    self.eHmCZnjLOUSoXpqG = YES;
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyDefault;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnDefault;
    self.ebaYvGXTqJjW.constant = nQuUqIovRAg() + nHuGOezMN();
    
    self.esHAXCI = ndnZOsck(self.enOBqMt, [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()]);
    self.euOZfTgshmKNzjMEyesLayer = nIyxidKoORnW(self.enOBqMt, [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()]);
    self.esHAXCI.hidden = YES;
    
    UIImage *EuEFcHLX = nBSjbOCNdlsTEfq(@"EuEFcHLX");
    self.eewafLiEImage.layer.contents = (__bridge id)EuEFcHLX.CGImage;
}
#pragma mark ---------- 快速登录账户输入框
- (void)nxKgzrVf {
    self.enOBqMt.hidden = YES;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = nRmeicq();
    }
    self.eLMfKtzBUGcInWP.placeholder = nYPEvlNL();
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyNext;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnNext;
    self.ebaYvGXTqJjW.constant = nxoZcUBXRr();
    
    self.eUbHhWx.constant = nQuUqIovRAg();
    self.embSotwQATK.hidden = YES;
    self.eewafLiEImage.hidden = YES;
}
#pragma mark ---------- 快速登录密码输入框
- (void)nNuqhkSzIQuickLoginPassword {
    self.enOBqMt.hidden = YES;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = nTnMURmhLiHpkqw();
    }
    self.eLMfKtzBUGcInWP.placeholder = nNBlJYRAa();
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyDefault;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnDefault;
    self.ebaYvGXTqJjW.constant = nxoZcUBXRr();
    self.eUbHhWx.constant = nQuUqIovRAg();
    self.embSotwQATK.hidden = YES;
    self.eewafLiEImage.hidden = YES;
}
#pragma mark ---------- 自动登录账户输入框
- (void)nNuqhkSzIAutoLoginAccount {
    self.enOBqMt.hidden = YES;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = nDkZAcHyMd();
    }
    self.eUbHhWx.constant = nQuUqIovRAg();
    self.embSotwQATK.hidden = YES;
    self.eewafLiEImage.hidden = YES;
    self.eLMfKtzBUGcInWP.placeholder = nmcXqSlrHbh();
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyNext;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnNext;
    self.ebaYvGXTqJjW.constant = nxoZcUBXRr();
    UIImage *luOHtGevlzJrm = nBSjbOCNdlsTEfq(@"EMxAXSRfPVTeDY");
    self.backgroundColor = [UIColor clearColor];
    self.layer.contents = (__bridge id)luOHtGevlzJrm.CGImage;
}
#pragma mark ---------- 自动登录密码输入框
- (void)nNuqhkSzIAutoLoginPassword {
    self.enOBqMt.hidden = YES;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = nLQBetdYsxKuSkDE();
    }
    self.eLMfKtzBUGcInWP.placeholder = nuXdRGbvzKBQiaVP();
    self.eLMfKtzBUGcInWP.secureTextEntry = YES;
    self.eHmCZnjLOUSoXpqG = YES;
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyDefault;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnDefault;
    self.ebaYvGXTqJjW.constant = nxoZcUBXRr();
    
    nAdGOFYjMvQmnJXr(self.eewafLiEImage, [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()]);
}
#pragma mark ---------- 绑定手机手机号输入框
- (void)nEXzdQJTveqkGSC {
    self.enOBqMt.hidden = YES;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = nemyGEW();
    }
    self.eLMfKtzBUGcInWP.placeholder = nvhESjec();
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyNext;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnNext;
    self.ebaYvGXTqJjW.constant = nxoZcUBXRr();
    
    UIImage *ljgQhmkKnbBwDlW = nBSjbOCNdlsTEfq(@"EctLBpZqVFEQPAa");
    self.eewafLiEImage.layer.contents = (__bridge id)ljgQhmkKnbBwDlW.CGImage;
}
#pragma mark ---------- 绑定手机验证码输入框
- (void)nmpnHwq {
    self.enOBqMt.hidden = NO;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = nxSgBseUXW();
    }
    self.eLMfKtzBUGcInWP.placeholder = nzYblnaGXKOpdurT();
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyDefault;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnDefault;
    self.ebaYvGXTqJjW.constant = nQuUqIovRAg() + nHuGOezMN();
    self.erRfJDXKwhBGTxHnLayer = ndgMifatwIB(self.enOBqMt, [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()]);
    
    UIImage *lTqLFWSZcAruKDv = nBSjbOCNdlsTEfq(@"EREPltzKgZieY");
    self.eewafLiEImage.layer.contents = (__bridge id)lTqLFWSZcAruKDv.CGImage;
}
#pragma mark ---------- 绑定身份证姓名输入框
- (void)nrhaUwgXnKmqoZ {
    self.enOBqMt.hidden = YES;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = nlUWupkD();
        
    }
    self.eLMfKtzBUGcInWP.placeholder = nuBzUmy();
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyNext;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnNext;
    self.ebaYvGXTqJjW.constant = nxoZcUBXRr();
    
    UIImage *EzPEpnWaujNBgQTA = nBSjbOCNdlsTEfq(@"EzPEpnWaujNBgQTA");
    self.eewafLiEImage.layer.contents = (__bridge id)EzPEpnWaujNBgQTA.CGImage;
}
#pragma mark ---------- 绑定身份证证件输入框
- (void)nnBbTOCaphZouAN {
    self.enOBqMt.hidden = YES;
    if (!self.eDxKOhndySpHTGX) {
        self.embSotwQATK.text = nGIbByAaze();
        
    }
    self.eLMfKtzBUGcInWP.placeholder = neLtRANPjbDGzcr();
    self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyDefault;
    self.eDWxLaKcilwgC = etXpuKkcjZHGSEboardReturnDefault;
    self.ebaYvGXTqJjW.constant = nxoZcUBXRr();
    
    UIImage *EkMUSZsOHQFfg = nBSjbOCNdlsTEfq(@"EkMUSZsOHQFfg");
    self.eewafLiEImage.layer.contents = (__bridge id)EkMUSZsOHQFfg.CGImage;
}

#pragma mark ---------- itemButtonAction
- (void)nYxLjZPDt:(UIButton *)sender {
    
    /// 展示更多账户
    if (self.eewafLiE == eewafLiELoginAccount) {
        sender.selected = !sender.selected;
        if ([eHhxNpdDrIX isEqualToString:@"1"]) {
            sender.selected = !sender.selected;
            [self.superview endEditing:YES];
            NSDictionary *object = @{
                                     eupKMnOsWwqLr: @(0.25),
                                     erMjmAWpTeXlwKey : @(NO),
                                     eJnLsZKE : @(0)
                                     };
            [[NSNotificationCenter defaultCenter]postNotificationName:ekBiylArxKdMU object:object];
            eHhxNpdDrIX = @"0";
            return;
        }
        if (sender.selected) {
            [self nGRtUfoihaWS];
        } else {
            [self nNahMwrSRuypIqeO];
        }
    }
    /// 获取验证码
    if (self.eewafLiE == eewafLiEFindBackPasswordCode || self.eewafLiE == eewafLiEPhoneRegisterCode || self.eewafLiE == eewafLiEBindPhoneCode) {
        
        self.enOBqMt.enabled = NO;
        if (self.nAdaDOzwBKpc) {
            NSDictionary *para = self.nAdaDOzwBKpc(sender.enabled);
            if (!para) {
                self.enOBqMt.enabled = YES;
                [EGuXiaQqj nHgTIahEeoP:@"请先填写手机号"];
                return;
            }
            NSString *phone = [para objectForKey:@"phone"];
            if (!nEfXrQFxWcT(phone)) {
                self.enOBqMt.enabled = YES;
                [EGuXiaQqj nHgTIahEeoP:@"手机号格式有误"];
                return;
            }
            __weak typeof(self) weakSelf = self;
            [self.eNilerZtVvh nEaYmCfWwKqMTo:nPBVCeN() parameters:para];
            self.eNilerZtVvh.nroGdOFnthEjA = ^(EIcBiraynuDe *object) {
                if (object.erRfJDXKwhBGTxHn == 200) {
                    [weakSelf nznMcUHtahqB:phone];
                } else {
                    
                    if (object.eAmjYwM) {
                        dispatch_async(dispatch_get_main_queue(), ^{
                            weakSelf.enOBqMt.enabled = YES;
                            [EGuXiaQqj nPjHvlQfar];
                            [EGuXiaQqj nHgTIahEeoP:object.eAmjYwM];
                        });
                    }
                }
            };
            self.eNilerZtVvh.nNhPrOJC = ^(NSError *error) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    [EGuXiaQqj nPjHvlQfar];
                    [EGuXiaQqj nHgTIahEeoP:@"网络出了小差!!!"];
                });
            };
            
        }
        
    }
    
    /// 睁眼闭眼切换
    if (self.eewafLiE == eewafLiEFindBackPasswordPassword || self.eewafLiE == eewafLiEResetPasswordPassword || self.eewafLiE == eewafLiEResetPasswordNewPassword || self.eewafLiE == eewafLiEResetPasswordRenewPassword || self.eewafLiE == eewafLiENormalRegisterPassword || self.eewafLiE == eewafLiEPhoneRegisterPassword) {
        sender.selected = !sender.selected;
        if (sender.selected) {
            self.eLMfKtzBUGcInWP.secureTextEntry = NO;
            self.esHAXCI.hidden = NO;
            self.euOZfTgshmKNzjMEyesLayer.hidden = YES;
        } else {
            self.eLMfKtzBUGcInWP.secureTextEntry = YES;
            self.esHAXCI.hidden = YES;
            self.euOZfTgshmKNzjMEyesLayer.hidden = NO;
        }
    }
    
}
#pragma mark ---------- 设置inputView的return类型
- (void)nFtPJQbN:(eRBtzVsSjDTPqg)type {
    _eDWxLaKcilwgC = type;
    if (type == etXpuKkcjZHGSEboardReturnDefault) {
        self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyDone;
    }
    if (type == etXpuKkcjZHGSEboardReturnNext) {
        self.eLMfKtzBUGcInWP.returnKeyType = UIReturnKeyNext;
    }
}

#pragma mark ---------- 点击inputView 事件
- (void)nRKElxUJAoBed:(UITapGestureRecognizer *)egbNoEqRFZCWLrh {
    
    [self.eLMfKtzBUGcInWP becomeFirstResponder];
    
}

#pragma mark ---------- 旋转登录页面中的展示更多账户的按钮
- (void)nGRtUfoihaWS {
    NSArray *tmpArray = nIkyQLBtGH();
    self.ekoBXuhnlD = [[tmpArray reverseObjectEnumerator]allObjects];
    nhdDGpskXLRwrS(self.ekoBXuhnlD);
    UIWindow *window = nLyAxbKV();
    CGRect rect = [self.superview convertRect:self.frame toView:window];
    CGFloat maxHeight = self.ekoBXuhnlD.count * 30 > 60 ? 60 : self.ekoBXuhnlD.count * 30;
    [self.eVyWIMkE setFrame:CGRectMake(CGRectGetMinX(rect), CGRectGetMinY(rect) + CGRectGetHeight(self.frame), CGRectGetWidth(self.bounds), maxHeight)];
    self.eVyWIMkE.hidden = NO;
//    self.eVyWIMkE.backgroundColor = [UIColor clearColor];
    [window addSubview:self.eVyWIMkE];
    [self.eVyWIMkE reloadData];
    [window bringSubviewToFront:self.eVyWIMkE];
    [UIView animateWithDuration:0.2f animations:^{
        self.enOBqMt.transform = CGAffineTransformMakeRotation(M_PI);
    }];
}


#pragma mark ---------- 提升键盘
- (void)njPgdZhr {
    

    if (!self.eLMfKtzBUGcInWP.isEditing || !VARNAMES_KEYBOARDMINY) {
        return;
    }
    if (_eGPjQyWU > VARNAMES_KEYBOARDMINY) {
        _erMjmAWpTeXlw = YES;
        _eOQoWZkdplPeq = VARNAMES_KEYBOARDMINY - _eGPjQyWU;
        VARNAMES_CONTINUEVALUE = _eOQoWZkdplPeq;
    } else {
        _erMjmAWpTeXlw = NO;
    }
    NSDictionary *object = @{
                             eupKMnOsWwqLr: @(0.25),
                             erMjmAWpTeXlwKey : @(_erMjmAWpTeXlw),
                             eJnLsZKE : @(_eOQoWZkdplPeq)
                             };
    
    if (_eOQoWZkdplPeq && [self.eLMfKtzBUGcInWP isFirstResponder]) {
        [[NSNotificationCenter defaultCenter]postNotificationName:ekBiylArxKdMU object:object];
        _eOQoWZkdplPeq = 0.0f;
    }
}
- (void)nMkRofqpl:(CGFloat)eEwZOkzTsiKJPd {
    _eGPjQyWU = eEwZOkzTsiKJPd;
}

#pragma mark ---------- textFieldDelegate
-(void)textFieldDidBeginEditing:(UITextField *)textField {

    if (self.eewafLiE == eewafLiELoginAccount || self.eewafLiE == eewafLiELoginPassword) {
        self.enOBqMt.selected = NO;
        if (!self.eVyWIMkE.hidden) {
            [self nNahMwrSRuypIqeO];
        }
        if (self.nkUqZdBMiECH) {
            self.nkUqZdBMiECH();
        }
    }
    if ([eHhxNpdDrIX isEqualToString:@"1"]) {
        [self njPgdZhr];
    } else {
        eHhxNpdDrIX = @"1";
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (self.eDWxLaKcilwgC == etXpuKkcjZHGSEboardReturnDefault) {
        [self endEditing:YES];
        eHhxNpdDrIX = @"0";
        VARNAMES_CONTINUEVALUE = 0;
        VARNAMES_KEYBOARDMINY = 0;
        NSDictionary *object = @{
                                 eupKMnOsWwqLr: @(0.25),
                                 erMjmAWpTeXlwKey : @(NO),
                                 eJnLsZKE : @(0)
                                 };
        [[NSNotificationCenter defaultCenter]postNotificationName:ekBiylArxKdMU object:object];
    }
    if (self.eDWxLaKcilwgC == etXpuKkcjZHGSEboardReturnNext) {
        [self njPgdZhr];
        if (self.ngBTQjDUbCWrEFmt) {
            self.ngBTQjDUbCWrEFmt();
        }
    }
    return YES;
}
-(void)textFieldDidEndEditing:(UITextField *)textField {
    self.emsWldJuPwEnih = textField.text;
}

- (void)nTkAnBFvwVlYxMat:(UITextField *)textField {
    self.emsWldJuPwEnih = textField.text;
}






-(UITableView *)eVyWIMkE {
    if (!_eVyWIMkE) {
        _eVyWIMkE = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        _eVyWIMkE.backgroundColor = [UIColor clearColor];
        [_eVyWIMkE registerClass:[EzWEXxisoAfOU class] forCellReuseIdentifier:@"EzWEXxisoAfOU"];
        _eVyWIMkE.delegate = self;
        _eVyWIMkE.dataSource = self;
        _eVyWIMkE.hidden = YES;
        /// 便于点击viewController其他的地方隐藏tableView
        _eVyWIMkE.tag = 666;
        _eVyWIMkE.separatorStyle = UITableViewCellSeparatorStyleNone;
        
        UIImage *EdhSKPWTarENpVwQ = nBSjbOCNdlsTEfq(@"EMxAXSRfPVTeDY");
        _eVyWIMkE.layer.contents = (__bridge id)EdhSKPWTarENpVwQ.CGImage;
    }
    return _eVyWIMkE;
}
#pragma mark ---------- UItableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.ekoBXuhnlD.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    EzWEXxisoAfOU *cell = [EzWEXxisoAfOU nQksndcVTuwrEq:tableView];
    [cell nbKvgosSmGjhyJi:self.ekoBXuhnlD[indexPath.row]];
    __weak typeof(self) weakSelf = self;
    cell.nQNbdAcDOsln = ^(NSString *account) {
        [weakSelf nQNbdAcDOsln:account];
    };
    //    cell.textLabel.text = self.ekoBXuhnlD[indexPath.row];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 30.0f;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *phoneValue = self.ekoBXuhnlD[indexPath.row];
    self.eLMfKtzBUGcInWP.text = phoneValue;
    self.emsWldJuPwEnih = phoneValue;
    if (self.nWExVFvYSUbzTsZ) {
        self.nWExVFvYSUbzTsZ(phoneValue);
    }
    [self endEditing:YES];
    
    [self nNahMwrSRuypIqeO];
}

#pragma mark ---------- 删除记录的账户账户
- (void)nQNbdAcDOsln:(NSString *)account {
    nQNbdAcDOsln(account);
    self.ekoBXuhnlD = nIkyQLBtGH();
    if (self.ekoBXuhnlD.count) {
        UIWindow *window = nLyAxbKV();
        CGRect rect = [self convertRect:self.bounds toView:window];
        CGFloat maxHeight = self.ekoBXuhnlD.count * 30 > 60 ? 60 : self.ekoBXuhnlD.count * 30;
        [self.eVyWIMkE setFrame:CGRectMake(CGRectGetMinX(rect), CGRectGetMaxY(rect), CGRectGetWidth(rect), maxHeight)];
    } else {
        [self nNahMwrSRuypIqeO];
        self.enOBqMt.hidden = YES;
        self.ebaYvGXTqJjW.constant = nxoZcUBXRr();
    }
    
    [self.eVyWIMkE reloadData];
}

/// 隐藏
- (void)nNahMwrSRuypIqeO {
    self.eVyWIMkE.hidden = YES;
    self.enOBqMt.selected = NO;
    __weak typeof(self) weakSelf = self;
    [UIView animateWithDuration:0.2f animations:^{
        weakSelf.enOBqMt.transform = CGAffineTransformMakeRotation(M_PI * 2);
    } completion:^(BOOL finished) {
        
    }];
}


#pragma mark ---------- 获取验证码
- (void)nznMcUHtahqB:(NSString *)phone {
    NSDictionary *para = @{
                           @"phone": phone
                           };
    __weak typeof(self) weakSelf = self;
    [self.eZRbiQNBPgCdca nEaYmCfWwKqMTo:nJAEgSXinsd() parameters:para];
    self.eZRbiQNBPgCdca.nroGdOFnthEjA = ^(EIcBiraynuDe * object) {
        if (object.erRfJDXKwhBGTxHn == 200) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [EGuXiaQqj nPjHvlQfar];
//                [EGuXiaQqj nJVrDAcpuRWTMdbLSuccessMessage:@"验证码已发送"];
                [weakSelf nyvixTHAjO];
            });
        } else {
            dispatch_async(dispatch_get_main_queue(), ^{
                weakSelf.enOBqMt.enabled = YES;
                [EGuXiaQqj nPjHvlQfar];
                if (object.eAmjYwM) {
                    [EGuXiaQqj nHgTIahEeoP:object.eAmjYwM];
                } else {
                    [EGuXiaQqj nHgTIahEeoP:@"验证码发送失败"];
                }
            });
        }
    };
    self.eZRbiQNBPgCdca.nNhPrOJC = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            weakSelf.enOBqMt.enabled = YES;
            [EGuXiaQqj nPjHvlQfar];
            [EGuXiaQqj nHgTIahEeoP:@"网络出了小差!!!"];
        });
    };
    
    
}

- (void)nyvixTHAjO {
    // 创建定时器
    NSTimer *timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(methodNmaes_changTitle:) userInfo:nil repeats:YES];
    // 将定时器添加到runloop中，否则定时器不会启动
    [[NSRunLoop mainRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
}

- (void)methodNmaes_changTitle:(NSTimer *)timer {
    self.erRfJDXKwhBGTxHnLayer.hidden = YES;
    [self.enOBqMt setTitle:[NSString stringWithFormat:@"%ld", (long)self.etIcfYurQgo] forState:UIControlStateDisabled];
    [self.enOBqMt setTitleColor:[EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()] forState:UIControlStateDisabled];
    self.enOBqMt.titleLabel.text = [NSString stringWithFormat:@"%ld", (long)self.etIcfYurQgo];
    if (self.etIcfYurQgo == 0) {
        self.enOBqMt.enabled = YES;
        self.erRfJDXKwhBGTxHnLayer.hidden = NO;
        self.etIcfYurQgo = ncfdJYV();
        [timer invalidate];
    } else {
        [self.enOBqMt setTitle:[NSString stringWithFormat:@"%ld", (long)self.etIcfYurQgo] forState:UIControlStateDisabled];
        self.enOBqMt.titleLabel.text = [NSString stringWithFormat:@"%ld", (long)self.etIcfYurQgo];
        self.etIcfYurQgo--;
    }
}


#pragma mark ---------- Lazy Load
-(EIcBiraynuDe *)eNilerZtVvh {
    if (!_eNilerZtVvh) {
        _eNilerZtVvh = [[EIcBiraynuDe alloc]init];
    }
    return _eNilerZtVvh;
}

-(EIcBiraynuDe *)eZRbiQNBPgCdca {
    if (!_eZRbiQNBPgCdca) {
        _eZRbiQNBPgCdca = [[EIcBiraynuDe alloc]init];
    }
    return _eZRbiQNBPgCdca;
}

@end
