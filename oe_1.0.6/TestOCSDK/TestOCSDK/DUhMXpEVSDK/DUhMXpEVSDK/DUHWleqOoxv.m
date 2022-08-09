

#import "DUHWleqOoxv.h"
#import "DUPmeiBKkUr.h"
#import "DUjHPamSNKWkfM.h"
#import "DUGcbRnKpJlPkyoY.h"
#import "DUHWleqOoxvBorderTypeTool.h"
#import "DULCiQqMJAk.h"
#import "DUrIzqAQF.h"
#import "DUArtkBOKmUTXca.h"
#import "DUHKAgalsBbqJoN.h"
#import "DUPOmint.h"
#import "DUnezmIiPFhT.h"
#import "DUJlFPyIL.h"
#import "DUkEvhDnXb.h"
#import "DUQFvcOLY.h"
#import "DUAcnVUhPqNGrxf.h"
#import "DUwRHSVbM.h"

#import "DUIBriUTudq.h"
#import "DUJwXyISMdzCUh.h"
#import "DUEjpAyF.h"
#import "DUmZjChQNHcbXvD.h"
#import "DUyUrAEagzMZ.h"

#import "DUjmZRSlJeTuw.h"

/// 在键盘一直出现的时候使用
static CGFloat VARNAMES_CONTINUEVALUE = 0;
/// 键盘的Y轴位置
static CGFloat VARNAMES_KEYBOARDMINY = 0;

@interface DUHWleqOoxv ()<UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, readwrite, strong) NSLayoutConstraint *eIpxfwWAXvzLeft;

@property (nonatomic, readwrite, strong) NSLayoutConstraint *eIpxfwWAXvzRight;

/// 哪个页面的输入框
@property (nonatomic, readwrite, assign) eledTzKsAEpSk eVEyjiwDNType;
/// 输入框的背景样式
@property (nonatomic, readwrite, assign) eseiVAcoIz eRHGuZWCQUjgXfV;
/// 0 为文字， 其他为图标
@property (nonatomic, readwrite, assign) NSInteger eVEyjiwDNTitleType;

@property (nonatomic, readwrite, assign) eNsRyjFpzIoAmKkL eoyiPQBEavhGJCjD;

@property (nonatomic, readwrite, strong) UILabel *eVZsbUve;

@property (nonatomic, readwrite, strong) UIView *eVEyjiwDNTypeImage;

@property (nonatomic, readwrite, strong) UITextField *eIpxfwWAXvz;

@property (nonatomic, readwrite, strong) DUPmeiBKkUr *eoMiYexjdsClaLAvButton;

@property (nonatomic, readwrite, assign) NSInteger eucsQVqS;

@property (nonatomic, readwrite, strong) UIColor *eUmdpAuqatvWeo;
@property (nonatomic, readwrite, strong) UIColor *eyDckpTtQVS;

@property (nonatomic, readwrite, assign) CGFloat eIpxfwWAXvzMargin;



/// textfield 的值
@property (nonatomic, readwrite, copy) NSString *eegFcbrRpD;

@property (nonatomic, readwrite, assign) BOOL eMYjfAdRIHFLqQnJ;

@property (nonatomic, readwrite, strong) UITableView *eCEYSsLnTkwQUxzpTableView;

@property (nonatomic, readwrite, strong) NSArray *eCEYSsLnTkwQUxzpArray;

/// 获取验证码框中会使用到
@property (nonatomic, readwrite, strong) CAShapeLayer *ebTBquLMZLayer;

/// 密码输入框中会使用到
@property (nonatomic, readwrite, strong) CAShapeLayer *eUiDploM;
@property (nonatomic, readwrite, strong) CAShapeLayer *evsmnfwhKbdJcL;

@property (nonatomic, readwrite, strong) DUjmZRSlJeTuw *eUKHcTkPJCrpEVQl;
@property (nonatomic, readwrite, strong) DUjmZRSlJeTuw *eRHVkoIXFziB;


@property (nonatomic, readwrite, assign) CGFloat eEnfPuYchzbJqADBoardHeight;

@property (nonatomic, readwrite, assign) CGFloat eVEyjiwDNHeight;

@end


@implementation DUHWleqOoxv
{
    CGFloat _eIpxfwWAXvzMaxY;
    CGFloat _eEnfPuYchzbJqADBoardMinY;
    CGFloat _eRzgSXnK;
    /// 移动的距离
    BOOL _eqkYPEGFTIKo;
}


#pragma mark ---------- public methodNames
+ (instancetype)kibrqNgCV:(eledTzKsAEpSk)eUoHcPyEAlh {
    DUHWleqOoxv *eVEyjiwDN = [[DUHWleqOoxv alloc]init];
    [eVEyjiwDN kTfoZbiXROEYPrt:eUoHcPyEAlh];
    [eVEyjiwDN kpEacTIigtyD:1];
    return eVEyjiwDN;
}

- (void)kFiftlVHNBPaQX:(NSString *)eLqgNREy kHnyqoAY:(BOOL)eYoOwIijmVtTZag {
    
    self.eIpxfwWAXvz.text = eLqgNREy;
    self.eIpxfwWAXvz.enabled = eYoOwIijmVtTZag;
    self.eegFcbrRpD = eLqgNREy;
}

- (void)kQbayuBH {
    [self.eIpxfwWAXvz becomeFirstResponder];
}
- (void)kwJlsWu {
    [self.eIpxfwWAXvz resignFirstResponder];
}




#pragma mark ----------------------------------------------------------------------------------------------------

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
    if (object == self && [keyPath isEqualToString:@"eEnfPuYchzbJqADBoardHeight"]) {
        if (self.eIpxfwWAXvz.isEditing) {
            [self kIVzmlF];
        }
        
    }
    
}

