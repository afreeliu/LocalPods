//
//  ClassNames_PayView.m
//  PlatFormGamesSDK
//
//  Created by 刘飞 on 2022/8/14.
//  Copyright © 2022 TB. All rights reserved.
//

#import "ClassNames_PayView.h"
#import "ClassNames_CommitButton.h"
#import "ClassNames_NavigationBarView.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_Color.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_payTypeImage.h"

static NSString *varNames_user;
static NSString *varNames_amount;

@interface ClassNames_PayView()

@property (nonatomic, readwrite, strong) ClassNames_CommitButton *varNames_firstCommitBtn;

@property (nonatomic, readwrite, strong) ClassNames_NavigationBarView *varNames_naviView;


@property (nonatomic, readwrite, strong) UIView *varNames_containUserAmountView;

@property (nonatomic, readwrite, strong) UILabel *varNames_userLabel;

@property (nonatomic, readwrite, strong) UILabel *varNames_amountLabel;

@property (nonatomic, readwrite, strong) UIView *varNames_LineView;

@property (nonatomic, readwrite, strong) UIView *varNames_containPayTypeView;

@property (nonatomic, readwrite, strong) UIButton *varNames_wechatTypeButton;

@property (nonatomic, readwrite, strong) UIButton *varNames_aLiTypeButton;



@property (nonatomic, readwrite, assign) CGFloat varNames_topMarginValue;

@end

@implementation ClassNames_PayView

+ (instancetype)methodNames_createPayViewWithUserName:(NSString *)varNames_userName payMoney:(NSString *)varNames_money {
    varNames_user = varNames_userName;
    varNames_amount = varNames_money;
    ClassNames_PayView *varNames_pView = [[ClassNames_PayView alloc]init];
    varNames_pView.translatesAutoresizingMaskIntoConstraints = NO;
    
    return varNames_pView;
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
    
    [self methodNames_createContentView];

    [self methodNames_createPayTypeView];
//
    
    
    ClassNames_CommitButton *varNames_tmpCommitBtn = [ClassNames_CommitButton methodNames_createCommitButtonWithTitle:[NSString stringWithFormat:@"立即充值 %@ 元", varNames_amount] withTouchUpInsidBlock:^{
        if (weakSelf.methodNames_commitBlock) {
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
    
    [varNames_tmpNaviView methodNames_setTitle:[NSString stringWithFormat:@"安%@充%@中心", @"全", @"值"]];
    [varNames_tmpNaviView methodNames_setRightButtonImage:@"image_close" rightTitle:@"" btnAction:^{
        if (weakSelf.methodNames_closeBlock) {
            self.hidden = YES;
            weakSelf.methodNames_closeBlock();
        }
    }];
    self.varNames_naviView = varNames_tmpNaviView;
    [self addSubview:varNames_tmpNaviView];
}

- (void)methodNames_createContentView {
    
    UIView *varNames_tmpContainView = [[UIView alloc]init];
    varNames_tmpContainView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:varNames_tmpContainView];
    self.varNames_containUserAmountView = varNames_tmpContainView;
    
    NSString *varNames_userInfo = [NSString stringWithFormat:@"充%@角色: %@", @"值", varNames_user];
    NSString *varNames_amountInfo = [NSString stringWithFormat:@"充%@金%@: %@", @"值", @"额", varNames_amount];
    
    UILabel *varNames_userLabel = [[UILabel alloc]init];
    varNames_userLabel.translatesAutoresizingMaskIntoConstraints = NO;
    NSMutableAttributedString *varNames_userAttriString = [[NSMutableAttributedString alloc]initWithString:varNames_userInfo attributes:@{
        NSForegroundColorAttributeName: [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_fillColor_config()],
        NSFontAttributeName: [UIFont systemFontOfSize:12]
    }];
    [varNames_userAttriString addAttributes:@{NSForegroundColorAttributeName: [UIColor redColor]} range:[varNames_userInfo rangeOfString:varNames_user]];
    varNames_userLabel.attributedText = varNames_userAttriString;
    [self.varNames_containUserAmountView addSubview:varNames_userLabel];
    self.varNames_userLabel = varNames_userLabel;
    
    
    UILabel *varNames_amountLabel = [[UILabel alloc]init];
    varNames_amountLabel.textColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_fillColor_config()];
    varNames_amountLabel.font = [UIFont systemFontOfSize:12];
    varNames_amountLabel.textAlignment = NSTextAlignmentRight;
    varNames_amountLabel.translatesAutoresizingMaskIntoConstraints = NO;
    NSMutableAttributedString *varNames_amountAttriString = [[NSMutableAttributedString alloc]initWithString:varNames_amountInfo attributes:@{
        NSForegroundColorAttributeName: [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_fillColor_config()],
        NSFontAttributeName: [UIFont systemFontOfSize:12]
    }];
    
    [varNames_amountAttriString addAttributes:@{NSForegroundColorAttributeName: [UIColor redColor]} range:[varNames_amountInfo rangeOfString:varNames_amount]];
    varNames_amountLabel.attributedText = varNames_amountAttriString;
    [self.varNames_containUserAmountView addSubview:varNames_amountLabel];
    self.varNames_amountLabel = varNames_amountLabel;
    
    UIView *varNames_lineView = [[UIView alloc]init];
    varNames_lineView.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_lineView.backgroundColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_titleFontColor_config()];
    
    [self.varNames_containUserAmountView addSubview:varNames_lineView];
    
    self.varNames_LineView = varNames_lineView;
}

