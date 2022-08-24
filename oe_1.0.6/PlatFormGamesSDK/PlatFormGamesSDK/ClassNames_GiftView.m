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
#import "ClassNames_PGHubView.h"
@interface ClassNames_GiftView()
@property (nonatomic, readwrite, strong) ClassNames_NavigationBarView *varNames_naviView;

@property (nonatomic, readwrite, strong) UILabel *varNames_contentLabel;

@property (nonatomic, readwrite, assign) CGFloat varNames_topMarginValue;

@property (nonatomic, readwrite, strong) UIStackView *varNames_stackView;

@property (nonatomic, readwrite, strong) UIView *varNames_leftView;
@property (nonatomic, readwrite, strong) UILabel *varNames_lwxNameLabel;
@property (nonatomic, readwrite, strong) UILabel *varNames_lwxIdLabel;
@property (nonatomic, readwrite, strong) UIButton *varNames_lwxCopyButton;


@property (nonatomic, readwrite, strong) UIView *varNames_centerLineView;

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
    
    [self methodNames_createCenterLineView];
    
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
    
    self.varNames_contentLabel = [[UILabel alloc]init];
    self.varNames_contentLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_contentLabel.textColor = [UIColor blackColor];
    self.varNames_contentLabel.textAlignment = NSTextAlignmentCenter;
    self.varNames_contentLabel.numberOfLines = 0;
    self.varNames_contentLabel.font = [UIFont systemFontOfSize:15];
    self.varNames_contentLabel.text = @"关注公众号即可领取限量礼包";
    [self addSubview:self.varNames_contentLabel];
    
}

- (void)methodNames_createStackView {
    self.varNames_stackView = [[UIStackView alloc]init];
    self.varNames_stackView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_stackView.distribution = UIStackViewDistributionFillEqually;
    self.varNames_stackView.axis = UILayoutConstraintAxisHorizontal;
    self.varNames_stackView.spacing = methodNames_setMargin_base();
    [self addSubview:self.varNames_stackView];
    
    [self methodNames_createStackViewLeftItem];
    [self methodNames_createStackViewRightItem];
    
    
    
   
}

- (void)methodNames_createStackViewLeftItem {
    self.varNames_leftView = [[UIView alloc]init];
    self.varNames_leftView.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.varNames_lwxNameLabel = [[UILabel alloc]init];
    self.varNames_lwxNameLabel.numberOfLines = 2;
    self.varNames_lwxNameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_lwxNameLabel.textAlignment = NSTextAlignmentCenter;
    self.varNames_lwxNameLabel.textColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_fillColor_config()];
    self.varNames_lwxNameLabel.font = [UIFont systemFontOfSize:14];
    self.varNames_lwxNameLabel.text = methodNames_getServerWchatName();
    
    [self.varNames_leftView addSubview:self.varNames_lwxNameLabel];
    
    self.varNames_lwxIdLabel = [[UILabel alloc]init];
    self.varNames_lwxIdLabel.numberOfLines = 2;
    self.varNames_lwxIdLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_lwxIdLabel.textAlignment = NSTextAlignmentCenter;
    self.varNames_lwxIdLabel.textColor = [UIColor redColor];
    self.varNames_lwxIdLabel.font = [UIFont systemFontOfSize:14];
    self.varNames_lwxIdLabel.text = methodNames_getServerWchatNumber();
    
    [self.varNames_leftView addSubview:self.varNames_lwxIdLabel];
    
    self.varNames_lwxCopyButton = [[UIButton alloc]init];
    self.varNames_lwxCopyButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_lwxCopyButton.titleLabel.font = [UIFont systemFontOfSize:14];
    [self.varNames_lwxCopyButton setTitle:@"复制号码" forState:UIControlStateNormal];
    [self.varNames_lwxCopyButton setTitleColor:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()] forState:UIControlStateNormal];
    self.varNames_lwxCopyButton.layer.borderColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()].CGColor;
    self.varNames_lwxCopyButton.layer.borderWidth = 1;
    self.varNames_lwxCopyButton.layer.cornerRadius = 5;
    [self.varNames_lwxCopyButton addTarget:self action:@selector(methodNames_copyWXNumberAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.varNames_leftView addSubview:self.varNames_lwxCopyButton];
    
    [self.varNames_stackView addArrangedSubview:self.varNames_leftView];
    
    
}

