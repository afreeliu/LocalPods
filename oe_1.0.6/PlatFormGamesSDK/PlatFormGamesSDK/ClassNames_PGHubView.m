

#import "ClassNames_PGHubView.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_itemButton.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_Color.h"


@interface ClassNames_PGHubView ()

// hudview 显示的类型
@property (nonatomic, readwrite, assign) NSInteger varNames_type;

@property (nonatomic, readwrite, strong) UIView *varNames_hubView;

@property (nonatomic, readwrite, strong) UILabel *varNames_titleLabel;

/// loading
@property (nonatomic, readwrite, strong) UIActivityIndicatorView *varNames_indicatorView;

/// error
@property (nonatomic, readwrite, strong) ClassNames_itemButton *varNames_errBtn;

/// success
@property (nonatomic, readwrite, strong) ClassNames_itemButton *varNames_successBtn;

// 只显示文字的时候计算文字的高度;其中文字的hud宽度由 methodNames_getDefault_mainWidth()
@property (nonatomic, readwrite, assign) CGFloat varNames_textWidthConstant;
@property (nonatomic, readwrite, assign) CGFloat varNames_textHeightConstant;
@end

@implementation ClassNames_PGHubView

#pragma mark ---------- public methodNames

+ (instancetype)methodNames_showTip:(NSString *)tip {
    return [self methodNames_showWithTitle:tip hubType:3];
}

+ (instancetype)methodNames_showErrorMessage:(NSString *)err {
    return [self methodNames_showWithTitle:err hubType:1];
}

+ (instancetype)methodNames_showSuccessMessage:(NSString *)success {
    return [self methodNames_showWithTitle:success hubType:2];
}

+ (instancetype)methodNames_showIndicatorWithTitlte:(NSString *)title {
    return [self methodNames_showWithTitle:title hubType:0];
}

+ (instancetype)methodNames_showIndicator {
    
    return [self methodNames_showWithTitle:@"" hubType:0];
}

+ (instancetype)methodNames_showWithTitle:(NSString *)title hubType:(NSInteger)type{
    
    NSAssert([title isKindOfClass:NSString.class], @"title must be string");
    UIView *varNames_tmpview = methodNames_getCurrentWindow();
    ClassNames_PGHubView *varNames_tmphubView = [[self alloc]initWithFrame:varNames_tmpview.bounds];
    varNames_tmphubView.varNames_type = type;
    if (title && title.length) {
        varNames_tmphubView.varNames_titleLabel.text = title;
        varNames_tmphubView.varNames_titleLabel.hidden = NO;
    } else {
        varNames_tmphubView.varNames_titleLabel.hidden = YES;
    }
    
    switch (type) {
        case 0:
        {
            [varNames_tmphubView.varNames_indicatorView startAnimating];
        }
            break;
        case 1:
        {
            varNames_tmphubView.varNames_errBtn.hidden = NO;
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [ClassNames_PGHubView methodNames_hide];
            });
        }
            break;
        case 2:
        {
            varNames_tmphubView.varNames_successBtn.hidden = NO;
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [ClassNames_PGHubView methodNames_hide];
            });
        }
            break;
        case 3: // 没有图标，只显示文字
        {
            CGRect varNames_titleRect = [title boundingRectWithSize:CGSizeMake(methodNames_getMainViewWidth(), methodNames_getMainViewHeight()) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:methodNames_getHubTitleFont()]} context:nil];
            varNames_tmphubView.varNames_textWidthConstant = CGRectGetWidth(varNames_titleRect);
            varNames_tmphubView.varNames_textHeightConstant = CGRectGetHeight(varNames_titleRect);
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [ClassNames_PGHubView methodNames_hide];
            });
        }
            break;
        default:
            break;
    }
    [varNames_tmpview addSubview:varNames_tmphubView];
    [varNames_tmphubView setNeedsLayout];
    return varNames_tmphubView;
}


+ (instancetype)methodNames_showWithTitle:(NSString *)title {
    UIView *varNames_tmpview = methodNames_getCurrentWindow();
    ClassNames_PGHubView *varNames_tmphubView = [[self alloc]initWithFrame:varNames_tmpview.bounds];
    if (title) {
        varNames_tmphubView.varNames_titleLabel.text = title;
    }
    
    [varNames_tmpview addSubview:varNames_tmphubView];
    [varNames_tmphubView setNeedsLayout];
    return varNames_tmphubView;
}

+ (instancetype)methodNames_showHubView {
    return [ClassNames_PGHubView methodNames_showWithTitle:nil];
}

+ (void)methodNames_hide {
    UIView *varNames_tmpview = methodNames_getCurrentWindow();
    NSEnumerator *varNames_tmpsubviewsEnum = [varNames_tmpview.subviews reverseObjectEnumerator];
    for (UIView *varNames_tmpsubview in varNames_tmpsubviewsEnum) {
        if ([varNames_tmpsubview isKindOfClass:self]) {
            varNames_tmpsubview.hidden = YES;
            [varNames_tmpsubview removeFromSuperview];
            
        }
    }
}

#pragma mark --------------------------------------------------------------------------------------------------------------


-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.varNames_type = NSIntegerMax;
        [self methodNames_setUI];
        [self methodNames_layoutSubViews];
    }
    return self;
}

