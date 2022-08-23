


#import "ClassNames_SuspensionBallButton.h"
#import <sys/utsname.h>
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_NavigationBarView.h"
#import "ClassNames_Color.h"

#pragma mark ---------- 所有动画所要执行的时长
static const CGFloat varNames_suspensionBallAnimationDuration = 0.1;

#pragma mark ---------- 悬浮球的背景图标
static NSString * const varNames_suspensionBallBackgroundImage = @"image_ball";

#pragma mark ---------- 菜单按钮的标题，从远到近
static NSString * const varNames_suspensionBallMenuImage1 = @"image_gift";
static NSString * const varNames_suspensionBallMenuImage2 = @"image_service";
static NSString * const varNames_suspensionBallMenuImage3 = @"image_usercenter";

#pragma mark ---------- 悬浮球不使用的时候半隐藏的时长
static const CGFloat varNames_suspensionBallHalfHideDuration = 5.0;

#pragma mark ---------- 当前X中的刘海方向
static NSString * const varNames_orientationRight = @"RIGHT";
static NSString * const varNames_orientationLeft = @"LEFT";


#pragma mark ---------------------------------------------------------------------------








#pragma mark ---------- 悬浮球点击后展开的内容view
@interface methodNames_BallMenuView()

#pragma mark ---------- 语言
@property (nonatomic, readwrite, strong) NSString *varNames_languageType;

@property (nonatomic, readwrite, strong) NSArray *varNames_titleArray;

@property (nonatomic, readwrite, assign) CGRect varNames_originalRect;

@property (nonatomic, readwrite, strong) UIView *varNames_menuView;

@property (nonatomic, readwrite, copy) void (^methodNames_clickItemMenu)(NSInteger index);
@property (nonatomic, readwrite, copy) void (^methodNames_finishShowMenu)(NSInteger type);

@property (nonatomic, readwrite, copy) NSString *varNames_firstTitle;
@property (nonatomic, readwrite, copy) NSString *varNames_secondTitle;
@property (nonatomic, readwrite, copy) NSString *varNames_thirdTitle;

@end

@implementation methodNames_BallMenuView

+(instancetype)methodNames_showBallMenu:(CGRect)varNames_rect subMethodNames_ballType:(varNames_showBallType)varNames_ballType subMethodNames_languageType:(NSString *)varNames_argLanguageType{
    methodNames_BallMenuView *varNames_ballMenu = [[methodNames_BallMenuView alloc]initWithFrame:varNames_rect];
    [varNames_ballMenu methodNames_initLangeType:varNames_argLanguageType];
    [varNames_ballMenu methodNames_setMenuViewType:varNames_ballType];
    return varNames_ballMenu;
}

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.varNames_originalRect = frame;
        self.layer.cornerRadius = CGRectGetWidth(frame)/2;
    }
    return self;
}
#pragma mark ---------- 根据语言类型配置显示的的标题
- (void)methodNames_initLangeType:(NSString *)varNames_varLangType {
    if ([varNames_varLangType isEqualToString:@"zh-cn"]) {
        self.varNames_firstTitle = @"礼包";
        self.varNames_secondTitle = @"客服";
        self.varNames_thirdTitle = @"用户中心";
    } else {
        self.varNames_firstTitle = @"礼包";
        self.varNames_secondTitle = @"客服";
        self.varNames_thirdTitle = @"用户中心";
    }
    
    self.varNames_titleArray = @[self.varNames_firstTitle, self.varNames_secondTitle, self.varNames_thirdTitle];
}


#pragma mark ---------- 点击菜单事件
- (void)methodNames_clickMenu:(UIButton *)sender {
    if (self.methodNames_clickItemMenu) {
        if (sender.tag == 0) {
            [self methodNames_hide];
        }
        self.methodNames_clickItemMenu(sender.tag);
    }
}




- (void)methodNames_setMenuViewType:(varNames_showBallType)varNames_type {
    CGRect varNames_tmpRect = CGRectZero;
    NSInteger varNames_count = self.varNames_titleArray.count + 1;
    CGFloat width = CGRectGetWidth(self.varNames_originalRect);
    width *= varNames_count;
    switch (varNames_type) {
        case 0:/// left
        {
            varNames_tmpRect = CGRectMake(CGRectGetMinX(self.varNames_originalRect), CGRectGetMinY(self.varNames_originalRect), width, CGRectGetHeight(self.varNames_originalRect));
        }
            break;
        case 1:/// bottom
        {
            varNames_tmpRect = CGRectMake(CGRectGetMinX(self.varNames_originalRect), CGRectGetMinY(self.varNames_originalRect) - CGRectGetWidth(self.varNames_originalRect) * varNames_count, CGRectGetWidth(self.varNames_originalRect), width);
        }
            break;
        case 2:/// right
        {
            varNames_tmpRect = CGRectMake(CGRectGetMinX(self.varNames_originalRect) - CGRectGetWidth(self.varNames_originalRect) * (varNames_count-1), CGRectGetMinY(self.varNames_originalRect), width, CGRectGetHeight(self.varNames_originalRect));
        }
            break;
        default:/// top
        {
            varNames_tmpRect = CGRectMake(CGRectGetMinX(self.varNames_originalRect), CGRectGetMinY(self.varNames_originalRect), CGRectGetWidth(self.varNames_originalRect), width);
        }
            break;
    }
    [self methodNames_show:varNames_tmpRect subMethodNames_type:varNames_type];
}

