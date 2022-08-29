//
//  ClassNames_NoticeView.m
//  PlatFormGamesSDK
//
//  Created by 刘飞 on 2022/8/14.
//  Copyright © 2022 TB. All rights reserved.
//

#import "ClassNames_NoticeView.h"
#import "ClassNames_NavigationBarView.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_Color.h"
#import "ClassNames_DefaultThemeConfigure.h"



@interface ClassNames_NoticeView()

@property (nonatomic, readwrite, strong) ClassNames_NavigationBarView *varNames_naviView;

@property (nonatomic, readwrite, strong) UILabel *varNames_contentLabel;

@property (nonatomic, readwrite, assign) CGFloat varNames_topMarginValue;

@end

@implementation ClassNames_NoticeView

+ (instancetype)methodNames_createNoticeViewWithtitle:(NSString *)varNames_title methodNames_content:(NSString *)varNames_notice {
    
    ClassNames_NoticeView *varNames_noticeView = [[ClassNames_NoticeView alloc]init];
    varNames_noticeView.translatesAutoresizingMaskIntoConstraints = NO;
    [varNames_noticeView methodNames_updateTitle:varNames_title methodNames_notice:varNames_notice];
    return varNames_noticeView;
}

- (void)methodNames_updateTitle:(NSString *)varNames_argTitle methodNames_notice:(NSString *)varNames_argNotice {
    [self.varNames_naviView methodNames_setTitle:varNames_argTitle];
    self.varNames_contentLabel.text = varNames_argNotice;
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
    
    [self methodNames_layoutSubViews];
    
}
- (void)methodNames_createNavi {
    __weak typeof(self) weakSelf = self;
    ClassNames_NavigationBarView *varNames_tmpNaviView = [[ClassNames_NavigationBarView alloc]init];
    varNames_tmpNaviView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [varNames_tmpNaviView methodNames_setTitle:@"公告"];
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
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_contentLabel methodNames_constriant:methodNames_setMargin_base()];
    
    
}


@end