- (void)methodNames_setUI {
    UIView *varNames_tmphubView = [[UIView alloc]init];
    varNames_tmphubView.backgroundColor = [UIColor colorWithWhite:0.1 alpha:0.9];
    varNames_tmphubView.layer.cornerRadius = methodNames_getHubViewcornerRadius();
    varNames_tmphubView.clipsToBounds = YES;
    varNames_tmphubView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_hubView = varNames_tmphubView;
    
    UIActivityIndicatorView *varNames_tmpindicatorView = [[UIActivityIndicatorView alloc]init];
    varNames_tmpindicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhite;
    varNames_tmpindicatorView.hidesWhenStopped = YES;
    varNames_tmpindicatorView.translatesAutoresizingMaskIntoConstraints = NO;
    [varNames_tmpindicatorView setTintColor:[ClassNames_Color methodNames_colorWithHexString:methodNames_getHubLoadingColor()]];
    [varNames_tmpindicatorView stopAnimating];
    self.varNames_indicatorView = varNames_tmpindicatorView;
    
    ClassNames_itemButton *varNames_tmperrBtn = [ClassNames_itemButton methodNames_setItemButton:varNames_ItemButtonTypeError];
    varNames_tmperrBtn.hidden = YES;
    varNames_tmperrBtn.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_errBtn = varNames_tmperrBtn;
    
    ClassNames_itemButton *varNames_tmpsuccessBtn = [ClassNames_itemButton methodNames_setItemButton:varNames_ItemButtonTypeRight];
    varNames_tmpsuccessBtn.hidden = YES;
    varNames_tmpsuccessBtn.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_successBtn = varNames_tmpsuccessBtn;
    
    
    UILabel *varNames_tmptitleLabel = [[UILabel alloc]init];
    varNames_tmptitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmptitleLabel.font = [UIFont systemFontOfSize:methodNames_getHubTitleFont()];
    varNames_tmptitleLabel.textColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getHubLabelTextColor()];
    varNames_tmptitleLabel.textAlignment = NSTextAlignmentCenter;
//    varNames_tmptitleLabel.adjustsFontSizeToFitWidth = YES;
    varNames_tmptitleLabel.numberOfLines = 0;
    self.varNames_titleLabel = varNames_tmptitleLabel;
    
    [varNames_tmphubView addSubview:varNames_tmpindicatorView];
    [varNames_tmphubView addSubview:varNames_tmperrBtn];
    [varNames_tmphubView addSubview:varNames_tmpsuccessBtn];
    [varNames_tmphubView addSubview:varNames_tmptitleLabel];
    [self addSubview:varNames_tmphubView];
}

- (void)methodNames_layoutSubViews {
    
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_hubView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_hubView methodNames_constriant:0];

    switch (self.varNames_type) {
        case 0:
        {
            [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_hubView methodNames_constriant:methodNames_getHubViewWidthHeight()];
            [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_hubView methodNames_constriant:methodNames_getHubViewWidthHeight()];
        }
            break;
        case 1:
        {
            [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_hubView methodNames_constriant:methodNames_getHubViewWidthHeight()];
            [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_hubView methodNames_constriant:methodNames_getHubViewWidthHeight()];
        }
            break;
        case 2:
        {
            [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_hubView methodNames_constriant:methodNames_getHubViewWidthHeight()];
            [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_hubView methodNames_constriant:methodNames_getHubViewWidthHeight()];
        }
            break;
        case 3:
        {
            [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_hubView methodNames_constriant:self.varNames_textWidthConstant + methodNames_setMargin_3base()];
            [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_hubView methodNames_constriant:self.varNames_textHeightConstant +  methodNames_setMargin_3base()];
        }
            break;
        default:
            break;
    }
    
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_titleLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_titleLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_titleLabel methodNames_constriant:methodNames_setMargin_base()];
    
}

- (void)methodNames_layoutErrorBtn {
    if (self.varNames_type == 1) {
        [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_errBtn methodNames_constriant:0];
        [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_errBtn methodNames_constriant:methodNames_setMargin_base()];
        [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_errBtn methodNames_constriant:methodNames_getErrSuccessBtnWidthHeight()];
    }
    
    
}

-(void)methodNames_layoutSuccessBtn {
    if (self.varNames_type == 2) {
        [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_successBtn methodNames_constriant:0];
        [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_successBtn methodNames_constriant:methodNames_setMargin_base()];
        [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_successBtn methodNames_constriant:methodNames_getErrSuccessBtnWidthHeight()];
    }
    
}

- (void)methodNames_layoutIndicatorView {
    if (self.varNames_type == 0) {
        [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_indicatorView methodNames_constriant:0];
        [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_indicatorView methodNames_constriant:methodNames_setMargin_base()];
        [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_indicatorView methodNames_constriant:methodNames_getErrSuccessBtnWidthHeight()];
    }
    
}





#pragma mark ---------- Override
-(void)layoutSubviews {
    [super layoutSubviews];
    [self methodNames_layoutSubViews];
    [self methodNames_layoutErrorBtn];
    [self methodNames_layoutSuccessBtn];
    [self methodNames_layoutIndicatorView];
}

@end