- (void)methodNames_hide {
    _varNames_menuView.layer.opacity = 0.0;
    [UIView animateWithDuration:varNames_suspensionBallAnimationDuration animations:^{
        [self setFrame:self.varNames_originalRect];
    } completion:^(BOOL finished) {
        if (finished) {
            self.hidden = YES;
            [self.varNames_menuView removeFromSuperview];
            [self removeFromSuperview];
        }
    }];
}

#pragma mark ---------- 创建菜单中的按钮
- (void)methodNames_show:(CGRect)varNames_tmpRect subMethodNames_type:(varNames_showBallType)varNames_type {
  
    [UIView animateWithDuration:varNames_suspensionBallAnimationDuration animations:^{
        [self setFrame:varNames_tmpRect];
    } completion:^(BOOL finished) {
        if (finished) {
            [self methodNames_createMenuButton:self.varNames_titleArray subMethodNames_type:varNames_type];
            if (self.methodNames_finishShowMenu) {
                self.methodNames_finishShowMenu(varNames_type);
            }
            
        }
    }];
}
- (void)methodNames_createMenuButton:(NSArray *)varNames_titleArray subMethodNames_type:(varNames_showBallType)varNames_type {
    _varNames_menuView = [[UIView alloc]initWithFrame:self.bounds];
    _varNames_menuView.layer.opacity = 0.0;
//    CGFloat width = CGRectGetWidth(self.varNames_originalRect);
    _varNames_menuView.layer.cornerRadius = 5;
    _varNames_menuView.backgroundColor = [UIColor whiteColor];
//    _varNames_menuView.layer.borderWidth = 3.0;
    _varNames_menuView.layer.borderColor = [UIColor whiteColor].CGColor;
    [self addSubview:_varNames_menuView];
    
    if (varNames_titleArray.count) {
        CGFloat varNames_margin = 5;
        NSInteger index = 0;
        for (NSString *title in varNames_titleArray) {
            UIButton *varNames_tmpBtn = [[UIButton alloc]init];
            varNames_tmpBtn.translatesAutoresizingMaskIntoConstraints = NO;
            varNames_tmpBtn.tag = index;
            index++;
            [varNames_tmpBtn setImage:[self methodNames_getImageForTitle:title] forState:UIControlStateNormal];
            varNames_tmpBtn.titleLabel.font = [UIFont boldSystemFontOfSize:12];
            [varNames_tmpBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
            [varNames_tmpBtn setTitle:title forState:UIControlStateNormal];
            [varNames_tmpBtn addTarget:self action:@selector(methodNames_clickMenu:) forControlEvents:UIControlEventTouchUpInside];
            [_varNames_menuView addSubview:varNames_tmpBtn];
            NSLayoutConstraint *varNames_widthconstraint = [NSLayoutConstraint constraintWithItem:varNames_tmpBtn attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:50];
            NSLayoutConstraint *varNames_heightconstraint = [NSLayoutConstraint constraintWithItem:varNames_tmpBtn attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:50];
            [_varNames_menuView addConstraints:[self methodNames_createMenuConstraintArrayforView:varNames_tmpBtn withMargin:varNames_margin menuType:varNames_type]];
            [varNames_tmpBtn addConstraint:varNames_widthconstraint];
            [varNames_tmpBtn addConstraint:varNames_heightconstraint];
            varNames_margin += 60;
            
            varNames_tmpBtn.titleEdgeInsets = UIEdgeInsetsMake(varNames_tmpBtn.imageView.frame.size.height, -varNames_tmpBtn.imageView.bounds.size.width, 8,0);
            varNames_tmpBtn.imageEdgeInsets = UIEdgeInsetsMake(-5, varNames_tmpBtn.titleLabel.frame.size.width/2, varNames_tmpBtn.titleLabel.frame.size.height+5, -varNames_tmpBtn.titleLabel.frame.size.width/2);
        }
    }
    [UIView animateWithDuration:0.1 animations:^{
        self.varNames_menuView.layer.opacity = 1.0;
    }];
}

#pragma mark ---------- 菜单内容按钮的约束
- (NSArray *)methodNames_createMenuConstraintArrayforView:(UIView *)varNames_view withMargin:(CGFloat)varNames_margin menuType:(varNames_showBallType)varNames_type {
    NSMutableArray *varNames_tmpArray = [NSMutableArray array];
    switch (varNames_type) {
        case 0:/// left
        {
            NSLayoutConstraint *varNames_rightconstraint = [NSLayoutConstraint constraintWithItem:_varNames_menuView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:varNames_view attribute:NSLayoutAttributeRight multiplier:1.0 constant:varNames_margin];
            NSLayoutConstraint *varNames_centerconstraint = [NSLayoutConstraint constraintWithItem:varNames_view attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:_varNames_menuView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0];
            [varNames_tmpArray addObject:varNames_rightconstraint];
            [varNames_tmpArray addObject:varNames_centerconstraint];
        }
            break;
        case 1:/// bottom
        {
            NSLayoutConstraint *varNames_topconnstraint = [NSLayoutConstraint constraintWithItem:varNames_view attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:_varNames_menuView attribute:NSLayoutAttributeTop multiplier:1.0 constant:varNames_margin];
            NSLayoutConstraint *varNames_centerconstraint = [NSLayoutConstraint constraintWithItem:varNames_view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:_varNames_menuView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];
            [varNames_tmpArray addObject:varNames_topconnstraint];
            [varNames_tmpArray addObject:varNames_centerconstraint];
        }
            break;
        case 2:/// right
        {
            NSLayoutConstraint *varNames_leftconnstraint = [NSLayoutConstraint constraintWithItem:varNames_view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:_varNames_menuView attribute:NSLayoutAttributeLeft multiplier:1.0 constant:varNames_margin];
            NSLayoutConstraint *varNames_centerconstraint = [NSLayoutConstraint constraintWithItem:varNames_view attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:_varNames_menuView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0];
            [varNames_tmpArray addObject:varNames_leftconnstraint];
            [varNames_tmpArray addObject:varNames_centerconstraint];
        }
            break;
            
        default:/// top
        {
            NSLayoutConstraint *varNames_topconnstraint = [NSLayoutConstraint constraintWithItem:_varNames_menuView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:varNames_view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:varNames_margin];
            NSLayoutConstraint *varNames_centerconstraint = [NSLayoutConstraint constraintWithItem:varNames_view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:_varNames_menuView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];
            [varNames_tmpArray addObject:varNames_topconnstraint];
            [varNames_tmpArray addObject:varNames_centerconstraint];
        }
            break;
    }
    return varNames_tmpArray;
}






#pragma mark ---------- 根据标题内容获取的图片
- (UIImage *)methodNames_getImageForTitle:(NSString *)varNames_title {
    UIImage *varNames_image = nil;
    if ([varNames_title isEqualToString:self.varNames_secondTitle]) {
        varNames_image = [self methodNames_getImage:varNames_suspensionBallMenuImage2];
    } else if ([varNames_title isEqualToString:self.varNames_firstTitle]) {
        varNames_image = [self methodNames_getImage:varNames_suspensionBallMenuImage1];
    } else if ([varNames_title isEqualToString:self.varNames_thirdTitle]) {
        varNames_image = [self methodNames_getImage:varNames_suspensionBallMenuImage3];
    }
    return varNames_image;
}

- (UIImage *)methodNames_getImage:(NSString *)varNames_argImg {
    NSString *varNames_tmpPath = [[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:[NSString stringWithFormat:@"PlatFormGamesSDK.bundle"]];
    NSBundle *varNames_tmpBundle = [NSBundle bundleWithPath:varNames_tmpPath];
    NSString *varNames_imgPath = [varNames_tmpBundle pathForResource:varNames_argImg ofType:@"png"];
    UIImage *varNames_tmpImage = [UIImage imageWithContentsOfFile:varNames_imgPath];
    return varNames_tmpImage;
}
@end





#pragma mark ---------- 悬浮球view
@interface ClassNames_SuspensionBallButton()

#pragma mark ---------- 语言类型
@property (nonatomic, readwrite, strong) NSString *varNames_languageType;

@property (nonatomic, readwrite, assign) CGPoint varNames_touchPoint;
@property (nonatomic, readwrite, assign) CGFloat varNames_touchBtnX;
@property (nonatomic, readwrite, assign) CGFloat varNames_touchBtnY;
@property (nonatomic, readwrite, assign) CGFloat varNames_btnWidth;
@property (nonatomic, readwrite, assign) CGFloat varNames_btnHeight;

@property (nonatomic, readwrite, assign) varNames_showBallType varNames_ballType;
@property (nonatomic, readwrite, strong) methodNames_BallMenuView *varNames_ballMenu;
@property (nonatomic, readwrite, strong) UIButton *varNames_closeButton;

@property (nonatomic, readwrite, assign) BOOL varNames_isHideMenu;
@property (nonatomic, readwrite, strong) NSTimer *varNames_timer;

@property (nonatomic, readwrite, copy) NSString *varNames_orientation;



@property (nonatomic, readwrite, strong) UIView *varNames_containTipView;


@end


@implementation ClassNames_SuspensionBallButton

#pragma mark ---------------------  悬浮球关闭移除按钮事件
- (void)methodNames_closeSupenBall:(UIButton *)sender {
    [self methodNames_showMenu:self];
    [self methodNames_showTipView];
}

- (void)methodNames_showTipView {
        self.varNames_containTipView = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
        self.varNames_containTipView.translatesAutoresizingMaskIntoConstraints = NO;
        [[UIApplication sharedApplication].keyWindow addSubview:self.varNames_containTipView];
        NSLayoutConstraint *varNames_Top = [NSLayoutConstraint constraintWithItem:self.varNames_containTipView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.varNames_containTipView.superview attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
        NSLayoutConstraint *varNames_Left = [NSLayoutConstraint constraintWithItem:self.varNames_containTipView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.varNames_containTipView.superview attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0];
        NSLayoutConstraint *varNames_Bottom = [NSLayoutConstraint constraintWithItem:self.varNames_containTipView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.varNames_containTipView.superview attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
        NSLayoutConstraint *varNames_Right = [NSLayoutConstraint constraintWithItem:self.varNames_containTipView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.varNames_containTipView.superview attribute:NSLayoutAttributeRight multiplier:1.0 constant:0];
        
        [[UIApplication sharedApplication].keyWindow addConstraints:@[varNames_Top, varNames_Left, varNames_Bottom, varNames_Right]];
        
        
        
        
        CGFloat varNames_viewW = 320;
        CGFloat varNames_viewH = 180;
        
        UIView *varNames_contentView = [[UIView alloc]init];
        varNames_contentView.layer.cornerRadius = 15;
        varNames_contentView.backgroundColor = [UIColor whiteColor];
        varNames_contentView.translatesAutoresizingMaskIntoConstraints = NO;
        [self.varNames_containTipView addSubview:varNames_contentView];
        NSLayoutConstraint *varNames_centerX = [NSLayoutConstraint constraintWithItem:varNames_contentView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.varNames_containTipView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];
        NSLayoutConstraint *varNames_centerY = [NSLayoutConstraint constraintWithItem:varNames_contentView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.varNames_containTipView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0];
        
        NSLayoutConstraint *varNames_width = [NSLayoutConstraint constraintWithItem:varNames_contentView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:varNames_viewW];
        NSLayoutConstraint *varNames_height = [NSLayoutConstraint constraintWithItem:varNames_contentView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:varNames_viewH];
        
        [self.varNames_containTipView addConstraints:@[varNames_centerX, varNames_centerY]];
        [varNames_contentView addConstraints:@[varNames_width, varNames_height]];
        
        
        
        ClassNames_NavigationBarView *varNames_naviBar = [[ClassNames_NavigationBarView alloc]init];
        varNames_naviBar.translatesAutoresizingMaskIntoConstraints = NO;
        [varNames_naviBar methodNames_setTitle:@"悬浮球关闭"];
        [varNames_contentView  addSubview:varNames_naviBar];
        
        [ClassNames_BaseViewLayout methodNames_layoutTop:varNames_naviBar methodNames_constriant:0];
        [ClassNames_BaseViewLayout methodNames_layoutLeft:varNames_naviBar methodNames_constriant:methodNames_setMargin_base()];
        [ClassNames_BaseViewLayout methodNames_layoutRight:varNames_naviBar methodNames_constriant:methodNames_setMargin_base()];
        [ClassNames_BaseViewLayout methodNames_layoutHeight:varNames_naviBar methodNames_constriant:methodNames_setNavigationBarHeight()];
        
        
        UIButton *varNames_okBtn = [[UIButton alloc]init];
        varNames_okBtn.translatesAutoresizingMaskIntoConstraints = NO;
        [varNames_contentView addSubview:varNames_okBtn];
        [varNames_okBtn setTitle:@"确定" forState:UIControlStateNormal];
        [varNames_okBtn setBackgroundColor:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()]];
        [varNames_okBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        varNames_okBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        varNames_okBtn.layer.cornerRadius = 5;
        [varNames_okBtn addTarget:self action:@selector(methodNames_commitCloseBall:) forControlEvents:UIControlEventTouchUpInside];
        
        
        CGFloat varNames_btnWidth = 60;
        [ClassNames_BaseViewLayout methodNames_layoutBottom:varNames_okBtn methodNames_constriant:methodNames_setMargin_2base()];
        [ClassNames_BaseViewLayout methodNames_layoutHeight:varNames_okBtn methodNames_constriant:methodNames_getInputView_inputView_Height()];
        [ClassNames_BaseViewLayout methodNames_layoutWidth:varNames_okBtn methodNames_constriant:varNames_btnWidth];
        [ClassNames_BaseViewLayout methodNames_layoutCenterX:varNames_okBtn methodNames_constriant:50];
        
        
        
        
        UIButton *varNames_cancelBtn = [[UIButton alloc]init];
        varNames_cancelBtn.translatesAutoresizingMaskIntoConstraints = NO;
        [varNames_contentView addSubview:varNames_cancelBtn];
        
        [varNames_cancelBtn setTitle:@"取消" forState:UIControlStateNormal];
        [varNames_cancelBtn setBackgroundColor:[UIColor whiteColor]];
        [varNames_cancelBtn setTitleColor:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()] forState:UIControlStateNormal];
        varNames_cancelBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        varNames_cancelBtn.layer.cornerRadius = 5;
        varNames_cancelBtn.layer.borderColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()].CGColor;
        varNames_cancelBtn.layer.borderWidth = 1;
        [varNames_cancelBtn addTarget:self action:@selector(methodNames_cancelCloseBall:) forControlEvents:UIControlEventTouchUpInside];
        
        [ClassNames_BaseViewLayout methodNames_layoutBottom:varNames_cancelBtn methodNames_constriant:methodNames_setMargin_2base()];
        [ClassNames_BaseViewLayout methodNames_layoutHeight:varNames_cancelBtn methodNames_constriant:methodNames_getInputView_inputView_Height()];
        [ClassNames_BaseViewLayout methodNames_layoutWidth:varNames_cancelBtn methodNames_constriant:varNames_btnWidth];
        [ClassNames_BaseViewLayout methodNames_layoutCenterX:varNames_cancelBtn methodNames_constriant:-50];
        
        
        UILabel *varNames_tipLabel = [[UILabel alloc]init];
        [varNames_contentView addSubview:varNames_tipLabel];
        varNames_tipLabel.translatesAutoresizingMaskIntoConstraints = NO;
        varNames_tipLabel.textColor = [UIColor blackColor];
        varNames_tipLabel.text = @"是否在本次登录关闭悬浮球，悬浮球重新开启需要重新登陆游戏";
        varNames_tipLabel.textAlignment = NSTextAlignmentLeft;
        varNames_tipLabel.numberOfLines = 0;
        varNames_tipLabel.font = [UIFont systemFontOfSize:15];
        
        [ClassNames_BaseViewLayout methodNames_layoutSubView1:varNames_tipLabel methodNames_attribute1:NSLayoutAttributeTop methodNames_layoutSubView2:varNames_naviBar methodNames_attribute2:NSLayoutAttributeBottom methodNames_constriant:methodNames_setMargin_base()];
        [ClassNames_BaseViewLayout methodNames_layoutLeft:varNames_tipLabel methodNames_constriant:methodNames_setMargin_2base()];
        [ClassNames_BaseViewLayout methodNames_layoutRight:varNames_tipLabel methodNames_constriant:methodNames_setMargin_2base()];
        [ClassNames_BaseViewLayout methodNames_layoutSubView1:varNames_tipLabel methodNames_attribute1:NSLayoutAttributeBottom methodNames_layoutSubView2:varNames_okBtn methodNames_attribute2:NSLayoutAttributeTop methodNames_constriant:methodNames_setMargin_base()];
}

- (void)methodNames_commitCloseBall:(UIButton *)sender {
    [self.varNames_containTipView removeFromSuperview];
    [self removeFromSuperview];
}

- (void)methodNames_cancelCloseBall:(UIButton *)sender {
    [self.varNames_containTipView removeFromSuperview];
}




#pragma mark ---------- 悬浮球点击事件
- (void)methodNames_showMenu:(UIButton *)sender {
    sender.selected = !sender.selected;
    if (sender.selected) {
        [_varNames_timer setFireDate:[NSDate distantFuture]];
        if (_varNames_isHideMenu) {
            [self methodNames_setBall:self.varNames_ballType];
        }
        self.varNames_isHideMenu = NO;
        
        _varNames_ballMenu = [methodNames_BallMenuView methodNames_showBallMenu:sender.frame subMethodNames_ballType:self.varNames_ballType subMethodNames_languageType:self.varNames_languageType];
        [[UIApplication sharedApplication].keyWindow addSubview:_varNames_ballMenu];
        
        _varNames_closeButton = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetMaxX(_varNames_ballMenu.frame)-10, CGRectGetMinY(_varNames_ballMenu.frame)-10, 20, 20)];
        [_varNames_closeButton setBackgroundImage:[self methodNames_getImage:@"image_close_round"] forState:UIControlStateNormal];
        _varNames_closeButton.layer.cornerRadius = 10;
        [_varNames_closeButton setBackgroundColor:[UIColor colorWithWhite:0.7 alpha:0.3]];
        _varNames_closeButton.hidden = YES;
        [[UIApplication sharedApplication].keyWindow addSubview:_varNames_closeButton];
        [_varNames_closeButton addTarget:self action:@selector(methodNames_closeSupenBall:) forControlEvents:UIControlEventTouchUpInside];
        
        __weak typeof(self) weakSelf = self;
        _varNames_ballMenu.methodNames_finishShowMenu = ^(NSInteger type){
            
            switch (type) {
                case 0:/// left
                {
                    [weakSelf.varNames_closeButton setFrame:CGRectMake(CGRectGetMaxX(weakSelf.varNames_ballMenu.frame)-10, CGRectGetMinY(weakSelf.varNames_ballMenu.frame)-10, 20, 20)];
                }
                    break;
                case 1:/// bottom
                {
                    [weakSelf.varNames_closeButton setFrame:CGRectMake(CGRectGetMinX(weakSelf.varNames_ballMenu.frame)-10, CGRectGetMinY(weakSelf.varNames_ballMenu.frame)-10, 20, 20)];
                }
                    break;
                case 2:/// right
                {
                    [weakSelf.varNames_closeButton setFrame:CGRectMake(CGRectGetMinX(weakSelf.varNames_ballMenu.frame)-10, CGRectGetMinY(weakSelf.varNames_ballMenu.frame)-10, 20, 20)];
                }
                    break;
                default:/// top
                {
                    [weakSelf.varNames_closeButton setFrame:CGRectMake(CGRectGetMaxX(weakSelf.varNames_ballMenu.frame)+10, CGRectGetMaxY(weakSelf.varNames_ballMenu.frame)+10, 20, 20)];
                }
                    break;
            }
            
            weakSelf.varNames_closeButton.hidden = NO;
        };
        #pragma mark ---------------------  点击悬浮球按钮事件
        _varNames_ballMenu.methodNames_clickItemMenu = ^(NSInteger index) {
            if (weakSelf.methodNames_clickBallMenu) {
                [weakSelf methodNames_showMenu:weakSelf];
                weakSelf.methodNames_clickBallMenu(index);
            }
        };
        
    } else {
        _varNames_closeButton.hidden = YES;
        [_varNames_ballMenu methodNames_hide];
        self.varNames_isHideMenu = YES;
        [_varNames_timer setFireDate:[NSDate dateWithTimeIntervalSinceNow:varNames_suspensionBallHalfHideDuration]];
    }
    [[UIApplication sharedApplication].keyWindow bringSubviewToFront:self];
}