-(void)dealloc {
    [self removeObserver:self forKeyPath:@"eEnfPuYchzbJqADBoardHeight"];
    
}
-(instancetype)init {
    self = [super init];
    if (self) {
        
        self.eucsQVqS = kNlCKoqAHDei();
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *eAjnaWOIkotY = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(kxAoWgmdDQzMfE:)];
        [self addGestureRecognizer:eAjnaWOIkotY];
        
        self.eUmdpAuqatvWeo = [DULCiQqMJAk kzqvYPK:kldJBGbmVq()];
        self.eyDckpTtQVS = [DULCiQqMJAk kzqvYPK:khdrUwfKL()];
        self.eRHGuZWCQUjgXfV = kHyrkAZVMNplOnhz();
        self.eVEyjiwDNTitleType = kAgEJsUapM();
        
        [self kjRvMuF:self.eVEyjiwDNTitleType];
        
        
        [self addObserver:self forKeyPath:@"eEnfPuYchzbJqADBoardHeight" options:(NSKeyValueObservingOptionNew |NSKeyValueObservingOptionOld) context:nil];
        
        //监听当键盘将要出现时
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(kALCDUkmFWwE:)
                                                     name:UIKeyboardWillShowNotification
                                                   object:nil];
        
    }
    return self;
}


- (void)kjRvMuF:(eledTzKsAEpSk)eVEyjiwDNType {
    
    
    UILabel *eAdpkJEuLiO = [[UILabel alloc]init];
    eAdpkJEuLiO.translatesAutoresizingMaskIntoConstraints = NO;
    eAdpkJEuLiO.adjustsFontSizeToFitWidth = YES;
    eAdpkJEuLiO.textAlignment = NSTextAlignmentCenter;
    eAdpkJEuLiO.font = [UIFont systemFontOfSize:kscqIOZYzATMF()];
    eAdpkJEuLiO.textColor = [DULCiQqMJAk kzqvYPK:ktQTyqN()];
    self.eVZsbUve = eAdpkJEuLiO;
    
    UIView *ezHdxYy = [[UIView alloc]init];
    ezHdxYy.translatesAutoresizingMaskIntoConstraints = NO;
    self.eVEyjiwDNTypeImage = ezHdxYy;
    
    UITextField *eHzoPLNnJa = [[UITextField alloc]init];
    eHzoPLNnJa.font = [UIFont systemFontOfSize:kscqIOZYzATMF()];
    eHzoPLNnJa.translatesAutoresizingMaskIntoConstraints = NO;
    eHzoPLNnJa.delegate = self;
    eHzoPLNnJa.adjustsFontSizeToFitWidth = YES;
    eHzoPLNnJa.clearButtonMode = UITextFieldViewModeWhileEditing;
    [eHzoPLNnJa setTintColor:[DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]];
    [eHzoPLNnJa addTarget:self action:@selector(kTDJyVesvGajNhwO:) forControlEvents:UIControlEventEditingChanged];
    self.eIpxfwWAXvz = eHzoPLNnJa;
    
    DUPmeiBKkUr *eryUqIwYWBGKs = [DUPmeiBKkUr kGWgaNbS:euRCnJTvk];
    eryUqIwYWBGKs.translatesAutoresizingMaskIntoConstraints = NO;
    [eryUqIwYWBGKs addTarget:self action:@selector(kQtRHiVlxensrNza:) forControlEvents:UIControlEventTouchUpInside];
    self.eoMiYexjdsClaLAvButton = eryUqIwYWBGKs;
    
    self.backgroundColor = self.eyDckpTtQVS;
    
    [self addSubview:self.eVZsbUve];
    [self addSubview:self.eVEyjiwDNTypeImage];
    [self addSubview:self.eIpxfwWAXvz];
    [self addSubview:self.eoMiYexjdsClaLAvButton];
    
    switch (eVEyjiwDNType) {
        case 0:
        {
            self.eVZsbUve.hidden = NO;
            self.eVEyjiwDNTypeImage.hidden = YES;
            self.eIpxfwWAXvzMargin = kpQbYBEetOMPN() + ktaMSrs();
        }
            break;
            
        default:
        {
            self.eVZsbUve.hidden = YES;
            self.eVEyjiwDNTypeImage.hidden = NO;
            self.eIpxfwWAXvzMargin = kmaGeEPbBXHK() + ktaMSrs();
        }
            break;
    }
    [self kADtwmFBKIOsh:eVEyjiwDNType];
    
    
    
}

#pragma mark ---------- 布局
- (void)kADtwmFBKIOsh:(NSInteger)eipVDIXcuLO {
    
    /// 左边文字
    [DUjHPamSNKWkfM kcNCfuJpSgtid:self.eVZsbUve kjwoMfYHX:kPofSGniBdetAa()];
    [DUjHPamSNKWkfM khXiHKlJYIcsWTb:self.eVZsbUve kjwoMfYHX:kPofSGniBdetAa()];
    [DUjHPamSNKWkfM kKvyLhTYV:self.eVZsbUve kjwoMfYHX:kPofSGniBdetAa()];
    [DUjHPamSNKWkfM kYzDgmEuJZa:self.eVZsbUve kjwoMfYHX:kpQbYBEetOMPN()];
    
    /// 左边图标icon
    [DUjHPamSNKWkfM kcNCfuJpSgtid:self.eVEyjiwDNTypeImage kjwoMfYHX:kPofSGniBdetAa()];
    [DUjHPamSNKWkfM kxRZbHCcF:self.eVEyjiwDNTypeImage kjwoMfYHX:0];
    [DUjHPamSNKWkfM kYzDgmEuJZa:self.eVEyjiwDNTypeImage kjwoMfYHX:30];
    [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:self.eVEyjiwDNTypeImage kjwoMfYHX:30];
    /// 输入框
    self.eIpxfwWAXvzLeft = [DUjHPamSNKWkfM kcNCfuJpSgtid:self.eIpxfwWAXvz kjwoMfYHX:self.eIpxfwWAXvzMargin];
    [DUjHPamSNKWkfM khXiHKlJYIcsWTb:self.eIpxfwWAXvz kjwoMfYHX:0];
    [DUjHPamSNKWkfM kKvyLhTYV:self.eIpxfwWAXvz kjwoMfYHX:0];
    self.eIpxfwWAXvzRight =  [DUjHPamSNKWkfM
                                     kdMvtuRCVqTon:self.eIpxfwWAXvz kjwoMfYHX:kPofSGniBdetAa()];
    
    /// 右边item
    [DUjHPamSNKWkfM kxRZbHCcF:self.eoMiYexjdsClaLAvButton kjwoMfYHX:0];
    [DUjHPamSNKWkfM kdMvtuRCVqTon:self.eoMiYexjdsClaLAvButton kjwoMfYHX:kPofSGniBdetAa()];
    [DUjHPamSNKWkfM kYzDgmEuJZa:self.eoMiYexjdsClaLAvButton kjwoMfYHX:kmaGeEPbBXHK()];
    [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:self.eoMiYexjdsClaLAvButton kjwoMfYHX:kmaGeEPbBXHK()];

    [self setNeedsLayout];
}