- (void)methodNames_copyWXNumberAction:(UIButton *)sender {
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = methodNames_getServerWchatNumber();
    [ClassNames_PGHubView methodNames_showSuccessMessage:@"复制成功!"];
}

- (void)methodNames_createStackViewRightItem {
    self.varNames_rightView = [[UIView alloc]init];
    self.varNames_rightView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_rcodeImageView = [[UIImageView alloc]init];
    self.varNames_rcodeImageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.varNames_rcodeImageView.image = [UIImage imageWithData:methodNames_getServerCodeData()];
    
    [self.varNames_rightView addSubview:self.varNames_rcodeImageView];
    
    self.varNames_rcodeCopyButton = [[UIButton alloc]init];
    self.varNames_rcodeCopyButton.titleLabel.font = [UIFont systemFontOfSize:14];
    self.varNames_rcodeCopyButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.varNames_rcodeCopyButton setTitle:@"保存二维码" forState:UIControlStateNormal];
    [self.varNames_rcodeCopyButton setTitleColor:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()] forState:UIControlStateNormal];
    self.varNames_rcodeCopyButton.layer.borderColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()].CGColor;
    self.varNames_rcodeCopyButton.layer.borderWidth = 1;
    self.varNames_rcodeCopyButton.layer.cornerRadius = 5;
    [self.varNames_rcodeCopyButton addTarget:self action:@selector(methodNames_saveCodeAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.varNames_rightView addSubview:self.varNames_rcodeCopyButton];
    
    [self.varNames_stackView addArrangedSubview:self.varNames_rightView];
}

- (void)methodNames_saveCodeAction:(UIButton *)sender {
    UIImage *image = [UIImage imageWithData:methodNames_getServerCodeData()];
    UIImageWriteToSavedPhotosAlbum(image,self,@selector(image:didFinishSavingWithError:contextInfo:),nil);

}
#pragma mark ---------- 保存图片
- (void)image:(UIImage*)image didFinishSavingWithError:(NSError*)error contextInfo:(void*)contextInfo{
    
    if(error) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"截图保存失败"];
        NSLog(@"保存截图失败");
    }else{
        [ClassNames_PGHubView methodNames_showSuccessMessage:@"已截图保存到手机相册"];
        NSLog(@"保存截图成功");
    }
}

- (void)methodNames_createCenterLineView {
    
    self.varNames_centerLineView = [[UIView alloc]init];
    self.varNames_centerLineView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_centerLineView.backgroundColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_fillColor_config()];
    [self.varNames_stackView addSubview:self.varNames_centerLineView];
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
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_contentLabel methodNames_constriant:30];
    
    self.varNames_topMarginValue += 30;
    self.varNames_topMarginValue += methodNames_setMargin_2base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_stackView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_stackView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_stackView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_stackView methodNames_constriant:methodNames_setMargin_2base()];
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_centerLineView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_centerLineView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_centerLineView methodNames_constriant:1];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_centerLineView methodNames_constriant:0];
    
    
    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_lwxNameLabel methodNames_constriant:methodNames_setMargin_3base() * 2];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_lwxNameLabel methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_lwxNameLabel methodNames_constriant:0];

    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_lwxIdLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_lwxIdLabel methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_lwxIdLabel methodNames_constriant:0];



    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_lwxCopyButton methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_lwxCopyButton methodNames_constriant:70];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_lwxCopyButton methodNames_constriant:32];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_lwxCopyButton methodNames_constriant:0];



    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_rcodeImageView methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_rcodeImageView methodNames_constriant:70];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_rcodeImageView methodNames_constriant:70];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_rcodeImageView methodNames_constriant:0];



    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_rcodeCopyButton methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_rcodeCopyButton methodNames_constriant:87];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_rcodeCopyButton methodNames_constriant:32];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_rcodeCopyButton methodNames_constriant:0];
}


@end

