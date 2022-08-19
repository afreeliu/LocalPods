//
//  ClassNames_TipView.m
//  PlatFormGamesSDK
//
//  Created by lufee on 2022/8/10.
//  Copyright © 2022 TB. All rights reserved.
//

#import "ClassNames_TipView.h"
#import "ClassNames_NavigationBarView.h"
#import "ClassNames_CommitButton.h"
#import "ClassNames_Color.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_BaseViewLayout.h"

@interface ClassNames_TipView()
// 返回按钮返回的view
@property (nonatomic, readwrite, weak) UIView *varNames_backView;

@property (nonatomic, readwrite, strong) ClassNames_NavigationBarView *varNames_naviView;

@property (nonatomic, readwrite, strong) UILabel *varNames_tipLabel;

@property (nonatomic, readwrite, strong) ClassNames_CommitButton *varNames_firstCommitBtn;

@property (nonatomic, readwrite, assign) CGFloat varNames_topMarginValue;
@end


@implementation ClassNames_TipView

+ (instancetype)methodNames_createTipViewFromView:(UIView *)varNames_fview {
    ClassNames_TipView *varNames_tView = [[ClassNames_TipView alloc]init];
    varNames_tView.translatesAutoresizingMaskIntoConstraints = NO;
    [varNames_tView methodNames_addBackView:varNames_fview];
    return varNames_tView;
}

- (void)methodNames_changeFromView:(UIView *)varNames_view {
    
    [self methodNames_addBackView:varNames_view];
    
}


-(instancetype)init {
    self = [super init];
    if (self) {
        [self methodNames_createUI];
    }
    return self;
}

- (void)methodNames_createUI {
    __weak typeof(self) weakSelf = self;
    [self methodNames_createNavi];
    
    
    if (!self.varNames_tipLabel) {
        [self methodNames_createTipLabel];
    }
    
    ClassNames_CommitButton *varNames_tmpCommitBtn = [ClassNames_CommitButton methodNames_createCommitButtonWithTitle:@"手机验证" withTouchUpInsidBlock:^{
        if (weakSelf.methodNames_commitBlock) {
            weakSelf.hidden = YES;
            weakSelf.methodNames_commitBlock();
        }
    }];
    
    self.varNames_firstCommitBtn = varNames_tmpCommitBtn;
    [self addSubview:varNames_tmpCommitBtn];
    [self methodNames_layoutSubViews];
}


- (void)methodNames_createNavi {
    __weak typeof(self) weakSelf = self;
    ClassNames_NavigationBarView *varNames_tmpNaviView = [[ClassNames_NavigationBarView alloc]init];
    varNames_tmpNaviView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [varNames_tmpNaviView methodNames_setTitle:@"用户中心"];
    [varNames_tmpNaviView methodNames_setRightButtonImage:@"image_close" rightTitle:@"" btnAction:^{
        if (weakSelf.methodNames_closeBlock) {
            weakSelf.methodNames_closeBlock();
        }
    }];
    [varNames_tmpNaviView methodNames_setLeftButtonImage:@"image_back" lefttitle:@"" btnAction:^{
        if (weakSelf.varNames_backView) {
            self.hidden = YES;
            weakSelf.varNames_backView.hidden = NO;
            if (self.methodNames_backBlock) {
                self.methodNames_backBlock();
            }
        }
    }];
    self.varNames_naviView = varNames_tmpNaviView;
    [self addSubview:varNames_tmpNaviView];
}

- (void)methodNames_createTipLabel {
    UILabel *varNames_tipLabel = [[UILabel alloc]init];
    varNames_tipLabel.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tipLabel.numberOfLines = 0;
    varNames_tipLabel.textColor = [UIColor blackColor];
    varNames_tipLabel.textAlignment = NSTextAlignmentLeft;
    NSString *varNames_tip = @"由于您未绑定手机号码，为了您的账号安全，请前往绑定手机号码后进行密码修改！";
    NSMutableParagraphStyle *varNames_paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    varNames_paragraphStyle.lineSpacing= methodNames_setMargin_base();
    varNames_paragraphStyle.paragraphSpacing = methodNames_setMargin_2base();
    varNames_paragraphStyle.alignment = NSTextAlignmentLeft;
    NSDictionary *varNames_attDic = @{NSFontAttributeName:[UIFont systemFontOfSize:17],
                                NSParagraphStyleAttributeName:varNames_paragraphStyle,
                                      NSForegroundColorAttributeName:[UIColor blackColor]
    };
    NSMutableAttributedString *varNames_attString = [[NSMutableAttributedString alloc] initWithString:varNames_tip attributes:varNames_attDic];
    varNames_tipLabel.attributedText = varNames_attString;
    self.varNames_tipLabel = varNames_tipLabel;
    
    [self addSubview:varNames_tipLabel];
    
}


- (void)methodNames_layoutSubViews {
    
    self.varNames_topMarginValue = 0;
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_naviView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_naviView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_naviView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_naviView methodNames_constriant:methodNames_setNavigationBarHeight()];
    
    self.varNames_topMarginValue += methodNames_setNavigationBarHeight();
    self.varNames_topMarginValue += methodNames_setMargin_2base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_tipLabel methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_tipLabel methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_tipLabel methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_tipLabel methodNames_constriant:methodNames_setMargin_3base() * 6];
    
    self.varNames_topMarginValue += methodNames_setMargin_3base() * 6;
    self.varNames_topMarginValue += methodNames_setMargin_2base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_firstCommitBtn methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_firstCommitBtn methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_firstCommitBtn methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_firstCommitBtn methodNames_constriant:methodNames_setCommitButtonHeight()];
    
}





- (void)methodNames_addBackView:(UIView *)varNames_bView {
    if (varNames_bView) {
        self.varNames_backView = varNames_bView;
    }
}


@end
