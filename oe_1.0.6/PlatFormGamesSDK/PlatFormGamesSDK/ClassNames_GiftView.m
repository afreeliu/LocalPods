//
//  ClassNames_GiftView.m
//  PlatFormGamesSDK
//
//  Created by lufee on 2022/8/23.
//  Copyright © 2022 TB. All rights reserved.
//

#import "ClassNames_GiftView.h"
#import "ClassNames_NavigationBarView.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_Color.h"
#import "ClassNames_DefaultThemeConfigure.h"
@interface ClassNames_GiftView()
@property (nonatomic, readwrite, strong) ClassNames_NavigationBarView *varNames_naviView;

@property (nonatomic, readwrite, strong) UILabel *varNames_contentLabel;

@property (nonatomic, readwrite, assign) CGFloat varNames_topMarginValue;

@property (nonatomic, readwrite, strong) UIStackView *varNames_stackView;

@property (nonatomic, readwrite, strong) UIView *varNames_leftView;
@property (nonatomic, readwrite, strong) UILabel *varNames_lwxNameLabel;
@property (nonatomic, readwrite, strong) UILabel *varNames_lwxIdLabel;
@property (nonatomic, readwrite, strong) UIButton *varNames_lwxCopyButton;

@property (nonatomic, readwrite, strong) UIView *varNames_rightView;
@property (nonatomic, readwrite, strong) UIImageView *varNames_rcodeImageView;
@property (nonatomic, readwrite, strong) UIButton *varNames_rcodeCopyButton;


@end

@implementation ClassNames_GiftView

+ (instancetype)methodNames_createGiftView {
    ClassNames_GiftView *varNames_tmpGiftView = [[ClassNames_GiftView alloc]init];
    varNames_tmpGiftView.translatesAutoresizingMaskIntoConstraints = NO;
    return varNames_tmpGiftView;
}

-(instancetype)init {
    self = [super init];
    if (self) {
        self.layer.cornerRadius = 15;
        self.backgroundColor = [UIColor whiteColor];
        [self methodNames_createUI];
    }
    return self;
}

- (void)methodNames_createUI {
    
    [self methodNames_createNavi];
    
    [self methodNames_createContentView];
    
    [self methodNames_createStackView];
    
    [self methodNames_layoutSubViews];
    
}
- (void)methodNames_createNavi {
    __weak typeof(self) weakSelf = self;
    ClassNames_NavigationBarView *varNames_tmpNaviView = [[ClassNames_NavigationBarView alloc]init];
    varNames_tmpNaviView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [varNames_tmpNaviView methodNames_setTitle:@"礼包"];
    [varNames_tmpNaviView methodNames_setRightButtonImage:@"image_close" rightTitle:@"" btnAction:^{
        if (weakSelf.methodNames_closeBlock) {
            weakSelf.methodNames_closeBlock();
            self.hidden = YES;
            [self removeFromSuperview];
        }
    }];
    self.varNames_naviView = varNames_tmpNaviView;
    [self addSubview:varNames_tmpNaviView];
}

- (void)methodNames_createContentView {
    
    UILabel *varNames_tmpLabel = [[UILabel alloc]init];
    varNames_tmpLabel.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpLabel.textColor = [UIColor blackColor];
    varNames_tmpLabel.textAlignment = NSTextAlignmentLeft;
    varNames_tmpLabel.numberOfLines = 0;
    varNames_tmpLabel.font = [UIFont systemFontOfSize:15];
    
    self.varNames_contentLabel = varNames_tmpLabel;
    [self addSubview:varNames_tmpLabel];
    
}

- (void)methodNames_createStackView {
    self.varNames_stackView = [[UIStackView alloc]init];
    self.varNames_stackView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_stackView.distribution = UIStackViewDistributionFillEqually;
    self.varNames_stackView.axis = UILayoutConstraintAxisHorizontal;
    self.varNames_stackView.spacing = methodNames_setMargin_base();
    [self addSubview:self.varNames_stackView];
    
//    [self methodNames_createStackViewLeftItem];
//    [self methodNames_createStackViewRightItem];
}

