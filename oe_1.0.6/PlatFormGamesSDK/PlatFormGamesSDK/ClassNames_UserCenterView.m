

#import "ClassNames_UserCenterView.h"
#import "ClassNames_Color.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_Title.h"
#import "ClassNames_CutImage.h"
#import "ClassNames_ImageCommitButton.h"
#import "ClassNames_PGHubView.h"
#import "ClassNames_NavigationBarView.h"

static NSString *const varNames_btnImgKey = @"varNames_btnImgKey";
static NSString *const varNames_btnTitleKey = @"varNames_btnTitleKey";


@interface ClassNames_UserCenterView ()

@property (nonatomic, readwrite, strong) ClassNames_NavigationBarView *varNames_naviView;

@property (nonatomic, readwrite, strong) UILabel *varNames_accountLabel;

@property (nonatomic, readwrite, strong) UIView *varNames_skillView;

@property (nonatomic, readwrite, assign) CGFloat varNames_topMarginValue;

@end


@implementation ClassNames_UserCenterView

+(instancetype)methodNames_createUserCenterView {
    ClassNames_UserCenterView *varNames_tmpSuggestView = [[ClassNames_UserCenterView alloc]init];
    varNames_tmpSuggestView.translatesAutoresizingMaskIntoConstraints = NO;
    return varNames_tmpSuggestView;
}

- (void)methodNames_showViewWithAnimatecomplete:(void (^)(void))methodNames_completeAction {
    [UIView animateWithDuration:methodNames_getShowHideViewAnimateDuration() animations:^{
        self.layer.opacity = 1.0;
    } completion:^(BOOL finished) {
        if (finished) {
            if (methodNames_completeAction) {
                methodNames_completeAction();
            }
        }
    }];
}

- (void)methodNames_hideViewWithAnimatecomplete:(void (^)(void))methodNames_completeAction {
    [UIView animateWithDuration:methodNames_getShowHideViewAnimateDuration() animations:^{
        self.layer.opacity = 0.0;
    } completion:^(BOOL finished) {
        if (finished) {
            if (methodNames_completeAction) {
                methodNames_completeAction();
            }
        }
    }];
}
#pragma mark ----------------------------------------------------------------------

-(instancetype)init {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.layer.cornerRadius = 15;
        [self methodNames_createUI];
    }
    return self;
}



- (void)methodNames_createUI {
    
    [self methodNames_setNavi];
    [self methodNames_createAccountView];
    [self methodNames_layoutSubViews];
    NSArray *varNames_btnArray = @[
        @{
            varNames_btnImgKey: @"image_lock_white",
            varNames_btnTitleKey: @"密码修改",
        },
        @{
            varNames_btnImgKey: @"image_phone_white",
            varNames_btnTitleKey: @"手机验证",
        },
        @{
            varNames_btnImgKey: @"image_realname_white",
            varNames_btnTitleKey: @"实名验证",
        },
        @{
            varNames_btnImgKey: @"image_exit_white",
            varNames_btnTitleKey: @"退出登录",
        },
    ];
    [self methodNames_createSkillButton:varNames_btnArray];
}

- (void)methodNames_setNavi {
    
    __weak typeof(self) weakSelf = self;
    ClassNames_NavigationBarView *varNames_tmpNaviView = [[ClassNames_NavigationBarView alloc]init];
    varNames_tmpNaviView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [varNames_tmpNaviView methodNames_setTitle:@"用户中心"];
    [varNames_tmpNaviView methodNames_setRightButtonImage:@"image_close" rightTitle:@"" btnAction:^{
        if (weakSelf.methodNames_closeBlock) {
            weakSelf.methodNames_closeBlock();
        }
    }];
    
    self.varNames_naviView = varNames_tmpNaviView;
    [self addSubview:varNames_tmpNaviView];
}
// 账户ID
- (void)methodNames_createAccountView {
    UILabel *varNames_tmpLabel = [[UILabel alloc]init];
    varNames_tmpLabel.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpLabel.font = [UIFont systemFontOfSize:12];
    varNames_tmpLabel.textColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_fillColor_config()];
    varNames_tmpLabel.textAlignment = NSTextAlignmentCenter;
    varNames_tmpLabel.text = @"账户ID:1234567890";
    self.varNames_accountLabel = varNames_tmpLabel;
    [self addSubview:varNames_tmpLabel];
}