+ (instancetype)methodNames_showSuspensionBallWithLanguageType:(NSString *)varNames_argLanguageType {
    ClassNames_SuspensionBallButton *varNames_ball = [ClassNames_SuspensionBallButton methodNames_showSuspensionBall:varNames_showBallTypeLeft subMethodNames_startRect:CGRectMake(0, 100, 60, 60)];
    varNames_ball.varNames_languageType = varNames_argLanguageType;
    return varNames_ball;
}

+ (instancetype)methodNames_showSuspensionBall:(varNames_showBallType)varNames_ballType
                      subMethodNames_startRect:(CGRect)varNames_rect {
    ClassNames_SuspensionBallButton *varNames_ball = [[ClassNames_SuspensionBallButton alloc]initWithFrame:varNames_rect];
    varNames_ball.varNames_ballType = varNames_ballType;
    [[UIApplication sharedApplication].keyWindow addSubview:varNames_ball];
    [[UIApplication sharedApplication].keyWindow bringSubviewToFront:varNames_ball];
    [varNames_ball methodNames_setBall:varNames_ballType];
    [varNames_ball.varNames_timer setFireDate:[NSDate dateWithTimeIntervalSinceNow:varNames_suspensionBallHalfHideDuration]];
    return varNames_ball;
}

-(void)dealloc {
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
        _varNames_btnWidth = 60.0;
        _varNames_btnHeight = 60.0;
        self.backgroundColor = [UIColor whiteColor];
        [self setBackgroundImage:[self methodNames_getImage:varNames_suspensionBallBackgroundImage] forState:UIControlStateNormal];
        self.layer.opacity = 0.0;
        self.layer.cornerRadius = 30.0;
        self.varNames_isHideMenu = YES;
        [self methodNames_showSuspensionBall];
        [self methodNames_deviceOrientation];
        [self addTarget:self action:@selector(methodNames_showMenu:) forControlEvents:UIControlEventTouchUpInside];
        _varNames_timer = [NSTimer timerWithTimeInterval:varNames_suspensionBallHalfHideDuration target:self selector:@selector(methodNames_alphaSuspensionBall:) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop] addTimer:_varNames_timer forMode:NSDefaultRunLoopMode];
        
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(methodNames_orientationChange:) name:UIDeviceOrientationDidChangeNotification object:nil];
    }
    return self;
}