- (void)methodNames_createStackViewLeftItem {
    self.varNames_leftView = [UIView alloc];
    
    self.varNames_lwxNameLabel = [[UILabel alloc]init];
    self.varNames_lwxNameLabel.numberOfLines = 2;
    self.varNames_lwxNameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_lwxNameLabel.textAlignment = NSTextAlignmentCenter;
    self.varNames_lwxNameLabel.textColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_fillColor_config()];
    self.varNames_lwxNameLabel.font = [UIFont systemFontOfSize:12];
    self.varNames_lwxNameLabel.text = methodNames_getServerWchatName();
    
    [self.varNames_leftView addSubview:self.varNames_lwxNameLabel];
    
    self.varNames_lwxIdLabel = [[UILabel alloc]init];
    self.varNames_lwxIdLabel.numberOfLines = 2;
    self.varNames_lwxIdLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_lwxIdLabel.textAlignment = NSTextAlignmentCenter;
    self.varNames_lwxIdLabel.textColor = [UIColor redColor];
    self.varNames_lwxIdLabel.font = [UIFont systemFontOfSize:12];
    self.varNames_lwxIdLabel.text = methodNames_getServerWchatNumber();
    
    [self.varNames_leftView addSubview:self.varNames_lwxNameLabel];
    
    self.varNames_lwxCopyButton = [[UIButton alloc]init];
    self.varNames_lwxCopyButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.varNames_lwxCopyButton setTitle:@"复制号码" forState:UIControlStateNormal];
    [self.varNames_lwxCopyButton setTitleColor:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()] forState:UIControlStateNormal];
    self.varNames_lwxCopyButton.layer.borderColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()].CGColor;
    self.varNames_lwxCopyButton.layer.cornerRadius = 5;
    [self.varNames_lwxCopyButton addTarget:self action:@selector(methodNames_copyWXNumberAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.varNames_leftView addSubview:self.varNames_lwxCopyButton];
    
    [self.varNames_stackView addArrangedSubview:self.varNames_leftView];
    
}

- (void)methodNames_copyWXNumberAction:(UIButton *)sender {
    
}

- (void)methodNames_createStackViewRightItem {
    self.varNames_rightView = [UIView alloc];
    
    self.varNames_rcodeImageView = [[UIImageView alloc]init];
    self.varNames_rcodeImageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.varNames_rcodeImageView.image = [UIImage imageWithData:methodNames_getServerCodeData()];
    
    
    self.varNames_rcodeCopyButton = [[UIButton alloc]init];
    self.varNames_rcodeCopyButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.varNames_rcodeCopyButton setTitle:@"保存二维码" forState:UIControlStateNormal];
    [self.varNames_rcodeCopyButton setTitleColor:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()] forState:UIControlStateNormal];
    self.varNames_rcodeCopyButton.layer.borderColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()].CGColor;
    self.varNames_rcodeCopyButton.layer.cornerRadius = 5;
    [self.varNames_rcodeCopyButton addTarget:self action:@selector(methodNames_saveCodeAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.varNames_rightView addSubview:self.varNames_lwxCopyButton];
    
    [self.varNames_stackView addArrangedSubview:self.varNames_rightView];
}

- (void)methodNames_saveCodeAction:(UIButton *)sender {
    
}

- (void)methodNames_layoutSubViews {
    
    self.varNames_topMarginValue = 0;
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_naviView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_naviView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_naviView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_naviView methodNames_constriant:methodNames_setNavigationBarHeight()];
    
    self.varNames_topMarginValue += methodNames_setNavigationBarHeight();
    self.varNames_topMarginValue += methodNames_setMargin_2base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_contentLabel methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_contentLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_contentLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_contentLabel methodNames_constriant:50];
    
    self.varNames_topMarginValue += 50;
    self.varNames_topMarginValue += methodNames_setMargin_2base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_contentLabel methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_contentLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_contentLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_contentLabel methodNames_constriant:methodNames_setMargin_base()];
    
    
    
//    [ClassNames_BaseViewLayout methodNames_layoutSubView1:self.varNames_lwxNameLabel methodNames_attribute1:NSLayoutAttributeBottom methodNames_layoutSubView2:self.varNames_leftView methodNames_attribute2:NSLayoutAttributeCenterY methodNames_constriant:0];
//    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_lwxNameLabel methodNames_constriant:0];
//    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_lwxNameLabel methodNames_constriant:0];
//    
//    [ClassNames_BaseViewLayout methodNames_layoutSubView1:self.varNames_lwxIdLabel methodNames_attribute1:NSLayoutAttributeTop methodNames_layoutSubView2:self.varNames_leftView methodNames_attribute2:NSLayoutAttributeCenterY methodNames_constriant:0];
//    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_lwxIdLabel methodNames_constriant:0];
//    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_lwxIdLabel methodNames_constriant:0];
//    
//    
//    
//    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_lwxCopyButton methodNames_constriant:0];
//    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_lwxCopyButton methodNames_constriant:70];
//    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_lwxCopyButton methodNames_constriant:32];
//    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_lwxCopyButton methodNames_constriant:0];
//    
//    
//    
//    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_rcodeImageView methodNames_constriant:-methodNames_setMargin_base()];
//    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_rcodeImageView methodNames_constriant:70];
//    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_rcodeImageView methodNames_constriant:70];
//    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_rcodeImageView methodNames_constriant:0];
//    
//    
//    
//    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_rcodeCopyButton methodNames_constriant:0];
//    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_rcodeCopyButton methodNames_constriant:87];
//    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_rcodeCopyButton methodNames_constriant:32];
//    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_rcodeCopyButton methodNames_constriant:0];
}


@end