#pragma mark ---------- 绘制inputView的边框类型
- (void)kpEacTIigtyD:(eseiVAcoIz)ewxdqvOIcsCAKTGY {
    
    switch (ewxdqvOIcsCAKTGY) {
        case esoxkLKHgMhYvS:
        {
            kkPrywosn(self, [UIColor redColor], [UIColor greenColor]);
        }
            break;
        case eVEyjiwDNBorderBottomLine:
        {
            kkPrywosn(self, [UIColor yellowColor], [UIColor blueColor]);
        }
            break;
        case evNhaJWk:
        {
            kkPrywosn(self, [UIColor redColor], [UIColor greenColor]);
        }
            break;
        case eGxnDhLisgI:
        {
            
        }
            break;
        case elmOVCyxbdKP:
        {
            
        }
            break;
        case ewhxtSlL:
        {
            
        }
            break;
        default:

            break;
    }
}


#pragma mark ---------- 配置inputView的类型
- (void)kTfoZbiXROEYPrt:(eledTzKsAEpSk)eVEyjiwDNType {
    self.eVEyjiwDNType = eVEyjiwDNType;
    switch (eVEyjiwDNType) {
        case eSKoLZveWR:
        {
            [self kuBMvgcDTNhtsmA];
        }
            break;
        case etREcMaLYxqikK:
        {
            [self kTfoZbiXROEYPrtLoginPassword];
        }
            break;
        case eDevgGW:
        {
            [self kAdbDUSQcepWl];
        }
            break;
        case eEyraOCdKBGwnZHt:
        {
            [self kTfoZbiXROEYPrtFindBackPasswordCode];
        }
            break;
        case eVEyjiwDNTypeFindBackPasswordPassword:
        {
            [self kualBeKgOAMX];
        }
            break;
        case eVEyjiwDNTypeResetPasswordAccount:
        {
            [self kTfoZbiXROEYPrtResetPasswordAccount];
        }
            break;
        case eVEyjiwDNTypeResetPasswordPassword:
        {
            [self kNfRTKcnqE];
        }
            break;
        case eVEyjiwDNTypeResetPasswordNewPassword:
        {
            [self kOuSJBkEdmnh];
        }
            break;
        case edzbJaSwPvj:
        {
            [self kWBhrNsAuloMJ];
        }
            break;
        case eWRZvkDJhYQmlfzn:
        {
            [self keaFUiHx];
        }
            break;
        case eVEyjiwDNTypePhoneRegisterCode:
        {
            [self kVkpIDiGyj];
        }
            break;
        case eVEyjiwDNTypePhoneRegisterPassword:
        {
            [self kskNFJTCVUwHoP];
        }
            break;
        case eVEyjiwDNTypeNormalRegisterAccount:
        {
            [self kTfoZbiXROEYPrtNormalRegisterAccount];
        }
            break;
        case eXDEiFVkgzWhP:
        {
            [self kHxzcUnTNvqPadO];
        }
            break;
        case ehoHpDZQ:
        {
            [self kqlEdOVXUMoHT];
        }
            break;
        case eOPDJpiFGAteS:
        {
            [self knBiSze];
        }
            break;
        case eQbcRuHrnm:
        {
            [self kHlsgdb];
        }
            break;
        case eVEyjiwDNTypeAutoLoginPassword:
        {
            [self kQiyaUGp];
        }
            break;
        case ezkLulrRnKPqbF:
        {
            [self kTfoZbiXROEYPrtBindPhonePhone];
        }
            break;
        case eVEyjiwDNTypeBindPhoneCode:
        {
            [self kftmGZFvrc];
        }
            break;
        case eVEyjiwDNTypeBindPersonIDName:
        {
            [self kLXUIZmVnj];
        }
            break;
        case eVEyjiwDNTypeBindPersonIDCard:
        {
            [self ktbRkmwJKYOIC];
        }
            break;
        default:
            break;
    }
    [self setNeedsLayout];
}
#pragma mark --------------------------------------------------