- (void)methodNames_alphaSuspensionBall:(NSTimer *)varNames_timer {
    if (self.varNames_isHideMenu) {
        [UIView animateWithDuration:varNames_suspensionBallAnimationDuration animations:^{
            self.layer.opacity = 0.5;
            [self methodNames_halfHideSuspensionBall:self.varNames_ballType];
        } completion:^(BOOL finished) {
            if (finished) {
                [self.varNames_timer setFireDate:[NSDate distantFuture]];
            }
        }];
    }
}
- (UIImage *)methodNames_getImage:(NSString *)varNames_argImg {
    NSString *varNames_tmpPath = [[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:[NSString stringWithFormat:@"PlatFormGamesSDK.bundle"]];
    NSBundle *varNames_tmpBundle = [NSBundle bundleWithPath:varNames_tmpPath];
    NSString *varNames_imgPath = [varNames_tmpBundle pathForResource:varNames_argImg ofType:@"png"];
    UIImage *varNames_tmpImage = [UIImage imageWithContentsOfFile:varNames_imgPath];
    return varNames_tmpImage;
}



#pragma mark ---------- 悬浮球悬停的时候，半隐藏悬浮球
- (void)methodNames_halfHideSuspensionBall:(varNames_showBallType)varNames_ballType {
    switch (varNames_ballType) {
            /// 靠左边的球
        case 0:
        case 3:
        {
            if (![self methodNames_phoneTpye]) {
                /// 非 X
                [UIView animateWithDuration:varNames_suspensionBallAnimationDuration animations:^{
                    [self setFrame:CGRectMake(-CGRectGetWidth(self.frame)/2, CGRectGetMinY(self.frame), CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
                }];
            } else {
                if ([_varNames_orientation isEqualToString:varNames_orientationLeft]) {
                    /// 留海在左
                    [UIView animateWithDuration:varNames_suspensionBallAnimationDuration animations:^{
                        [self setFrame:CGRectMake(0, CGRectGetMinY(self.frame), CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
                    }];
                } else {
                    [UIView animateWithDuration:varNames_suspensionBallAnimationDuration animations:^{
                        [self setFrame:CGRectMake(-CGRectGetWidth(self.frame)/2, CGRectGetMinY(self.frame), CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
                    }];
                }
            }
        }
            break;
        case 1:
        case 2:
        {
            if (![self methodNames_phoneTpye]) {
                /// 非 X
                [UIView animateWithDuration:varNames_suspensionBallAnimationDuration animations:^{
                    [self setFrame:CGRectMake(CGRectGetWidth(self.superview.bounds) - CGRectGetWidth(self.frame)/2, CGRectGetMinY(self.frame), CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
                }];
            } else {
                if ([_varNames_orientation isEqualToString:varNames_orientationRight]) {
                    /// 留海在右
                    [UIView animateWithDuration:varNames_suspensionBallAnimationDuration animations:^{
                        [self setFrame:CGRectMake(CGRectGetWidth(self.superview.bounds) - CGRectGetWidth(self.frame)/2-25, CGRectGetMinY(self.frame), CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
                    }];
                } else {
                    [UIView animateWithDuration:varNames_suspensionBallAnimationDuration animations:^{
                        [self setFrame:CGRectMake(CGRectGetWidth(self.superview.bounds) - CGRectGetWidth(self.frame), CGRectGetMinY(self.frame), CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
                    }];
                }
            }
        }
            break;
    }
}

#pragma mark ---------- 是否为x，xr，xs
-(BOOL)methodNames_phoneTpye {
    BOOL varNames_phoneTypeX = NO;
    
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *phoneType = [NSString stringWithCString: systemInfo.machine encoding:NSASCIIStringEncoding];
    if([phoneType  isEqualToString:@"iPhone10,3"]) varNames_phoneTypeX = YES;
    
    if([phoneType  isEqualToString:@"iPhone10,6"]) varNames_phoneTypeX = YES;
    
    if([phoneType  isEqualToString:@"iPhone11,8"]) varNames_phoneTypeX = YES;
    
    if([phoneType  isEqualToString:@"iPhone11,2"]) varNames_phoneTypeX = YES;
    
    if([phoneType  isEqualToString:@"iPhone11,4"]) varNames_phoneTypeX = YES;
    
    if([phoneType  isEqualToString:@"iPhone11,6"]) varNames_phoneTypeX = YES;
    
    if([phoneType containsString:@"iPhone12"]) varNames_phoneTypeX = YES;
    /// 模拟器开始的有留海的设备
//    if ([phoneType isEqualToString:@"x86_64"]) varNames_phoneTypeX = YES;
    
    return varNames_phoneTypeX;
}

- (void)methodNames_deviceOrientation {
    UIInterfaceOrientation varNames_orientation = [UIApplication sharedApplication].statusBarOrientation;
    if (varNames_orientation == UIInterfaceOrientationLandscapeLeft) {
        _varNames_orientation = varNames_orientationRight;
    }
    if (varNames_orientation == UIInterfaceOrientationLandscapeRight) {
        _varNames_orientation = varNames_orientationLeft;
    }
}

- (void)methodNames_orientationChange:(NSNotification *)noti {
    UIDeviceOrientation varNames_orientation = [UIDevice currentDevice].orientation;
    switch (varNames_orientation){
        case UIDeviceOrientationPortrait:
            break;
        case UIDeviceOrientationLandscapeLeft:
            _varNames_orientation = varNames_orientationLeft;
            break;
        case UIDeviceOrientationPortraitUpsideDown:
            break;
        case UIDeviceOrientationLandscapeRight:
            _varNames_orientation = varNames_orientationRight;
            break;
        default:
            break;
    }
    [self methodNames_halfHideSuspensionBall:self.varNames_ballType];
}

#pragma mark ---------- 停止移动悬浮球的时候，设置悬浮球的位置
- (void)methodNames_setBall:(varNames_showBallType)varNames_ballType {
    _varNames_ballType = varNames_ballType;
    CGFloat varNames_Y = CGRectGetMinY(self.frame);
    varNames_Y = varNames_Y > 44 ? varNames_Y:44;
    varNames_Y = varNames_Y > (CGRectGetHeight(self.superview.frame)-CGRectGetHeight(self.frame))-44?(CGRectGetHeight(self.superview.frame)-CGRectGetHeight(self.frame))-44: varNames_Y;
    
    switch (varNames_ballType) {
            /// 靠左边
        case 0:
        case 3:
        {
            
            if ([self methodNames_phoneTpye]) {
                /// 留海屏
                if ([self.varNames_orientation isEqualToString:varNames_orientationLeft]) {
                               [UIView animateWithDuration:varNames_suspensionBallAnimationDuration animations:^{
                                   [self setFrame:CGRectMake(25, varNames_Y, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
                               }];
                           } else {
                               [UIView animateWithDuration:varNames_suspensionBallAnimationDuration animations:^{
                                   [self setFrame:CGRectMake(5, varNames_Y, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
                               }];
                           }
            } else {
                /// 非留海屏
                [UIView animateWithDuration:varNames_suspensionBallAnimationDuration animations:^{
                    [self setFrame:CGRectMake(5, varNames_Y, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
                }];
            }
        }
            break;
            /// 靠右边
        case 1:
        case 2:
        {
            if ([self methodNames_phoneTpye]) {
                /// 留海屏
                NSLog(@"留海屏");
                if ([self.varNames_orientation isEqualToString:varNames_orientationRight]) {
                    [UIView animateWithDuration:varNames_suspensionBallAnimationDuration animations:^{
                        [self setFrame:CGRectMake(CGRectGetWidth(self.superview.bounds) - CGRectGetWidth(self.frame) - 30, varNames_Y, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
                    }];
                } else {
                    [UIView animateWithDuration:varNames_suspensionBallAnimationDuration animations:^{
                        [self setFrame:CGRectMake(CGRectGetWidth(self.superview.bounds) - CGRectGetWidth(self.frame), varNames_Y, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
                    }];
                }
            } else {
                /// 非留海屏
                NSLog(@"非留海屏");
                [UIView animateWithDuration:varNames_suspensionBallAnimationDuration animations:^{
                    [self setFrame:CGRectMake(CGRectGetWidth(self.superview.bounds) - CGRectGetWidth(self.frame), varNames_Y, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
                }];
            }
            
            
            
        }
            break;
    }
}



- (void)methodNames_showSuspensionBall {
    self.hidden = NO;
    [UIView animateWithDuration:varNames_suspensionBallAnimationDuration animations:^{
        self.layer.opacity = 1.0;
    }];
}

- (void)methodNames_hideSuspensionBall {
    self.hidden = YES;
    [self removeFromSuperview];
}
/// 点击悬浮球外部收起悬浮球
- (void)methodNames_touchOutSidePoint:(CGPoint)varNames_argPoint {
    CGFloat pointX = varNames_argPoint.x;
    CGFloat pointY = varNames_argPoint.y;
    CGFloat btnX = CGRectGetMaxX(self.frame);
    CGFloat btnWidth = 60.0;
    CGFloat btnMargin = 5.0;
    NSLog(@"第 %d  个", (int)floor(pointX/btnWidth));
    // 先判断是否点击了关闭按钮
    
    
    
    
    // 从左往右计算，悬浮球为0，如果pointY小于0的，或者大于60的，index都==0
    int index = (int)floor(pointX/btnWidth);
    if (pointX > 240 || pointY < 0 || pointY > 60) {
        index = 0;
        if (self.methodNames_clickBallMenu) {
            self.methodNames_clickBallMenu(index);
        }
    }
    if (pointY > 0 && pointY < btnWidth * 2 + btnMargin * 2) {
        if (pointX > btnX + btnMargin && pointX < btnX + btnMargin + btnWidth) {
            if (self.methodNames_clickBallMenu) {
                self.methodNames_clickBallMenu(1);
            }
        }
        if (pointX > -55 && pointX < -5) {
            if (self.methodNames_clickBallMenu) {
                self.methodNames_clickBallMenu(1);
            }
        }
        if (pointX >  btnX + btnMargin*2 + btnWidth && pointX <  btnX + btnMargin*2 + btnWidth*2) {
            if (self.methodNames_clickBallMenu) {
                self.methodNames_clickBallMenu(0);
            }
        }
        if (pointX > -110 && pointX < -60) {
            if (self.methodNames_clickBallMenu) {
                self.methodNames_clickBallMenu(0);
            }
        }
    }
}



#pragma mark ---------- super privateMethod

-(void)removeFromSuperview {
    if (self.varNames_ballMenu) {
        [self.varNames_ballMenu removeFromSuperview];
    }
    [super removeFromSuperview];
}

//-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
//    UIView *view = [super hitTest:point withEvent:event];
//    if (!view) {
//        if (!self.varNames_isHideMenu) {
//            [self methodNames_touchOutSidePoint:point];
//            view = self;
//            [self methodNames_showMenu:(ClassNames_SuspensionBallButton *)view];
//            [_varNames_timer setFireDate:[NSDate dateWithTimeIntervalSinceNow:varNames_suspensionBallHalfHideDuration]];
//        }
//    }
//    return view;
//}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    UITouch *varNames_touch = [touches anyObject];
    _varNames_touchPoint = [varNames_touch locationInView:self];
    _varNames_touchBtnX = self.frame.origin.x;
    _varNames_touchBtnY = self.frame.origin.y;
    [UIView animateWithDuration:varNames_suspensionBallAnimationDuration animations:^{
        self.layer.opacity = 1.0;
    }];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if (self.selected) {
        return;
    }
    UITouch *varNames_touch = [touches anyObject];
    CGPoint varNames_currentPoint = [varNames_touch locationInView:self];
    
    CGFloat varNames_offsetX = varNames_currentPoint.x - _varNames_touchPoint.x;
    CGFloat varNames_offsetY = varNames_currentPoint.y - _varNames_touchPoint.y;
    
    CGFloat varNames_centerX = self.center.x + varNames_offsetX;
    CGFloat varNames_centerY = self.center.y + varNames_offsetY;

    self.center = CGPointMake(varNames_centerX, varNames_centerY);
    
    CGFloat varNames_superWidth = self.superview.frame.size.width;
    CGFloat varNames_superHeight = self.superview.frame.size.height;
    CGFloat varNames_btnX = self.frame.origin.x;
    CGFloat varNames_btnY = self.frame.origin.y;
    CGFloat varNames_btnW = self.frame.size.width;
    CGFloat varNames_btnH = self.frame.size.height;
    
    if (varNames_btnX > varNames_superWidth){
        CGFloat varNames_centerX = varNames_superWidth - varNames_btnW/2;
        self.center = CGPointMake(varNames_centerX, varNames_centerY);
    } else if (varNames_btnX < 0){
        CGFloat varNames_centerX = varNames_btnW * 0.3;
        self.center = CGPointMake(varNames_centerX, varNames_centerY);
    }

    if (varNames_btnY <= 0){
        varNames_centerY = varNames_btnH * 0.7;
        self.center = CGPointMake(varNames_centerX, varNames_centerY);
    } else if (varNames_btnY > varNames_superHeight){
        CGFloat y = varNames_superHeight - varNames_btnH * 0.3;
        self.center = CGPointMake(varNames_centerX, y);
    }
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    CGFloat varNames_superWidth = self.superview.frame.size.width;
    CGFloat varNames_btnX = self.frame.origin.x;
    CGFloat varNames_btnY = self.frame.origin.y;
    
    CGFloat varNames_minDistance = 2;
    
    BOOL varNames_isOverX = fabs(varNames_btnX - _varNames_touchBtnX) > varNames_minDistance;
    BOOL varNames_isOverY = fabs(varNames_btnY - _varNames_touchBtnY) > varNames_minDistance;
    
    if (varNames_isOverX || varNames_isOverY) {
        [self touchesCancelled:touches withEvent:event];
        if (varNames_btnX < varNames_superWidth/2) {
            _varNames_ballType = varNames_showBallTypeLeft;
        } else {
            _varNames_ballType = varNames_showBallTypeRight;
        }
        
        [self methodNames_setBall:_varNames_ballType];
        [_varNames_timer setFireDate:[NSDate dateWithTimeIntervalSinceNow:varNames_suspensionBallHalfHideDuration]];
    } else {
        [super touchesEnded:touches withEvent:event];
    }
}

@end
