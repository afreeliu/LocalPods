

#import "ClassNames_NavigationBarView.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_Color.h"
#import "ClassNames_itemButton.h"

#import "ClassNames_Color.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_RegularMatch.h"
#import "ClassNames_ViewTool.h"
#import "ClassNames_AnimateTool.h"
#import "ClassNames_SecurityTool.h"


@interface ClassNames_NavigationBarView ()


/// 标题
@property (nonatomic, readwrite, copy) NSString *varNames_title;

@property (nonatomic, readwrite, strong) UILabel *varNames_titleLabel;

@property (nonatomic, readwrite, strong) UIView *varNames_lineView;
 
@property (nonatomic, readwrite, strong) UIButton *varNames_leftButton;

@property (nonatomic, readwrite, copy) void (^methodNames_leftBtnBlock)(void);

@property (nonatomic, readwrite, strong) UIButton *varNames_rightButton;

@property (nonatomic, readwrite, copy) void (^methodNames_rightBtnBlock)(void);

@property (nonatomic, readwrite, assign) CGFloat varNames_leftBtnWidth;
@property (nonatomic, readwrite, assign) CGFloat varNames_leftBtnHeight;

@property (nonatomic, readwrite, assign) CGFloat varNames_rightBtnWidth;
@property (nonatomic, readwrite, assign) CGFloat varNames_rightBtnHeight;

@end


@implementation ClassNames_NavigationBarView

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self methodNames_setUI];
    }
    return self;
}

-(instancetype)init {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self methodNames_setUI];
    }
    return self;
}

-(void)methodNames_setUI {
    UILabel *varNames_titleLabel = [[UILabel alloc]init];
    varNames_titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_titleLabel.font = [UIFont boldSystemFontOfSize:17];
    varNames_titleLabel.textColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()];
    varNames_titleLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:varNames_titleLabel];
    self.varNames_titleLabel = varNames_titleLabel;
    
    UIView *varNames_lineView = [[UIView alloc]init];
    varNames_lineView.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_lineView.backgroundColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()];
    [self addSubview:varNames_lineView];
    self.varNames_lineView = varNames_lineView;
    
    UIButton *varNames_leftButton = [[UIButton alloc]init];
    varNames_leftButton.hidden = YES;
    varNames_leftButton.translatesAutoresizingMaskIntoConstraints = NO;
    [varNames_leftButton addTarget:self action:@selector(methodNames_leftBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    self.varNames_leftButton = varNames_leftButton;
    [self addSubview:varNames_leftButton];
    
    
    UIButton *varNames_rightButton = [[UIButton alloc]init];
    varNames_rightButton.hidden = YES;
    varNames_rightButton.titleLabel.font = [UIFont boldSystemFontOfSize:14];
    [varNames_rightButton setTitleColor:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_titleFontColor_config()] forState:UIControlStateNormal];
    varNames_rightButton.translatesAutoresizingMaskIntoConstraints = NO;
    [varNames_rightButton addTarget:self action:@selector(methodNames_rightBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    self.varNames_rightButton = varNames_rightButton;
    [self addSubview:varNames_rightButton];
    
    
}

- (void)methodNames_layoutSubView {
    
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_titleLabel methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_titleLabel methodNames_constriant:0];
    
    
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_lineView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_lineView methodNames_constriant:8];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_lineView methodNames_constriant:8];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_lineView methodNames_constriant:3];
    
    
    if (!self.varNames_rightButton.hidden) {
        [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_rightButton methodNames_constriant:0];
        [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_rightButton methodNames_constriant:8];
        [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_rightButton methodNames_constriant:self.varNames_rightBtnWidth];
        [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_rightButton methodNames_constriant:self.varNames_rightBtnHeight];
    }
    
    if (!self.varNames_leftButton.hidden) {
        [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_leftButton methodNames_constriant:0];
        [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_leftButton methodNames_constriant:8];
        [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_leftButton methodNames_constriant:self.varNames_leftBtnWidth];
        [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_leftButton methodNames_constriant:self.varNames_leftBtnHeight];
    }
    
}

- (void)methodNames_setTitle:(NSString *)title{
    
    self.varNames_titleLabel.text = title;
    [self methodNames_layoutSubView];
}

- (void)methodNames_setTitle:(NSString *)title leftButtonImage:(NSString *)varNames_image lefttitle:(NSString *)varNames_tmpTitle btnAction:(void(^)(void))varNames_block {
    
    self.varNames_titleLabel.text = title;
    self.varNames_leftBtnWidth = 50;
    self.varNames_leftBtnHeight = 35;
    self.varNames_leftButton.hidden = NO;
    self.methodNames_leftBtnBlock = varNames_block;
    if (varNames_image && varNames_image.length) {
        
        UIImage *varNames_img = methodNames_getImage(varNames_image);
        self.varNames_leftBtnWidth = varNames_img.size.width/2.0;
        self.varNames_leftBtnHeight = varNames_img.size.height/2.0;
        [self.varNames_leftButton setBackgroundImage:varNames_img forState:UIControlStateNormal];
    }
    [self.varNames_leftButton setTitle:varNames_tmpTitle forState:UIControlStateNormal];
    [self methodNames_layoutSubView];
}

- (void)methodNames_setTitle:(NSString *)title rightButtonImage:(NSString *)varNames_image rightTitle:(NSString *)varNames_tmpTitle btnAction:(void(^)(void))varNames_block {
    self.varNames_titleLabel.text = title;
    self.varNames_rightBtnWidth = 50;
    self.varNames_rightBtnHeight = 35;
    self.varNames_rightButton.hidden = NO;
    self.methodNames_rightBtnBlock = varNames_block;
    if (varNames_image && varNames_image.length) {
        
        UIImage *varNames_img = methodNames_getImage(varNames_image);
        self.varNames_rightBtnWidth = varNames_img.size.width/2.0;
        self.varNames_rightBtnHeight = varNames_img.size.height/2.0;
        
        [self.varNames_rightButton setBackgroundImage:varNames_img forState:UIControlStateNormal];
    }
    [self.varNames_rightButton setTitle:varNames_tmpTitle forState:UIControlStateNormal];
    [self methodNames_layoutSubView];
}


- (void)methodNames_leftBtnAction:(UIButton *)sender {
    if (self.methodNames_leftBtnBlock) {
        self.methodNames_leftBtnBlock();
    }
}

- (void)methodNames_rightBtnAction:(UIButton *)sender {
    if (self.methodNames_rightBtnBlock) {
        self.methodNames_rightBtnBlock();
    }
}





@end