- (void)methodNames_createPayTypeView {
    
    UIView *varNames_containView = [[UIView alloc]init];
    varNames_containView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:varNames_containView];
    self.varNames_containPayTypeView = varNames_containView;
    
    UIButton *varNames_typeWechatButton = [[UIButton alloc]init];
    varNames_typeWechatButton.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_typeWechatButton.tag = 10;
    varNames_typeWechatButton.layer.cornerRadius = 4.5;
    [varNames_typeWechatButton addTarget:self action:@selector(methodNames_payAction:) forControlEvents:UIControlEventTouchUpInside];
    methodNames_drawWechatPay(varNames_typeWechatButton, [ClassNames_Color methodNames_colorWithHexString:@"#00B224"], [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_fillColor_config()], [NSString stringWithFormat:@"微%@%@付", @"信", @"支"]);
    [self.varNames_containPayTypeView addSubview:varNames_typeWechatButton];
    self.varNames_wechatTypeButton = varNames_typeWechatButton;
    
    UIButton *varNames_typeALiButton = [[UIButton alloc]init];
    varNames_typeALiButton.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_typeALiButton.tag = 11;
    varNames_typeALiButton.layer.cornerRadius = 4.5;
    [varNames_typeALiButton addTarget:self action:@selector(methodNames_payAction:) forControlEvents:UIControlEventTouchUpInside];
    methodNames_drawAliPay(varNames_typeALiButton, [ClassNames_Color methodNames_colorWithHexString:@"#009FEB"], [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_fillColor_config()], [NSString stringWithFormat:@"支%@宝%@付", @"付", @"支"]);
    [self.varNames_containPayTypeView addSubview:varNames_typeALiButton];
    self.varNames_aLiTypeButton = varNames_typeALiButton;
    
    [self methodNames_payAction:self.varNames_wechatTypeButton];
    
}


- (void)methodNames_layoutSubViews {
    
    self.varNames_topMarginValue = 0;
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_naviView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_naviView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_naviView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_naviView methodNames_constriant:methodNames_setNavigationBarHeight()];
    
    self.varNames_topMarginValue += methodNames_setNavigationBarHeight();
//    self.varNames_topMarginValue += methodNames_setMargin_2base();
    
    
    // 文字描述的部分
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_containUserAmountView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_containUserAmountView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_containUserAmountView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_containUserAmountView methodNames_constriant:45];
    
    // 角色
    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_userLabel methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_userLabel methodNames_constriant:methodNames_setMargin_base()];
    // 近饿
    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_amountLabel methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_amountLabel methodNames_constriant:methodNames_setMargin_base()];
    
    [ClassNames_BaseViewLayout methodNames_layoutSubView1:self.varNames_userLabel methodNames_attribute1:NSLayoutAttributeWidth methodNames_layoutSubView2:self.varNames_amountLabel methodNames_attribute2:NSLayoutAttributeWidth methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutSubView1:self.varNames_userLabel methodNames_attribute1:NSLayoutAttributeRight methodNames_layoutSubView2:self.varNames_amountLabel methodNames_attribute2:NSLayoutAttributeLeft methodNames_constriant:0];
    
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_LineView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_LineView methodNames_constriant:1];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_LineView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_LineView methodNames_constriant:methodNames_setMargin_base()];
    
    self.varNames_topMarginValue += 45;
    
    self.varNames_topMarginValue += methodNames_setMargin_2base();
    
    
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_wechatTypeButton methodNames_constriant:75];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_wechatTypeButton methodNames_constriant:85];
    
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_aLiTypeButton methodNames_constriant:75];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_aLiTypeButton methodNames_constriant:85];
    
    
    [ClassNames_BaseViewLayout methodNames_layoutSubView1:self.varNames_wechatTypeButton methodNames_attribute1:NSLayoutAttributeRight methodNames_layoutSubView2:self.varNames_aLiTypeButton methodNames_attribute2:NSLayoutAttributeLeft methodNames_constriant:-methodNames_setMargin_3base()];
    
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_wechatTypeButton methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_aLiTypeButton methodNames_constriant:0];
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_wechatTypeButton methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_wechatTypeButton methodNames_constriant:0];
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_aLiTypeButton methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_aLiTypeButton methodNames_constriant:0];
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_containPayTypeView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_containPayTypeView methodNames_constriant:0];
    
    
    
    self.varNames_topMarginValue += 85;
    self.varNames_topMarginValue += methodNames_setMargin_2base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_firstCommitBtn methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_firstCommitBtn methodNames_constriant:methodNames_setMargin_3base() *3];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_firstCommitBtn methodNames_constriant:methodNames_setMargin_3base() * 3];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_firstCommitBtn methodNames_constriant:methodNames_setCommitButtonHeight()];
}

#pragma mark --------------- Action
- (void)methodNames_payAction:(UIButton *)sender {
    sender.layer.borderWidth = 1;
    sender.layer.borderColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()].CGColor;
    if (sender.tag == 10) {
        self.varNames_aLiTypeButton.layer.borderWidth = 0.0;
    } else {
        self.varNames_wechatTypeButton.layer.borderWidth = 0.0;
    }
    
}


@end