#pragma mark ---------- 登陆页面的账号输入框
- (void)kuBMvgcDTNhtsmA {
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = khmVUJOCeTnwDj();
        
    } else {
        
    }
    self.eIpxfwWAXvz.placeholder = ktAIDbVuqBkN();
    NSArray *ehlfxpgXcNruArray = kCGbsWwdi();
    if (ehlfxpgXcNruArray.count) {
        self.eoMiYexjdsClaLAvButton.hidden = NO;
        self.eIpxfwWAXvzRight.constant = ktaMSrs() + kmaGeEPbBXHK();
    } else {
        self.eoMiYexjdsClaLAvButton.hidden = YES;
        self.eIpxfwWAXvzRight.constant = ktaMSrs();
    }
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyNext;
    self.eoyiPQBEavhGJCjD = ekMeNQzvjgtJhSnA;
    kxtpYBRuhd(self.eoMiYexjdsClaLAvButton, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    kDhwrXPdBykxl(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    
    
}
#pragma mark ---------- 登陆页面的密码输入框
- (void)kTfoZbiXROEYPrtLoginPassword {
    self.eoMiYexjdsClaLAvButton.hidden = YES;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = kWgiMfIsqzoY();
    }
    self.eIpxfwWAXvz.placeholder = kaPMAkSdjbE();
    self.eIpxfwWAXvz.secureTextEntry = YES;
    self.eMYjfAdRIHFLqQnJ = YES;
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyDefault;
    self.eoyiPQBEavhGJCjD = etVQXNiY;
    self.eIpxfwWAXvzRight.constant = kPofSGniBdetAa();
    kzXbOjWqiR(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 找回密码的手机号输入框
- (void)kAdbDUSQcepWl {
    self.eoMiYexjdsClaLAvButton.hidden = YES;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = kVjhmzQNKf();
    }
    self.eIpxfwWAXvz.placeholder = kzQAxcrbSndUGBNZ();
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyNext;
    self.eoyiPQBEavhGJCjD = ekMeNQzvjgtJhSnA;
    self.eIpxfwWAXvzRight.constant = kPofSGniBdetAa();
    khCwyNDn(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 找回密码的验证码输入框
- (void)kTfoZbiXROEYPrtFindBackPasswordCode {
    self.eoMiYexjdsClaLAvButton.hidden = NO;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = kupgnlfk();
    }
    self.eIpxfwWAXvz.placeholder = kNpWPgt();
    self.eIpxfwWAXvzRight.constant = kPofSGniBdetAa() + kmaGeEPbBXHK();
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyNext;
    self.eoyiPQBEavhGJCjD = ekMeNQzvjgtJhSnA;
    self.ebTBquLMZLayer = kLjwRADUaMhqTbyS(self.eoMiYexjdsClaLAvButton, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    kEuBYtfizO(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 找回密码的密码输入框
- (void)kualBeKgOAMX {
    self.eoMiYexjdsClaLAvButton.hidden = NO;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = kFZBpsm();
    }
    self.eIpxfwWAXvz.placeholder = kKbBGeoWrsu();
    self.eIpxfwWAXvz.secureTextEntry = YES;
    self.eMYjfAdRIHFLqQnJ = YES;
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyDefault;
    self.eoyiPQBEavhGJCjD = etVQXNiY;
    self.eIpxfwWAXvzRight.constant = ktaMSrs() + kmaGeEPbBXHK();
    
    self.eUiDploM = kwYngGHhkJFISrO(self.eoMiYexjdsClaLAvButton, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    self.evsmnfwhKbdJcL = kYGptyQiFzNq(self.eoMiYexjdsClaLAvButton, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    self.eUiDploM.hidden = YES;
    kzXbOjWqiR(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    
}
#pragma mark ---------- 重置密码的账户输入框
- (void)kTfoZbiXROEYPrtResetPasswordAccount {
    self.eoMiYexjdsClaLAvButton.hidden = YES;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = kOUNQMD();
    }
    self.eIpxfwWAXvz.placeholder = knqLySzmvRYwpkMI();
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyNext;
    self.eoyiPQBEavhGJCjD = ekMeNQzvjgtJhSnA;
    self.eIpxfwWAXvzRight.constant = kPofSGniBdetAa();
    kDhwrXPdBykxl(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 重置密码的原密码输入框
- (void)kNfRTKcnqE {
    self.eoMiYexjdsClaLAvButton.hidden = NO;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = khVZXgJCNqU();
    }
    self.eIpxfwWAXvz.placeholder = kHamEuFlUZbAWNDz();
    self.eIpxfwWAXvz.secureTextEntry = YES;
    self.eMYjfAdRIHFLqQnJ = YES;
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyNext;
    self.eoyiPQBEavhGJCjD = ekMeNQzvjgtJhSnA;
    self.eIpxfwWAXvzRight.constant = ktaMSrs() + kmaGeEPbBXHK();
    
    self.eUiDploM = kwYngGHhkJFISrO(self.eoMiYexjdsClaLAvButton, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    self.evsmnfwhKbdJcL = kYGptyQiFzNq(self.eoMiYexjdsClaLAvButton, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    self.eUiDploM.hidden = YES;
    kzXbOjWqiR(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 重置密码的新密码输入框
- (void)kOuSJBkEdmnh {
    self.eoMiYexjdsClaLAvButton.hidden = NO;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = kwkWJub();
    }
    self.eIpxfwWAXvz.placeholder = kZHXBmDbGKxF();
    self.eIpxfwWAXvz.secureTextEntry = YES;
    self.eMYjfAdRIHFLqQnJ = YES;
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyNext;
    self.eoyiPQBEavhGJCjD = ekMeNQzvjgtJhSnA;
    self.eIpxfwWAXvzRight.constant = ktaMSrs() + kmaGeEPbBXHK();
    
    self.eUiDploM = kwYngGHhkJFISrO(self.eoMiYexjdsClaLAvButton, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    self.evsmnfwhKbdJcL = kYGptyQiFzNq(self.eoMiYexjdsClaLAvButton, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    self.eUiDploM.hidden = YES;
    kcHdoCWAjkMtbw(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 重置密码的重复新密码输入框
- (void)kWBhrNsAuloMJ {
    self.eoMiYexjdsClaLAvButton.hidden = NO;
    if (self.eVZsbUve) {
        self.eVZsbUve.text = kYJDCOzfjqAP();
    }
    self.eIpxfwWAXvz.placeholder = kwjTAWIDQoxUKl();
    self.eIpxfwWAXvz.secureTextEntry = YES;
    self.eMYjfAdRIHFLqQnJ = YES;
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyDefault;
    self.eoyiPQBEavhGJCjD = etVQXNiY;
    self.eIpxfwWAXvzRight.constant = ktaMSrs() + kmaGeEPbBXHK();
    
    self.eUiDploM = kwYngGHhkJFISrO(self.eoMiYexjdsClaLAvButton, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    self.evsmnfwhKbdJcL = kYGptyQiFzNq(self.eoMiYexjdsClaLAvButton, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    self.eUiDploM.hidden = YES;
    kcHdoCWAjkMtbw(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 手机注册手机号输入框
- (void)keaFUiHx {
    self.eoMiYexjdsClaLAvButton.hidden = YES;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = kxaQLPVeFKiHfOdY();
    }
    self.eIpxfwWAXvz.placeholder = kZhRCnlJPWG();
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyNext;
    self.eoyiPQBEavhGJCjD = ekMeNQzvjgtJhSnA;
    self.eIpxfwWAXvzRight.constant = kPofSGniBdetAa();
    khCwyNDn(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 手机注册验证码号输入框
- (void)kVkpIDiGyj {
    self.eoMiYexjdsClaLAvButton.hidden = NO;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = kWOQYzPIgx();
    }
    self.eIpxfwWAXvz.placeholder = kYJQylnFMcvSws();
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyNext;
    self.eoyiPQBEavhGJCjD = ekMeNQzvjgtJhSnA;
    self.eIpxfwWAXvzRight.constant = ktaMSrs() + kmaGeEPbBXHK();
    
    self.ebTBquLMZLayer = kLjwRADUaMhqTbyS(self.eoMiYexjdsClaLAvButton, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    kEuBYtfizO(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 手机注册密码输入框
- (void)kskNFJTCVUwHoP {
    self.eoMiYexjdsClaLAvButton.hidden = NO;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = kPFIDleTBH();
    }
    self.eIpxfwWAXvz.placeholder = kRkLYBVxz();
    self.eIpxfwWAXvz.secureTextEntry = YES;
    self.eMYjfAdRIHFLqQnJ = YES;
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyDefault;
    self.eoyiPQBEavhGJCjD = etVQXNiY;
    self.eIpxfwWAXvzRight.constant = ktaMSrs() + kmaGeEPbBXHK();
    
    self.eUiDploM = kwYngGHhkJFISrO(self.eoMiYexjdsClaLAvButton, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    self.evsmnfwhKbdJcL = kYGptyQiFzNq(self.eoMiYexjdsClaLAvButton, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    self.eUiDploM.hidden = YES;
    
    kzXbOjWqiR(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 普通注册的账户输入框
- (void)kTfoZbiXROEYPrtNormalRegisterAccount {
    self.eoMiYexjdsClaLAvButton.hidden = YES;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = kSsGRctbLT();
    }
    self.eIpxfwWAXvz.placeholder = kkJsLrboO();
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyNext;
    self.eoyiPQBEavhGJCjD = ekMeNQzvjgtJhSnA;
    self.eIpxfwWAXvzRight.constant = kPofSGniBdetAa();
    
    kDhwrXPdBykxl(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 普通注册的密码输入框
- (void)kHxzcUnTNvqPadO {
    self.eoMiYexjdsClaLAvButton.hidden = NO;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = kfLRsxKCaDuZMrXl();
    }
    self.eIpxfwWAXvz.placeholder = klCZmRnXdseKQNf();
    self.eIpxfwWAXvz.secureTextEntry = YES;
    self.eMYjfAdRIHFLqQnJ = YES;
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyDefault;
    self.eoyiPQBEavhGJCjD = etVQXNiY;
    self.eIpxfwWAXvzRight.constant = ktaMSrs() + kmaGeEPbBXHK();
    
    self.eUiDploM = kwYngGHhkJFISrO(self.eoMiYexjdsClaLAvButton, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    self.evsmnfwhKbdJcL = kYGptyQiFzNq(self.eoMiYexjdsClaLAvButton, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    self.eUiDploM.hidden = YES;
    
    kzXbOjWqiR(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 快速登陆账户输入框
- (void)kqlEdOVXUMoHT {
    self.eoMiYexjdsClaLAvButton.hidden = YES;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = kPCdNSFZaz();
    }
    self.eIpxfwWAXvz.placeholder = kaVKFmsTq();
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyNext;
    self.eoyiPQBEavhGJCjD = ekMeNQzvjgtJhSnA;
    self.eIpxfwWAXvzRight.constant = kPofSGniBdetAa();
    
    kDhwrXPdBykxl(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 快速登陆密码输入框
- (void)knBiSze {
    self.eoMiYexjdsClaLAvButton.hidden = YES;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = kwPqIyzt();
    }
    self.eIpxfwWAXvz.placeholder = kFGTqLbWm();
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyDefault;
    self.eoyiPQBEavhGJCjD = etVQXNiY;
    self.eIpxfwWAXvzRight.constant = kPofSGniBdetAa();
    
    kzXbOjWqiR(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 自动登录账户输入框
- (void)kHlsgdb {
    self.eoMiYexjdsClaLAvButton.hidden = YES;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = kWskbzyBnq();
    }
    self.eIpxfwWAXvz.placeholder = khnkVHapPcMrxbQy();
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyNext;
    self.eoyiPQBEavhGJCjD = ekMeNQzvjgtJhSnA;
    self.eIpxfwWAXvzRight.constant = kPofSGniBdetAa();
    
    kDhwrXPdBykxl(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 自动登录密码输入框
- (void)kQiyaUGp {
    self.eoMiYexjdsClaLAvButton.hidden = YES;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = kZKQpdenHFGJaM();
    }
    self.eIpxfwWAXvz.placeholder = kQCMGhPtBp();
    self.eIpxfwWAXvz.secureTextEntry = YES;
    self.eMYjfAdRIHFLqQnJ = YES;
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyDefault;
    self.eoyiPQBEavhGJCjD = etVQXNiY;
    self.eIpxfwWAXvzRight.constant = kPofSGniBdetAa();
    
    kzXbOjWqiR(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 绑定手机手机号输入框
- (void)kTfoZbiXROEYPrtBindPhonePhone {
    self.eoMiYexjdsClaLAvButton.hidden = YES;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = kQgyfcYZjMtn();
    }
    self.eIpxfwWAXvz.placeholder = kNHhPKZUtmxROLE();
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyNext;
    self.eoyiPQBEavhGJCjD = ekMeNQzvjgtJhSnA;
    self.eIpxfwWAXvzRight.constant = kPofSGniBdetAa();
    khCwyNDn(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 绑定手机验证码输入框
- (void)kftmGZFvrc {
    self.eoMiYexjdsClaLAvButton.hidden = NO;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = kfQcyAvmZe();
    }
    self.eIpxfwWAXvz.placeholder = kOinHKqIFCf();
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyDefault;
    self.eoyiPQBEavhGJCjD = etVQXNiY;
    self.eIpxfwWAXvzRight.constant = ktaMSrs() + kmaGeEPbBXHK();
    self.ebTBquLMZLayer = kLjwRADUaMhqTbyS(self.eoMiYexjdsClaLAvButton, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
    kEuBYtfizO(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 绑定身份证姓名输入框
- (void)kLXUIZmVnj {
    self.eoMiYexjdsClaLAvButton.hidden = YES;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = klZOqQAuPGY();
        
    }
    self.eIpxfwWAXvz.placeholder = kjAqVUyne();
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyNext;
    self.eoyiPQBEavhGJCjD = ekMeNQzvjgtJhSnA;
    self.eIpxfwWAXvzRight.constant = kPofSGniBdetAa();
    
    ksvXWmCenlLwT(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}
#pragma mark ---------- 绑定身份证证件输入框
- (void)ktbRkmwJKYOIC {
    self.eoMiYexjdsClaLAvButton.hidden = YES;
    if (!self.eVEyjiwDNTitleType) {
        self.eVZsbUve.text = kIgUXwLWlkF();
        
    }
    self.eIpxfwWAXvz.placeholder = knGPJEiScBeFkZm();
    self.eIpxfwWAXvz.returnKeyType = UIReturnKeyDefault;
    self.eoyiPQBEavhGJCjD = etVQXNiY;
    self.eIpxfwWAXvzRight.constant = kPofSGniBdetAa();
    
    kbcnHAZkCQuNF(self.eVEyjiwDNTypeImage, [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()]);
}

#pragma mark ---------- itemButtonAction
- (void)kQtRHiVlxensrNza:(UIButton *)sender {
    
    /// 展示更多账户
    if (self.eVEyjiwDNType == eSKoLZveWR) {
        if ([ezZjJFkiSstBMyx isEqualToString:@"1"]) {
            [self.superview endEditing:YES];
            NSDictionary *object = @{
                                     eTfaGisKey: @(0.25),
                                     eDqijpIoVxcPzdE : @(NO),
                                     eNRTAwP : @(0)
                                     };
            [[NSNotificationCenter defaultCenter]postNotificationName:efGAtFYNhpcB object:object];
            ezZjJFkiSstBMyx = @"0";
            return;
        }
        sender.selected = !sender.selected;
        if (sender.selected) {
            [self kGWbqSUfpJTZB];
        } else {
            [self klOFIBvDNWtEQah];
        }
    }
    /// 获取验证码
    if (self.eVEyjiwDNType == eEyraOCdKBGwnZHt || self.eVEyjiwDNType == eVEyjiwDNTypePhoneRegisterCode || self.eVEyjiwDNType == eVEyjiwDNTypeBindPhoneCode) {
        
        self.eoMiYexjdsClaLAvButton.enabled = NO;
        if (self.ktrzxpvMY) {
            NSDictionary *para = self.ktrzxpvMY(sender.enabled);
            if (!para) {
                self.eoMiYexjdsClaLAvButton.enabled = YES;
                [DUyUrAEagzMZ kdSzeClsBhOtZIYxErrorMessage:@"请先填写手机号"];
                return;
            }
            NSString *phone = [para objectForKey:@"phone"];
            if (!kRAdaqkYIUOn(phone)) {
                self.eoMiYexjdsClaLAvButton.enabled = YES;
                [DUyUrAEagzMZ kdSzeClsBhOtZIYxErrorMessage:@"手机号格式有误"];
                return;
            }
            __weak typeof(self) weakSelf = self;
            [self.eUKHcTkPJCrpEVQl kXLPOEpCBozkZM:kVAvotyZHa() parameters:para];
            self.eUKHcTkPJCrpEVQl.kurcxnG = ^(DUjmZRSlJeTuw *object) {
                if (object.ebTBquLMZ == 200) {
                    [weakSelf kqhDSGpBkUM:phone];
                } else {
                    
                    if (object.euwmDFU) {
                        dispatch_async(dispatch_get_main_queue(), ^{
                            weakSelf.eoMiYexjdsClaLAvButton.enabled = YES;
                            [DUyUrAEagzMZ kmBSjbQ];
                            [DUyUrAEagzMZ kdSzeClsBhOtZIYxErrorMessage:object.euwmDFU];
                        });
                    }
                }
            };
            self.eUKHcTkPJCrpEVQl.kkMohviBYIVtrnEm = ^(NSError *error) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    [DUyUrAEagzMZ kmBSjbQ];
                    [DUyUrAEagzMZ kdSzeClsBhOtZIYxErrorMessage:@"网络出了小差!!!"];
                });
            };
            
        }
        
    }
    
    /// 睁眼闭眼切换
    if (self.eVEyjiwDNType == eVEyjiwDNTypeFindBackPasswordPassword || self.eVEyjiwDNType == eVEyjiwDNTypeResetPasswordPassword || self.eVEyjiwDNType == eVEyjiwDNTypeResetPasswordNewPassword || self.eVEyjiwDNType == edzbJaSwPvj || self.eVEyjiwDNType == eXDEiFVkgzWhP || self.eVEyjiwDNType == eVEyjiwDNTypePhoneRegisterPassword) {
        sender.selected = !sender.selected;
        if (sender.selected) {
            self.eIpxfwWAXvz.secureTextEntry = NO;
            self.eUiDploM.hidden = NO;
            self.evsmnfwhKbdJcL.hidden = YES;
        } else {
            self.eIpxfwWAXvz.secureTextEntry = YES;
            self.eUiDploM.hidden = YES;
            self.evsmnfwhKbdJcL.hidden = NO;
        }
    }
    
}
#pragma mark ---------- 设置inputView的return类型
- (void)khNyZHtvxA:(eNsRyjFpzIoAmKkL)type {
    _eoyiPQBEavhGJCjD = type;
    if (type == etVQXNiY) {
        self.eIpxfwWAXvz.returnKeyType = UIReturnKeyDone;
    }
    if (type == ekMeNQzvjgtJhSnA) {
        self.eIpxfwWAXvz.returnKeyType = UIReturnKeyNext;
    }
}

#pragma mark ---------- 点击inputView 事件
- (void)kxAoWgmdDQzMfE:(UITapGestureRecognizer *)eAjnaWOIkotY {
    
    [self.eIpxfwWAXvz becomeFirstResponder];
    
}

#pragma mark ---------- 旋转登陆页面中的展示更多账户的按钮
- (void)kGWbqSUfpJTZB {
    NSArray *tmpArray = kpXdSaqrWYb();
    self.eCEYSsLnTkwQUxzpArray = [[tmpArray reverseObjectEnumerator]allObjects];
    UIWindow *window = kOjcdzAgI();
    CGRect rect = [self.superview convertRect:self.frame toView:window];
    CGFloat maxHeight = self.eCEYSsLnTkwQUxzpArray.count * 30 > 60 ? 60 : self.eCEYSsLnTkwQUxzpArray.count * 30;
    [self.eCEYSsLnTkwQUxzpTableView setFrame:CGRectMake(CGRectGetMinX(rect), CGRectGetMinY(rect) + CGRectGetHeight(self.frame), CGRectGetWidth(self.bounds), maxHeight)];
    self.eCEYSsLnTkwQUxzpTableView.hidden = NO;
    self.eCEYSsLnTkwQUxzpTableView.backgroundColor = [UIColor clearColor];
    [window addSubview:self.eCEYSsLnTkwQUxzpTableView];
    [self.eCEYSsLnTkwQUxzpTableView reloadData];
    [window bringSubviewToFront:self.eCEYSsLnTkwQUxzpTableView];
    [UIView animateWithDuration:0.2f animations:^{
        self.eoMiYexjdsClaLAvButton.transform = CGAffineTransformMakeRotation(M_PI);
    }];
}
#pragma mark ---------- 坚挺键盘出现
- (void)kALCDUkmFWwE:(NSNotification *)noti {
    
    if (!self.eIpxfwWAXvz.isEditing) {
        return;
    }
    //获取键盘的高度
    NSDictionary *userInfo = [noti userInfo];
    VARNAMES_CONTINUEVALUE = 0;
    NSValue *value = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGRect keyboardRect = [value CGRectValue];
    VARNAMES_KEYBOARDMINY = CGRectGetMinY(keyboardRect);
    [self kIVzmlF];
}

#pragma mark ---------- 提升键盘
- (void)kIVzmlF {
    
    if (!self.eIpxfwWAXvz.isEditing || !VARNAMES_KEYBOARDMINY) {
        return;
    }
    if (_eIpxfwWAXvzMaxY > VARNAMES_KEYBOARDMINY) {
        _eqkYPEGFTIKo = YES;
        _eRzgSXnK = VARNAMES_KEYBOARDMINY - _eIpxfwWAXvzMaxY;
        VARNAMES_CONTINUEVALUE = _eRzgSXnK;
    } else {
        _eqkYPEGFTIKo = NO;
    }
    NSDictionary *object = @{
                             eTfaGisKey: @(0.25),
                             eDqijpIoVxcPzdE : @(_eqkYPEGFTIKo),
                             eNRTAwP : @(_eRzgSXnK)
                             };
    
    if (_eRzgSXnK && [self.eIpxfwWAXvz isFirstResponder]) {
        [[NSNotificationCenter defaultCenter]postNotificationName:efGAtFYNhpcB object:object];
        if (!_eqkYPEGFTIKo) {
            _eRzgSXnK = 0.0f;
        }
    }
}
- (void)kJHuExWpsqVKfl:(CGFloat)ejDVqMwfbR {
    _eIpxfwWAXvzMaxY = ejDVqMwfbR;
}

#pragma mark ---------- textFieldDelegate
-(void)textFieldDidBeginEditing:(UITextField *)textField {

    if (self.eVEyjiwDNType == eSKoLZveWR || self.eVEyjiwDNType == etREcMaLYxqikK) {
        if (!self.eCEYSsLnTkwQUxzpTableView.hidden) {
            [self klOFIBvDNWtEQah];
        }
        if (self.koqsfNpred) {
            self.koqsfNpred();
        }
    }
    if ([ezZjJFkiSstBMyx isEqualToString:@"1"]) {
        [self kIVzmlF];
    } else {
        ezZjJFkiSstBMyx = @"1";
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (self.eoyiPQBEavhGJCjD == etVQXNiY) {
        [self endEditing:YES];
        ezZjJFkiSstBMyx = @"0";
        VARNAMES_CONTINUEVALUE = 0;
        VARNAMES_KEYBOARDMINY = 0;
        NSDictionary *object = @{
                                 eTfaGisKey: @(0.25),
                                 eDqijpIoVxcPzdE : @(NO),
                                 eNRTAwP : @(0)
                                 };
        [[NSNotificationCenter defaultCenter]postNotificationName:efGAtFYNhpcB object:object];
    }
    if (self.eoyiPQBEavhGJCjD == ekMeNQzvjgtJhSnA) {
        [self kIVzmlF];
        if (self.kjJCATGYMWmDpeI) {
            self.kjJCATGYMWmDpeI();
        }
    }
    return YES;
}
-(void)textFieldDidEndEditing:(UITextField *)textField {
    self.eegFcbrRpD = textField.text;
}

- (void)kTDJyVesvGajNhwO:(UITextField *)textField {
    self.eegFcbrRpD = textField.text;
}






-(UITableView *)eCEYSsLnTkwQUxzpTableView {
    if (!_eCEYSsLnTkwQUxzpTableView) {
        _eCEYSsLnTkwQUxzpTableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
        [_eCEYSsLnTkwQUxzpTableView registerClass:[DUwRHSVbM class] forCellReuseIdentifier:@"DUwRHSVbM"];
        _eCEYSsLnTkwQUxzpTableView.delegate = self;
        _eCEYSsLnTkwQUxzpTableView.dataSource = self;
        _eCEYSsLnTkwQUxzpTableView.hidden = YES;
        /// 便于点击viewController其他的地方隐藏tableView
        _eCEYSsLnTkwQUxzpTableView.tag = 666;
        _eCEYSsLnTkwQUxzpTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _eCEYSsLnTkwQUxzpTableView;
}
#pragma mark ---------- UItableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.eCEYSsLnTkwQUxzpArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DUwRHSVbM *cell = [DUwRHSVbM kiZwyInSzrs:tableView];
    [cell kdewRqICJlbcojGx:self.eCEYSsLnTkwQUxzpArray[indexPath.row]];
    __weak typeof(self) weakSelf = self;
    cell.kFoePSGKH = ^(NSString *account) {
        [weakSelf kFoePSGKH:account];
    };
    //    cell.textLabel.text = self.eCEYSsLnTkwQUxzpArray[indexPath.row];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 30.0f;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *phoneValue = self.eCEYSsLnTkwQUxzpArray[indexPath.row];
    self.eIpxfwWAXvz.text = phoneValue;
    self.eegFcbrRpD = phoneValue;
    if (self.kuVADbFIqoNR) {
        self.kuVADbFIqoNR(phoneValue);
    }
    [self endEditing:YES];
    
    [self klOFIBvDNWtEQah];
}

#pragma mark ---------- 删除记录的账户账户
- (void)kFoePSGKH:(NSString *)account {
    kFoePSGKH(account);
    self.eCEYSsLnTkwQUxzpArray = kpXdSaqrWYb();
    if (self.eCEYSsLnTkwQUxzpArray.count) {
        UIWindow *window = kOjcdzAgI();
        CGRect rect = [self convertRect:self.bounds toView:window];
        CGFloat maxHeight = self.eCEYSsLnTkwQUxzpArray.count * 30 > 60 ? 60 : self.eCEYSsLnTkwQUxzpArray.count * 30;
        [self.eCEYSsLnTkwQUxzpTableView setFrame:CGRectMake(CGRectGetMinX(rect), CGRectGetMaxY(rect), CGRectGetWidth(rect), maxHeight)];
    } else {
        [self klOFIBvDNWtEQah];
        self.eoMiYexjdsClaLAvButton.hidden = YES;
        self.eIpxfwWAXvzRight.constant = kPofSGniBdetAa();
    }
    
    [self.eCEYSsLnTkwQUxzpTableView reloadData];
}

/// 隐藏
- (void)klOFIBvDNWtEQah {
    self.eCEYSsLnTkwQUxzpTableView.hidden = YES;
    __weak typeof(self) weakSelf = self;
    [UIView animateWithDuration:0.2f animations:^{
        weakSelf.eoMiYexjdsClaLAvButton.transform = CGAffineTransformMakeRotation(M_PI * 2);
    } completion:^(BOOL finished) {
        
    }];
}


#pragma mark ---------- 获取验证码
- (void)kqhDSGpBkUM:(NSString *)phone {
    NSDictionary *para = @{
                           @"phone": phone
                           };
    __weak typeof(self) weakSelf = self;
    [self.eRHVkoIXFziB kXLPOEpCBozkZM:kxapYIAjUrPdhs() parameters:para];
    self.eRHVkoIXFziB.kurcxnG = ^(DUjmZRSlJeTuw * object) {
        if (object.ebTBquLMZ == 200) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [DUyUrAEagzMZ kmBSjbQ];
//                [DUyUrAEagzMZ kqSsTXv:@"验证码已发送"];
                [weakSelf kodYBkeGLl];
            });
        } else {
            dispatch_async(dispatch_get_main_queue(), ^{
                weakSelf.eoMiYexjdsClaLAvButton.enabled = YES;
                [DUyUrAEagzMZ kmBSjbQ];
                if (object.euwmDFU) {
                    [DUyUrAEagzMZ kdSzeClsBhOtZIYxErrorMessage:object.euwmDFU];
                } else {
                    [DUyUrAEagzMZ kdSzeClsBhOtZIYxErrorMessage:@"验证码发送失败"];
                }
            });
        }
    };
    self.eRHVkoIXFziB.kkMohviBYIVtrnEm = ^(NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            weakSelf.eoMiYexjdsClaLAvButton.enabled = YES;
            [DUyUrAEagzMZ kmBSjbQ];
            [DUyUrAEagzMZ kdSzeClsBhOtZIYxErrorMessage:@"网络出了小差!!!"];
        });
    };
    
    
}

- (void)kodYBkeGLl {
    // 创建定时器
    NSTimer *timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(methodNmaes_changTitle:) userInfo:nil repeats:YES];
    // 将定时器添加到runloop中，否则定时器不会启动
    [[NSRunLoop mainRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
}

- (void)methodNmaes_changTitle:(NSTimer *)timer {
    self.ebTBquLMZLayer.hidden = YES;
    [self.eoMiYexjdsClaLAvButton setTitle:[NSString stringWithFormat:@"%ld", (long)self.eucsQVqS] forState:UIControlStateDisabled];
    [self.eoMiYexjdsClaLAvButton setTitleColor:[DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()] forState:UIControlStateDisabled];
    self.eoMiYexjdsClaLAvButton.titleLabel.text = [NSString stringWithFormat:@"%ld", (long)self.eucsQVqS];
    if (self.eucsQVqS == 0) {
        self.eoMiYexjdsClaLAvButton.enabled = YES;
        self.ebTBquLMZLayer.hidden = NO;
        self.eucsQVqS = kNlCKoqAHDei();
        [timer invalidate];
    } else {
        [self.eoMiYexjdsClaLAvButton setTitle:[NSString stringWithFormat:@"%ld", (long)self.eucsQVqS] forState:UIControlStateDisabled];
        self.eoMiYexjdsClaLAvButton.titleLabel.text = [NSString stringWithFormat:@"%ld", (long)self.eucsQVqS];
        self.eucsQVqS--;
    }
}


#pragma mark ---------- Lazy Load
-(DUjmZRSlJeTuw *)eUKHcTkPJCrpEVQl {
    if (!_eUKHcTkPJCrpEVQl) {
        _eUKHcTkPJCrpEVQl = [[DUjmZRSlJeTuw alloc]init];
    }
    return _eUKHcTkPJCrpEVQl;
}

-(DUjmZRSlJeTuw *)eRHVkoIXFziB {
    if (!_eRHVkoIXFziB) {
        _eRHVkoIXFziB = [[DUjmZRSlJeTuw alloc]init];
    }
    return _eRHVkoIXFziB;
}

@end