- (void)methodNames_createSkillButton:(NSArray *)arr {
    if (!arr.count) {
        return;
    }
    UIView *varNames_skillView = [[UIView alloc]init];
    varNames_skillView.translatesAutoresizingMaskIntoConstraints = NO;
    __block CGFloat varNames_skillHeight = 0;
    [arr enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        varNames_skillHeight += (methodNames_setMargin_2base() + 38 );
        CGFloat y = (methodNames_setMargin_2base() + 38 ) * idx;
        CGRect varNames_rect = CGRectMake(0, y, 160, 38);
        NSString *varNames_img = [obj objectForKey:varNames_btnImgKey];
        NSString *varNames_title = [obj objectForKey:varNames_btnTitleKey];
        [varNames_skillView addSubview:[self methodNames_createButtonWithFrame:varNames_rect methodNames_img:varNames_img methodNames_title:varNames_title methodNames_index:idx+10]];
    }];
    self.varNames_skillView = varNames_skillView;
    
    [self addSubview:varNames_skillView];
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_skillView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_skillView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_skillView methodNames_constriant:160];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_skillView methodNames_constriant:varNames_skillHeight];
    
    
}

- (UIButton *)methodNames_createButtonWithFrame:(CGRect)frame methodNames_img:(NSString *)img methodNames_title:(NSString *)title methodNames_index:(NSInteger)index{
    UIButton *varNames_tmpbtn = [[UIButton alloc]initWithFrame:frame];
    varNames_tmpbtn.tag = index;
    [varNames_tmpbtn setBackgroundColor:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()]];
    [varNames_tmpbtn setTitle:title forState:UIControlStateNormal];
    UIImage *varNames_img = methodNames_getImage(img);
    [varNames_tmpbtn setImage:[UIImage imageWithCGImage:varNames_img.CGImage scale:2 orientation:UIImageOrientationUp] forState:UIControlStateNormal];
    varNames_tmpbtn.titleLabel.font = [UIFont systemFontOfSize:15];
    [varNames_tmpbtn setTitleColor:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_commitBtnFontColor_config()] forState:UIControlStateNormal];
    varNames_tmpbtn.layer.cornerRadius = 4.5;
    [varNames_tmpbtn setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 8)];
    [varNames_tmpbtn addTarget:self action:@selector(methodNames_skillButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    return varNames_tmpbtn;
}


- (void)methodNames_layoutSubViews {
    
    self.varNames_topMarginValue = 0;
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_naviView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_naviView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_naviView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_naviView methodNames_constriant:methodNames_setNavigationBarHeight()];
    
    self.varNames_topMarginValue += methodNames_setNavigationBarHeight();
    self.varNames_topMarginValue += methodNames_setMargin_2base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_accountLabel methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_accountLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_accountLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_accountLabel methodNames_constriant:methodNames_setMargin_3base()];
    
    self.varNames_topMarginValue += methodNames_setMargin_3base();
    self.varNames_topMarginValue += methodNames_setMargin_2base();
}
#pragma mark ---------- button Action
- (void)methodNames_skillButtonAction:(UIButton *)sender {
    self.hidden = YES;
    switch (sender.tag) {
        case 10:// 密码修改
        {
            if (self.methodNames_resetPassword) {
                self.methodNames_resetPassword();
            }
        }
            break;
        case 11:// 手机验证
        {
            if (self.methodNames_bindPhone) {
                self.methodNames_bindPhone();
            }
        }
            break;
        case 12:// 实名验证
        {
            if (self.methodNames_bindPersonID) {
                self.methodNames_bindPersonID();
            }
        }
            break;
        case 13:// 退出登录
        {
            if (self.methodNames_logout) {
                self.methodNames_logout();
            }
        }
            break;
            
        default:
            break;
    }
}

@end
