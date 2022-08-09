//
//  ViewController.m
//  TestOCSDK
//
//  Created by TB on 2018/8/3.
//  Copyright © 2018年 TB. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import <PlatFormGamesSDK/ClassNames_BaseViewLayout.h>
#import <PlatFormGamesSDK/ClassNames_InputView.h>
#import <PlatFormGamesSDK/ClassNames_PGHubView.h>

#import <PlatFormGamesSDK/ClassNames_MainView.h>
#import <PlatFormGamesSDK/UmPlatsFormGameManager.h>
#import "ClassNames_TextMA.h"

@interface ViewController ()

@property (nonatomic, readwrite, strong) NSLayoutConstraint *viewCenterX;
@property (nonatomic, readwrite, strong) NSLayoutConstraint *viewCenterY;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_inputView;

@end

@implementation ViewController

- (IBAction)logout:(UIButton *)sender {
    [[UmPlatsFormGameManager umPlatsFormManagerDeafaults]methodNames_showSuspensionBall];
    
//    [[UmPlatsFormGameManager umPlatsFormManagerDeafaults]umPlatsFormLogout];
}

- (IBAction)chongzhi:(UIButton *)sender {
    
    [[UmPlatsFormGameManager umPlatsFormManagerDeafaults]methodNames_showSuspensionBall];
    
//    [[UmPlatsFormGameManager umPlatsFormManagerDeafaults]umPlatsFormLogout];
//    [[UmPlatsFormGameManager umPlatsFormManagerDeafaults] umPlatsFormProductId:@"com.sggame.five.sg.rmb6"  withAppleMoney:@"6" withCpOrderId:@"123456789" WithProductName:@"60钻石" withProductDesc:@"《60钻石》商城中6元购买，购买后获得60钻石" withRoleId:@"123456" withRoleName:@"测试角色" withRoleLevel:@"7" withServerID:@"123" withServerName:@"测试区服" withMemo:@"123456"];
}


- (void)tap:(UITapGestureRecognizer *)t {
    
    
    
    
    self.viewCenterX.constant -= 10;
    [self.view setNeedsLayout];
}

- (void)methodNames_setUI {
    UIView *view = [[UIView alloc]init];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    view.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view];
    
    
    UIButton *btn = [[UIButton alloc]init];
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(viewupdateLayout:) forControlEvents:UIControlEventTouchUpInside];
    btn.translatesAutoresizingMaskIntoConstraints = NO;
    btn.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:btn];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:btn methodNames_constriant:20];
    [ClassNames_BaseViewLayout methodNames_layoutRight:btn methodNames_constriant:10];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:btn methodNames_constriant:50];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:btn methodNames_constriant:50];
    
    
    
    
    
    self.viewCenterY = [ClassNames_BaseViewLayout methodNames_layoutCenterY:view methodNames_constriant:0];
    if (!self.viewCenterX) {
        self.viewCenterX = [ClassNames_BaseViewLayout methodNames_layoutCenterX:view methodNames_constriant:0];
    }
    
    [ClassNames_BaseViewLayout methodNames_layoutWidth:view methodNames_constriant:50];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:view methodNames_constriant:50];
    
    
    ClassNames_TextMA *maView = [[ClassNames_TextMA alloc]init];
    maView.backgroundColor = [UIColor clearColor];
    maView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:maView];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:maView methodNames_constriant:20];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:maView methodNames_constriant:20];
    [ClassNames_BaseViewLayout methodNames_layoutTop:maView methodNames_constriant:-250];
    [ClassNames_BaseViewLayout methodNames_layoutRight:maView methodNames_constriant:30];
    
    
    
    [self.view setNeedsLayout];
}

-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
}

- (void)notificationLoginCallBack:(NSNotification *)noti {
    NSLog(@"notiUserInfo:%@", noti.userInfo);
    if ([[noti userInfo] objectForKey:@"result"]) {
        
        NSString *userName = [[noti userInfo] objectForKey:@"username"];
        NSString *uid      = [[noti userInfo] objectForKey:@"uid"];
        NSLog(@"userNames:%@, uid:%@", userName, uid);
        
    }
}

- (void)viewupdateLayout:(UIButton *)sender {
    
    
//    [[UmPlatsFormGameManager umPlatsFormManagerDeafaults] umPlatsFormProductId:@"com.sggame.five.sg.rmb6"  withAppleMoney:@"6" withCpOrderId:@"123456789" WithProductName:@"60钻石" withProductDesc:@"《60钻石》商城中6元购买，购买后获得60钻石" withRoleId:@"123456" withRoleName:@"测试角色" withRoleLevel:@"7" withServerID:@"123" withServerName:@"测试区服" withMemo:@"123456"];
    
    [[UmPlatsFormGameManager umPlatsFormManagerDeafaults]umPlatsFormLogin];
    
    
//    ClassNames_MainView *varNames_mainView = [ClassNames_MainView methodNames_showMainView];
//    varNames_mainView.translatesAutoresizingMaskIntoConstraints = NO;
//    [ClassNames_BaseViewLayout methodNames_layoutTop:varNames_mainView methodNames_constriant:0];
//    [ClassNames_BaseViewLayout methodNames_layoutLeft:varNames_mainView methodNames_constriant:0];
//    [ClassNames_BaseViewLayout methodNames_layoutBottom:varNames_mainView methodNames_constriant:0];
//    [ClassNames_BaseViewLayout methodNames_layoutRight:varNames_mainView methodNames_constriant:0];
    
    
    
//    self.viewCenterX.constant -= 10;
//    [self.view setNeedsLayout];
}

- (void)notificationPayCallBack:(NSNotification *)noti {
    NSLog(@"appStoreBack:%@", noti.userInfo);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationLoginCallBack:) name:@"umplatformgamelogin" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationPayCallBack:) name:@"umplatformgameappStore" object:nil];
    
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    [self methodNames_setUI];
    
//    UIView *closeEye1 = [[UIView alloc]initWithFrame:CGRectMake(50, 50, 30, 30)];
//    [self.view addSubview:closeEye1];
//    [self methodNames_drawCloseEye1:closeEye1 color:[UIColor grayColor]];
//
//    UIView *openEye1 = [[UIView alloc]initWithFrame:CGRectMake(90, 50, 30, 30)];
//    [self.view addSubview:openEye1];
//    [self methodNames_drawOpenEye1:openEye1 color:[UIColor grayColor]];
//
//    UIView *closeEye2 = [[UIView alloc]initWithFrame:CGRectMake(50, 90, 30, 30)];
//    [self.view addSubview:closeEye2];
//    [self methodNames_drawCloseEye2:closeEye2 color:[UIColor grayColor]];
//
//    UIView *openEye2 = [[UIView alloc]initWithFrame:CGRectMake(90, 90, 30, 30)];
//    [self.view addSubview:openEye2];
//    [self methodNames_drawOpenEye2:openEye2 color:[UIColor grayColor]];
//
//    UIView *closeEye3 = [[UIView alloc]initWithFrame:CGRectMake(50, 130, 30, 30)];
//    [self.view addSubview:closeEye3];
//    [self methodNames_drawCloseEye3:closeEye3 color:[UIColor grayColor]];
//
//    UIView *openEye3 = [[UIView alloc]initWithFrame:CGRectMake(90, 130, 30, 30)];
//    [self.view addSubview:openEye3];
//    [self methodNames_drawOpenEye3:openEye3 color:[UIColor grayColor]];
//
//    UIView *closeEye4 = [[UIView alloc]initWithFrame:CGRectMake(50, 170, 30, 30)];
//    [self.view addSubview:closeEye4];
//    [self methodNames_drawCloseEye4:closeEye4 color:[UIColor grayColor]];
//
//    UIView *openEye4 = [[UIView alloc]initWithFrame:CGRectMake(90, 170, 30, 30)];
//    [self.view addSubview:openEye4];
//    [self methodNames_drawOpenEye4:openEye4 color:[UIColor grayColor]];
//
//
//    UIView *person1 = [[UIView alloc]initWithFrame:CGRectMake(130, 50, 30, 30)];
//    [self.view addSubview:person1];
//    [self methodNames_drawPerson1:person1 color:[UIColor grayColor]];
//
//    UIView *person2 = [[UIView alloc]initWithFrame:CGRectMake(130, 90, 30, 30)];
//    [self.view addSubview:person2];
//    [self methodNames_drawPerson2:person2 color:[UIColor grayColor]];
//
//    UIView *person3 = [[UIView alloc]initWithFrame:CGRectMake(130, 130, 30, 30)];
//    [self.view addSubview:person3];
//    [self methodNames_drawPerson3:person3 color:[UIColor grayColor]];
//
//    UIView *person4 = [[UIView alloc]initWithFrame:CGRectMake(130, 170, 30, 30)];
//    [self.view addSubview:person4];
//    [self methodNames_drawPerson4:person4 color:[UIColor grayColor]];
//
//    UIView *person5 = [[UIView alloc]initWithFrame:CGRectMake(130, 210, 30, 30)];
//    [self.view addSubview:person5];
//    [self methodNames_drawPerson5:person5 color:[UIColor grayColor]];
//
//    UIView *person6 = [[UIView alloc]initWithFrame:CGRectMake(130, 250, 30, 30)];
//    [self.view addSubview:person6];
//    [self methodNames_drawPerson6:person6 color:[UIColor grayColor]];
//
//    UIView *person7 = [[UIView alloc]initWithFrame:CGRectMake(130, 290, 30, 30)];
//    [self.view addSubview:person7];
//    [self methodNames_drawPerson7:person7 color:[UIColor grayColor]];
//
//    UIView *person8 = [[UIView alloc]initWithFrame:CGRectMake(130, 330, 30, 30)];
//    [self.view addSubview:person8];
//    [self methodNames_drawPerson8:person8 color:[UIColor grayColor]];
//
//    UIView *phone1 = [[UIView alloc]initWithFrame:CGRectMake(170, 50, 30, 30)];
//    [self.view addSubview:phone1];
//    [self methodNames_drawPhone1:phone1 color:[UIColor grayColor]];
//
//    UIView *phone2 = [[UIView alloc]initWithFrame:CGRectMake(170, 90, 30, 30)];
//    [self.view addSubview:phone2];
//    [self methodNames_drawPhone2:phone2 color:[UIColor grayColor]];
//
//    UIView *phone3 = [[UIView alloc]initWithFrame:CGRectMake(170, 130, 30, 30)];
//    [self.view addSubview:phone3];
//    [self methodNames_drawPhone3:phone3 color:[UIColor grayColor]];
//
//    UIView *phone4 = [[UIView alloc]initWithFrame:CGRectMake(170, 170, 30, 30)];
//    [self.view addSubview:phone4];
//    [self methodNames_drawPhone4:phone4 color:[UIColor grayColor]];
//
//    UIView *phone5 = [[UIView alloc]initWithFrame:CGRectMake(170, 210, 30, 30)];
//    [self.view addSubview:phone5];
//    [self methodNames_drawPhone5:phone5 color:[UIColor grayColor]];
//
//    UIView *code1 = [[UIView alloc]initWithFrame:CGRectMake(210, 50, 30, 30)];
//    [self.view addSubview:code1];
//    [self methodNames_drawCode1:code1 color:[UIColor grayColor]];
//
//    UIView *code2 = [[UIView alloc]initWithFrame:CGRectMake(210, 90, 30, 30)];
//    [self.view addSubview:code2];
//    [self methodNames_drawCode2:code2 color:[UIColor grayColor]];
//
//    UIView *code3 = [[UIView alloc]initWithFrame:CGRectMake(210, 130, 30, 30)];
//    [self.view addSubview:code3];
//    [self methodNames_drawCode3:code3 color:[UIColor grayColor]];
//
//    UIView *code4 = [[UIView alloc]initWithFrame:CGRectMake(210, 170, 30, 30)];
//    [self.view addSubview:code4];
//    [self methodNames_drawCode4:code4 color:[UIColor grayColor]];
//
//    UIView *code5 = [[UIView alloc]initWithFrame:CGRectMake(210, 210, 30, 30)];
//    [self.view addSubview:code5];
//    [self methodNames_drawCode5:code5 color:[UIColor grayColor]];
//
//    UIView *psw1 = [[UIView alloc]initWithFrame:CGRectMake(250, 50, 30, 30)];
//    [self.view addSubview:psw1];
//    [self methodNames_drawPassword1:psw1 color:[UIColor grayColor]];
//
//    UIView *psw2 = [[UIView alloc]initWithFrame:CGRectMake(250, 90, 30, 30)];
//    [self.view addSubview:psw2];
//    [self methodNames_drawPassword2:psw2 color:[UIColor grayColor]];
//
//    UIView *psw3 = [[UIView alloc]initWithFrame:CGRectMake(250, 130, 30, 30)];
//    [self.view addSubview:psw3];
//    [self methodNames_drawPassword3:psw3 color:[UIColor grayColor]];
//
//    UIView *psw4 = [[UIView alloc]initWithFrame:CGRectMake(250, 170, 30, 30)];
//    [self.view addSubview:psw4];
//    [self methodNames_drawPassword4:psw4 color:[UIColor grayColor]];
//
//    UIView *psw5 = [[UIView alloc]initWithFrame:CGRectMake(250, 210, 30, 30)];
//    [self.view addSubview:psw5];
//    [self methodNames_drawPassword5:psw5 color:[UIColor grayColor]];
//
//    UIView *personID1 = [[UIView alloc]initWithFrame:CGRectMake(290, 50, 30, 30)];
//    [self.view addSubview:personID1];
//    [self methodNames_drawPersonID1:personID1 color:[UIColor grayColor]];
//
//
//    UIView *up1 = [[UIView alloc]initWithFrame:CGRectMake(50, 210, 30, 30)];
//    [self.view addSubview:up1];
//    [self methodNames_drawShowMoreUP1:up1 color:[UIColor grayColor]];
//    UIView *down1 = [[UIView alloc]initWithFrame:CGRectMake(50, 250, 30, 30)];
//    [self.view addSubview:down1];
//    [self methodNames_drawShowMoreDown1:down1 color:[UIColor grayColor]];
//
//    UIView *up2 = [[UIView alloc]initWithFrame:CGRectMake(50, 290, 30, 30)];
//    [self.view addSubview:up2];
//    [self methodNames_drawShowMoreUP2:up2 color:[UIColor grayColor]];
//    UIView *down2 = [[UIView alloc]initWithFrame:CGRectMake(50, 330, 30, 30)];
//    [self.view addSubview:down2];
//    [self methodNames_drawShowMoreDown2:down2 color:[UIColor grayColor]];
//
//    UIView *up3 = [[UIView alloc]initWithFrame:CGRectMake(50, 370, 30, 30)];
//    [self.view addSubview:up3];
//    [self methodNames_drawShowMoreUP3:up3 color:[UIColor grayColor]];
//    UIView *down3 = [[UIView alloc]initWithFrame:CGRectMake(50, 410, 30, 30)];
//    [self.view addSubview:down3];
//    [self methodNames_drawShowMoreDown3:down3 color:[UIColor grayColor]];
//
//    UIView *up4 = [[UIView alloc]initWithFrame:CGRectMake(50, 450, 30, 30)];
//    [self.view addSubview:up4];
//    [self methodNames_drawShowMoreUP4:up4 color:[UIColor grayColor]];
//    UIView *down4 = [[UIView alloc]initWithFrame:CGRectMake(50, 490, 30, 30)];
//    [self.view addSubview:down4];
//    [self methodNames_drawShowMoreDown4:down4 color:[UIColor grayColor]];
//
//    UIView *err1 = [[UIView alloc]initWithFrame:CGRectMake(50, 530, 30, 30)];
//    [self.view addSubview:err1];
//    [self methodNames_drawError1:err1 color:[UIColor redColor]];
//
//    UIView *err2 = [[UIView alloc]initWithFrame:CGRectMake(50, 570, 30, 30)];
//    [self.view addSubview:err2];
//    [self methodNames_drawError2:err2 color:[UIColor yellowColor]];
//
//    UIView *right1 = [[UIView alloc]initWithFrame:CGRectMake(50, 610, 30, 30)];
//    [self.view addSubview:right1];
//    [self methodNames_drawRight1:right1 color:[UIColor grayColor]];
//
//    UIView *right2 = [[UIView alloc]initWithFrame:CGRectMake(50, 650, 30, 30)];
//    [self.view addSubview:right2];
//    [self methodNames_drawRight2:right2 color:[UIColor grayColor]];
//
//
//
//    ClassNames_InputView *inputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeLoginAccount];
//    inputView.translatesAutoresizingMaskIntoConstraints = NO;
//    inputView.backgroundColor = [UIColor redColor];
//    self.varNames_inputView = inputView;
//    [self.view addSubview:inputView];
//    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_inputView methodNames_constriant:130];
//    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_inputView methodNames_constriant:30];
//    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_inputView methodNames_constriant:200];
//    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_inputView methodNames_constriant:35];
//    [self.view setNeedsLayout];
//
//
//
//    UIView *backgroundView = [[UIView alloc]initWithFrame:CGRectMake(200, 300, 100, 100)];
//    [self.view addSubview:backgroundView];
//
//
//    [self methodNames_drawBackgroundImage1:backgroundView lineColor:[UIColor blackColor] fillColor:[UIColor redColor]];
}


#pragma mark ---------- 绘制背景
- (void)methodNames_drawBackgroundImage1:(UIView *)varNames_view lineColor:(UIColor *)varNames_lineColor fillColor:(UIColor *)varNames_fillColor {
    
    CGRect varNames_tmpBound = varNames_view.bounds;
    
    CGRect varNames_tangleRect = CGRectMake(2, 2, 5, 5);
    CGRect varNames_tangle2Rect = CGRectMake(CGRectGetWidth(varNames_tmpBound) - 7, 2, 5, 5);
    CGRect varNames_tangle3Rect = CGRectMake(2, CGRectGetHeight(varNames_tmpBound) - 7, 5, 5);
    CGRect varNames_tangle4Rect = CGRectMake(CGRectGetWidth(varNames_tmpBound) - 7, CGRectGetHeight(varNames_tmpBound) - 7, 5, 5);
    
    
    UIBezierPath *varNames_rectanglePath = [UIBezierPath bezierPathWithRect:varNames_tangleRect];
    UIBezierPath *varNames_rectangle2Path = [UIBezierPath bezierPathWithRect:varNames_tangle2Rect];
    UIBezierPath *varNames_rectangle3Path = [UIBezierPath bezierPathWithRect:varNames_tangle3Rect];
    UIBezierPath *varNames_rectangle4Path = [UIBezierPath bezierPathWithRect:varNames_tangle4Rect];
    
    CAShapeLayer *varNames_rectangleLayer = [CAShapeLayer layer];
    varNames_rectangleLayer.path = varNames_rectanglePath.CGPath;
    varNames_rectangleLayer.fillColor = varNames_fillColor.CGColor;
    varNames_rectangleLayer.strokeColor = varNames_lineColor.CGColor;
    
    CAShapeLayer *varNames_rectangle2Layer = [CAShapeLayer layer];
    varNames_rectangle2Layer.path = varNames_rectangle2Path.CGPath;
    varNames_rectangle2Layer.fillColor = varNames_fillColor.CGColor;
    varNames_rectangle2Layer.strokeColor = varNames_lineColor.CGColor;
    
    CAShapeLayer *varNames_rectangle3Layer = [CAShapeLayer layer];
    varNames_rectangle3Layer.path = varNames_rectangle3Path.CGPath;
    varNames_rectangle3Layer.fillColor = varNames_fillColor.CGColor;
    varNames_rectangle3Layer.strokeColor = varNames_lineColor.CGColor;
    
    CAShapeLayer *varNames_rectangle4Layer = [CAShapeLayer layer];
    varNames_rectangle4Layer.path = varNames_rectangle4Path.CGPath;
    varNames_rectangle4Layer.fillColor = varNames_fillColor.CGColor;
    varNames_rectangle4Layer.strokeColor = varNames_lineColor.CGColor;
    
    [varNames_view.layer addSublayer:varNames_rectangleLayer];
    [varNames_view.layer addSublayer:varNames_rectangle2Layer];
    [varNames_view.layer addSublayer:varNames_rectangle3Layer];
    [varNames_view.layer addSublayer:varNames_rectangle4Layer];
    
    
    // top
    CGRect varNames_lineRect = CGRectMake(CGRectGetMaxX(varNames_tangleRect) + 2, CGRectGetMinY(varNames_tangleRect), CGRectGetWidth(varNames_tmpBound) - 18, 5);
    // left
    CGRect varNames_line2Rect = CGRectMake(2, CGRectGetMaxY(varNames_tangleRect) + 2, 5, CGRectGetHeight(varNames_tmpBound) - 18);
    // bottom
    CGRect varNames_line3Rect = CGRectMake(CGRectGetMaxX(varNames_tangleRect) + 2, CGRectGetHeight(varNames_tmpBound) - 7, CGRectGetWidth(varNames_tmpBound) - 18, 5);
    // right
    CGRect varNames_line4Rect = CGRectMake(CGRectGetWidth(varNames_tmpBound) - 7, CGRectGetMaxY(varNames_tangle2Rect) + 2, 5, CGRectGetHeight(varNames_tmpBound) - 18);
    
    UIBezierPath *varNames_linePath = [UIBezierPath bezierPathWithRect:varNames_lineRect];
    UIBezierPath *varNames_line2Path = [UIBezierPath bezierPathWithRect:varNames_line2Rect];
    UIBezierPath *varNames_line3Path = [UIBezierPath bezierPathWithRect:varNames_line3Rect];
    UIBezierPath *varNames_line4Path = [UIBezierPath bezierPathWithRect:varNames_line4Rect];
    
    
    
    CAShapeLayer *varNames_lineLayer = [CAShapeLayer layer];
    varNames_lineLayer.path = varNames_linePath.CGPath;
    varNames_lineLayer.fillColor = varNames_fillColor.CGColor;
    varNames_lineLayer.strokeColor = varNames_lineColor.CGColor;
    
    CAShapeLayer *varNames_line2Layer = [CAShapeLayer layer];
    varNames_line2Layer.path = varNames_line2Path.CGPath;
    varNames_line2Layer.fillColor = varNames_fillColor.CGColor;
    varNames_line2Layer.strokeColor = varNames_lineColor.CGColor;
    
    CAShapeLayer *varNames_line3Layer = [CAShapeLayer layer];
    varNames_line3Layer.path = varNames_line3Path.CGPath;
    varNames_line3Layer.fillColor = varNames_fillColor.CGColor;
    varNames_line3Layer.strokeColor = varNames_lineColor.CGColor;
    
    CAShapeLayer *varNames_line4Layer = [CAShapeLayer layer];
    varNames_line4Layer.path = varNames_line4Path.CGPath;
    varNames_line4Layer.fillColor = varNames_fillColor.CGColor;
    varNames_line4Layer.strokeColor = varNames_lineColor.CGColor;
    
    [varNames_view.layer addSublayer:varNames_lineLayer];
    [varNames_view.layer addSublayer:varNames_line2Layer];
    [varNames_view.layer addSublayer:varNames_line3Layer];
    [varNames_view.layer addSublayer:varNames_line4Layer];
    
    NSInteger varNames_hide = 1;
    
    switch (varNames_hide) {
        case 1:
            [varNames_lineLayer removeFromSuperlayer];
            break;
        case 2:
            [varNames_line2Layer removeFromSuperlayer];
            break;
        case 3:
            [varNames_line3Layer removeFromSuperlayer];
            break;
        case 4:
            [varNames_line4Layer removeFromSuperlayer];
            break;
            
        default:
            break;
    }
    
    
    
    varNames_view.layer.backgroundColor = [UIColor lightGrayColor].CGColor;
}







-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"inputView:%@ left:%@, itemButton:%@", NSStringFromCGRect(self.varNames_inputView.frame), NSStringFromCGRect(self.varNames_inputView.varNames_inputViewTypeImage.frame), NSStringFromCGRect(self.varNames_inputView.varNames_itemButton.frame));
}

#pragma mark ---------- 睁眼闭眼
- (void)methodNames_drawCloseEye1:(UIView *)view color:(UIColor *)color{
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(2, CGRectGetHeight(view.frame)/2 - 2)];
    [path addQuadCurveToPoint:CGPointMake(CGRectGetWidth(view.frame)- 2, CGRectGetHeight(view.frame)/2 - 2) controlPoint:CGPointMake(CGRectGetWidth(view.frame)/2, CGRectGetHeight(view.frame)*3/4)];
    
    CAShapeLayer *layer = [CAShapeLayer layer];
    //设置描边色
    layer.strokeColor = color.CGColor;
    layer.fillColor = [UIColor clearColor].CGColor;
    layer.path = path.CGPath;
    
    CGPoint startPoint = CGPointMake(2, CGRectGetHeight(view.frame)/2 - 2);
    CGPoint centerPoint = CGPointMake(CGRectGetWidth(view.frame)/2, CGRectGetHeight(view.frame)*3/4);
    CGPoint endPoint = CGPointMake(CGRectGetWidth(view.frame)- 2, CGRectGetHeight(view.frame)/2 - 2);
    
    UIBezierPath *secondLinePath = [UIBezierPath bezierPath];
    [secondLinePath moveToPoint:CGPointMake(centerPoint.x, centerPoint.y - 5)];
    [secondLinePath addLineToPoint:CGPointMake(centerPoint.x, centerPoint.y+2)];
    CAShapeLayer *secondLineLayer = [CAShapeLayer layer];
    secondLineLayer.strokeColor = [UIColor grayColor].CGColor;
    secondLineLayer.path = secondLinePath.CGPath;
    
    UIBezierPath *firstLinePath = [UIBezierPath bezierPath];
    [firstLinePath moveToPoint:CGPointMake(centerPoint.x - 5.75, centerPoint.y - 5.75)];
    [firstLinePath addLineToPoint:CGPointMake(startPoint.x+1, centerPoint.y-1)];
    CAShapeLayer *firstLineLayer = [CAShapeLayer layer];
    firstLineLayer.strokeColor = color.CGColor;
    firstLineLayer.path = firstLinePath.CGPath;
    
    UIBezierPath *thirdLinePath = [UIBezierPath bezierPath];
    [thirdLinePath moveToPoint:CGPointMake(centerPoint.x + 5.75, centerPoint.y - 5.75)];
    [thirdLinePath addLineToPoint:CGPointMake(endPoint.x-1, centerPoint.y-1)];
    CAShapeLayer *thirdLineLayer = [CAShapeLayer layer];
    thirdLineLayer.strokeColor = color.CGColor;
    thirdLineLayer.path = thirdLinePath.CGPath;
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:secondLineLayer];
    [view.layer addSublayer:firstLineLayer];
    [view.layer addSublayer:thirdLineLayer];
}

- (void)methodNames_drawOpenEye1:(UIView *)view color:(UIColor *)color {
    /// 上眼睑
    UIBezierPath *pathTop = [UIBezierPath bezierPath];
    [pathTop moveToPoint:CGPointMake(2, CGRectGetHeight(view.frame)/2)];
    [pathTop addQuadCurveToPoint:CGPointMake(CGRectGetWidth(view.frame)- 2, CGRectGetHeight(view.frame)/2) controlPoint:CGPointMake(CGRectGetWidth(view.frame)/2, CGRectGetHeight(view.frame)/15)];
    CAShapeLayer *layerTop = [CAShapeLayer layer];
    //设置描边色
    layerTop.strokeColor = color.CGColor;
    layerTop.fillColor = [UIColor clearColor].CGColor;
    layerTop.path = pathTop.CGPath;
    
    
    /// 下眼睑
    UIBezierPath *pathBottom = [UIBezierPath bezierPath];
    [pathBottom moveToPoint:CGPointMake(2, CGRectGetHeight(view.frame)/2)];
    [pathBottom addQuadCurveToPoint:CGPointMake(CGRectGetWidth(view.frame)- 2, CGRectGetHeight(view.frame)/2) controlPoint:CGPointMake(CGRectGetWidth(view.frame)/2, CGRectGetHeight(view.frame)*14/15)];
    CAShapeLayer *layerBottom = [CAShapeLayer layer];
    //设置描边色
    layerBottom.strokeColor = color.CGColor;
    layerBottom.fillColor = [UIColor clearColor].CGColor;
    layerBottom.path = pathTop.CGPath;
    layerBottom.path = pathBottom.CGPath;
    
    /// 眼球
    UIBezierPath *pathEye = [UIBezierPath bezierPathWithArcCenter:CGPointMake(CGRectGetWidth(view.frame)/2, CGRectGetHeight(view.frame)/2) radius:4 startAngle:0 endAngle:2 * M_PI clockwise:NO];
    CAShapeLayer *layerEye = [CAShapeLayer layer];
    layerEye.fillColor = color.CGColor;
    layerEye.path = pathEye.CGPath;
    
    
    UIBezierPath *pathPoint = [UIBezierPath bezierPathWithArcCenter:CGPointMake(CGRectGetWidth(view.frame)/2 - 2, CGRectGetHeight(view.frame)/2-2) radius:1 startAngle:0 endAngle:2 * M_PI clockwise:NO];
    CAShapeLayer *layerPoint = [CAShapeLayer layer];
    layerPoint.strokeColor = [UIColor whiteColor].CGColor;
    layerPoint.path = pathPoint.CGPath;
    
    
    [view.layer addSublayer:layerTop];
    [view.layer addSublayer:layerBottom];
    [view.layer addSublayer:layerEye];
    [view.layer addSublayer:layerPoint];
}


- (void)methodNames_drawCloseEye2:(UIView *)view color:(UIColor *)color {
    
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(27.21, 18.1)];
    [bezierPath addLineToPoint: CGPointMake(28.55, 20.2)];
    [bezierPath addCurveToPoint: CGPointMake(28.28, 21.15) controlPoint1: CGPointMake(28.76, 20.53) controlPoint2: CGPointMake(28.64, 20.96)];
    [bezierPath addCurveToPoint: CGPointMake(27.26, 20.91) controlPoint1: CGPointMake(27.93, 21.35) controlPoint2: CGPointMake(27.47, 21.24)];
    [bezierPath addLineToPoint: CGPointMake(25.96, 18.86)];
    [bezierPath addCurveToPoint: CGPointMake(21.59, 20.79) controlPoint1: CGPointMake(24.52, 19.69) controlPoint2: CGPointMake(23.06, 20.33)];
    [bezierPath addLineToPoint: CGPointMake(22.62, 23.1)];
    [bezierPath addCurveToPoint: CGPointMake(22.22, 24.01) controlPoint1: CGPointMake(22.78, 23.46) controlPoint2: CGPointMake(22.6, 23.86)];
    [bezierPath addCurveToPoint: CGPointMake(21.24, 23.64) controlPoint1: CGPointMake(21.84, 24.16) controlPoint2: CGPointMake(21.4, 23.99)];
    [bezierPath addLineToPoint: CGPointMake(20.17, 21.25)];
    [bezierPath addLineToPoint: CGPointMake(20.17, 21.24)];
    [bezierPath addCurveToPoint: CGPointMake(20.15, 21.19) controlPoint1: CGPointMake(20.16, 21.22) controlPoint2: CGPointMake(20.16, 21.21)];
    [bezierPath addCurveToPoint: CGPointMake(15.75, 21.71) controlPoint1: CGPointMake(18.68, 21.53) controlPoint2: CGPointMake(17.22, 21.7)];
    [bezierPath addLineToPoint: CGPointMake(15.75, 24.31)];
    [bezierPath addCurveToPoint: CGPointMake(15, 25) controlPoint1: CGPointMake(15.75, 24.69) controlPoint2: CGPointMake(15.41, 25)];
    [bezierPath addCurveToPoint: CGPointMake(14.25, 24.31) controlPoint1: CGPointMake(14.59, 25) controlPoint2: CGPointMake(14.25, 24.69)];
    [bezierPath addLineToPoint: CGPointMake(14.25, 21.72)];
    [bezierPath addCurveToPoint: CGPointMake(14.25, 21.67) controlPoint1: CGPointMake(14.25, 21.7) controlPoint2: CGPointMake(14.25, 21.69)];
    [bezierPath addCurveToPoint: CGPointMake(9.88, 20.95) controlPoint1: CGPointMake(12.79, 21.58) controlPoint2: CGPointMake(11.33, 21.33)];
    [bezierPath addCurveToPoint: CGPointMake(9.83, 21.25) controlPoint1: CGPointMake(9.89, 21.05) controlPoint2: CGPointMake(9.87, 21.15)];
    [bezierPath addLineToPoint: CGPointMake(8.76, 23.64)];
    [bezierPath addCurveToPoint: CGPointMake(7.78, 24.01) controlPoint1: CGPointMake(8.6, 23.99) controlPoint2: CGPointMake(8.17, 24.16)];
    [bezierPath addCurveToPoint: CGPointMake(7.38, 23.1) controlPoint1: CGPointMake(7.4, 23.86) controlPoint2: CGPointMake(7.22, 23.46)];
    [bezierPath addLineToPoint: CGPointMake(8.45, 20.71)];
    [bezierPath addLineToPoint: CGPointMake(8.45, 20.72)];
    [bezierPath addCurveToPoint: CGPointMake(8.55, 20.56) controlPoint1: CGPointMake(8.47, 20.66) controlPoint2: CGPointMake(8.5, 20.61)];
    [bezierPath addCurveToPoint: CGPointMake(4.63, 18.94) controlPoint1: CGPointMake(7.23, 20.12) controlPoint2: CGPointMake(5.92, 19.58)];
    [bezierPath addLineToPoint: CGPointMake(4.7, 18.97)];
    [bezierPath addCurveToPoint: CGPointMake(4.25, 18.74) controlPoint1: CGPointMake(4.55, 18.9) controlPoint2: CGPointMake(4.4, 18.82)];
    [bezierPath addLineToPoint: CGPointMake(2.74, 20.91)];
    [bezierPath addCurveToPoint: CGPointMake(1.72, 21.15) controlPoint1: CGPointMake(2.53, 21.24) controlPoint2: CGPointMake(2.07, 21.35)];
    [bezierPath addCurveToPoint: CGPointMake(1.45, 20.2) controlPoint1: CGPointMake(1.36, 20.96) controlPoint2: CGPointMake(1.24, 20.53)];
    [bezierPath addLineToPoint: CGPointMake(2.86, 17.98)];
    [bezierPath addCurveToPoint: CGPointMake(1.43, 17.08) controlPoint1: CGPointMake(2.36, 17.68) controlPoint2: CGPointMake(1.88, 17.38)];
    [bezierPath addCurveToPoint: CGPointMake(0.57, 16.46) controlPoint1: CGPointMake(1.1, 16.85) controlPoint2: CGPointMake(0.81, 16.65)];
    [bezierPath addCurveToPoint: CGPointMake(0.25, 16.21) controlPoint1: CGPointMake(0.41, 16.34) controlPoint2: CGPointMake(0.31, 16.26)];
    [bezierPath addCurveToPoint: CGPointMake(0.19, 15.23) controlPoint1: CGPointMake(-0.06, 15.96) controlPoint2: CGPointMake(-0.08, 15.52)];
    [bezierPath addCurveToPoint: CGPointMake(1.25, 15.18) controlPoint1: CGPointMake(0.47, 14.95) controlPoint2: CGPointMake(0.94, 14.92)];
    [bezierPath addCurveToPoint: CGPointMake(2.31, 15.96) controlPoint1: CGPointMake(1.43, 15.33) controlPoint2: CGPointMake(1.79, 15.6)];
    [bezierPath addCurveToPoint: CGPointMake(5.33, 17.71) controlPoint1: CGPointMake(3.2, 16.55) controlPoint2: CGPointMake(4.21, 17.15)];
    [bezierPath addCurveToPoint: CGPointMake(28.55, 15.35) controlPoint1: CGPointMake(12.93, 21.5) controlPoint2: CGPointMake(20.97, 21.53)];
    [bezierPath addCurveToPoint: CGPointMake(28.75, 15.18) controlPoint1: CGPointMake(28.65, 15.26) controlPoint2: CGPointMake(28.65, 15.26)];
    [bezierPath addCurveToPoint: CGPointMake(29.81, 15.23) controlPoint1: CGPointMake(29.06, 14.92) controlPoint2: CGPointMake(29.53, 14.95)];
    [bezierPath addCurveToPoint: CGPointMake(29.75, 16.21) controlPoint1: CGPointMake(30.09, 15.52) controlPoint2: CGPointMake(30.06, 15.96)];
    [bezierPath addCurveToPoint: CGPointMake(29.53, 16.39) controlPoint1: CGPointMake(29.64, 16.3) controlPoint2: CGPointMake(29.64, 16.3)];
    [bezierPath addCurveToPoint: CGPointMake(27.21, 18.1) controlPoint1: CGPointMake(28.76, 17.02) controlPoint2: CGPointMake(27.99, 17.59)];
    [bezierPath closePath];
    
    
    CAShapeLayer *layerPoint = [CAShapeLayer layer];
    layerPoint.fillColor = color.CGColor;
    layerPoint.path = bezierPath.CGPath;
    
    [view.layer addSublayer:layerPoint];
}


- (void)methodNames_drawOpenEye2:(UIView *)view color:(UIColor *)color{
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(28.63, 19.5)];
    [bezierPath addCurveToPoint: CGPointMake(15.07, 10.39) controlPoint1: CGPointMake(28.63, 14.63) controlPoint2: CGPointMake(22.62, 10.39)];
    [bezierPath addCurveToPoint: CGPointMake(1.51, 19.5) controlPoint1: CGPointMake(7.53, 10.39) controlPoint2: CGPointMake(1.51, 14.63)];
    [bezierPath addCurveToPoint: CGPointMake(15.07, 28.61) controlPoint1: CGPointMake(1.51, 24.36) controlPoint2: CGPointMake(7.53, 28.61)];
    [bezierPath addCurveToPoint: CGPointMake(28.63, 19.5) controlPoint1: CGPointMake(22.62, 28.61) controlPoint2: CGPointMake(28.63, 24.36)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(30.14, 19.5)];
    [bezierPath addCurveToPoint: CGPointMake(15.07, 30.61) controlPoint1: CGPointMake(30.14, 25.8) controlPoint2: CGPointMake(23.34, 30.61)];
    [bezierPath addCurveToPoint: CGPointMake(0, 19.5) controlPoint1: CGPointMake(6.8, 30.61) controlPoint2: CGPointMake(0, 25.8)];
    [bezierPath addCurveToPoint: CGPointMake(15.07, 8.39) controlPoint1: CGPointMake(0, 13.2) controlPoint2: CGPointMake(6.8, 8.39)];
    [bezierPath addCurveToPoint: CGPointMake(30.14, 19.5) controlPoint1: CGPointMake(23.34, 8.39) controlPoint2: CGPointMake(30.14, 13.2)];
    [bezierPath closePath];
    CAShapeLayer *layer_first = [CAShapeLayer layer];
    layer_first.fillColor = color.CGColor;
    layer_first.path = bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(13.61, 18.24)];
    [bezier2Path addCurveToPoint: CGPointMake(14.61, 16.16) controlPoint1: CGPointMake(13.72, 17.38) controlPoint2: CGPointMake(14.08, 16.64)];
    [bezier2Path addCurveToPoint: CGPointMake(14.8, 14.77) controlPoint1: CGPointMake(14.95, 15.84) controlPoint2: CGPointMake(15.03, 15.22)];
    [bezier2Path addCurveToPoint: CGPointMake(13.74, 14.52) controlPoint1: CGPointMake(14.56, 14.32) controlPoint2: CGPointMake(14.09, 14.21)];
    [bezier2Path addCurveToPoint: CGPointMake(12.12, 17.89) controlPoint1: CGPointMake(12.89, 15.31) controlPoint2: CGPointMake(12.3, 16.51)];
    [bezier2Path addCurveToPoint: CGPointMake(12.73, 19.05) controlPoint1: CGPointMake(12.05, 18.44) controlPoint2: CGPointMake(12.32, 18.95)];
    [bezier2Path addCurveToPoint: CGPointMake(13.61, 18.24) controlPoint1: CGPointMake(13.14, 19.14) controlPoint2: CGPointMake(13.54, 18.78)];
    [bezier2Path closePath];
    CAShapeLayer *layer_second = [CAShapeLayer layer];
    layer_second.fillColor = color.CGColor;
    layer_second.path = bezier2Path.CGPath;
    
    
    //// Bezier 3 Drawing
    UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
    [bezier3Path moveToPoint: CGPointMake(20.19, 18.7)];
    [bezier3Path addCurveToPoint: CGPointMake(15.41, 12.38) controlPoint1: CGPointMake(20.19, 15.21) controlPoint2: CGPointMake(18.05, 12.38)];
    [bezier3Path addCurveToPoint: CGPointMake(10.62, 18.7) controlPoint1: CGPointMake(12.76, 12.38) controlPoint2: CGPointMake(10.62, 15.21)];
    [bezier3Path addCurveToPoint: CGPointMake(15.41, 25.02) controlPoint1: CGPointMake(10.62, 22.19) controlPoint2: CGPointMake(12.76, 25.02)];
    [bezier3Path addCurveToPoint: CGPointMake(20.19, 18.7) controlPoint1: CGPointMake(18.05, 25.02) controlPoint2: CGPointMake(20.19, 22.19)];
    [bezier3Path closePath];
    [bezier3Path moveToPoint: CGPointMake(21.7, 18.7)];
    [bezier3Path addCurveToPoint: CGPointMake(15.41, 27.02) controlPoint1: CGPointMake(21.7, 23.29) controlPoint2: CGPointMake(18.88, 27.02)];
    [bezier3Path addCurveToPoint: CGPointMake(9.11, 18.7) controlPoint1: CGPointMake(11.93, 27.02) controlPoint2: CGPointMake(9.11, 23.29)];
    [bezier3Path addCurveToPoint: CGPointMake(15.41, 10.39) controlPoint1: CGPointMake(9.11, 14.11) controlPoint2: CGPointMake(11.93, 10.39)];
    [bezier3Path addCurveToPoint: CGPointMake(21.7, 18.7) controlPoint1: CGPointMake(18.88, 10.39) controlPoint2: CGPointMake(21.7, 14.11)];
    [bezier3Path closePath];
    [bezier3Path moveToPoint: CGPointMake(21.56, 4.72)];
    [bezier3Path addCurveToPoint: CGPointMake(20.54, 5.13) controlPoint1: CGPointMake(21.37, 5.2) controlPoint2: CGPointMake(20.91, 5.39)];
    [bezier3Path addCurveToPoint: CGPointMake(20.23, 3.78) controlPoint1: CGPointMake(20.17, 4.87) controlPoint2: CGPointMake(20.04, 4.26)];
    [bezier3Path addLineToPoint: CGPointMake(21.04, 1.79)];
    [bezier3Path addCurveToPoint: CGPointMake(22.06, 1.39) controlPoint1: CGPointMake(21.23, 1.31) controlPoint2: CGPointMake(21.69, 1.13)];
    [bezier3Path addCurveToPoint: CGPointMake(22.37, 2.74) controlPoint1: CGPointMake(22.43, 1.65) controlPoint2: CGPointMake(22.57, 2.25)];
    [bezier3Path addLineToPoint: CGPointMake(21.56, 4.72)];
    [bezier3Path closePath];
    [bezier3Path moveToPoint: CGPointMake(27.18, 7.79)];
    [bezier3Path addCurveToPoint: CGPointMake(26.13, 7.98) controlPoint1: CGPointMake(26.93, 8.23) controlPoint2: CGPointMake(26.46, 8.32)];
    [bezier3Path addCurveToPoint: CGPointMake(25.98, 6.59) controlPoint1: CGPointMake(25.79, 7.65) controlPoint2: CGPointMake(25.73, 7.02)];
    [bezier3Path addLineToPoint: CGPointMake(27, 4.83)];
    [bezier3Path addCurveToPoint: CGPointMake(28.05, 4.64) controlPoint1: CGPointMake(27.25, 4.39) controlPoint2: CGPointMake(27.72, 4.31)];
    [bezier3Path addCurveToPoint: CGPointMake(28.2, 6.04) controlPoint1: CGPointMake(28.39, 4.97) controlPoint2: CGPointMake(28.45, 5.6)];
    [bezier3Path addLineToPoint: CGPointMake(27.18, 7.79)];
    [bezier3Path closePath];
    [bezier3Path moveToPoint: CGPointMake(11.18, 3.78)];
    [bezier3Path addCurveToPoint: CGPointMake(10.87, 5.13) controlPoint1: CGPointMake(11.37, 4.26) controlPoint2: CGPointMake(11.24, 4.87)];
    [bezier3Path addCurveToPoint: CGPointMake(9.85, 4.72) controlPoint1: CGPointMake(10.5, 5.39) controlPoint2: CGPointMake(10.04, 5.2)];
    [bezier3Path addLineToPoint: CGPointMake(9.04, 2.74)];
    [bezier3Path addCurveToPoint: CGPointMake(9.35, 1.39) controlPoint1: CGPointMake(8.84, 2.25) controlPoint2: CGPointMake(8.98, 1.65)];
    [bezier3Path addCurveToPoint: CGPointMake(10.37, 1.79) controlPoint1: CGPointMake(9.72, 1.13) controlPoint2: CGPointMake(10.17, 1.31)];
    [bezier3Path addLineToPoint: CGPointMake(11.18, 3.78)];
    [bezier3Path closePath];
    [bezier3Path moveToPoint: CGPointMake(5.43, 6.59)];
    [bezier3Path addCurveToPoint: CGPointMake(5.28, 7.98) controlPoint1: CGPointMake(5.68, 7.02) controlPoint2: CGPointMake(5.62, 7.65)];
    [bezier3Path addCurveToPoint: CGPointMake(4.23, 7.79) controlPoint1: CGPointMake(4.95, 8.32) controlPoint2: CGPointMake(4.48, 8.23)];
    [bezier3Path addLineToPoint: CGPointMake(3.21, 6.04)];
    [bezier3Path addCurveToPoint: CGPointMake(3.36, 4.64) controlPoint1: CGPointMake(2.96, 5.6) controlPoint2: CGPointMake(3.02, 4.97)];
    [bezier3Path addCurveToPoint: CGPointMake(4.41, 4.83) controlPoint1: CGPointMake(3.69, 4.31) controlPoint2: CGPointMake(4.16, 4.39)];
    [bezier3Path addLineToPoint: CGPointMake(5.43, 6.59)];
    [bezier3Path closePath];
    [bezier3Path moveToPoint: CGPointMake(14.95, 1.4)];
    [bezier3Path addCurveToPoint: CGPointMake(15.7, 0.4) controlPoint1: CGPointMake(14.95, 0.85) controlPoint2: CGPointMake(15.29, 0.4)];
    [bezier3Path addCurveToPoint: CGPointMake(16.46, 1.4) controlPoint1: CGPointMake(16.12, 0.4) controlPoint2: CGPointMake(16.46, 0.85)];
    [bezier3Path addLineToPoint: CGPointMake(16.46, 3.61)];
    [bezier3Path addCurveToPoint: CGPointMake(15.7, 4.61) controlPoint1: CGPointMake(16.46, 4.17) controlPoint2: CGPointMake(16.12, 4.61)];
    [bezier3Path addCurveToPoint: CGPointMake(14.95, 3.61) controlPoint1: CGPointMake(15.29, 4.61) controlPoint2: CGPointMake(14.95, 4.17)];
    [bezier3Path addLineToPoint: CGPointMake(14.95, 1.4)];
    [bezier3Path closePath];
    CAShapeLayer *layer_third = [CAShapeLayer layer];
    layer_third.fillColor = color.CGColor;
    layer_third.path = bezier3Path.CGPath;
    
    [view.layer addSublayer:layer_first];
    [view.layer addSublayer:layer_second];
    [view.layer addSublayer:layer_third];
}


- (void)methodNames_drawCloseEye3:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(25.71, 15.19)];
    [bezierPath addCurveToPoint: CGPointMake(25.26, 15.39) controlPoint1: CGPointMake(25.59, 15.32) controlPoint2: CGPointMake(25.42, 15.39)];
    [bezierPath addCurveToPoint: CGPointMake(24.83, 15.21) controlPoint1: CGPointMake(25.11, 15.39) controlPoint2: CGPointMake(24.95, 15.33)];
    [bezierPath addCurveToPoint: CGPointMake(20.85, 12.1) controlPoint1: CGPointMake(23.97, 14.36) controlPoint2: CGPointMake(22.59, 13.12)];
    [bezierPath addCurveToPoint: CGPointMake(14.87, 10.28) controlPoint1: CGPointMake(18.8, 10.89) controlPoint2: CGPointMake(16.79, 10.28)];
    [bezierPath addCurveToPoint: CGPointMake(5.16, 14.97) controlPoint1: CGPointMake(13.07, 10.28) controlPoint2: CGPointMake(9.4, 10.89)];
    [bezierPath addCurveToPoint: CGPointMake(4.28, 14.93) controlPoint1: CGPointMake(4.91, 15.21) controlPoint2: CGPointMake(4.52, 15.19)];
    [bezierPath addCurveToPoint: CGPointMake(4.32, 14.03) controlPoint1: CGPointMake(4.05, 14.68) controlPoint2: CGPointMake(4.07, 14.27)];
    [bezierPath addCurveToPoint: CGPointMake(14.87, 9) controlPoint1: CGPointMake(6.27, 12.15) controlPoint2: CGPointMake(10.24, 9)];
    [bezierPath addCurveToPoint: CGPointMake(21.46, 10.99) controlPoint1: CGPointMake(17.01, 9) controlPoint2: CGPointMake(19.23, 9.67)];
    [bezierPath addCurveToPoint: CGPointMake(25.69, 14.29) controlPoint1: CGPointMake(23.31, 12.08) controlPoint2: CGPointMake(24.78, 13.38)];
    [bezierPath addCurveToPoint: CGPointMake(25.71, 15.19) controlPoint1: CGPointMake(25.94, 14.53) controlPoint2: CGPointMake(25.95, 14.94)];
    [bezierPath closePath];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(29.53, 14.01)];
    [bezier2Path addCurveToPoint: CGPointMake(25.26, 17.95) controlPoint1: CGPointMake(29.46, 14.09) controlPoint2: CGPointMake(27.86, 16.01)];
    [bezier2Path addCurveToPoint: CGPointMake(20.61, 20.66) controlPoint1: CGPointMake(23.72, 19.09) controlPoint2: CGPointMake(22.16, 20)];
    [bezier2Path addCurveToPoint: CGPointMake(14.84, 21.9) controlPoint1: CGPointMake(18.65, 21.49) controlPoint2: CGPointMake(16.71, 21.9)];
    [bezier2Path addCurveToPoint: CGPointMake(9.07, 20.66) controlPoint1: CGPointMake(12.97, 21.9) controlPoint2: CGPointMake(11.03, 21.49)];
    [bezier2Path addCurveToPoint: CGPointMake(4.42, 17.95) controlPoint1: CGPointMake(7.52, 20) controlPoint2: CGPointMake(5.96, 19.09)];
    [bezier2Path addCurveToPoint: CGPointMake(0.15, 14.01) controlPoint1: CGPointMake(1.82, 16.01) controlPoint2: CGPointMake(0.22, 14.09)];
    [bezier2Path addCurveToPoint: CGPointMake(0.22, 13.11) controlPoint1: CGPointMake(-0.07, 13.74) controlPoint2: CGPointMake(-0.04, 13.34)];
    [bezier2Path addCurveToPoint: CGPointMake(1.09, 13.18) controlPoint1: CGPointMake(0.48, 12.88) controlPoint2: CGPointMake(0.87, 12.91)];
    [bezier2Path addCurveToPoint: CGPointMake(5.17, 16.93) controlPoint1: CGPointMake(1.1, 13.2) controlPoint2: CGPointMake(2.68, 15.08)];
    [bezier2Path addCurveToPoint: CGPointMake(9.55, 19.48) controlPoint1: CGPointMake(6.62, 18.01) controlPoint2: CGPointMake(8.1, 18.87)];
    [bezier2Path addCurveToPoint: CGPointMake(14.84, 20.63) controlPoint1: CGPointMake(11.36, 20.24) controlPoint2: CGPointMake(13.13, 20.63)];
    [bezier2Path addCurveToPoint: CGPointMake(20.14, 19.47) controlPoint1: CGPointMake(16.55, 20.63) controlPoint2: CGPointMake(18.33, 20.24)];
    [bezier2Path addCurveToPoint: CGPointMake(24.53, 16.91) controlPoint1: CGPointMake(21.6, 18.86) controlPoint2: CGPointMake(23.08, 18)];
    [bezier2Path addCurveToPoint: CGPointMake(28.59, 13.18) controlPoint1: CGPointMake(27.02, 15.06) controlPoint2: CGPointMake(28.58, 13.2)];
    [bezier2Path addCurveToPoint: CGPointMake(29.46, 13.11) controlPoint1: CGPointMake(28.81, 12.91) controlPoint2: CGPointMake(29.2, 12.88)];
    [bezier2Path addCurveToPoint: CGPointMake(29.53, 14.01) controlPoint1: CGPointMake(29.72, 13.34) controlPoint2: CGPointMake(29.75, 13.74)];
    [bezier2Path closePath];
    CAShapeLayer *layer2 = [CAShapeLayer layer];
    layer2.fillColor = color.CGColor;
    layer2.path = bezier2Path.CGPath;
    
    [view.layer addSublayer:layer1];
    [view.layer addSublayer:layer2];
}

- (void)methodNames_drawOpenEye3:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(30.52, 14.89)];
    [bezierPath addCurveToPoint: CGPointMake(26.11, 10.96) controlPoint1: CGPointMake(30.46, 14.81) controlPoint2: CGPointMake(28.8, 12.89)];
    [bezierPath addCurveToPoint: CGPointMake(21.3, 8.25) controlPoint1: CGPointMake(24.52, 9.81) controlPoint2: CGPointMake(22.91, 8.9)];
    [bezierPath addCurveToPoint: CGPointMake(15.34, 7) controlPoint1: CGPointMake(19.28, 7.42) controlPoint2: CGPointMake(17.27, 7)];
    [bezierPath addCurveToPoint: CGPointMake(9.38, 8.25) controlPoint1: CGPointMake(13.4, 7) controlPoint2: CGPointMake(11.4, 7.42)];
    [bezierPath addCurveToPoint: CGPointMake(4.57, 10.96) controlPoint1: CGPointMake(7.77, 8.9) controlPoint2: CGPointMake(6.16, 9.81)];
    [bezierPath addCurveToPoint: CGPointMake(0.15, 14.89) controlPoint1: CGPointMake(1.88, 12.89) controlPoint2: CGPointMake(0.22, 14.81)];
    [bezierPath addCurveToPoint: CGPointMake(0.15, 15.73) controlPoint1: CGPointMake(-0.05, 15.13) controlPoint2: CGPointMake(-0.05, 15.49)];
    [bezierPath addCurveToPoint: CGPointMake(4.57, 19.66) controlPoint1: CGPointMake(0.22, 15.81) controlPoint2: CGPointMake(1.88, 17.72)];
    [bezierPath addCurveToPoint: CGPointMake(9.38, 22.37) controlPoint1: CGPointMake(6.16, 20.81) controlPoint2: CGPointMake(7.77, 21.72)];
    [bezierPath addCurveToPoint: CGPointMake(15.34, 23.62) controlPoint1: CGPointMake(11.4, 23.2) controlPoint2: CGPointMake(13.4, 23.62)];
    [bezierPath addCurveToPoint: CGPointMake(21.3, 22.37) controlPoint1: CGPointMake(17.27, 23.62) controlPoint2: CGPointMake(19.28, 23.2)];
    [bezierPath addCurveToPoint: CGPointMake(26.11, 19.66) controlPoint1: CGPointMake(22.91, 21.72) controlPoint2: CGPointMake(24.52, 20.81)];
    [bezierPath addCurveToPoint: CGPointMake(30.52, 15.73) controlPoint1: CGPointMake(28.8, 17.72) controlPoint2: CGPointMake(30.46, 15.81)];
    [bezierPath addCurveToPoint: CGPointMake(30.52, 14.89) controlPoint1: CGPointMake(30.73, 15.49) controlPoint2: CGPointMake(30.73, 15.13)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(10.54, 9.17)];
    [bezierPath addCurveToPoint: CGPointMake(15.34, 8.28) controlPoint1: CGPointMake(12.18, 8.58) controlPoint2: CGPointMake(13.79, 8.28)];
    [bezierPath addCurveToPoint: CGPointMake(20.14, 9.17) controlPoint1: CGPointMake(16.89, 8.28) controlPoint2: CGPointMake(18.5, 8.58)];
    [bezierPath addCurveToPoint: CGPointMake(21.73, 13.39) controlPoint1: CGPointMake(21.16, 10.33) controlPoint2: CGPointMake(21.73, 11.83)];
    [bezierPath addCurveToPoint: CGPointMake(19.86, 17.91) controlPoint1: CGPointMake(21.73, 15.1) controlPoint2: CGPointMake(21.07, 16.7)];
    [bezierPath addCurveToPoint: CGPointMake(15.34, 19.78) controlPoint1: CGPointMake(18.65, 19.12) controlPoint2: CGPointMake(17.05, 19.78)];
    [bezierPath addCurveToPoint: CGPointMake(10.82, 17.91) controlPoint1: CGPointMake(13.63, 19.78) controlPoint2: CGPointMake(12.03, 19.12)];
    [bezierPath addCurveToPoint: CGPointMake(8.95, 13.39) controlPoint1: CGPointMake(9.61, 16.7) controlPoint2: CGPointMake(8.95, 15.1)];
    [bezierPath addCurveToPoint: CGPointMake(10.54, 9.17) controlPoint1: CGPointMake(8.95, 11.83) controlPoint2: CGPointMake(9.51, 10.33)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(25.36, 18.62)];
    [bezierPath addCurveToPoint: CGPointMake(20.82, 21.19) controlPoint1: CGPointMake(23.86, 19.71) controlPoint2: CGPointMake(22.33, 20.57)];
    [bezierPath addCurveToPoint: CGPointMake(15.34, 22.34) controlPoint1: CGPointMake(18.95, 21.95) controlPoint2: CGPointMake(17.11, 22.34)];
    [bezierPath addCurveToPoint: CGPointMake(9.88, 21.19) controlPoint1: CGPointMake(13.58, 22.34) controlPoint2: CGPointMake(11.74, 21.95)];
    [bezierPath addCurveToPoint: CGPointMake(5.34, 18.64) controlPoint1: CGPointMake(8.37, 20.58) controlPoint2: CGPointMake(6.85, 19.72)];
    [bezierPath addCurveToPoint: CGPointMake(1.51, 15.31) controlPoint1: CGPointMake(3.49, 17.31) controlPoint2: CGPointMake(2.13, 15.97)];
    [bezierPath addCurveToPoint: CGPointMake(5.34, 11.97) controlPoint1: CGPointMake(2.13, 14.65) controlPoint2: CGPointMake(3.49, 13.3)];
    [bezierPath addCurveToPoint: CGPointMake(8.41, 10.09) controlPoint1: CGPointMake(6.36, 11.24) controlPoint2: CGPointMake(7.39, 10.61)];
    [bezierPath addCurveToPoint: CGPointMake(7.67, 13.39) controlPoint1: CGPointMake(7.93, 11.11) controlPoint2: CGPointMake(7.67, 12.24)];
    [bezierPath addCurveToPoint: CGPointMake(9.92, 18.82) controlPoint1: CGPointMake(7.67, 15.44) controlPoint2: CGPointMake(8.47, 17.37)];
    [bezierPath addCurveToPoint: CGPointMake(15.34, 21.06) controlPoint1: CGPointMake(11.36, 20.26) controlPoint2: CGPointMake(13.29, 21.06)];
    [bezierPath addCurveToPoint: CGPointMake(20.76, 18.82) controlPoint1: CGPointMake(17.39, 21.06) controlPoint2: CGPointMake(19.31, 20.26)];
    [bezierPath addCurveToPoint: CGPointMake(23.01, 13.39) controlPoint1: CGPointMake(22.21, 17.37) controlPoint2: CGPointMake(23.01, 15.44)];
    [bezierPath addCurveToPoint: CGPointMake(22.27, 10.09) controlPoint1: CGPointMake(23.01, 12.24) controlPoint2: CGPointMake(22.75, 11.11)];
    [bezierPath addCurveToPoint: CGPointMake(25.33, 11.97) controlPoint1: CGPointMake(23.29, 10.61) controlPoint2: CGPointMake(24.32, 11.24)];
    [bezierPath addCurveToPoint: CGPointMake(29.17, 15.31) controlPoint1: CGPointMake(27.18, 13.31) controlPoint2: CGPointMake(28.55, 14.65)];
    [bezierPath addCurveToPoint: CGPointMake(25.36, 18.62) controlPoint1: CGPointMake(28.55, 15.96) controlPoint2: CGPointMake(27.2, 17.3)];
    [bezierPath closePath];
    
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = bezierPath.CGPath;
    
    
    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(12.16, 10.18, 6.4, 6.4)];
    CAShapeLayer *layer2 = [CAShapeLayer layer];
    layer2.fillColor = color.CGColor;
    layer2.path = ovalPath.CGPath;
    
    [view.layer addSublayer:layer1];
    [view.layer addSublayer:layer2];
}

- (void)methodNames_drawCloseEye4:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(0, 15)];
    [bezierPath addCurveToPoint: CGPointMake(15, 22.17) controlPoint1: CGPointMake(0, 15) controlPoint2: CGPointMake(5.32, 22.17)];
    [bezierPath addCurveToPoint: CGPointMake(30, 15) controlPoint1: CGPointMake(24.68, 22.17) controlPoint2: CGPointMake(30, 15)];
    [bezierPath addCurveToPoint: CGPointMake(15, 7.83) controlPoint1: CGPointMake(30, 15) controlPoint2: CGPointMake(24.68, 7.83)];
    [bezierPath addCurveToPoint: CGPointMake(0, 15) controlPoint1: CGPointMake(5.32, 7.83) controlPoint2: CGPointMake(0, 15)];
    [bezierPath closePath];
    
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.lineWidth = 2;
    layer1.fillColor = color.CGColor;
    layer1.path = bezierPath.CGPath;
    layer1.fillColor = [UIColor whiteColor].CGColor;
    
    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(12, 12, 6, 6)];
    CAShapeLayer *layer2 = [CAShapeLayer layer];
    layer2.lineWidth = 2;
    layer2.fillColor = color.CGColor;
    layer2.path = ovalPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(3.87, 26)];
    [bezier2Path addLineToPoint: CGPointMake(26.13, 4)];
    CAShapeLayer *layer3 = [CAShapeLayer layer];
    layer3.lineWidth = 2;
    layer3.fillColor = color.CGColor;
    layer3.path = bezier2Path.CGPath;
    
    [view.layer addSublayer:layer1];
    [view.layer addSublayer:layer2];
    [view.layer addSublayer:layer3];
}

- (void)methodNames_drawOpenEye4:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(15, 5)];
    [bezierPath addCurveToPoint: CGPointMake(0.16, 14.35) controlPoint1: CGPointMake(5.24, 5) controlPoint2: CGPointMake(0.36, 13.97)];
    [bezierPath addCurveToPoint: CGPointMake(0.16, 15.65) controlPoint1: CGPointMake(-0.05, 14.74) controlPoint2: CGPointMake(-0.05, 15.26)];
    [bezierPath addCurveToPoint: CGPointMake(15, 25) controlPoint1: CGPointMake(0.36, 16.03) controlPoint2: CGPointMake(5.24, 25)];
    [bezierPath addCurveToPoint: CGPointMake(29.84, 15.65) controlPoint1: CGPointMake(24.76, 25) controlPoint2: CGPointMake(29.64, 16.03)];
    [bezierPath addCurveToPoint: CGPointMake(29.84, 14.35) controlPoint1: CGPointMake(30.05, 15.26) controlPoint2: CGPointMake(30.05, 14.74)];
    [bezierPath addCurveToPoint: CGPointMake(15, 5) controlPoint1: CGPointMake(29.64, 13.97) controlPoint2: CGPointMake(24.76, 5)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(15, 22.65)];
    [bezierPath addCurveToPoint: CGPointMake(2.11, 15) controlPoint1: CGPointMake(7.73, 22.65) controlPoint2: CGPointMake(3.39, 16.95)];
    [bezierPath addCurveToPoint: CGPointMake(15, 7.35) controlPoint1: CGPointMake(3.39, 13.04) controlPoint2: CGPointMake(7.7, 7.35)];
    [bezierPath addCurveToPoint: CGPointMake(27.88, 15) controlPoint1: CGPointMake(22.27, 7.35) controlPoint2: CGPointMake(26.61, 13.05)];
    [bezierPath addCurveToPoint: CGPointMake(15, 22.65) controlPoint1: CGPointMake(26.61, 16.96) controlPoint2: CGPointMake(22.3, 22.65)];
    [bezierPath closePath];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(15, 9.71)];
    [bezier2Path addCurveToPoint: CGPointMake(10.78, 15) controlPoint1: CGPointMake(12.67, 9.71) controlPoint2: CGPointMake(10.78, 12.08)];
    [bezier2Path addCurveToPoint: CGPointMake(15, 20.29) controlPoint1: CGPointMake(10.78, 17.92) controlPoint2: CGPointMake(12.67, 20.29)];
    [bezier2Path addCurveToPoint: CGPointMake(19.22, 15) controlPoint1: CGPointMake(17.33, 20.29) controlPoint2: CGPointMake(19.22, 17.92)];
    [bezier2Path addCurveToPoint: CGPointMake(15, 9.71) controlPoint1: CGPointMake(19.22, 12.08) controlPoint2: CGPointMake(17.33, 9.71)];
    [bezier2Path closePath];
    [bezier2Path moveToPoint: CGPointMake(15, 17.94)];
    [bezier2Path addCurveToPoint: CGPointMake(12.66, 15) controlPoint1: CGPointMake(13.71, 17.94) controlPoint2: CGPointMake(12.66, 16.62)];
    [bezier2Path addCurveToPoint: CGPointMake(15, 12.06) controlPoint1: CGPointMake(12.66, 13.38) controlPoint2: CGPointMake(13.71, 12.06)];
    [bezier2Path addCurveToPoint: CGPointMake(17.34, 15) controlPoint1: CGPointMake(16.29, 12.06) controlPoint2: CGPointMake(17.34, 13.38)];
    [bezier2Path addCurveToPoint: CGPointMake(15, 17.94) controlPoint1: CGPointMake(17.34, 16.62) controlPoint2: CGPointMake(16.29, 17.94)];
    [bezier2Path closePath];
    CAShapeLayer *layer2 = [CAShapeLayer layer];
    layer2.fillColor = color.CGColor;
    layer2.path = bezier2Path.CGPath;
    
    [view.layer addSublayer:layer1];
    [view.layer addSublayer:layer2];
    
}
#pragma mark ---------- 用户
- (void)methodNames_drawPerson1:(UIView *)view color:(UIColor *)color {
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(20.67, 9.62)];
    [bezierPath addCurveToPoint: CGPointMake(14.67, 3.33) controlPoint1: CGPointMake(20.67, 5.88) controlPoint2: CGPointMake(18.13, 3.33)];
    [bezierPath addCurveToPoint: CGPointMake(8.67, 9.62) controlPoint1: CGPointMake(11.2, 3.33) controlPoint2: CGPointMake(8.67, 5.88)];
    [bezierPath addCurveToPoint: CGPointMake(14.67, 16.67) controlPoint1: CGPointMake(8.67, 13.54) controlPoint2: CGPointMake(11.39, 16.67)];
    [bezierPath addCurveToPoint: CGPointMake(20.67, 9.62) controlPoint1: CGPointMake(17.94, 16.67) controlPoint2: CGPointMake(20.67, 13.54)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(22, 9.62)];
    [bezierPath addCurveToPoint: CGPointMake(14.67, 18) controlPoint1: CGPointMake(22, 14.23) controlPoint2: CGPointMake(18.73, 18)];
    [bezierPath addCurveToPoint: CGPointMake(7.33, 9.62) controlPoint1: CGPointMake(10.6, 18) controlPoint2: CGPointMake(7.33, 14.23)];
    [bezierPath addCurveToPoint: CGPointMake(14.67, 2) controlPoint1: CGPointMake(7.33, 5.01) controlPoint2: CGPointMake(10.6, 2)];
    [bezierPath addCurveToPoint: CGPointMake(22, 9.62) controlPoint1: CGPointMake(18.73, 2) controlPoint2: CGPointMake(22, 5.01)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(14.67, 19.33)];
    [bezierPath addCurveToPoint: CGPointMake(27.32, 27.35) controlPoint1: CGPointMake(27.45, 19.33) controlPoint2: CGPointMake(27.32, 27.35)];
    [bezierPath addCurveToPoint: CGPointMake(26.16, 28.67) controlPoint1: CGPointMake(27.42, 28.08) controlPoint2: CGPointMake(26.9, 28.67)];
    [bezierPath addLineToPoint: CGPointMake(3.18, 28.67)];
    [bezierPath addCurveToPoint: CGPointMake(2.02, 27.35) controlPoint1: CGPointMake(2.44, 28.67) controlPoint2: CGPointMake(1.89, 28.07)];
    [bezierPath addCurveToPoint: CGPointMake(14.67, 19.33) controlPoint1: CGPointMake(2.02, 27.35) controlPoint2: CGPointMake(1.89, 19.33)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(3.35, 27.33)];
    [bezierPath addLineToPoint: CGPointMake(3.35, 27.45)];
    [bezierPath addLineToPoint: CGPointMake(3.33, 27.58)];
    [bezierPath addCurveToPoint: CGPointMake(3.18, 27.33) controlPoint1: CGPointMake(3.35, 27.46) controlPoint2: CGPointMake(3.24, 27.33)];
    [bezierPath addLineToPoint: CGPointMake(26.16, 27.33)];
    [bezierPath addCurveToPoint: CGPointMake(26, 27.53) controlPoint1: CGPointMake(26.1, 27.33) controlPoint2: CGPointMake(25.99, 27.45)];
    [bezierPath addLineToPoint: CGPointMake(25.99, 27.43)];
    [bezierPath addLineToPoint: CGPointMake(25.99, 27.33)];
    [bezierPath addCurveToPoint: CGPointMake(25.97, 27.11) controlPoint1: CGPointMake(25.99, 27.3) controlPoint2: CGPointMake(25.98, 27.22)];
    [bezierPath addLineToPoint: CGPointMake(25.97, 27.13)];
    [bezierPath addCurveToPoint: CGPointMake(25.85, 26.44) controlPoint1: CGPointMake(25.95, 26.9) controlPoint2: CGPointMake(25.91, 26.67)];
    [bezierPath addLineToPoint: CGPointMake(25.85, 26.43)];
    [bezierPath addCurveToPoint: CGPointMake(24.75, 24.18) controlPoint1: CGPointMake(25.65, 25.61) controlPoint2: CGPointMake(25.27, 24.85)];
    [bezierPath addCurveToPoint: CGPointMake(14.67, 20.67) controlPoint1: CGPointMake(23.05, 22) controlPoint2: CGPointMake(19.87, 20.67)];
    [bezierPath addCurveToPoint: CGPointMake(4.6, 24.16) controlPoint1: CGPointMake(9.47, 20.67) controlPoint2: CGPointMake(6.29, 22)];
    [bezierPath addLineToPoint: CGPointMake(4.59, 24.18)];
    [bezierPath addCurveToPoint: CGPointMake(3.49, 26.43) controlPoint1: CGPointMake(4.07, 24.85) controlPoint2: CGPointMake(3.69, 25.61)];
    [bezierPath addCurveToPoint: CGPointMake(3.37, 27.11) controlPoint1: CGPointMake(3.43, 26.65) controlPoint2: CGPointMake(3.39, 26.89)];
    [bezierPath addLineToPoint: CGPointMake(3.37, 27.09)];
    [bezierPath addCurveToPoint: CGPointMake(3.35, 27.31) controlPoint1: CGPointMake(3.36, 27.16) controlPoint2: CGPointMake(3.35, 27.23)];
    [bezierPath addLineToPoint: CGPointMake(3.35, 27.33)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    [view.layer addSublayer:layer];
}

- (void)methodNames_drawPerson2:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(7.94, 24.78)];
    [bezierPath addLineToPoint: CGPointMake(7.96, 24.8)];
    [bezierPath addCurveToPoint: CGPointMake(15.31, 27.33) controlPoint1: CGPointMake(10.06, 26.44) controlPoint2: CGPointMake(12.65, 27.33)];
    [bezierPath addCurveToPoint: CGPointMake(22.73, 24.78) controlPoint1: CGPointMake(18.12, 27.33) controlPoint2: CGPointMake(20.69, 26.38)];
    [bezierPath addLineToPoint: CGPointMake(22.73, 24.78)];
    [bezierPath addCurveToPoint: CGPointMake(22.64, 24.66) controlPoint1: CGPointMake(22.69, 24.75) controlPoint2: CGPointMake(22.66, 24.71)];
    [bezierPath addLineToPoint: CGPointMake(22.61, 24.62)];
    [bezierPath addCurveToPoint: CGPointMake(21.46, 23.21) controlPoint1: CGPointMake(22.28, 24.11) controlPoint2: CGPointMake(21.89, 23.64)];
    [bezierPath addLineToPoint: CGPointMake(21.45, 23.2)];
    [bezierPath addCurveToPoint: CGPointMake(15.35, 20.67) controlPoint1: CGPointMake(19.83, 21.58) controlPoint2: CGPointMake(17.64, 20.67)];
    [bezierPath addCurveToPoint: CGPointMake(9.21, 23.21) controlPoint1: CGPointMake(13, 20.67) controlPoint2: CGPointMake(10.82, 21.59)];
    [bezierPath addLineToPoint: CGPointMake(9.2, 23.21)];
    [bezierPath addCurveToPoint: CGPointMake(8.06, 24.62) controlPoint1: CGPointMake(8.77, 23.64) controlPoint2: CGPointMake(8.39, 24.11)];
    [bezierPath addCurveToPoint: CGPointMake(7.94, 24.78) controlPoint1: CGPointMake(8, 24.71) controlPoint2: CGPointMake(7.97, 24.75)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(6.93, 23.9)];
    [bezierPath addLineToPoint: CGPointMake(6.94, 23.89)];
    [bezierPath addCurveToPoint: CGPointMake(8.26, 22.26) controlPoint1: CGPointMake(7.32, 23.31) controlPoint2: CGPointMake(7.77, 22.76)];
    [bezierPath addLineToPoint: CGPointMake(8.27, 22.25)];
    [bezierPath addCurveToPoint: CGPointMake(15.32, 19.33) controlPoint1: CGPointMake(10.14, 20.38) controlPoint2: CGPointMake(12.68, 19.33)];
    [bezierPath addCurveToPoint: CGPointMake(22.4, 22.26) controlPoint1: CGPointMake(18.02, 19.33) controlPoint2: CGPointMake(20.54, 20.4)];
    [bezierPath addLineToPoint: CGPointMake(22.4, 22.26)];
    [bezierPath addCurveToPoint: CGPointMake(23.73, 23.89) controlPoint1: CGPointMake(22.9, 22.76) controlPoint2: CGPointMake(23.34, 23.31)];
    [bezierPath addLineToPoint: CGPointMake(23.68, 23.95)];
    [bezierPath addCurveToPoint: CGPointMake(27.33, 15.35) controlPoint1: CGPointMake(26.01, 21.7) controlPoint2: CGPointMake(27.33, 18.59)];
    [bezierPath addCurveToPoint: CGPointMake(15.33, 3.33) controlPoint1: CGPointMake(27.33, 8.71) controlPoint2: CGPointMake(21.96, 3.33)];
    [bezierPath addCurveToPoint: CGPointMake(3.33, 15.33) controlPoint1: CGPointMake(8.71, 3.33) controlPoint2: CGPointMake(3.33, 8.71)];
    [bezierPath addCurveToPoint: CGPointMake(6.93, 23.9) controlPoint1: CGPointMake(3.33, 18.69) controlPoint2: CGPointMake(4.71, 21.73)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(15.33, 28.67)];
    [bezierPath addCurveToPoint: CGPointMake(2, 15.33) controlPoint1: CGPointMake(7.97, 28.67) controlPoint2: CGPointMake(2, 22.7)];
    [bezierPath addCurveToPoint: CGPointMake(15.33, 2) controlPoint1: CGPointMake(2, 7.97) controlPoint2: CGPointMake(7.97, 2)];
    [bezierPath addCurveToPoint: CGPointMake(28.67, 15.33) controlPoint1: CGPointMake(22.7, 2) controlPoint2: CGPointMake(28.67, 7.97)];
    [bezierPath addCurveToPoint: CGPointMake(15.33, 28.67) controlPoint1: CGPointMake(28.67, 22.7) controlPoint2: CGPointMake(22.7, 28.67)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(15.33, 18)];
    [bezierPath addLineToPoint: CGPointMake(15.33, 18)];
    [bezierPath addCurveToPoint: CGPointMake(9.33, 12) controlPoint1: CGPointMake(12.02, 18) controlPoint2: CGPointMake(9.33, 15.31)];
    [bezierPath addCurveToPoint: CGPointMake(15.33, 6) controlPoint1: CGPointMake(9.33, 8.69) controlPoint2: CGPointMake(12.02, 6)];
    [bezierPath addLineToPoint: CGPointMake(15.33, 6)];
    [bezierPath addCurveToPoint: CGPointMake(21.33, 12) controlPoint1: CGPointMake(18.65, 6) controlPoint2: CGPointMake(21.33, 8.69)];
    [bezierPath addCurveToPoint: CGPointMake(15.33, 18) controlPoint1: CGPointMake(21.33, 15.31) controlPoint2: CGPointMake(18.65, 18)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(15.33, 16.67)];
    [bezierPath addLineToPoint: CGPointMake(15.33, 16.67)];
    [bezierPath addCurveToPoint: CGPointMake(20, 12) controlPoint1: CGPointMake(17.91, 16.67) controlPoint2: CGPointMake(20, 14.58)];
    [bezierPath addCurveToPoint: CGPointMake(15.33, 7.33) controlPoint1: CGPointMake(20, 9.42) controlPoint2: CGPointMake(17.91, 7.33)];
    [bezierPath addLineToPoint: CGPointMake(15.33, 7.33)];
    [bezierPath addCurveToPoint: CGPointMake(10.67, 12) controlPoint1: CGPointMake(12.76, 7.33) controlPoint2: CGPointMake(10.67, 9.42)];
    [bezierPath addCurveToPoint: CGPointMake(15.33, 16.67) controlPoint1: CGPointMake(10.67, 14.58) controlPoint2: CGPointMake(12.76, 16.67)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    [view.layer addSublayer:layer];
}

- (void)methodNames_drawPerson3:(UIView *)view color:(UIColor *)color {
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(23.35, 10.94)];
    [bezierPath addCurveToPoint: CGPointMake(14.3, 2) controlPoint1: CGPointMake(23.35, 6) controlPoint2: CGPointMake(19.3, 2)];
    [bezierPath addCurveToPoint: CGPointMake(5.26, 10.94) controlPoint1: CGPointMake(9.31, 2) controlPoint2: CGPointMake(5.26, 6)];
    [bezierPath addCurveToPoint: CGPointMake(8.72, 17.95) controlPoint1: CGPointMake(5.26, 13.79) controlPoint2: CGPointMake(6.61, 16.32)];
    [bezierPath addCurveToPoint: CGPointMake(2, 28.02) controlPoint1: CGPointMake(4.95, 19.85) controlPoint2: CGPointMake(2.29, 23.63)];
    [bezierPath addLineToPoint: CGPointMake(3.35, 28.02)];
    [bezierPath addCurveToPoint: CGPointMake(10.06, 18.82) controlPoint1: CGPointMake(3.67, 23.91) controlPoint2: CGPointMake(6.34, 20.27)];
    [bezierPath addCurveToPoint: CGPointMake(14.3, 19.87) controlPoint1: CGPointMake(11.25, 19.38) controlPoint2: CGPointMake(12.9, 19.87)];
    [bezierPath addCurveToPoint: CGPointMake(18.21, 18.98) controlPoint1: CGPointMake(15.71, 19.87) controlPoint2: CGPointMake(17.03, 19.55)];
    [bezierPath addLineToPoint: CGPointMake(19.14, 18.45)];
    [bezierPath addLineToPoint: CGPointMake(19.89, 17.95)];
    [bezierPath addCurveToPoint: CGPointMake(23.35, 10.94) controlPoint1: CGPointMake(21.99, 16.32) controlPoint2: CGPointMake(23.35, 13.79)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(21.96, 19.27)];
    [bezierPath addLineToPoint: CGPointMake(21.95, 19.27)];
    [bezierPath addCurveToPoint: CGPointMake(21.38, 19.04) controlPoint1: CGPointMake(21.8, 19.13) controlPoint2: CGPointMake(21.6, 19.04)];
    [bezierPath addCurveToPoint: CGPointMake(20.56, 19.67) controlPoint1: CGPointMake(20.93, 19.04) controlPoint2: CGPointMake(20.56, 19.22)];
    [bezierPath addCurveToPoint: CGPointMake(21, 20.39) controlPoint1: CGPointMake(20.56, 19.99) controlPoint2: CGPointMake(20.74, 20.25)];
    [bezierPath addLineToPoint: CGPointMake(20.99, 20.4)];
    [bezierPath addCurveToPoint: CGPointMake(24.96, 28.02) controlPoint1: CGPointMake(23.47, 22.16) controlPoint2: CGPointMake(24.72, 24.84)];
    [bezierPath addLineToPoint: CGPointMake(26.61, 28.02)];
    [bezierPath addCurveToPoint: CGPointMake(21.96, 19.27) controlPoint1: CGPointMake(26.37, 24.49) controlPoint2: CGPointMake(24.6, 21.34)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    [view.layer addSublayer:layer];
    
}

- (void)methodNames_drawPerson4:(UIView *)view color:(UIColor *)color {
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(26.43, 26.26)];
    [bezierPath addCurveToPoint: CGPointMake(19, 23.51) controlPoint1: CGPointMake(26.43, 26.26) controlPoint2: CGPointMake(21.34, 23.67)];
    [bezierPath addLineToPoint: CGPointMake(19, 22.77)];
    [bezierPath addCurveToPoint: CGPointMake(25.09, 12.77) controlPoint1: CGPointMake(22.74, 21.17) controlPoint2: CGPointMake(25.09, 17.3)];
    [bezierPath addCurveToPoint: CGPointMake(14.93, 2) controlPoint1: CGPointMake(25.09, 6.83) controlPoint2: CGPointMake(20.54, 2)];
    [bezierPath addCurveToPoint: CGPointMake(4.77, 12.77) controlPoint1: CGPointMake(9.33, 2) controlPoint2: CGPointMake(4.77, 6.83)];
    [bezierPath addCurveToPoint: CGPointMake(11.01, 22.82) controlPoint1: CGPointMake(4.77, 17.35) controlPoint2: CGPointMake(7.19, 21.27)];
    [bezierPath addLineToPoint: CGPointMake(11.01, 23.51)];
    [bezierPath addLineToPoint: CGPointMake(10.96, 23.51)];
    [bezierPath addCurveToPoint: CGPointMake(3.61, 26.25) controlPoint1: CGPointMake(8.79, 23.61) controlPoint2: CGPointMake(3.61, 26.25)];
    [bezierPath addCurveToPoint: CGPointMake(3.01, 27.25) controlPoint1: CGPointMake(3.61, 26.25) controlPoint2: CGPointMake(2.93, 26.82)];
    [bezierPath addCurveToPoint: CGPointMake(3.91, 28) controlPoint1: CGPointMake(3.08, 27.68) controlPoint2: CGPointMake(3.47, 28)];
    [bezierPath addLineToPoint: CGPointMake(12.23, 28)];
    [bezierPath addLineToPoint: CGPointMake(17.77, 28)];
    [bezierPath addLineToPoint: CGPointMake(26.08, 28)];
    [bezierPath addCurveToPoint: CGPointMake(26.99, 27.26) controlPoint1: CGPointMake(26.53, 28) controlPoint2: CGPointMake(26.91, 27.69)];
    [bezierPath addCurveToPoint: CGPointMake(26.43, 26.26) controlPoint1: CGPointMake(27.08, 26.84) controlPoint2: CGPointMake(26.43, 26.26)];
    [bezierPath closePath];
    
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;

    [view.layer addSublayer:layer];
}

- (void)methodNames_drawPerson5:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(4, 28)];
    [bezierPath addCurveToPoint: CGPointMake(3.16, 27.53) controlPoint1: CGPointMake(3.67, 28) controlPoint2: CGPointMake(3.35, 27.83)];
    [bezierPath addCurveToPoint: CGPointMake(3.47, 26.15) controlPoint1: CGPointMake(2.86, 27.07) controlPoint2: CGPointMake(3, 26.45)];
    [bezierPath addCurveToPoint: CGPointMake(10.99, 23.32) controlPoint1: CGPointMake(3.64, 26.04) controlPoint2: CGPointMake(7.73, 23.48)];
    [bezierPath addLineToPoint: CGPointMake(11, 23.32)];
    [bezierPath addLineToPoint: CGPointMake(11, 22.76)];
    [bezierPath addCurveToPoint: CGPointMake(4.76, 12.75) controlPoint1: CGPointMake(7.24, 21.2) controlPoint2: CGPointMake(4.76, 17.27)];
    [bezierPath addCurveToPoint: CGPointMake(14.93, 2) controlPoint1: CGPointMake(4.76, 6.82) controlPoint2: CGPointMake(9.32, 2)];
    [bezierPath addCurveToPoint: CGPointMake(25.09, 12.75) controlPoint1: CGPointMake(20.53, 2) controlPoint2: CGPointMake(25.09, 6.82)];
    [bezierPath addCurveToPoint: CGPointMake(19, 22.7) controlPoint1: CGPointMake(25.09, 17.27) controlPoint2: CGPointMake(22.72, 21.09)];
    [bezierPath addLineToPoint: CGPointMake(19, 23.33)];
    [bezierPath addCurveToPoint: CGPointMake(26.51, 26.14) controlPoint1: CGPointMake(22.27, 23.63) controlPoint2: CGPointMake(26.33, 26.04)];
    [bezierPath addCurveToPoint: CGPointMake(26.86, 27.51) controlPoint1: CGPointMake(26.98, 26.43) controlPoint2: CGPointMake(27.14, 27.04)];
    [bezierPath addCurveToPoint: CGPointMake(25.48, 27.86) controlPoint1: CGPointMake(26.57, 27.98) controlPoint2: CGPointMake(25.96, 28.14)];
    [bezierPath addCurveToPoint: CGPointMake(18.79, 25.31) controlPoint1: CGPointMake(25.45, 27.83) controlPoint2: CGPointMake(21.54, 25.52)];
    [bezierPath addLineToPoint: CGPointMake(18, 25.31)];
    [bezierPath addCurveToPoint: CGPointMake(17, 24.31) controlPoint1: CGPointMake(17.44, 25.31) controlPoint2: CGPointMake(17, 24.87)];
    [bezierPath addLineToPoint: CGPointMake(17, 22)];
    [bezierPath addCurveToPoint: CGPointMake(17.67, 21.06) controlPoint1: CGPointMake(17, 21.58) controlPoint2: CGPointMake(17.27, 21.2)];
    [bezierPath addCurveToPoint: CGPointMake(23.09, 12.73) controlPoint1: CGPointMake(20.97, 19.92) controlPoint2: CGPointMake(23.09, 16.66)];
    [bezierPath addCurveToPoint: CGPointMake(14.93, 4) controlPoint1: CGPointMake(23.1, 7.92) controlPoint2: CGPointMake(19.44, 4)];
    [bezierPath addCurveToPoint: CGPointMake(6.77, 12.75) controlPoint1: CGPointMake(10.43, 4) controlPoint2: CGPointMake(6.77, 7.92)];
    [bezierPath addCurveToPoint: CGPointMake(12.31, 21.11) controlPoint1: CGPointMake(6.77, 16.67) controlPoint2: CGPointMake(9, 20.03)];
    [bezierPath addCurveToPoint: CGPointMake(13.01, 22.06) controlPoint1: CGPointMake(12.73, 21.24) controlPoint2: CGPointMake(13.01, 21.63)];
    [bezierPath addLineToPoint: CGPointMake(13.01, 24.32)];
    [bezierPath addCurveToPoint: CGPointMake(12.01, 25.32) controlPoint1: CGPointMake(13.01, 24.87) controlPoint2: CGPointMake(12.56, 25.32)];
    [bezierPath addLineToPoint: CGPointMake(11.04, 25.32)];
    [bezierPath addCurveToPoint: CGPointMake(4.54, 27.85) controlPoint1: CGPointMake(8.36, 25.45) controlPoint2: CGPointMake(4.58, 27.82)];
    [bezierPath addCurveToPoint: CGPointMake(4, 28) controlPoint1: CGPointMake(4.38, 27.95) controlPoint2: CGPointMake(4.19, 28)];
    [bezierPath closePath];
    
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    [view.layer addSublayer:layer];
}

- (void)methodNames_drawPerson6:(UIView *)view color:(UIColor *)color {
    
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(15.04, 28.36)];
    [bezierPath addCurveToPoint: CGPointMake(3, 23.02) controlPoint1: CGPointMake(7.05, 28.36) controlPoint2: CGPointMake(3, 26.56)];
    [bezierPath addCurveToPoint: CGPointMake(11.33, 18.27) controlPoint1: CGPointMake(3, 20.49) controlPoint2: CGPointMake(7.18, 18.83)];
    [bezierPath addLineToPoint: CGPointMake(11.33, 17.74)];
    [bezierPath addCurveToPoint: CGPointMake(7.62, 8.46) controlPoint1: CGPointMake(8.83, 16) controlPoint2: CGPointMake(7.62, 12.95)];
    [bezierPath addCurveToPoint: CGPointMake(14.91, 1.5) controlPoint1: CGPointMake(7.62, 4.1) controlPoint2: CGPointMake(10.34, 1.5)];
    [bezierPath addLineToPoint: CGPointMake(15.16, 1.5)];
    [bezierPath addCurveToPoint: CGPointMake(22.45, 8.46) controlPoint1: CGPointMake(19.73, 1.5) controlPoint2: CGPointMake(22.45, 4.1)];
    [bezierPath addCurveToPoint: CGPointMake(18.77, 17.75) controlPoint1: CGPointMake(22.45, 10.15) controlPoint2: CGPointMake(22.45, 15.16)];
    [bezierPath addLineToPoint: CGPointMake(18.76, 18.27)];
    [bezierPath addCurveToPoint: CGPointMake(27.08, 23.01) controlPoint1: CGPointMake(22.92, 18.84) controlPoint2: CGPointMake(27.08, 20.49)];
    [bezierPath addCurveToPoint: CGPointMake(15.04, 28.36) controlPoint1: CGPointMake(27.08, 26.56) controlPoint2: CGPointMake(23.03, 28.36)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(14.92, 3.35)];
    [bezierPath addCurveToPoint: CGPointMake(9.47, 8.46) controlPoint1: CGPointMake(12.43, 3.35) controlPoint2: CGPointMake(9.47, 4.24)];
    [bezierPath addCurveToPoint: CGPointMake(12.74, 16.45) controlPoint1: CGPointMake(9.47, 12.51) controlPoint2: CGPointMake(10.54, 15.13)];
    [bezierPath addCurveToPoint: CGPointMake(13.19, 17.24) controlPoint1: CGPointMake(13.02, 16.62) controlPoint2: CGPointMake(13.19, 16.92)];
    [bezierPath addLineToPoint: CGPointMake(13.19, 19.09)];
    [bezierPath addCurveToPoint: CGPointMake(12.35, 20.01) controlPoint1: CGPointMake(13.19, 19.57) controlPoint2: CGPointMake(12.83, 19.97)];
    [bezierPath addCurveToPoint: CGPointMake(4.85, 23.01) controlPoint1: CGPointMake(7.84, 20.46) controlPoint2: CGPointMake(4.85, 22.12)];
    [bezierPath addCurveToPoint: CGPointMake(15.04, 26.5) controlPoint1: CGPointMake(4.85, 25.89) controlPoint2: CGPointMake(10.4, 26.5)];
    [bezierPath addCurveToPoint: CGPointMake(25.23, 23.01) controlPoint1: CGPointMake(19.69, 26.5) controlPoint2: CGPointMake(25.23, 25.9)];
    [bezierPath addCurveToPoint: CGPointMake(17.73, 20.01) controlPoint1: CGPointMake(25.23, 22.11) controlPoint2: CGPointMake(22.24, 20.46)];
    [bezierPath addCurveToPoint: CGPointMake(16.9, 19.07) controlPoint1: CGPointMake(17.24, 19.96) controlPoint2: CGPointMake(16.88, 19.56)];
    [bezierPath addLineToPoint: CGPointMake(16.94, 17.22)];
    [bezierPath addCurveToPoint: CGPointMake(17.38, 16.44) controlPoint1: CGPointMake(16.94, 16.9) controlPoint2: CGPointMake(17.12, 16.61)];
    [bezierPath addCurveToPoint: CGPointMake(20.61, 8.45) controlPoint1: CGPointMake(19.59, 15.12) controlPoint2: CGPointMake(20.61, 12.58)];
    [bezierPath addCurveToPoint: CGPointMake(15.16, 3.35) controlPoint1: CGPointMake(20.61, 4.23) controlPoint2: CGPointMake(17.65, 3.35)];
    [bezierPath addLineToPoint: CGPointMake(14.92, 3.35)];
    [bezierPath addLineToPoint: CGPointMake(14.92, 3.35)];
    [bezierPath closePath];
    
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    [view.layer addSublayer:layer];
}

- (void)methodNames_drawPerson7:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(20.67, 29.77)];
    [bezierPath addCurveToPoint: CGPointMake(20.35, 29.68) controlPoint1: CGPointMake(20.56, 29.77) controlPoint2: CGPointMake(20.45, 29.74)];
    [bezierPath addCurveToPoint: CGPointMake(17.32, 28.87) controlPoint1: CGPointMake(19.4, 29.06) controlPoint2: CGPointMake(17.85, 28.89)];
    [bezierPath addLineToPoint: CGPointMake(16.63, 28.87)];
    [bezierPath addLineToPoint: CGPointMake(15.52, 28.88)];
    [bezierPath addCurveToPoint: CGPointMake(15.52, 28.88) controlPoint1: CGPointMake(15.52, 28.88) controlPoint2: CGPointMake(15.52, 28.88)];
    [bezierPath addLineToPoint: CGPointMake(1.59, 28.88)];
    [bezierPath addCurveToPoint: CGPointMake(1, 28.3) controlPoint1: CGPointMake(1.26, 28.88) controlPoint2: CGPointMake(1, 28.62)];
    [bezierPath addLineToPoint: CGPointMake(1, 27.6)];
    [bezierPath addCurveToPoint: CGPointMake(1.66, 25.15) controlPoint1: CGPointMake(0.99, 27.4) controlPoint2: CGPointMake(0.97, 26.33)];
    [bezierPath addCurveToPoint: CGPointMake(3.49, 23.27) controlPoint1: CGPointMake(2.09, 24.41) controlPoint2: CGPointMake(2.7, 23.78)];
    [bezierPath addCurveToPoint: CGPointMake(7.08, 21.96) controlPoint1: CGPointMake(4.44, 22.65) controlPoint2: CGPointMake(5.65, 22.21)];
    [bezierPath addCurveToPoint: CGPointMake(7.1, 21.96) controlPoint1: CGPointMake(7.09, 21.96) controlPoint2: CGPointMake(7.09, 21.96)];
    [bezierPath addCurveToPoint: CGPointMake(9.32, 21.51) controlPoint1: CGPointMake(7.11, 21.95) controlPoint2: CGPointMake(8.21, 21.8)];
    [bezierPath addCurveToPoint: CGPointMake(11.43, 20.54) controlPoint1: CGPointMake(11.26, 21) controlPoint2: CGPointMake(11.43, 20.55)];
    [bezierPath addCurveToPoint: CGPointMake(11.48, 20.42) controlPoint1: CGPointMake(11.44, 20.5) controlPoint2: CGPointMake(11.46, 20.46)];
    [bezierPath addCurveToPoint: CGPointMake(11.46, 19.16) controlPoint1: CGPointMake(11.49, 20.33) controlPoint2: CGPointMake(11.53, 20.01)];
    [bezierPath addCurveToPoint: CGPointMake(9.24, 14.7) controlPoint1: CGPointMake(11.27, 17) controlPoint2: CGPointMake(10.14, 15.73)];
    [bezierPath addCurveToPoint: CGPointMake(8.48, 13.77) controlPoint1: CGPointMake(8.95, 14.38) controlPoint2: CGPointMake(8.68, 14.07)];
    [bezierPath addCurveToPoint: CGPointMake(7.49, 10.95) controlPoint1: CGPointMake(7.58, 12.48) controlPoint2: CGPointMake(7.5, 11.01)];
    [bezierPath addCurveToPoint: CGPointMake(7.49, 10.92) controlPoint1: CGPointMake(7.49, 10.94) controlPoint2: CGPointMake(7.49, 10.93)];
    [bezierPath addCurveToPoint: CGPointMake(8.04, 9.82) controlPoint1: CGPointMake(7.49, 10.33) controlPoint2: CGPointMake(7.79, 10.06)];
    [bezierPath addLineToPoint: CGPointMake(8.06, 9.81)];
    [bezierPath addCurveToPoint: CGPointMake(8.08, 9.79) controlPoint1: CGPointMake(8.07, 9.8) controlPoint2: CGPointMake(8.07, 9.8)];
    [bezierPath addCurveToPoint: CGPointMake(8.04, 9.57) controlPoint1: CGPointMake(8.08, 9.75) controlPoint2: CGPointMake(8.06, 9.64)];
    [bezierPath addCurveToPoint: CGPointMake(8.03, 9.49) controlPoint1: CGPointMake(8.04, 9.55) controlPoint2: CGPointMake(8.03, 9.52)];
    [bezierPath addCurveToPoint: CGPointMake(7.99, 5.18) controlPoint1: CGPointMake(7.8, 8.27) controlPoint2: CGPointMake(7.79, 6.39)];
    [bezierPath addCurveToPoint: CGPointMake(9.49, 2.33) controlPoint1: CGPointMake(8.07, 3.59) controlPoint2: CGPointMake(9.44, 2.38)];
    [bezierPath addCurveToPoint: CGPointMake(9.5, 2.32) controlPoint1: CGPointMake(9.5, 2.33) controlPoint2: CGPointMake(9.5, 2.32)];
    [bezierPath addCurveToPoint: CGPointMake(10.02, 1.77) controlPoint1: CGPointMake(9.7, 2.16) controlPoint2: CGPointMake(9.9, 1.97)];
    [bezierPath addCurveToPoint: CGPointMake(10.06, 1.71) controlPoint1: CGPointMake(10.04, 1.75) controlPoint2: CGPointMake(10.05, 1.73)];
    [bezierPath addCurveToPoint: CGPointMake(10.02, 1.63) controlPoint1: CGPointMake(10.05, 1.69) controlPoint2: CGPointMake(10.03, 1.66)];
    [bezierPath addCurveToPoint: CGPointMake(9.9, 0.85) controlPoint1: CGPointMake(9.95, 1.46) controlPoint2: CGPointMake(9.83, 1.19)];
    [bezierPath addCurveToPoint: CGPointMake(10.65, 0.13) controlPoint1: CGPointMake(9.94, 0.64) controlPoint2: CGPointMake(10.09, 0.28)];
    [bezierPath addCurveToPoint: CGPointMake(11.3, 0.04) controlPoint1: CGPointMake(10.88, 0.07) controlPoint2: CGPointMake(11.12, 0.05)];
    [bezierPath addLineToPoint: CGPointMake(11.33, 0.04)];
    [bezierPath addCurveToPoint: CGPointMake(13.53, 0.03) controlPoint1: CGPointMake(12.03, 0.01) controlPoint2: CGPointMake(12.78, -0.03)];
    [bezierPath addCurveToPoint: CGPointMake(20.95, 2.58) controlPoint1: CGPointMake(18.99, 0.45) controlPoint2: CGPointMake(20.88, 2.49)];
    [bezierPath addCurveToPoint: CGPointMake(20.97, 2.59) controlPoint1: CGPointMake(20.96, 2.58) controlPoint2: CGPointMake(20.96, 2.59)];
    [bezierPath addCurveToPoint: CGPointMake(21.93, 4.53) controlPoint1: CGPointMake(21.4, 3.12) controlPoint2: CGPointMake(21.73, 3.77)];
    [bezierPath addCurveToPoint: CGPointMake(22.05, 5.16) controlPoint1: CGPointMake(21.99, 4.77) controlPoint2: CGPointMake(22.03, 4.97)];
    [bezierPath addCurveToPoint: CGPointMake(22.17, 8.17) controlPoint1: CGPointMake(22.25, 6.27) controlPoint2: CGPointMake(22.21, 7.41)];
    [bezierPath addCurveToPoint: CGPointMake(22.02, 9.58) controlPoint1: CGPointMake(22.15, 8.59) controlPoint2: CGPointMake(22.1, 9.04)];
    [bezierPath addCurveToPoint: CGPointMake(22.03, 9.76) controlPoint1: CGPointMake(22, 9.72) controlPoint2: CGPointMake(22.02, 9.75)];
    [bezierPath addCurveToPoint: CGPointMake(22.12, 9.86) controlPoint1: CGPointMake(22.06, 9.79) controlPoint2: CGPointMake(22.09, 9.82)];
    [bezierPath addCurveToPoint: CGPointMake(22.49, 10.44) controlPoint1: CGPointMake(22.24, 9.98) controlPoint2: CGPointMake(22.4, 10.16)];
    [bezierPath addCurveToPoint: CGPointMake(22.56, 10.92) controlPoint1: CGPointMake(22.54, 10.58) controlPoint2: CGPointMake(22.56, 10.73)];
    [bezierPath addCurveToPoint: CGPointMake(22.56, 10.95) controlPoint1: CGPointMake(22.56, 10.93) controlPoint2: CGPointMake(22.56, 10.94)];
    [bezierPath addCurveToPoint: CGPointMake(21.57, 13.77) controlPoint1: CGPointMake(22.55, 11.01) controlPoint2: CGPointMake(22.47, 12.48)];
    [bezierPath addCurveToPoint: CGPointMake(20.81, 14.7) controlPoint1: CGPointMake(21.37, 14.07) controlPoint2: CGPointMake(21.1, 14.38)];
    [bezierPath addCurveToPoint: CGPointMake(18.59, 19.16) controlPoint1: CGPointMake(19.91, 15.73) controlPoint2: CGPointMake(18.78, 17)];
    [bezierPath addCurveToPoint: CGPointMake(18.57, 20.42) controlPoint1: CGPointMake(18.52, 20.01) controlPoint2: CGPointMake(18.56, 20.33)];
    [bezierPath addCurveToPoint: CGPointMake(18.62, 20.54) controlPoint1: CGPointMake(18.59, 20.46) controlPoint2: CGPointMake(18.61, 20.5)];
    [bezierPath addCurveToPoint: CGPointMake(20.73, 21.51) controlPoint1: CGPointMake(18.62, 20.55) controlPoint2: CGPointMake(18.79, 21)];
    [bezierPath addCurveToPoint: CGPointMake(22.95, 21.96) controlPoint1: CGPointMake(21.85, 21.81) controlPoint2: CGPointMake(22.94, 21.95)];
    [bezierPath addCurveToPoint: CGPointMake(22.98, 21.96) controlPoint1: CGPointMake(22.96, 21.96) controlPoint2: CGPointMake(22.97, 21.96)];
    [bezierPath addCurveToPoint: CGPointMake(26.59, 23.3) controlPoint1: CGPointMake(24.42, 22.23) controlPoint2: CGPointMake(25.63, 22.68)];
    [bezierPath addCurveToPoint: CGPointMake(28.42, 25.18) controlPoint1: CGPointMake(27.38, 23.82) controlPoint2: CGPointMake(27.99, 24.45)];
    [bezierPath addCurveToPoint: CGPointMake(29.05, 27.6) controlPoint1: CGPointMake(29.09, 26.34) controlPoint2: CGPointMake(29.06, 27.39)];
    [bezierPath addLineToPoint: CGPointMake(29.05, 28.3)];
    [bezierPath addCurveToPoint: CGPointMake(28.46, 28.88) controlPoint1: CGPointMake(29.05, 28.62) controlPoint2: CGPointMake(28.79, 28.88)];
    [bezierPath addLineToPoint: CGPointMake(22.94, 28.88)];
    [bezierPath addCurveToPoint: CGPointMake(22.35, 28.3) controlPoint1: CGPointMake(22.61, 28.88) controlPoint2: CGPointMake(22.35, 28.62)];
    [bezierPath addCurveToPoint: CGPointMake(22.94, 27.71) controlPoint1: CGPointMake(22.35, 27.98) controlPoint2: CGPointMake(22.61, 27.71)];
    [bezierPath addLineToPoint: CGPointMake(27.88, 27.71)];
    [bezierPath addLineToPoint: CGPointMake(27.88, 27.58)];
    [bezierPath addCurveToPoint: CGPointMake(27.88, 27.52) controlPoint1: CGPointMake(27.88, 27.56) controlPoint2: CGPointMake(27.88, 27.54)];
    [bezierPath addCurveToPoint: CGPointMake(27.37, 25.71) controlPoint1: CGPointMake(27.88, 27.48) controlPoint2: CGPointMake(27.93, 26.64)];
    [bezierPath addCurveToPoint: CGPointMake(25.91, 24.25) controlPoint1: CGPointMake(27.03, 25.15) controlPoint2: CGPointMake(26.54, 24.66)];
    [bezierPath addCurveToPoint: CGPointMake(22.78, 23.11) controlPoint1: CGPointMake(25.09, 23.73) controlPoint2: CGPointMake(24.04, 23.35)];
    [bezierPath addCurveToPoint: CGPointMake(20.43, 22.64) controlPoint1: CGPointMake(22.63, 23.09) controlPoint2: CGPointMake(21.56, 22.94)];
    [bezierPath addCurveToPoint: CGPointMake(17.52, 20.94) controlPoint1: CGPointMake(18.22, 22.06) controlPoint2: CGPointMake(17.68, 21.41)];
    [bezierPath addCurveToPoint: CGPointMake(17.43, 19.06) controlPoint1: CGPointMake(17.4, 20.7) controlPoint2: CGPointMake(17.33, 20.22)];
    [bezierPath addCurveToPoint: CGPointMake(19.94, 13.93) controlPoint1: CGPointMake(17.65, 16.52) controlPoint2: CGPointMake(18.97, 15.02)];
    [bezierPath addCurveToPoint: CGPointMake(20.61, 13.11) controlPoint1: CGPointMake(20.21, 13.62) controlPoint2: CGPointMake(20.44, 13.35)];
    [bezierPath addCurveToPoint: CGPointMake(21.39, 10.9) controlPoint1: CGPointMake(21.27, 12.15) controlPoint2: CGPointMake(21.38, 11.03)];
    [bezierPath addCurveToPoint: CGPointMake(21.38, 10.79) controlPoint1: CGPointMake(21.39, 10.83) controlPoint2: CGPointMake(21.38, 10.8)];
    [bezierPath addCurveToPoint: CGPointMake(21.27, 10.66) controlPoint1: CGPointMake(21.37, 10.76) controlPoint2: CGPointMake(21.32, 10.71)];
    [bezierPath addCurveToPoint: CGPointMake(21.14, 10.51) controlPoint1: CGPointMake(21.23, 10.62) controlPoint2: CGPointMake(21.18, 10.57)];
    [bezierPath addCurveToPoint: CGPointMake(20.87, 9.41) controlPoint1: CGPointMake(20.89, 10.22) controlPoint2: CGPointMake(20.8, 9.85)];
    [bezierPath addCurveToPoint: CGPointMake(21.01, 8.1) controlPoint1: CGPointMake(20.94, 8.91) controlPoint2: CGPointMake(20.99, 8.49)];
    [bezierPath addCurveToPoint: CGPointMake(20.9, 5.34) controlPoint1: CGPointMake(21.07, 6.96) controlPoint2: CGPointMake(21.03, 6.11)];
    [bezierPath addCurveToPoint: CGPointMake(20.9, 5.31) controlPoint1: CGPointMake(20.9, 5.33) controlPoint2: CGPointMake(20.9, 5.32)];
    [bezierPath addCurveToPoint: CGPointMake(20.8, 4.83) controlPoint1: CGPointMake(20.88, 5.17) controlPoint2: CGPointMake(20.85, 5.02)];
    [bezierPath addCurveToPoint: CGPointMake(20.08, 3.35) controlPoint1: CGPointMake(20.64, 4.24) controlPoint2: CGPointMake(20.4, 3.74)];
    [bezierPath addCurveToPoint: CGPointMake(18.65, 2.43) controlPoint1: CGPointMake(20.03, 3.3) controlPoint2: CGPointMake(19.6, 2.88)];
    [bezierPath addCurveToPoint: CGPointMake(13.44, 1.2) controlPoint1: CGPointMake(16.93, 1.61) controlPoint2: CGPointMake(14.87, 1.31)];
    [bezierPath addCurveToPoint: CGPointMake(11.39, 1.21) controlPoint1: CGPointMake(12.76, 1.14) controlPoint2: CGPointMake(12.06, 1.17)];
    [bezierPath addLineToPoint: CGPointMake(11.36, 1.21)];
    [bezierPath addCurveToPoint: CGPointMake(11.12, 1.23) controlPoint1: CGPointMake(11.3, 1.21) controlPoint2: CGPointMake(11.21, 1.22)];
    [bezierPath addCurveToPoint: CGPointMake(11.19, 2.01) controlPoint1: CGPointMake(11.2, 1.41) controlPoint2: CGPointMake(11.29, 1.68)];
    [bezierPath addCurveToPoint: CGPointMake(11.01, 2.39) controlPoint1: CGPointMake(11.16, 2.14) controlPoint2: CGPointMake(11.1, 2.26)];
    [bezierPath addCurveToPoint: CGPointMake(10.26, 3.21) controlPoint1: CGPointMake(10.8, 2.73) controlPoint2: CGPointMake(10.52, 2.99)];
    [bezierPath addCurveToPoint: CGPointMake(9.16, 5.26) controlPoint1: CGPointMake(10.21, 3.25) controlPoint2: CGPointMake(9.19, 4.19)];
    [bezierPath addCurveToPoint: CGPointMake(9.15, 5.34) controlPoint1: CGPointMake(9.16, 5.29) controlPoint2: CGPointMake(9.15, 5.32)];
    [bezierPath addCurveToPoint: CGPointMake(9.18, 9.28) controlPoint1: CGPointMake(8.96, 6.42) controlPoint2: CGPointMake(8.98, 8.18)];
    [bezierPath addCurveToPoint: CGPointMake(9.19, 9.35) controlPoint1: CGPointMake(9.18, 9.3) controlPoint2: CGPointMake(9.19, 9.33)];
    [bezierPath addCurveToPoint: CGPointMake(8.85, 10.67) controlPoint1: CGPointMake(9.25, 9.67) controlPoint2: CGPointMake(9.36, 10.2)];
    [bezierPath addLineToPoint: CGPointMake(8.84, 10.68)];
    [bezierPath addCurveToPoint: CGPointMake(8.67, 10.85) controlPoint1: CGPointMake(8.77, 10.74) controlPoint2: CGPointMake(8.68, 10.82)];
    [bezierPath addLineToPoint: CGPointMake(8.67, 10.85)];
    [bezierPath addCurveToPoint: CGPointMake(8.66, 10.9) controlPoint1: CGPointMake(8.67, 10.85) controlPoint2: CGPointMake(8.66, 10.87)];
    [bezierPath addCurveToPoint: CGPointMake(9.44, 13.11) controlPoint1: CGPointMake(8.67, 11.04) controlPoint2: CGPointMake(8.78, 12.15)];
    [bezierPath addCurveToPoint: CGPointMake(10.11, 13.93) controlPoint1: CGPointMake(9.61, 13.35) controlPoint2: CGPointMake(9.84, 13.62)];
    [bezierPath addCurveToPoint: CGPointMake(12.62, 19.06) controlPoint1: CGPointMake(11.08, 15.02) controlPoint2: CGPointMake(12.4, 16.52)];
    [bezierPath addCurveToPoint: CGPointMake(12.53, 20.94) controlPoint1: CGPointMake(12.72, 20.22) controlPoint2: CGPointMake(12.65, 20.7)];
    [bezierPath addCurveToPoint: CGPointMake(9.62, 22.64) controlPoint1: CGPointMake(12.37, 21.41) controlPoint2: CGPointMake(11.83, 22.06)];
    [bezierPath addCurveToPoint: CGPointMake(7.27, 23.11) controlPoint1: CGPointMake(8.48, 22.94) controlPoint2: CGPointMake(7.4, 23.09)];
    [bezierPath addCurveToPoint: CGPointMake(4.17, 24.22) controlPoint1: CGPointMake(6.02, 23.33) controlPoint2: CGPointMake(4.98, 23.7)];
    [bezierPath addCurveToPoint: CGPointMake(2.7, 25.68) controlPoint1: CGPointMake(3.54, 24.62) controlPoint2: CGPointMake(3.04, 25.11)];
    [bezierPath addCurveToPoint: CGPointMake(2.17, 27.53) controlPoint1: CGPointMake(2.13, 26.63) controlPoint2: CGPointMake(2.17, 27.49)];
    [bezierPath addCurveToPoint: CGPointMake(2.17, 27.58) controlPoint1: CGPointMake(2.17, 27.55) controlPoint2: CGPointMake(2.17, 27.56)];
    [bezierPath addLineToPoint: CGPointMake(2.17, 27.71)];
    [bezierPath addLineToPoint: CGPointMake(15.52, 27.71)];
    [bezierPath addLineToPoint: CGPointMake(16.62, 27.71)];
    [bezierPath addCurveToPoint: CGPointMake(16.62, 27.71) controlPoint1: CGPointMake(16.62, 27.71) controlPoint2: CGPointMake(16.62, 27.71)];
    [bezierPath addLineToPoint: CGPointMake(17.32, 27.71)];
    [bezierPath addCurveToPoint: CGPointMake(17.34, 27.71) controlPoint1: CGPointMake(17.33, 27.71) controlPoint2: CGPointMake(17.33, 27.71)];
    [bezierPath addCurveToPoint: CGPointMake(20.99, 28.7) controlPoint1: CGPointMake(17.43, 27.71) controlPoint2: CGPointMake(19.57, 27.77)];
    [bezierPath addCurveToPoint: CGPointMake(21.16, 29.51) controlPoint1: CGPointMake(21.26, 28.88) controlPoint2: CGPointMake(21.34, 29.24)];
    [bezierPath addCurveToPoint: CGPointMake(20.67, 29.77) controlPoint1: CGPointMake(21.05, 29.68) controlPoint2: CGPointMake(20.86, 29.77)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(18.42, 20.23)];
    [bezierPath addCurveToPoint: CGPointMake(18.46, 20.27) controlPoint1: CGPointMake(18.44, 20.25) controlPoint2: CGPointMake(18.45, 20.26)];
    [bezierPath addCurveToPoint: CGPointMake(18.42, 20.23) controlPoint1: CGPointMake(18.45, 20.26) controlPoint2: CGPointMake(18.44, 20.25)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(11.63, 20.23)];
    [bezierPath addCurveToPoint: CGPointMake(11.59, 20.27) controlPoint1: CGPointMake(11.61, 20.25) controlPoint2: CGPointMake(11.6, 20.26)];
    [bezierPath addCurveToPoint: CGPointMake(11.63, 20.23) controlPoint1: CGPointMake(11.6, 20.26) controlPoint2: CGPointMake(11.61, 20.25)];
    [bezierPath closePath];
    
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    [view.layer addSublayer:layer];
}

- (void)methodNames_drawPerson8:(UIView *)view color:(UIColor *)color {
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(23.4, 18.36)];
    [bezierPath addCurveToPoint: CGPointMake(21.87, 17.32) controlPoint1: CGPointMake(22.91, 17.98) controlPoint2: CGPointMake(22.41, 17.64)];
    [bezierPath addCurveToPoint: CGPointMake(18.48, 15.95) controlPoint1: CGPointMake(20.81, 16.71) controlPoint2: CGPointMake(19.68, 16.26)];
    [bezierPath addCurveToPoint: CGPointMake(22.27, 9.69) controlPoint1: CGPointMake(20.74, 14.77) controlPoint2: CGPointMake(22.27, 12.4)];
    [bezierPath addCurveToPoint: CGPointMake(15.18, 2.6) controlPoint1: CGPointMake(22.27, 5.78) controlPoint2: CGPointMake(19.09, 2.6)];
    [bezierPath addCurveToPoint: CGPointMake(8.09, 9.69) controlPoint1: CGPointMake(11.28, 2.6) controlPoint2: CGPointMake(8.09, 5.76)];
    [bezierPath addCurveToPoint: CGPointMake(11.89, 15.97) controlPoint1: CGPointMake(8.09, 12.4) controlPoint2: CGPointMake(9.63, 14.77)];
    [bezierPath addCurveToPoint: CGPointMake(2.02, 26.2) controlPoint1: CGPointMake(7.01, 17.21) controlPoint2: CGPointMake(3.08, 21.14)];
    [bezierPath addCurveToPoint: CGPointMake(2.63, 27.13) controlPoint1: CGPointMake(1.93, 26.63) controlPoint2: CGPointMake(2.2, 27.03)];
    [bezierPath addCurveToPoint: CGPointMake(2.79, 27.15) controlPoint1: CGPointMake(2.67, 27.15) controlPoint2: CGPointMake(2.74, 27.15)];
    [bezierPath addCurveToPoint: CGPointMake(3.55, 26.52) controlPoint1: CGPointMake(3.15, 27.15) controlPoint2: CGPointMake(3.49, 26.9)];
    [bezierPath addCurveToPoint: CGPointMake(15.16, 17.1) controlPoint1: CGPointMake(4.7, 21.07) controlPoint2: CGPointMake(9.58, 17.1)];
    [bezierPath addCurveToPoint: CGPointMake(21.08, 18.68) controlPoint1: CGPointMake(17.24, 17.1) controlPoint2: CGPointMake(19.27, 17.64)];
    [bezierPath addCurveToPoint: CGPointMake(22.43, 19.58) controlPoint1: CGPointMake(21.55, 18.95) controlPoint2: CGPointMake(22, 19.27)];
    [bezierPath addCurveToPoint: CGPointMake(23.54, 19.45) controlPoint1: CGPointMake(22.77, 19.85) controlPoint2: CGPointMake(23.27, 19.79)];
    [bezierPath addCurveToPoint: CGPointMake(23.4, 18.36) controlPoint1: CGPointMake(23.81, 19.13) controlPoint2: CGPointMake(23.76, 18.63)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(9.67, 9.69)];
    [bezierPath addCurveToPoint: CGPointMake(15.18, 4.18) controlPoint1: CGPointMake(9.67, 6.64) controlPoint2: CGPointMake(12.16, 4.18)];
    [bezierPath addCurveToPoint: CGPointMake(20.69, 9.69) controlPoint1: CGPointMake(18.21, 4.18) controlPoint2: CGPointMake(20.69, 6.64)];
    [bezierPath addCurveToPoint: CGPointMake(15.18, 15.2) controlPoint1: CGPointMake(20.69, 12.74) controlPoint2: CGPointMake(18.21, 15.2)];
    [bezierPath addCurveToPoint: CGPointMake(9.67, 9.69) controlPoint1: CGPointMake(12.16, 15.2) controlPoint2: CGPointMake(9.67, 12.72)];
    [bezierPath closePath];
    
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(24.16, 20.22, 1.7, 1.7)];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = ovalPath.CGPath;
    //// Oval 2 Drawing
    UIBezierPath* oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(25.76, 22.67, 1.7, 1.7)];
    CAShapeLayer *layer2 = [CAShapeLayer layer];
    layer2.fillColor = color.CGColor;
    layer2.path = oval2Path.CGPath;
    //// Oval 3 Drawing
    UIBezierPath* oval3Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(26.61, 25.42, 1.7, 1.7)];
    CAShapeLayer *layer3 = [CAShapeLayer layer];
    layer3.fillColor = color.CGColor;
    layer3.path = oval3Path.CGPath;
    
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:layer1];
    [view.layer addSublayer:layer2];
    [view.layer addSublayer:layer3];
}
#pragma mark ---------- 手机
- (void)methodNames_drawPhone1:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(24.31, 25.41)];
    [bezierPath addCurveToPoint: CGPointMake(23.99, 26.88) controlPoint1: CGPointMake(24.31, 25.94) controlPoint2: CGPointMake(24.2, 26.43)];
    [bezierPath addCurveToPoint: CGPointMake(23.13, 28.07) controlPoint1: CGPointMake(23.85, 27.18) controlPoint2: CGPointMake(23.56, 27.58)];
    [bezierPath addCurveToPoint: CGPointMake(21.83, 28.89) controlPoint1: CGPointMake(22.69, 28.57) controlPoint2: CGPointMake(22.26, 28.84)];
    [bezierPath addCurveToPoint: CGPointMake(20.24, 29.19) controlPoint1: CGPointMake(21.41, 28.94) controlPoint2: CGPointMake(20.88, 29.04)];
    [bezierPath addLineToPoint: CGPointMake(9.06, 29.19)];
    [bezierPath addCurveToPoint: CGPointMake(7.47, 28.89) controlPoint1: CGPointMake(8.5, 29.19) controlPoint2: CGPointMake(7.97, 29.09)];
    [bezierPath addCurveToPoint: CGPointMake(6.18, 28.07) controlPoint1: CGPointMake(7.14, 28.76) controlPoint2: CGPointMake(6.71, 28.49)];
    [bezierPath addCurveToPoint: CGPointMake(5.31, 26.88) controlPoint1: CGPointMake(5.65, 27.66) controlPoint2: CGPointMake(5.36, 27.26)];
    [bezierPath addCurveToPoint: CGPointMake(5, 25.41) controlPoint1: CGPointMake(5.27, 26.49) controlPoint2: CGPointMake(5.16, 26)];
    [bezierPath addLineToPoint: CGPointMake(5, 4.31)];
    [bezierPath addCurveToPoint: CGPointMake(5.31, 2.83) controlPoint1: CGPointMake(5, 3.79) controlPoint2: CGPointMake(5.1, 3.29)];
    [bezierPath addCurveToPoint: CGPointMake(6.18, 1.62) controlPoint1: CGPointMake(5.45, 2.52) controlPoint2: CGPointMake(5.74, 2.12)];
    [bezierPath addCurveToPoint: CGPointMake(7.47, 0.8) controlPoint1: CGPointMake(6.62, 1.12) controlPoint2: CGPointMake(7.05, 0.84)];
    [bezierPath addCurveToPoint: CGPointMake(9.06, 0.5) controlPoint1: CGPointMake(7.9, 0.75) controlPoint2: CGPointMake(8.43, 0.65)];
    [bezierPath addLineToPoint: CGPointMake(20.24, 0.5)];
    [bezierPath addCurveToPoint: CGPointMake(21.83, 0.8) controlPoint1: CGPointMake(20.81, 0.5) controlPoint2: CGPointMake(21.34, 0.6)];
    [bezierPath addCurveToPoint: CGPointMake(23.13, 1.62) controlPoint1: CGPointMake(22.16, 0.93) controlPoint2: CGPointMake(22.59, 1.21)];
    [bezierPath addCurveToPoint: CGPointMake(23.99, 2.83) controlPoint1: CGPointMake(23.66, 2.03) controlPoint2: CGPointMake(23.95, 2.44)];
    [bezierPath addCurveToPoint: CGPointMake(24.31, 4.31) controlPoint1: CGPointMake(24.04, 3.23) controlPoint2: CGPointMake(24.14, 3.72)];
    [bezierPath addLineToPoint: CGPointMake(24.31, 25.41)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(21.76, 5.82)];
    [bezierPath addLineToPoint: CGPointMake(7.52, 5.82)];
    [bezierPath addLineToPoint: CGPointMake(7.52, 23.87)];
    [bezierPath addLineToPoint: CGPointMake(21.76, 23.87)];
    [bezierPath addLineToPoint: CGPointMake(21.76, 5.82)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(14.64, 24.75)];
    [bezierPath addCurveToPoint: CGPointMake(13.49, 25.22) controlPoint1: CGPointMake(14.2, 24.75) controlPoint2: CGPointMake(13.81, 24.91)];
    [bezierPath addCurveToPoint: CGPointMake(13, 26.39) controlPoint1: CGPointMake(13.27, 25.43) controlPoint2: CGPointMake(13.11, 25.82)];
    [bezierPath addCurveToPoint: CGPointMake(13.49, 27.54) controlPoint1: CGPointMake(13, 26.83) controlPoint2: CGPointMake(13.16, 27.21)];
    [bezierPath addCurveToPoint: CGPointMake(14.64, 28.03) controlPoint1: CGPointMake(13.71, 27.76) controlPoint2: CGPointMake(14.09, 27.92)];
    [bezierPath addCurveToPoint: CGPointMake(15.8, 27.54) controlPoint1: CGPointMake(15.1, 28.03) controlPoint2: CGPointMake(15.49, 27.86)];
    [bezierPath addCurveToPoint: CGPointMake(16.28, 26.39) controlPoint1: CGPointMake(16.01, 27.32) controlPoint2: CGPointMake(16.17, 26.94)];
    [bezierPath addCurveToPoint: CGPointMake(15.8, 25.22) controlPoint1: CGPointMake(16.28, 25.93) controlPoint2: CGPointMake(16.12, 25.54)];
    [bezierPath addCurveToPoint: CGPointMake(14.64, 24.75) controlPoint1: CGPointMake(15.59, 25.01) controlPoint2: CGPointMake(15.2, 24.86)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(17.16, 3.15)];
    [bezierPath addCurveToPoint: CGPointMake(17, 2.75) controlPoint1: CGPointMake(17.16, 2.98) controlPoint2: CGPointMake(17.1, 2.85)];
    [bezierPath addCurveToPoint: CGPointMake(16.65, 2.61) controlPoint1: CGPointMake(16.93, 2.69) controlPoint2: CGPointMake(16.81, 2.64)];
    [bezierPath addLineToPoint: CGPointMake(12.65, 2.61)];
    [bezierPath addCurveToPoint: CGPointMake(12.32, 2.75) controlPoint1: CGPointMake(12.55, 2.61) controlPoint2: CGPointMake(12.44, 2.66)];
    [bezierPath addCurveToPoint: CGPointMake(12.15, 3.15) controlPoint1: CGPointMake(12.25, 2.81) controlPoint2: CGPointMake(12.19, 2.95)];
    [bezierPath addCurveToPoint: CGPointMake(12.31, 3.54) controlPoint1: CGPointMake(12.11, 3.35) controlPoint2: CGPointMake(12.16, 3.48)];
    [bezierPath addCurveToPoint: CGPointMake(12.65, 3.68) controlPoint1: CGPointMake(12.45, 3.6) controlPoint2: CGPointMake(12.57, 3.65)];
    [bezierPath addLineToPoint: CGPointMake(16.65, 3.68)];
    [bezierPath addCurveToPoint: CGPointMake(17, 3.54) controlPoint1: CGPointMake(16.78, 3.68) controlPoint2: CGPointMake(16.9, 3.63)];
    [bezierPath addCurveToPoint: CGPointMake(17.16, 3.15) controlPoint1: CGPointMake(17.07, 3.48) controlPoint2: CGPointMake(17.12, 3.35)];
    [bezierPath closePath];
    
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    [view.layer addSublayer:layer];
}
- (void)methodNames_drawPhone2:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(21.29, 1.5)];
    [bezierPath addLineToPoint: CGPointMake(9.12, 1.5)];
    [bezierPath addCurveToPoint: CGPointMake(6, 4.62) controlPoint1: CGPointMake(7.4, 1.5) controlPoint2: CGPointMake(6, 2.9)];
    [bezierPath addLineToPoint: CGPointMake(6, 25.08)];
    [bezierPath addCurveToPoint: CGPointMake(9.12, 28.19) controlPoint1: CGPointMake(6, 26.79) controlPoint2: CGPointMake(7.4, 28.19)];
    [bezierPath addLineToPoint: CGPointMake(21.29, 28.19)];
    [bezierPath addCurveToPoint: CGPointMake(24.41, 25.08) controlPoint1: CGPointMake(23, 28.19) controlPoint2: CGPointMake(24.41, 26.79)];
    [bezierPath addLineToPoint: CGPointMake(24.41, 4.59)];
    [bezierPath addCurveToPoint: CGPointMake(21.29, 1.5) controlPoint1: CGPointMake(24.41, 2.88) controlPoint2: CGPointMake(23, 1.5)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(9.12, 3.08)];
    [bezierPath addLineToPoint: CGPointMake(21.29, 3.08)];
    [bezierPath addCurveToPoint: CGPointMake(22.82, 4.62) controlPoint1: CGPointMake(22.12, 3.08) controlPoint2: CGPointMake(22.82, 3.76)];
    [bezierPath addLineToPoint: CGPointMake(22.82, 20.38)];
    [bezierPath addLineToPoint: CGPointMake(7.58, 20.38)];
    [bezierPath addLineToPoint: CGPointMake(7.58, 4.59)];
    [bezierPath addCurveToPoint: CGPointMake(9.12, 3.08) controlPoint1: CGPointMake(7.58, 3.76) controlPoint2: CGPointMake(8.28, 3.08)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(21.29, 26.61)];
    [bezierPath addLineToPoint: CGPointMake(9.12, 26.61)];
    [bezierPath addCurveToPoint: CGPointMake(7.58, 25.08) controlPoint1: CGPointMake(8.28, 26.61) controlPoint2: CGPointMake(7.58, 25.93)];
    [bezierPath addLineToPoint: CGPointMake(7.58, 21.96)];
    [bezierPath addLineToPoint: CGPointMake(22.82, 21.96)];
    [bezierPath addLineToPoint: CGPointMake(22.82, 25.08)];
    [bezierPath addCurveToPoint: CGPointMake(21.29, 26.61) controlPoint1: CGPointMake(22.82, 25.91) controlPoint2: CGPointMake(22.15, 26.61)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(13.33, 23.44, 3.75, 1.6) cornerRadius: 0.8];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = rectanglePath.CGPath;
    
    
    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(11.36, 4.8, 1.7, 1.7)];
    CAShapeLayer *layer2 = [CAShapeLayer layer];
    layer2.fillColor = color.CGColor;
    layer2.path = ovalPath.CGPath;
    
    
    //// Oval 2 Drawing
    UIBezierPath* oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(14.36, 4.8, 1.7, 1.7)];
    CAShapeLayer *layer3 = [CAShapeLayer layer];
    layer3.fillColor = color.CGColor;
    layer3.path = oval2Path.CGPath;
    
    
    //// Oval 3 Drawing
    UIBezierPath* oval3Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(17.36, 4.8, 1.7, 1.7)];
    CAShapeLayer *layer4 = [CAShapeLayer layer];
    layer4.fillColor = color.CGColor;
    layer4.path = oval3Path.CGPath;
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:layer1];
    [view.layer addSublayer:layer2];
    [view.layer addSublayer:layer3];
    [view.layer addSublayer:layer4];
    
}
- (void)methodNames_drawPhone3:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(23.31, 0)];
    [bezierPath addLineToPoint: CGPointMake(6.37, 0)];
    [bezierPath addCurveToPoint: CGPointMake(4, 2.18) controlPoint1: CGPointMake(5.07, 0) controlPoint2: CGPointMake(4, 0.98)];
    [bezierPath addLineToPoint: CGPointMake(4, 27.84)];
    [bezierPath addCurveToPoint: CGPointMake(6.37, 30.02) controlPoint1: CGPointMake(4, 29.03) controlPoint2: CGPointMake(5.06, 30.02)];
    [bezierPath addLineToPoint: CGPointMake(23.31, 30.02)];
    [bezierPath addCurveToPoint: CGPointMake(25.68, 27.84) controlPoint1: CGPointMake(24.61, 30.02) controlPoint2: CGPointMake(25.68, 29.04)];
    [bezierPath addLineToPoint: CGPointMake(25.68, 2.18)];
    [bezierPath addCurveToPoint: CGPointMake(23.31, 0) controlPoint1: CGPointMake(25.68, 0.98) controlPoint2: CGPointMake(24.62, 0)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(6.37, 2.18)];
    [bezierPath addLineToPoint: CGPointMake(23.31, 2.18)];
    [bezierPath addLineToPoint: CGPointMake(23.31, 21.88)];
    [bezierPath addLineToPoint: CGPointMake(6.37, 21.88)];
    [bezierPath addLineToPoint: CGPointMake(6.37, 2.18)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(23.31, 27.84)];
    [bezierPath addLineToPoint: CGPointMake(6.37, 27.84)];
    [bezierPath addLineToPoint: CGPointMake(6.37, 24.06)];
    [bezierPath addLineToPoint: CGPointMake(23.31, 24.06)];
    [bezierPath addLineToPoint: CGPointMake(23.31, 27.84)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(13.46, 25.04, 2.75, 1.75) cornerRadius: 0.88];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = rectanglePath.CGPath;
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:layer1];
}
- (void)methodNames_drawPhone4:(UIView *)view color:(UIColor *)color {
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(15, 26.01)];
    [bezierPath addLineToPoint: CGPointMake(15, 25.01)];
    [bezierPath addLineToPoint: CGPointMake(15, 25.01)];
    [bezierPath addLineToPoint: CGPointMake(15, 26.01)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(22, 1)];
    [bezier2Path addLineToPoint: CGPointMake(8, 1)];
    [bezier2Path addCurveToPoint: CGPointMake(6, 3) controlPoint1: CGPointMake(6.9, 1) controlPoint2: CGPointMake(6, 1.9)];
    [bezier2Path addLineToPoint: CGPointMake(6, 27)];
    [bezier2Path addCurveToPoint: CGPointMake(8, 29) controlPoint1: CGPointMake(6, 28.1) controlPoint2: CGPointMake(6.9, 29)];
    [bezier2Path addLineToPoint: CGPointMake(22, 29)];
    [bezier2Path addCurveToPoint: CGPointMake(24, 27) controlPoint1: CGPointMake(23.1, 29) controlPoint2: CGPointMake(24, 28.1)];
    [bezier2Path addLineToPoint: CGPointMake(24, 3)];
    [bezier2Path addCurveToPoint: CGPointMake(22, 1) controlPoint1: CGPointMake(24, 1.9) controlPoint2: CGPointMake(23.1, 1)];
    [bezier2Path closePath];
    [bezier2Path moveToPoint: CGPointMake(15, 27.01)];
    [bezier2Path addCurveToPoint: CGPointMake(13, 25.01) controlPoint1: CGPointMake(13.9, 27.01) controlPoint2: CGPointMake(13, 26.12)];
    [bezier2Path addCurveToPoint: CGPointMake(15, 23.01) controlPoint1: CGPointMake(13, 23.91) controlPoint2: CGPointMake(13.9, 23.01)];
    [bezier2Path addCurveToPoint: CGPointMake(17, 25.01) controlPoint1: CGPointMake(16.1, 23.01) controlPoint2: CGPointMake(17, 23.91)];
    [bezier2Path addCurveToPoint: CGPointMake(15, 27.01) controlPoint1: CGPointMake(17, 26.12) controlPoint2: CGPointMake(16.1, 27.01)];
    [bezier2Path closePath];
    [bezier2Path moveToPoint: CGPointMake(21, 21)];
    [bezier2Path addLineToPoint: CGPointMake(9, 21)];
    [bezier2Path addLineToPoint: CGPointMake(9, 4)];
    [bezier2Path addLineToPoint: CGPointMake(21, 4)];
    [bezier2Path addLineToPoint: CGPointMake(21, 21)];
    [bezier2Path closePath];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = bezier2Path.CGPath;
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:layer1];
}
- (void)methodNames_drawPhone5:(UIView *)view color:(UIColor *)color {
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(22, 30)];
    [bezierPath addLineToPoint: CGPointMake(8, 30)];
    [bezierPath addCurveToPoint: CGPointMake(5, 27) controlPoint1: CGPointMake(6.35, 30) controlPoint2: CGPointMake(5, 28.65)];
    [bezierPath addLineToPoint: CGPointMake(5, 3)];
    [bezierPath addCurveToPoint: CGPointMake(8, 0) controlPoint1: CGPointMake(5, 1.35) controlPoint2: CGPointMake(6.35, 0)];
    [bezierPath addLineToPoint: CGPointMake(22, 0)];
    [bezierPath addCurveToPoint: CGPointMake(25, 3) controlPoint1: CGPointMake(23.65, 0) controlPoint2: CGPointMake(25, 1.35)];
    [bezierPath addLineToPoint: CGPointMake(25, 27)];
    [bezierPath addCurveToPoint: CGPointMake(22, 30) controlPoint1: CGPointMake(25, 28.65) controlPoint2: CGPointMake(23.65, 30)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(8, 2)];
    [bezierPath addCurveToPoint: CGPointMake(7, 3) controlPoint1: CGPointMake(7.45, 2) controlPoint2: CGPointMake(7, 2.45)];
    [bezierPath addLineToPoint: CGPointMake(7, 27)];
    [bezierPath addCurveToPoint: CGPointMake(8, 28) controlPoint1: CGPointMake(7, 27.55) controlPoint2: CGPointMake(7.45, 28)];
    [bezierPath addLineToPoint: CGPointMake(22, 28)];
    [bezierPath addCurveToPoint: CGPointMake(23, 27) controlPoint1: CGPointMake(22.55, 28) controlPoint2: CGPointMake(23, 27.55)];
    [bezierPath addLineToPoint: CGPointMake(23, 3)];
    [bezierPath addCurveToPoint: CGPointMake(22, 2) controlPoint1: CGPointMake(23, 2.45) controlPoint2: CGPointMake(22.55, 2)];
    [bezierPath addLineToPoint: CGPointMake(8, 2)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(15, 27.01)];
    [bezier2Path addCurveToPoint: CGPointMake(13, 25.01) controlPoint1: CGPointMake(13.9, 27.01) controlPoint2: CGPointMake(13, 26.12)];
    [bezier2Path addCurveToPoint: CGPointMake(15, 23.01) controlPoint1: CGPointMake(13, 23.91) controlPoint2: CGPointMake(13.9, 23.01)];
    [bezier2Path addCurveToPoint: CGPointMake(17, 25.01) controlPoint1: CGPointMake(16.1, 23.01) controlPoint2: CGPointMake(17, 23.91)];
    [bezier2Path addCurveToPoint: CGPointMake(15, 27.01) controlPoint1: CGPointMake(17, 26.12) controlPoint2: CGPointMake(16.1, 27.01)];
    [bezier2Path closePath];
    [bezier2Path moveToPoint: CGPointMake(15, 25.01)];
    [bezier2Path addCurveToPoint: CGPointMake(15, 25.01) controlPoint1: CGPointMake(15, 25.01) controlPoint2: CGPointMake(15, 25.01)];
    [bezier2Path addLineToPoint: CGPointMake(15, 26.01)];
    [bezier2Path addLineToPoint: CGPointMake(15, 25.01)];
    [bezier2Path closePath];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = bezier2Path.CGPath;
    
    
    //// Bezier 3 Drawing
    UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
    [bezier3Path moveToPoint: CGPointMake(21, 22)];
    [bezier3Path addLineToPoint: CGPointMake(9, 22)];
    [bezier3Path addCurveToPoint: CGPointMake(8, 21) controlPoint1: CGPointMake(8.45, 22) controlPoint2: CGPointMake(8, 21.55)];
    [bezier3Path addLineToPoint: CGPointMake(8, 4)];
    [bezier3Path addCurveToPoint: CGPointMake(9, 3) controlPoint1: CGPointMake(8, 3.45) controlPoint2: CGPointMake(8.45, 3)];
    [bezier3Path addLineToPoint: CGPointMake(21, 3)];
    [bezier3Path addCurveToPoint: CGPointMake(22, 4) controlPoint1: CGPointMake(21.55, 3) controlPoint2: CGPointMake(22, 3.45)];
    [bezier3Path addLineToPoint: CGPointMake(22, 21)];
    [bezier3Path addCurveToPoint: CGPointMake(21, 22) controlPoint1: CGPointMake(22, 21.55) controlPoint2: CGPointMake(21.55, 22)];
    [bezier3Path closePath];
    [bezier3Path moveToPoint: CGPointMake(10, 20)];
    [bezier3Path addLineToPoint: CGPointMake(20, 20)];
    [bezier3Path addLineToPoint: CGPointMake(20, 5)];
    [bezier3Path addLineToPoint: CGPointMake(10, 5)];
    [bezier3Path addLineToPoint: CGPointMake(10, 20)];
    [bezier3Path closePath];
    CAShapeLayer *layer2 = [CAShapeLayer layer];
    layer2.fillColor = color.CGColor;
    layer2.path = bezier3Path.CGPath;
    
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:layer1];
    [view.layer addSublayer:layer2];
}
#pragma mark ---------- 验证码
- (void)methodNames_drawCode1:(UIView *)view color:(UIColor *)color {
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(19.24, 22.91)];
    [bezierPath addLineToPoint: CGPointMake(4.88, 22.91)];
    [bezierPath addCurveToPoint: CGPointMake(4.38, 22.42) controlPoint1: CGPointMake(4.61, 22.91) controlPoint2: CGPointMake(4.38, 22.69)];
    [bezierPath addLineToPoint: CGPointMake(4.38, 8.73)];
    [bezierPath addLineToPoint: CGPointMake(13.37, 17.72)];
    [bezierPath addCurveToPoint: CGPointMake(14.84, 18.33) controlPoint1: CGPointMake(13.75, 18.1) controlPoint2: CGPointMake(14.27, 18.33)];
    [bezierPath addCurveToPoint: CGPointMake(16.3, 17.72) controlPoint1: CGPointMake(15.4, 18.33) controlPoint2: CGPointMake(15.92, 18.1)];
    [bezierPath addLineToPoint: CGPointMake(25.5, 8.53)];
    [bezierPath addLineToPoint: CGPointMake(25.5, 16.55)];
    [bezierPath addCurveToPoint: CGPointMake(26.29, 17.34) controlPoint1: CGPointMake(25.5, 16.98) controlPoint2: CGPointMake(25.86, 17.34)];
    [bezierPath addCurveToPoint: CGPointMake(27.08, 16.55) controlPoint1: CGPointMake(26.72, 17.34) controlPoint2: CGPointMake(27.08, 16.98)];
    [bezierPath addLineToPoint: CGPointMake(27.08, 8.08)];
    [bezierPath addCurveToPoint: CGPointMake(25, 6) controlPoint1: CGPointMake(27.08, 6.93) controlPoint2: CGPointMake(26.15, 6)];
    [bezierPath addLineToPoint: CGPointMake(4.88, 6)];
    [bezierPath addCurveToPoint: CGPointMake(2.8, 8.08) controlPoint1: CGPointMake(3.73, 6) controlPoint2: CGPointMake(2.8, 6.93)];
    [bezierPath addLineToPoint: CGPointMake(2.8, 22.42)];
    [bezierPath addCurveToPoint: CGPointMake(4.88, 24.5) controlPoint1: CGPointMake(2.8, 23.57) controlPoint2: CGPointMake(3.73, 24.5)];
    [bezierPath addLineToPoint: CGPointMake(19.24, 24.5)];
    [bezierPath addCurveToPoint: CGPointMake(20.03, 23.71) controlPoint1: CGPointMake(19.67, 24.5) controlPoint2: CGPointMake(20.03, 24.13)];
    [bezierPath addCurveToPoint: CGPointMake(19.24, 22.91) controlPoint1: CGPointMake(20.03, 23.28) controlPoint2: CGPointMake(19.67, 22.91)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(24.19, 7.6)];
    [bezierPath addLineToPoint: CGPointMake(15.18, 16.59)];
    [bezierPath addCurveToPoint: CGPointMake(14.48, 16.59) controlPoint1: CGPointMake(14.99, 16.77) controlPoint2: CGPointMake(14.66, 16.77)];
    [bezierPath addLineToPoint: CGPointMake(5.49, 7.6)];
    [bezierPath addLineToPoint: CGPointMake(24.19, 7.6)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    
    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(21.71, 22.91, 1.8, 1.8)];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = ovalPath.CGPath;
    
    
    //// Oval 2 Drawing
    UIBezierPath* oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(25.21, 22.86, 1.8, 1.8)];
    CAShapeLayer *layer2 = [CAShapeLayer layer];
    layer2.fillColor = color.CGColor;
    layer2.path = oval2Path.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(25.34, 20.2)];
    [bezier2Path addLineToPoint: CGPointMake(25.34, 20.2)];
    [bezier2Path addCurveToPoint: CGPointMake(26.22, 21.09) controlPoint1: CGPointMake(25.34, 20.69) controlPoint2: CGPointMake(25.73, 21.09)];
    [bezier2Path addCurveToPoint: CGPointMake(27.1, 20.2) controlPoint1: CGPointMake(26.7, 21.09) controlPoint2: CGPointMake(27.1, 20.69)];
    [bezier2Path addLineToPoint: CGPointMake(27.1, 20.2)];
    [bezier2Path addCurveToPoint: CGPointMake(26.22, 19.32) controlPoint1: CGPointMake(27.1, 19.72) controlPoint2: CGPointMake(26.7, 19.32)];
    [bezier2Path addCurveToPoint: CGPointMake(25.34, 20.2) controlPoint1: CGPointMake(25.73, 19.32) controlPoint2: CGPointMake(25.34, 19.72)];
    [bezier2Path closePath];
    CAShapeLayer *layer3 = [CAShapeLayer layer];
    layer3.fillColor = color.CGColor;
    layer3.path = bezier2Path.CGPath;
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:layer1];
    [view.layer addSublayer:layer2];
    [view.layer addSublayer:layer3];
}
- (void)methodNames_drawCode2:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(27.43, 2.5)];
    [bezierPath addLineToPoint: CGPointMake(4.56, 2.5)];
    [bezierPath addCurveToPoint: CGPointMake(1.82, 5.23) controlPoint1: CGPointMake(3.05, 2.5) controlPoint2: CGPointMake(1.82, 3.72)];
    [bezierPath addLineToPoint: CGPointMake(1.82, 22.65)];
    [bezierPath addCurveToPoint: CGPointMake(4.28, 25.37) controlPoint1: CGPointMake(1.82, 24.07) controlPoint2: CGPointMake(2.9, 25.23)];
    [bezierPath addCurveToPoint: CGPointMake(4.56, 25.39) controlPoint1: CGPointMake(4.37, 25.38) controlPoint2: CGPointMake(4.46, 25.39)];
    [bezierPath addLineToPoint: CGPointMake(5.29, 25.39)];
    [bezierPath addCurveToPoint: CGPointMake(5.29, 26.9) controlPoint1: CGPointMake(5.29, 25.8) controlPoint2: CGPointMake(5.29, 26.89)];
    [bezierPath addCurveToPoint: CGPointMake(6.34, 27.33) controlPoint1: CGPointMake(5.29, 27.55) controlPoint2: CGPointMake(5.91, 27.61)];
    [bezierPath addCurveToPoint: CGPointMake(7.52, 26.59) controlPoint1: CGPointMake(6.73, 27.08) controlPoint2: CGPointMake(7.12, 26.83)];
    [bezierPath addCurveToPoint: CGPointMake(10.15, 25.39) controlPoint1: CGPointMake(8.31, 26.12) controlPoint2: CGPointMake(9.22, 25.56)];
    [bezierPath addLineToPoint: CGPointMake(13.14, 25.39)];
    [bezierPath addLineToPoint: CGPointMake(27.43, 25.39)];
    [bezierPath addCurveToPoint: CGPointMake(30.16, 22.65) controlPoint1: CGPointMake(28.94, 25.39) controlPoint2: CGPointMake(30.16, 24.16)];
    [bezierPath addLineToPoint: CGPointMake(30.16, 5.23)];
    [bezierPath addCurveToPoint: CGPointMake(27.43, 2.5) controlPoint1: CGPointMake(30.16, 3.72) controlPoint2: CGPointMake(28.94, 2.5)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(7.62, 15.4)];
    [bezierPath addCurveToPoint: CGPointMake(5.7, 13.48) controlPoint1: CGPointMake(6.56, 15.4) controlPoint2: CGPointMake(5.7, 14.54)];
    [bezierPath addCurveToPoint: CGPointMake(7.62, 11.56) controlPoint1: CGPointMake(5.7, 12.42) controlPoint2: CGPointMake(6.56, 11.56)];
    [bezierPath addCurveToPoint: CGPointMake(9.55, 13.48) controlPoint1: CGPointMake(8.69, 11.56) controlPoint2: CGPointMake(9.55, 12.42)];
    [bezierPath addCurveToPoint: CGPointMake(7.62, 15.4) controlPoint1: CGPointMake(9.55, 14.54) controlPoint2: CGPointMake(8.69, 15.4)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(16.08, 15.4)];
    [bezierPath addCurveToPoint: CGPointMake(14.16, 13.48) controlPoint1: CGPointMake(15.02, 15.4) controlPoint2: CGPointMake(14.16, 14.54)];
    [bezierPath addCurveToPoint: CGPointMake(16.08, 11.56) controlPoint1: CGPointMake(14.16, 12.42) controlPoint2: CGPointMake(15.02, 11.56)];
    [bezierPath addCurveToPoint: CGPointMake(18.01, 13.48) controlPoint1: CGPointMake(17.15, 11.56) controlPoint2: CGPointMake(18.01, 12.42)];
    [bezierPath addCurveToPoint: CGPointMake(16.08, 15.4) controlPoint1: CGPointMake(18.01, 14.54) controlPoint2: CGPointMake(17.15, 15.4)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(24.36, 15.4)];
    [bezierPath addCurveToPoint: CGPointMake(22.44, 13.48) controlPoint1: CGPointMake(23.3, 15.4) controlPoint2: CGPointMake(22.44, 14.54)];
    [bezierPath addCurveToPoint: CGPointMake(24.36, 11.56) controlPoint1: CGPointMake(22.44, 12.42) controlPoint2: CGPointMake(23.3, 11.56)];
    [bezierPath addCurveToPoint: CGPointMake(26.29, 13.48) controlPoint1: CGPointMake(25.43, 11.56) controlPoint2: CGPointMake(26.29, 12.42)];
    [bezierPath addCurveToPoint: CGPointMake(24.36, 15.4) controlPoint1: CGPointMake(26.29, 14.54) controlPoint2: CGPointMake(25.43, 15.4)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    [view.layer addSublayer:layer];
}
- (void)methodNames_drawCode3:(UIView *)view color:(UIColor *)color {
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(7.26, 15.86)];
    [bezierPath addCurveToPoint: CGPointMake(4.86, 13.46) controlPoint1: CGPointMake(5.94, 15.86) controlPoint2: CGPointMake(4.86, 14.78)];
    [bezierPath addCurveToPoint: CGPointMake(7.26, 11.06) controlPoint1: CGPointMake(4.86, 12.13) controlPoint2: CGPointMake(5.94, 11.06)];
    [bezierPath addCurveToPoint: CGPointMake(9.66, 13.46) controlPoint1: CGPointMake(8.58, 11.06) controlPoint2: CGPointMake(9.66, 12.13)];
    [bezierPath addCurveToPoint: CGPointMake(7.26, 15.86) controlPoint1: CGPointMake(9.66, 14.78) controlPoint2: CGPointMake(8.58, 15.86)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(7.26, 12.22)];
    [bezierPath addCurveToPoint: CGPointMake(6.02, 13.46) controlPoint1: CGPointMake(6.58, 12.22) controlPoint2: CGPointMake(6.02, 12.77)];
    [bezierPath addCurveToPoint: CGPointMake(7.26, 14.69) controlPoint1: CGPointMake(6.02, 14.14) controlPoint2: CGPointMake(6.58, 14.69)];
    [bezierPath addCurveToPoint: CGPointMake(8.5, 13.46) controlPoint1: CGPointMake(7.94, 14.69) controlPoint2: CGPointMake(8.5, 14.14)];
    [bezierPath addCurveToPoint: CGPointMake(7.26, 12.22) controlPoint1: CGPointMake(8.5, 12.77) controlPoint2: CGPointMake(7.94, 12.22)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(15.25, 15.86)];
    [bezier2Path addCurveToPoint: CGPointMake(12.86, 13.46) controlPoint1: CGPointMake(13.93, 15.86) controlPoint2: CGPointMake(12.86, 14.78)];
    [bezier2Path addCurveToPoint: CGPointMake(15.25, 11.06) controlPoint1: CGPointMake(12.86, 12.13) controlPoint2: CGPointMake(13.93, 11.06)];
    [bezier2Path addCurveToPoint: CGPointMake(17.65, 13.46) controlPoint1: CGPointMake(16.58, 11.06) controlPoint2: CGPointMake(17.65, 12.13)];
    [bezier2Path addCurveToPoint: CGPointMake(15.25, 15.86) controlPoint1: CGPointMake(17.65, 14.78) controlPoint2: CGPointMake(16.58, 15.86)];
    [bezier2Path closePath];
    [bezier2Path moveToPoint: CGPointMake(15.25, 12.22)];
    [bezier2Path addCurveToPoint: CGPointMake(14.02, 13.46) controlPoint1: CGPointMake(14.57, 12.22) controlPoint2: CGPointMake(14.02, 12.77)];
    [bezier2Path addCurveToPoint: CGPointMake(15.25, 14.69) controlPoint1: CGPointMake(14.02, 14.14) controlPoint2: CGPointMake(14.57, 14.69)];
    [bezier2Path addCurveToPoint: CGPointMake(16.49, 13.46) controlPoint1: CGPointMake(15.94, 14.69) controlPoint2: CGPointMake(16.49, 14.14)];
    [bezier2Path addCurveToPoint: CGPointMake(15.25, 12.22) controlPoint1: CGPointMake(16.49, 12.77) controlPoint2: CGPointMake(15.94, 12.22)];
    [bezier2Path closePath];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = bezier2Path.CGPath;
    
    
    //// Bezier 3 Drawing
    UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
    [bezier3Path moveToPoint: CGPointMake(23.08, 15.86)];
    [bezier3Path addCurveToPoint: CGPointMake(20.68, 13.46) controlPoint1: CGPointMake(21.76, 15.86) controlPoint2: CGPointMake(20.68, 14.78)];
    [bezier3Path addCurveToPoint: CGPointMake(23.08, 11.06) controlPoint1: CGPointMake(20.68, 12.13) controlPoint2: CGPointMake(21.76, 11.06)];
    [bezier3Path addCurveToPoint: CGPointMake(25.48, 13.46) controlPoint1: CGPointMake(24.4, 11.06) controlPoint2: CGPointMake(25.48, 12.13)];
    [bezier3Path addCurveToPoint: CGPointMake(23.08, 15.86) controlPoint1: CGPointMake(25.48, 14.78) controlPoint2: CGPointMake(24.4, 15.86)];
    [bezier3Path closePath];
    [bezier3Path moveToPoint: CGPointMake(23.08, 12.22)];
    [bezier3Path addCurveToPoint: CGPointMake(21.84, 13.46) controlPoint1: CGPointMake(22.4, 12.22) controlPoint2: CGPointMake(21.84, 12.77)];
    [bezier3Path addCurveToPoint: CGPointMake(23.08, 14.69) controlPoint1: CGPointMake(21.84, 14.14) controlPoint2: CGPointMake(22.4, 14.69)];
    [bezier3Path addCurveToPoint: CGPointMake(24.32, 13.46) controlPoint1: CGPointMake(23.76, 14.69) controlPoint2: CGPointMake(24.32, 14.14)];
    [bezier3Path addCurveToPoint: CGPointMake(23.08, 12.22) controlPoint1: CGPointMake(24.32, 12.77) controlPoint2: CGPointMake(23.76, 12.22)];
    [bezier3Path closePath];
    CAShapeLayer *layer2 = [CAShapeLayer layer];
    layer2.fillColor = color.CGColor;
    layer2.path = bezier3Path.CGPath;
    
    
    //// Bezier 4 Drawing
    UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
    [bezier4Path moveToPoint: CGPointMake(7.93, 26.84)];
    [bezier4Path addCurveToPoint: CGPointMake(7.61, 26.75) controlPoint1: CGPointMake(7.82, 26.84) controlPoint2: CGPointMake(7.71, 26.81)];
    [bezier4Path addCurveToPoint: CGPointMake(7.44, 25.95) controlPoint1: CGPointMake(7.34, 26.58) controlPoint2: CGPointMake(7.27, 26.22)];
    [bezier4Path addCurveToPoint: CGPointMake(10.5, 24.29) controlPoint1: CGPointMake(7.98, 25.12) controlPoint2: CGPointMake(9.01, 24.56)];
    [bezier4Path addCurveToPoint: CGPointMake(12.49, 24.12) controlPoint1: CGPointMake(11.51, 24.11) controlPoint2: CGPointMake(12.38, 24.12)];
    [bezier4Path addLineToPoint: CGPointMake(25.98, 24.12)];
    [bezier4Path addCurveToPoint: CGPointMake(27.98, 22.12) controlPoint1: CGPointMake(27.08, 24.12) controlPoint2: CGPointMake(27.98, 23.23)];
    [bezier4Path addLineToPoint: CGPointMake(27.98, 5.66)];
    [bezier4Path addCurveToPoint: CGPointMake(25.98, 3.66) controlPoint1: CGPointMake(27.98, 4.56) controlPoint2: CGPointMake(27.08, 3.66)];
    [bezier4Path addLineToPoint: CGPointMake(4.36, 3.66)];
    [bezier4Path addCurveToPoint: CGPointMake(2.36, 5.66) controlPoint1: CGPointMake(3.26, 3.66) controlPoint2: CGPointMake(2.36, 4.56)];
    [bezier4Path addLineToPoint: CGPointMake(2.36, 22.12)];
    [bezier4Path addCurveToPoint: CGPointMake(4.16, 24.11) controlPoint1: CGPointMake(2.36, 23.16) controlPoint2: CGPointMake(3.14, 24.01)];
    [bezier4Path addCurveToPoint: CGPointMake(4.36, 24.12) controlPoint1: CGPointMake(4.23, 24.12) controlPoint2: CGPointMake(4.3, 24.12)];
    [bezier4Path addLineToPoint: CGPointMake(5.98, 24.12)];
    [bezier4Path addCurveToPoint: CGPointMake(6.57, 24.7) controlPoint1: CGPointMake(6.31, 24.12) controlPoint2: CGPointMake(6.57, 24.38)];
    [bezier4Path addCurveToPoint: CGPointMake(5.98, 25.29) controlPoint1: CGPointMake(6.57, 25.03) controlPoint2: CGPointMake(6.31, 25.29)];
    [bezier4Path addLineToPoint: CGPointMake(4.36, 25.29)];
    [bezier4Path addCurveToPoint: CGPointMake(4.05, 25.27) controlPoint1: CGPointMake(4.26, 25.29) controlPoint2: CGPointMake(4.15, 25.28)];
    [bezier4Path addCurveToPoint: CGPointMake(2.02, 24.25) controlPoint1: CGPointMake(3.27, 25.19) controlPoint2: CGPointMake(2.55, 24.83)];
    [bezier4Path addCurveToPoint: CGPointMake(1.2, 22.12) controlPoint1: CGPointMake(1.49, 23.67) controlPoint2: CGPointMake(1.2, 22.91)];
    [bezier4Path addLineToPoint: CGPointMake(1.2, 5.66)];
    [bezier4Path addCurveToPoint: CGPointMake(4.36, 2.5) controlPoint1: CGPointMake(1.2, 3.92) controlPoint2: CGPointMake(2.62, 2.5)];
    [bezier4Path addLineToPoint: CGPointMake(25.98, 2.5)];
    [bezier4Path addCurveToPoint: CGPointMake(29.14, 5.66) controlPoint1: CGPointMake(27.72, 2.5) controlPoint2: CGPointMake(29.14, 3.92)];
    [bezier4Path addLineToPoint: CGPointMake(29.14, 22.12)];
    [bezier4Path addCurveToPoint: CGPointMake(25.98, 25.29) controlPoint1: CGPointMake(29.14, 23.87) controlPoint2: CGPointMake(27.72, 25.29)];
    [bezier4Path addLineToPoint: CGPointMake(12.47, 25.29)];
    [bezier4Path addLineToPoint: CGPointMake(12.46, 25.29)];
    [bezier4Path addCurveToPoint: CGPointMake(10.69, 25.43) controlPoint1: CGPointMake(12.45, 25.28) controlPoint2: CGPointMake(11.62, 25.26)];
    [bezier4Path addCurveToPoint: CGPointMake(8.42, 26.58) controlPoint1: CGPointMake(9.9, 25.58) controlPoint2: CGPointMake(8.86, 25.9)];
    [bezier4Path addCurveToPoint: CGPointMake(7.93, 26.84) controlPoint1: CGPointMake(8.31, 26.75) controlPoint2: CGPointMake(8.12, 26.84)];
    [bezier4Path closePath];
    CAShapeLayer *layer3 = [CAShapeLayer layer];
    layer3.fillColor = color.CGColor;
    layer3.path = bezier4Path.CGPath;
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:layer1];
    [view.layer addSublayer:layer2];
    [view.layer addSublayer:layer3];
}
- (void)methodNames_drawCode4:(UIView *)view color:(UIColor *)color {
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(13.37, 27.69)];
    [bezierPath addLineToPoint: CGPointMake(6.62, 27.69)];
    [bezierPath addCurveToPoint: CGPointMake(3.5, 24.58) controlPoint1: CGPointMake(4.9, 27.69) controlPoint2: CGPointMake(3.5, 26.29)];
    [bezierPath addLineToPoint: CGPointMake(3.5, 4.12)];
    [bezierPath addCurveToPoint: CGPointMake(6.62, 1) controlPoint1: CGPointMake(3.5, 2.4) controlPoint2: CGPointMake(4.9, 1)];
    [bezierPath addLineToPoint: CGPointMake(18.79, 1)];
    [bezierPath addCurveToPoint: CGPointMake(21.91, 4.12) controlPoint1: CGPointMake(20.5, 1) controlPoint2: CGPointMake(21.91, 2.4)];
    [bezierPath addLineToPoint: CGPointMake(21.91, 13.22)];
    [bezierPath addCurveToPoint: CGPointMake(21.11, 14.01) controlPoint1: CGPointMake(21.91, 13.65) controlPoint2: CGPointMake(21.54, 14.01)];
    [bezierPath addCurveToPoint: CGPointMake(20.32, 13.22) controlPoint1: CGPointMake(20.69, 14.01) controlPoint2: CGPointMake(20.32, 13.65)];
    [bezierPath addLineToPoint: CGPointMake(20.32, 4.12)];
    [bezierPath addCurveToPoint: CGPointMake(18.79, 2.58) controlPoint1: CGPointMake(20.32, 3.28) controlPoint2: CGPointMake(19.62, 2.58)];
    [bezierPath addLineToPoint: CGPointMake(6.62, 2.58)];
    [bezierPath addCurveToPoint: CGPointMake(5.08, 4.12) controlPoint1: CGPointMake(5.78, 2.58) controlPoint2: CGPointMake(5.08, 3.28)];
    [bezierPath addLineToPoint: CGPointMake(5.08, 24.58)];
    [bezierPath addCurveToPoint: CGPointMake(6.62, 26.11) controlPoint1: CGPointMake(5.08, 25.41) controlPoint2: CGPointMake(5.78, 26.11)];
    [bezierPath addLineToPoint: CGPointMake(13.37, 26.11)];
    [bezierPath addCurveToPoint: CGPointMake(14.16, 26.9) controlPoint1: CGPointMake(13.8, 26.11) controlPoint2: CGPointMake(14.16, 26.47)];
    [bezierPath addCurveToPoint: CGPointMake(13.37, 27.69) controlPoint1: CGPointMake(14.16, 27.33) controlPoint2: CGPointMake(13.82, 27.69)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(18.92, 29.48)];
    [bezier2Path addCurveToPoint: CGPointMake(18.36, 29.16) controlPoint1: CGPointMake(18.7, 29.48) controlPoint2: CGPointMake(18.5, 29.36)];
    [bezier2Path addLineToPoint: CGPointMake(17.52, 27.87)];
    [bezier2Path addCurveToPoint: CGPointMake(14.34, 23.45) controlPoint1: CGPointMake(16.91, 27.51) controlPoint2: CGPointMake(14.9, 26.13)];
    [bezier2Path addCurveToPoint: CGPointMake(14.18, 22.05) controlPoint1: CGPointMake(14.25, 23) controlPoint2: CGPointMake(14.18, 22.52)];
    [bezier2Path addCurveToPoint: CGPointMake(20.78, 15.48) controlPoint1: CGPointMake(14.18, 18.43) controlPoint2: CGPointMake(17.14, 15.48)];
    [bezier2Path addCurveToPoint: CGPointMake(27.37, 22.07) controlPoint1: CGPointMake(24.41, 15.48) controlPoint2: CGPointMake(27.37, 18.43)];
    [bezier2Path addCurveToPoint: CGPointMake(20.91, 28.66) controlPoint1: CGPointMake(27.37, 25.66) controlPoint2: CGPointMake(24.48, 28.57)];
    [bezier2Path addLineToPoint: CGPointMake(19.2, 29.43)];
    [bezier2Path addCurveToPoint: CGPointMake(18.92, 29.48) controlPoint1: CGPointMake(19.13, 29.48) controlPoint2: CGPointMake(19.01, 29.48)];
    [bezier2Path closePath];
    [bezier2Path moveToPoint: CGPointMake(20.78, 16.83)];
    [bezier2Path addCurveToPoint: CGPointMake(15.54, 22.05) controlPoint1: CGPointMake(17.89, 16.83) controlPoint2: CGPointMake(15.54, 19.18)];
    [bezier2Path addCurveToPoint: CGPointMake(15.65, 23.15) controlPoint1: CGPointMake(15.54, 22.43) controlPoint2: CGPointMake(15.58, 22.82)];
    [bezier2Path addCurveToPoint: CGPointMake(18.29, 26.77) controlPoint1: CGPointMake(16.17, 25.64) controlPoint2: CGPointMake(18.27, 26.74)];
    [bezier2Path addCurveToPoint: CGPointMake(18.54, 26.99) controlPoint1: CGPointMake(18.4, 26.81) controlPoint2: CGPointMake(18.5, 26.9)];
    [bezier2Path addLineToPoint: CGPointMake(19.15, 27.94)];
    [bezier2Path addLineToPoint: CGPointMake(20.48, 27.35)];
    [bezier2Path addCurveToPoint: CGPointMake(20.75, 27.29) controlPoint1: CGPointMake(20.57, 27.31) controlPoint2: CGPointMake(20.66, 27.29)];
    [bezier2Path addCurveToPoint: CGPointMake(25.99, 22.05) controlPoint1: CGPointMake(23.64, 27.29) controlPoint2: CGPointMake(25.99, 24.94)];
    [bezier2Path addCurveToPoint: CGPointMake(20.78, 16.83) controlPoint1: CGPointMake(25.99, 19.16) controlPoint2: CGPointMake(23.67, 16.83)];
    [bezier2Path closePath];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = bezier2Path.CGPath;
    
    
    //// Bezier 3 Drawing
    UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
    [bezier3Path moveToPoint: CGPointMake(17, 21.89)];
    [bezier3Path addLineToPoint: CGPointMake(17, 21.89)];
    [bezier3Path addCurveToPoint: CGPointMake(17.86, 22.75) controlPoint1: CGPointMake(17, 22.36) controlPoint2: CGPointMake(17.39, 22.75)];
    [bezier3Path addCurveToPoint: CGPointMake(18.72, 21.89) controlPoint1: CGPointMake(18.34, 22.75) controlPoint2: CGPointMake(18.72, 22.36)];
    [bezier3Path addLineToPoint: CGPointMake(18.72, 21.89)];
    [bezier3Path addCurveToPoint: CGPointMake(17.86, 21.03) controlPoint1: CGPointMake(18.72, 21.42) controlPoint2: CGPointMake(18.34, 21.03)];
    [bezier3Path addCurveToPoint: CGPointMake(17, 21.89) controlPoint1: CGPointMake(17.39, 21.03) controlPoint2: CGPointMake(17, 21.42)];
    [bezier3Path closePath];
    CAShapeLayer *layer2 = [CAShapeLayer layer];
    layer2.fillColor = color.CGColor;
    layer2.path = bezier3Path.CGPath;
    
    
    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(20.04, 21.04, 1.7, 1.7)];
    CAShapeLayer *layer3 = [CAShapeLayer layer];
    layer3.fillColor = color.CGColor;
    layer3.path = ovalPath.CGPath;
    
    
    //// Oval 2 Drawing
    UIBezierPath* oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(23.04, 21.04, 1.7, 1.7)];
    CAShapeLayer *layer4 = [CAShapeLayer layer];
    layer4.fillColor = color.CGColor;
    layer4.path = oval2Path.CGPath;
    
    
    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(4.14, 21.17, 8.7, 1.6) cornerRadius: 0.8];
    CAShapeLayer *layer5 = [CAShapeLayer layer];
    layer5.fillColor = color.CGColor;
    layer5.path = rectanglePath.CGPath;
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:layer1];
    [view.layer addSublayer:layer2];
    [view.layer addSublayer:layer3];
    [view.layer addSublayer:layer4];
    [view.layer addSublayer:layer5];
    
}
- (void)methodNames_drawCode5:(UIView *)view color:(UIColor *)color {
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(14.99, 1)];
    [bezierPath addCurveToPoint: CGPointMake(1.78, 14.21) controlPoint1: CGPointMake(7.72, 1) controlPoint2: CGPointMake(1.78, 6.92)];
    [bezierPath addCurveToPoint: CGPointMake(2.07, 17.01) controlPoint1: CGPointMake(1.78, 15.11) controlPoint2: CGPointMake(1.87, 16.06)];
    [bezierPath addCurveToPoint: CGPointMake(8.58, 25.98) controlPoint1: CGPointMake(3.25, 22.63) controlPoint2: CGPointMake(7.6, 25.41)];
    [bezierPath addLineToPoint: CGPointMake(10.4, 28.8)];
    [bezierPath addCurveToPoint: CGPointMake(11.06, 29.16) controlPoint1: CGPointMake(10.56, 29.03) controlPoint2: CGPointMake(10.81, 29.16)];
    [bezierPath addCurveToPoint: CGPointMake(11.38, 29.09) controlPoint1: CGPointMake(11.17, 29.16) controlPoint2: CGPointMake(11.29, 29.14)];
    [bezierPath addLineToPoint: CGPointMake(15.12, 27.42)];
    [bezierPath addCurveToPoint: CGPointMake(28.15, 14.21) controlPoint1: CGPointMake(22.33, 27.33) controlPoint2: CGPointMake(28.15, 21.44)];
    [bezierPath addCurveToPoint: CGPointMake(14.99, 1) controlPoint1: CGPointMake(28.2, 6.92) controlPoint2: CGPointMake(22.28, 1)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(14.99, 25.82)];
    [bezierPath addCurveToPoint: CGPointMake(14.67, 25.89) controlPoint1: CGPointMake(14.88, 25.82) controlPoint2: CGPointMake(14.76, 25.84)];
    [bezierPath addLineToPoint: CGPointMake(11.4, 27.35)];
    [bezierPath addLineToPoint: CGPointMake(9.82, 24.94)];
    [bezierPath addCurveToPoint: CGPointMake(9.52, 24.67) controlPoint1: CGPointMake(9.75, 24.82) controlPoint2: CGPointMake(9.64, 24.73)];
    [bezierPath addCurveToPoint: CGPointMake(3.65, 16.7) controlPoint1: CGPointMake(9.48, 24.64) controlPoint2: CGPointMake(4.78, 22.16)];
    [bezierPath addCurveToPoint: CGPointMake(3.38, 14.21) controlPoint1: CGPointMake(3.47, 15.86) controlPoint2: CGPointMake(3.38, 15.02)];
    [bezierPath addCurveToPoint: CGPointMake(15.01, 2.58) controlPoint1: CGPointMake(3.38, 7.8) controlPoint2: CGPointMake(8.6, 2.58)];
    [bezierPath addCurveToPoint: CGPointMake(26.64, 14.21) controlPoint1: CGPointMake(21.42, 2.58) controlPoint2: CGPointMake(26.64, 7.8)];
    [bezierPath addCurveToPoint: CGPointMake(14.99, 25.82) controlPoint1: CGPointMake(26.64, 20.62) controlPoint2: CGPointMake(21.4, 25.82)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    
    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(11.15, 12.01, 1.7, 1.7)];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = ovalPath.CGPath;
    
    
    //// Oval 2 Drawing
    UIBezierPath* oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(14.15, 12.01, 1.7, 1.7)];
    CAShapeLayer *layer2 = [CAShapeLayer layer];
    layer2.fillColor = color.CGColor;
    layer2.path = oval2Path.CGPath;
    
    
    //// Oval 3 Drawing
    UIBezierPath* oval3Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(17.15, 12.01, 1.7, 1.7)];
    CAShapeLayer *layer3 = [CAShapeLayer layer];
    layer3.fillColor = color.CGColor;
    layer3.path = oval3Path.CGPath;
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:layer1];
    [view.layer addSublayer:layer2];
    [view.layer addSublayer:layer3];
}
#pragma mark ---------- 密码
- (void)methodNames_drawPassword1:(UIView *)view color:(UIColor *)color {
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(26.64, 4.45)];
    [bezierPath addCurveToPoint: CGPointMake(15.14, 0.21) controlPoint1: CGPointMake(19.84, 4.39) controlPoint2: CGPointMake(16.35, 1.48)];
    [bezierPath addCurveToPoint: CGPointMake(14.11, 0.23) controlPoint1: CGPointMake(15.14, 0.21) controlPoint2: CGPointMake(14.7, -0.28)];
    [bezierPath addCurveToPoint: CGPointMake(2.65, 4.45) controlPoint1: CGPointMake(12.88, 1.52) controlPoint2: CGPointMake(9.39, 4.39)];
    [bezierPath addCurveToPoint: CGPointMake(14.48, 29.99) controlPoint1: CGPointMake(2.65, 4.45) controlPoint2: CGPointMake(-2.17, 20.75)];
    [bezierPath addLineToPoint: CGPointMake(14.56, 30)];
    [bezierPath addCurveToPoint: CGPointMake(19.58, 26.54) controlPoint1: CGPointMake(16.49, 28.93) controlPoint2: CGPointMake(18.15, 27.76)];
    [bezierPath addCurveToPoint: CGPointMake(23.69, 22.11) controlPoint1: CGPointMake(19.58, 26.54) controlPoint2: CGPointMake(21.35, 25.15)];
    [bezierPath addCurveToPoint: CGPointMake(26.64, 4.45) controlPoint1: CGPointMake(29.81, 13.62) controlPoint2: CGPointMake(26.64, 4.45)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(6.45, 6.95)];
    [bezierPath addCurveToPoint: CGPointMake(5.09, 7.23) controlPoint1: CGPointMake(5.99, 7.08) controlPoint2: CGPointMake(5.46, 7.17)];
    [bezierPath addCurveToPoint: CGPointMake(5.07, 12.05) controlPoint1: CGPointMake(4.94, 8.01) controlPoint2: CGPointMake(4.69, 9.83)];
    [bezierPath addCurveToPoint: CGPointMake(4.53, 12.77) controlPoint1: CGPointMake(5.13, 12.39) controlPoint2: CGPointMake(4.89, 12.71)];
    [bezierPath addCurveToPoint: CGPointMake(4.43, 12.78) controlPoint1: CGPointMake(4.5, 12.77) controlPoint2: CGPointMake(4.46, 12.78)];
    [bezierPath addCurveToPoint: CGPointMake(3.78, 12.25) controlPoint1: CGPointMake(4.11, 12.78) controlPoint2: CGPointMake(3.84, 12.56)];
    [bezierPath addCurveToPoint: CGPointMake(3.92, 6.5) controlPoint1: CGPointMake(3.24, 9.02) controlPoint2: CGPointMake(3.89, 6.6)];
    [bezierPath addCurveToPoint: CGPointMake(4.49, 6.03) controlPoint1: CGPointMake(3.99, 6.24) controlPoint2: CGPointMake(4.22, 6.06)];
    [bezierPath addCurveToPoint: CGPointMake(6.06, 5.75) controlPoint1: CGPointMake(4.5, 6.03) controlPoint2: CGPointMake(5.4, 5.95)];
    [bezierPath addCurveToPoint: CGPointMake(6.88, 6.16) controlPoint1: CGPointMake(6.4, 5.65) controlPoint2: CGPointMake(6.77, 5.83)];
    [bezierPath addCurveToPoint: CGPointMake(6.45, 6.95) controlPoint1: CGPointMake(6.98, 6.49) controlPoint2: CGPointMake(6.79, 6.84)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    [view.layer addSublayer:layer];
}
- (void)methodNames_drawPassword2:(UIView *)view color:(UIColor *)color {
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(23.07, 21.24)];
    [bezierPath addCurveToPoint: CGPointMake(23.21, 22.01) controlPoint1: CGPointMake(22.89, 21.49) controlPoint2: CGPointMake(22.95, 21.84)];
    [bezierPath addCurveToPoint: CGPointMake(24.02, 21.88) controlPoint1: CGPointMake(23.48, 22.19) controlPoint2: CGPointMake(23.83, 22.13)];
    [bezierPath addCurveToPoint: CGPointMake(26.99, 15.68) controlPoint1: CGPointMake(25.38, 19.98) controlPoint2: CGPointMake(26.38, 17.9)];
    [bezierPath addCurveToPoint: CGPointMake(27.7, 10.14) controlPoint1: CGPointMake(27.47, 13.91) controlPoint2: CGPointMake(27.71, 12.04)];
    [bezierPath addCurveToPoint: CGPointMake(26.89, 4.61) controlPoint1: CGPointMake(27.67, 6.91) controlPoint2: CGPointMake(26.92, 4.7)];
    [bezierPath addCurveToPoint: CGPointMake(26.35, 4.23) controlPoint1: CGPointMake(26.81, 4.38) controlPoint2: CGPointMake(26.59, 4.23)];
    [bezierPath addCurveToPoint: CGPointMake(15.87, 0.38) controlPoint1: CGPointMake(20.12, 4.17) controlPoint2: CGPointMake(16.94, 1.52)];
    [bezierPath addCurveToPoint: CGPointMake(15.05, 0) controlPoint1: CGPointMake(15.8, 0.31) controlPoint2: CGPointMake(15.51, 0.03)];
    [bezierPath addCurveToPoint: CGPointMake(14.08, 0.36) controlPoint1: CGPointMake(14.81, -0.01) controlPoint2: CGPointMake(14.45, 0.04)];
    [bezierPath addCurveToPoint: CGPointMake(14.04, 0.4) controlPoint1: CGPointMake(14.07, 0.38) controlPoint2: CGPointMake(14.05, 0.39)];
    [bezierPath addCurveToPoint: CGPointMake(3.58, 4.23) controlPoint1: CGPointMake(10.8, 3.8) controlPoint2: CGPointMake(5.65, 4.21)];
    [bezierPath addCurveToPoint: CGPointMake(3.04, 4.63) controlPoint1: CGPointMake(3.33, 4.23) controlPoint2: CGPointMake(3.11, 4.39)];
    [bezierPath addCurveToPoint: CGPointMake(2.55, 7.28) controlPoint1: CGPointMake(3.02, 4.67) controlPoint2: CGPointMake(2.73, 5.66)];
    [bezierPath addCurveToPoint: CGPointMake(2.71, 13.71) controlPoint1: CGPointMake(2.38, 8.76) controlPoint2: CGPointMake(2.27, 11.08)];
    [bezierPath addCurveToPoint: CGPointMake(5.91, 21.85) controlPoint1: CGPointMake(3.2, 16.67) controlPoint2: CGPointMake(4.28, 19.41)];
    [bezierPath addCurveToPoint: CGPointMake(14.52, 29.53) controlPoint1: CGPointMake(7.94, 24.9) controlPoint2: CGPointMake(10.84, 27.49)];
    [bezierPath addCurveToPoint: CGPointMake(14.76, 29.61) controlPoint1: CGPointMake(14.6, 29.57) controlPoint2: CGPointMake(14.68, 29.6)];
    [bezierPath addLineToPoint: CGPointMake(14.84, 29.61)];
    [bezierPath addCurveToPoint: CGPointMake(14.89, 29.61) controlPoint1: CGPointMake(14.86, 29.61) controlPoint2: CGPointMake(14.87, 29.61)];
    [bezierPath addCurveToPoint: CGPointMake(15.17, 29.54) controlPoint1: CGPointMake(14.99, 29.61) controlPoint2: CGPointMake(15.09, 29.59)];
    [bezierPath addCurveToPoint: CGPointMake(20.02, 26.2) controlPoint1: CGPointMake(16.95, 28.55) controlPoint2: CGPointMake(18.58, 27.43)];
    [bezierPath addCurveToPoint: CGPointMake(23.74, 24.33) controlPoint1: CGPointMake(20.18, 26.07) controlPoint2: CGPointMake(22.25, 24.53)];
    [bezierPath addCurveToPoint: CGPointMake(24.24, 23.71) controlPoint1: CGPointMake(24.06, 24.29) controlPoint2: CGPointMake(24.28, 24.01)];
    [bezierPath addCurveToPoint: CGPointMake(23.59, 23.23) controlPoint1: CGPointMake(24.2, 23.4) controlPoint2: CGPointMake(23.9, 23.19)];
    [bezierPath addCurveToPoint: CGPointMake(19.29, 25.33) controlPoint1: CGPointMake(21.72, 23.47) controlPoint2: CGPointMake(19.39, 25.26)];
    [bezierPath addCurveToPoint: CGPointMake(19.27, 25.35) controlPoint1: CGPointMake(19.28, 25.34) controlPoint2: CGPointMake(19.28, 25.35)];
    [bezierPath addCurveToPoint: CGPointMake(14.85, 28.43) controlPoint1: CGPointMake(17.96, 26.48) controlPoint2: CGPointMake(16.47, 27.51)];
    [bezierPath addCurveToPoint: CGPointMake(6.89, 21.28) controlPoint1: CGPointMake(11.46, 26.5) controlPoint2: CGPointMake(8.78, 24.09)];
    [bezierPath addCurveToPoint: CGPointMake(3.85, 13.58) controlPoint1: CGPointMake(5.35, 18.97) controlPoint2: CGPointMake(4.33, 16.38)];
    [bezierPath addCurveToPoint: CGPointMake(4.04, 5.33) controlPoint1: CGPointMake(3.19, 9.68) controlPoint2: CGPointMake(3.79, 6.43)];
    [bezierPath addCurveToPoint: CGPointMake(11.24, 3.72) controlPoint1: CGPointMake(6.72, 5.25) controlPoint2: CGPointMake(9.14, 4.71)];
    [bezierPath addCurveToPoint: CGPointMake(14.87, 1.18) controlPoint1: CGPointMake(13.04, 2.87) controlPoint2: CGPointMake(14.2, 1.87)];
    [bezierPath addCurveToPoint: CGPointMake(15.02, 1.13) controlPoint1: CGPointMake(14.97, 1.09) controlPoint2: CGPointMake(15, 1.11)];
    [bezierPath addCurveToPoint: CGPointMake(18.65, 3.7) controlPoint1: CGPointMake(15.68, 1.83) controlPoint2: CGPointMake(16.84, 2.84)];
    [bezierPath addCurveToPoint: CGPointMake(25.91, 5.33) controlPoint1: CGPointMake(20.76, 4.71) controlPoint2: CGPointMake(23.2, 5.26)];
    [bezierPath addCurveToPoint: CGPointMake(26.55, 10.15) controlPoint1: CGPointMake(26.11, 6.07) controlPoint2: CGPointMake(26.53, 7.84)];
    [bezierPath addCurveToPoint: CGPointMake(25.88, 15.39) controlPoint1: CGPointMake(26.56, 11.95) controlPoint2: CGPointMake(26.34, 13.72)];
    [bezierPath addCurveToPoint: CGPointMake(23.07, 21.24) controlPoint1: CGPointMake(25.3, 17.49) controlPoint2: CGPointMake(24.36, 19.45)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(7.81, 7.87)];
    [bezier2Path addCurveToPoint: CGPointMake(8.19, 7.17) controlPoint1: CGPointMake(8.11, 7.78) controlPoint2: CGPointMake(8.28, 7.46)];
    [bezier2Path addCurveToPoint: CGPointMake(7.47, 6.8) controlPoint1: CGPointMake(8.09, 6.88) controlPoint2: CGPointMake(7.77, 6.71)];
    [bezier2Path addCurveToPoint: CGPointMake(5.97, 7.08) controlPoint1: CGPointMake(6.83, 7) controlPoint2: CGPointMake(5.98, 7.08)];
    [bezier2Path addCurveToPoint: CGPointMake(5.46, 7.53) controlPoint1: CGPointMake(5.71, 7.1) controlPoint2: CGPointMake(5.5, 7.29)];
    [bezier2Path addCurveToPoint: CGPointMake(5.53, 12.93) controlPoint1: CGPointMake(5.44, 7.63) controlPoint2: CGPointMake(5.02, 9.9)];
    [bezier2Path addCurveToPoint: CGPointMake(6.1, 13.4) controlPoint1: CGPointMake(5.58, 13.21) controlPoint2: CGPointMake(5.82, 13.4)];
    [bezier2Path addCurveToPoint: CGPointMake(6.19, 13.39) controlPoint1: CGPointMake(6.13, 13.4) controlPoint2: CGPointMake(6.16, 13.4)];
    [bezier2Path addCurveToPoint: CGPointMake(6.67, 12.75) controlPoint1: CGPointMake(6.5, 13.34) controlPoint2: CGPointMake(6.72, 13.06)];
    [bezier2Path addCurveToPoint: CGPointMake(6.53, 8.13) controlPoint1: CGPointMake(6.31, 10.63) controlPoint2: CGPointMake(6.44, 8.88)];
    [bezier2Path addCurveToPoint: CGPointMake(7.81, 7.87) controlPoint1: CGPointMake(6.88, 8.08) controlPoint2: CGPointMake(7.38, 8)];
    [bezier2Path closePath];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = bezier2Path.CGPath;
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:layer1];
}
- (void)methodNames_drawPassword3:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(21.18, 10.16)];
    [bezierPath addLineToPoint: CGPointMake(13.89, 17.53)];
    [bezierPath addLineToPoint: CGPointMake(10.66, 14.21)];
    [bezierPath addCurveToPoint: CGPointMake(9.25, 14.19) controlPoint1: CGPointMake(10.27, 13.81) controlPoint2: CGPointMake(9.64, 13.81)];
    [bezierPath addCurveToPoint: CGPointMake(9.23, 15.6) controlPoint1: CGPointMake(8.85, 14.58) controlPoint2: CGPointMake(8.84, 15.21)];
    [bezierPath addLineToPoint: CGPointMake(13.16, 19.65)];
    [bezierPath addCurveToPoint: CGPointMake(13.17, 19.66) controlPoint1: CGPointMake(13.17, 19.65) controlPoint2: CGPointMake(13.17, 19.65)];
    [bezierPath addCurveToPoint: CGPointMake(13.18, 19.67) controlPoint1: CGPointMake(13.17, 19.66) controlPoint2: CGPointMake(13.17, 19.66)];
    [bezierPath addCurveToPoint: CGPointMake(13.4, 19.81) controlPoint1: CGPointMake(13.24, 19.73) controlPoint2: CGPointMake(13.32, 19.77)];
    [bezierPath addCurveToPoint: CGPointMake(13.5, 19.88) controlPoint1: CGPointMake(13.43, 19.83) controlPoint2: CGPointMake(13.46, 19.86)];
    [bezierPath addCurveToPoint: CGPointMake(13.88, 19.95) controlPoint1: CGPointMake(13.62, 19.93) controlPoint2: CGPointMake(13.75, 19.95)];
    [bezierPath addCurveToPoint: CGPointMake(14.25, 19.88) controlPoint1: CGPointMake(14.01, 19.95) controlPoint2: CGPointMake(14.13, 19.93)];
    [bezierPath addCurveToPoint: CGPointMake(14.36, 19.81) controlPoint1: CGPointMake(14.29, 19.87) controlPoint2: CGPointMake(14.32, 19.83)];
    [bezierPath addCurveToPoint: CGPointMake(14.58, 19.67) controlPoint1: CGPointMake(14.43, 19.77) controlPoint2: CGPointMake(14.51, 19.73)];
    [bezierPath addCurveToPoint: CGPointMake(14.58, 19.66) controlPoint1: CGPointMake(14.58, 19.67) controlPoint2: CGPointMake(14.58, 19.67)];
    [bezierPath addCurveToPoint: CGPointMake(14.59, 19.66) controlPoint1: CGPointMake(14.58, 19.66) controlPoint2: CGPointMake(14.59, 19.66)];
    [bezierPath addLineToPoint: CGPointMake(22.6, 11.56)];
    [bezierPath addCurveToPoint: CGPointMake(22.59, 10.15) controlPoint1: CGPointMake(22.99, 11.17) controlPoint2: CGPointMake(22.98, 10.54)];
    [bezierPath addCurveToPoint: CGPointMake(21.18, 10.16) controlPoint1: CGPointMake(22.2, 9.76) controlPoint2: CGPointMake(21.56, 9.76)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(15.09, 1.01)];
    [bezier2Path addCurveToPoint: CGPointMake(14.75, 1.01) controlPoint1: CGPointMake(14.97, 1) controlPoint2: CGPointMake(14.86, 0.99)];
    [bezier2Path addCurveToPoint: CGPointMake(2, 7.17) controlPoint1: CGPointMake(11.76, 1.52) controlPoint2: CGPointMake(2, 3.44)];
    [bezier2Path addCurveToPoint: CGPointMake(14.92, 29.08) controlPoint1: CGPointMake(2, 19.22) controlPoint2: CGPointMake(11.75, 29.08)];
    [bezier2Path addCurveToPoint: CGPointMake(28, 7.17) controlPoint1: CGPointMake(18.03, 29.08) controlPoint2: CGPointMake(28, 18.97)];
    [bezier2Path addCurveToPoint: CGPointMake(15.09, 1.01) controlPoint1: CGPointMake(28, 3.62) controlPoint2: CGPointMake(18.97, 1.68)];
    [bezier2Path closePath];
    [bezier2Path moveToPoint: CGPointMake(14.91, 27.08)];
    [bezier2Path addCurveToPoint: CGPointMake(4, 7.17) controlPoint1: CGPointMake(13.08, 26.91) controlPoint2: CGPointMake(4, 18.29)];
    [bezier2Path addCurveToPoint: CGPointMake(14.91, 3.01) controlPoint1: CGPointMake(4, 5.96) controlPoint2: CGPointMake(9.18, 4)];
    [bezier2Path addCurveToPoint: CGPointMake(26, 7.17) controlPoint1: CGPointMake(20.74, 4.04) controlPoint2: CGPointMake(26, 6)];
    [bezier2Path addCurveToPoint: CGPointMake(14.91, 27.08) controlPoint1: CGPointMake(26, 18.27) controlPoint2: CGPointMake(16.78, 26.9)];
    [bezier2Path closePath];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = bezier2Path.CGPath;
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:layer1];
}
- (void)methodNames_drawPassword4:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(26.59, 11.94)];
    [bezierPath addLineToPoint: CGPointMake(8.57, 11.94)];
    [bezierPath addCurveToPoint: CGPointMake(7.58, 8.94) controlPoint1: CGPointMake(8.31, 11.14) controlPoint2: CGPointMake(7.75, 9.44)];
    [bezierPath addCurveToPoint: CGPointMake(8.04, 4.39) controlPoint1: CGPointMake(7.08, 7.42) controlPoint2: CGPointMake(7.24, 5.8)];
    [bezierPath addCurveToPoint: CGPointMake(11.79, 1.47) controlPoint1: CGPointMake(8.83, 2.98) controlPoint2: CGPointMake(10.17, 1.94)];
    [bezierPath addCurveToPoint: CGPointMake(16.65, 1.89) controlPoint1: CGPointMake(13.42, 1) controlPoint2: CGPointMake(15.15, 1.15)];
    [bezierPath addCurveToPoint: CGPointMake(19.77, 5.41) controlPoint1: CGPointMake(18.16, 2.64) controlPoint2: CGPointMake(19.26, 3.89)];
    [bezierPath addCurveToPoint: CGPointMake(20.61, 7.98) controlPoint1: CGPointMake(19.9, 5.83) controlPoint2: CGPointMake(20.61, 7.98)];
    [bezierPath addLineToPoint: CGPointMake(21.83, 7.62)];
    [bezierPath addCurveToPoint: CGPointMake(20.99, 5.06) controlPoint1: CGPointMake(21.83, 7.62) controlPoint2: CGPointMake(21.13, 5.48)];
    [bezierPath addCurveToPoint: CGPointMake(17.25, 0.83) controlPoint1: CGPointMake(20.38, 3.23) controlPoint2: CGPointMake(19.06, 1.73)];
    [bezierPath addCurveToPoint: CGPointMake(11.42, 0.32) controlPoint1: CGPointMake(15.44, -0.06) controlPoint2: CGPointMake(13.37, -0.24)];
    [bezierPath addCurveToPoint: CGPointMake(6.91, 3.83) controlPoint1: CGPointMake(9.46, 0.89) controlPoint2: CGPointMake(7.86, 2.13)];
    [bezierPath addCurveToPoint: CGPointMake(6.36, 9.3) controlPoint1: CGPointMake(5.95, 5.52) controlPoint2: CGPointMake(5.76, 7.46)];
    [bezierPath addCurveToPoint: CGPointMake(7.24, 11.94) controlPoint1: CGPointMake(6.5, 9.73) controlPoint2: CGPointMake(6.95, 11.07)];
    [bezierPath addLineToPoint: CGPointMake(3.64, 11.94)];
    [bezierPath addCurveToPoint: CGPointMake(3, 12.54) controlPoint1: CGPointMake(3.29, 11.94) controlPoint2: CGPointMake(3, 12.21)];
    [bezierPath addLineToPoint: CGPointMake(3, 29.28)];
    [bezierPath addCurveToPoint: CGPointMake(3.64, 29.88) controlPoint1: CGPointMake(3, 29.61) controlPoint2: CGPointMake(3.29, 29.88)];
    [bezierPath addLineToPoint: CGPointMake(26.59, 29.88)];
    [bezierPath addCurveToPoint: CGPointMake(27.23, 29.28) controlPoint1: CGPointMake(26.95, 29.88) controlPoint2: CGPointMake(27.23, 29.61)];
    [bezierPath addLineToPoint: CGPointMake(27.23, 12.54)];
    [bezierPath addCurveToPoint: CGPointMake(26.59, 11.94) controlPoint1: CGPointMake(27.23, 12.21) controlPoint2: CGPointMake(26.95, 11.94)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(25.96, 28.68)];
    [bezierPath addLineToPoint: CGPointMake(4.28, 28.68)];
    [bezierPath addLineToPoint: CGPointMake(4.28, 13.14)];
    [bezierPath addLineToPoint: CGPointMake(25.96, 13.14)];
    [bezierPath addLineToPoint: CGPointMake(25.96, 28.68)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(17.03, 19.72)];
    [bezier2Path addCurveToPoint: CGPointMake(16.39, 21.04) controlPoint1: CGPointMake(17.03, 20.24) controlPoint2: CGPointMake(16.78, 20.72)];
    [bezier2Path addLineToPoint: CGPointMake(16.39, 22.7)];
    [bezier2Path addCurveToPoint: CGPointMake(15.12, 23.9) controlPoint1: CGPointMake(16.39, 23.36) controlPoint2: CGPointMake(15.82, 23.9)];
    [bezier2Path addCurveToPoint: CGPointMake(13.84, 22.7) controlPoint1: CGPointMake(14.41, 23.9) controlPoint2: CGPointMake(13.84, 23.36)];
    [bezier2Path addLineToPoint: CGPointMake(13.84, 21.04)];
    [bezier2Path addCurveToPoint: CGPointMake(13.2, 19.72) controlPoint1: CGPointMake(13.45, 20.72) controlPoint2: CGPointMake(13.2, 20.24)];
    [bezier2Path addCurveToPoint: CGPointMake(15.12, 17.92) controlPoint1: CGPointMake(13.2, 18.73) controlPoint2: CGPointMake(14.06, 17.92)];
    [bezier2Path addCurveToPoint: CGPointMake(17.03, 19.72) controlPoint1: CGPointMake(16.17, 17.92) controlPoint2: CGPointMake(17.03, 18.73)];
    [bezier2Path closePath];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = bezier2Path.CGPath;
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:layer1];
}

- (void)methodNames_drawPassword5:(UIView *)view color:(UIColor *)color {
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(14, 18.01, 2, 5) cornerRadius: 1];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = rectanglePath.CGPath;
    
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(25, 29.01)];
    [bezierPath addLineToPoint: CGPointMake(5, 29.01)];
    [bezierPath addCurveToPoint: CGPointMake(2, 26.01) controlPoint1: CGPointMake(3.35, 29.01) controlPoint2: CGPointMake(2, 27.67)];
    [bezierPath addLineToPoint: CGPointMake(2, 14.01)];
    [bezierPath addCurveToPoint: CGPointMake(5, 11.01) controlPoint1: CGPointMake(2, 12.36) controlPoint2: CGPointMake(3.35, 11.01)];
    [bezierPath addLineToPoint: CGPointMake(25, 11.01)];
    [bezierPath addCurveToPoint: CGPointMake(28, 14.01) controlPoint1: CGPointMake(26.65, 11.01) controlPoint2: CGPointMake(28, 12.36)];
    [bezierPath addLineToPoint: CGPointMake(28, 26.01)];
    [bezierPath addCurveToPoint: CGPointMake(25, 29.01) controlPoint1: CGPointMake(28, 27.67) controlPoint2: CGPointMake(26.65, 29.01)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(5, 13.01)];
    [bezierPath addCurveToPoint: CGPointMake(4, 14.01) controlPoint1: CGPointMake(4.45, 13.01) controlPoint2: CGPointMake(4, 13.46)];
    [bezierPath addLineToPoint: CGPointMake(4, 26.01)];
    [bezierPath addCurveToPoint: CGPointMake(5, 27.01) controlPoint1: CGPointMake(4, 26.56) controlPoint2: CGPointMake(4.45, 27.01)];
    [bezierPath addLineToPoint: CGPointMake(25, 27.01)];
    [bezierPath addCurveToPoint: CGPointMake(26, 26.01) controlPoint1: CGPointMake(25.55, 27.01) controlPoint2: CGPointMake(26, 26.56)];
    [bezierPath addLineToPoint: CGPointMake(26, 14.01)];
    [bezierPath addCurveToPoint: CGPointMake(25, 13.01) controlPoint1: CGPointMake(26, 13.46) controlPoint2: CGPointMake(25.55, 13.01)];
    [bezierPath addLineToPoint: CGPointMake(5, 13.01)];
    [bezierPath closePath];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(8, 12.01)];
    [bezier2Path addCurveToPoint: CGPointMake(7, 11.01) controlPoint1: CGPointMake(7.45, 12.01) controlPoint2: CGPointMake(7, 11.57)];
    [bezier2Path addLineToPoint: CGPointMake(7, 8.99)];
    [bezier2Path addCurveToPoint: CGPointMake(15.32, 1) controlPoint1: CGPointMake(7, 3.99) controlPoint2: CGPointMake(11.23, 1)];
    [bezier2Path addCurveToPoint: CGPointMake(22.95, 5.66) controlPoint1: CGPointMake(18.47, 1) controlPoint2: CGPointMake(21.53, 2.87)];
    [bezier2Path addCurveToPoint: CGPointMake(22.51, 7) controlPoint1: CGPointMake(23.2, 6.15) controlPoint2: CGPointMake(23, 6.75)];
    [bezier2Path addCurveToPoint: CGPointMake(21.17, 6.56) controlPoint1: CGPointMake(22.02, 7.25) controlPoint2: CGPointMake(21.42, 7.05)];
    [bezier2Path addCurveToPoint: CGPointMake(15.32, 3) controlPoint1: CGPointMake(20.08, 4.43) controlPoint2: CGPointMake(17.73, 3)];
    [bezier2Path addCurveToPoint: CGPointMake(9, 8.99) controlPoint1: CGPointMake(12.21, 3) controlPoint2: CGPointMake(9, 5.24)];
    [bezier2Path addLineToPoint: CGPointMake(9, 11.01)];
    [bezier2Path addCurveToPoint: CGPointMake(8, 12.01) controlPoint1: CGPointMake(9, 11.57) controlPoint2: CGPointMake(8.55, 12.01)];
    [bezier2Path closePath];
    CAShapeLayer *layer2 = [CAShapeLayer layer];
    layer2.fillColor = color.CGColor;
    layer2.fillColor = color.CGColor;
    layer2.path = bezier2Path.CGPath;
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:layer1];
    [view.layer addSublayer:layer2];
}
#pragma mark ---------- 身份证
- (void)methodNames_drawPersonID1:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(22.13, 19.03)];
    [bezierPath addCurveToPoint: CGPointMake(23.24, 18.89) controlPoint1: CGPointMake(22.47, 19.3) controlPoint2: CGPointMake(22.97, 19.23)];
    [bezierPath addCurveToPoint: CGPointMake(23.1, 17.79) controlPoint1: CGPointMake(23.51, 18.55) controlPoint2: CGPointMake(23.44, 18.06)];
    [bezierPath addCurveToPoint: CGPointMake(21.57, 16.75) controlPoint1: CGPointMake(22.61, 17.4) controlPoint2: CGPointMake(22.09, 17.06)];
    [bezierPath addCurveToPoint: CGPointMake(18.18, 15.37) controlPoint1: CGPointMake(20.51, 16.14) controlPoint2: CGPointMake(19.38, 15.69)];
    [bezierPath addCurveToPoint: CGPointMake(21.95, 9.09) controlPoint1: CGPointMake(20.44, 14.17) controlPoint2: CGPointMake(21.95, 11.82)];
    [bezierPath addCurveToPoint: CGPointMake(14.86, 2) controlPoint1: CGPointMake(21.95, 5.18) controlPoint2: CGPointMake(18.77, 2)];
    [bezierPath addCurveToPoint: CGPointMake(7.77, 9.09) controlPoint1: CGPointMake(10.95, 2) controlPoint2: CGPointMake(7.77, 5.18)];
    [bezierPath addCurveToPoint: CGPointMake(11.56, 15.37) controlPoint1: CGPointMake(7.77, 11.8) controlPoint2: CGPointMake(9.31, 14.17)];
    [bezierPath addCurveToPoint: CGPointMake(1.72, 25.62) controlPoint1: CGPointMake(6.71, 16.61) controlPoint2: CGPointMake(2.78, 20.54)];
    [bezierPath addCurveToPoint: CGPointMake(2.33, 26.55) controlPoint1: CGPointMake(1.63, 26.05) controlPoint2: CGPointMake(1.9, 26.46)];
    [bezierPath addCurveToPoint: CGPointMake(2.49, 26.57) controlPoint1: CGPointMake(2.37, 26.57) controlPoint2: CGPointMake(2.44, 26.57)];
    [bezierPath addCurveToPoint: CGPointMake(3.25, 25.94) controlPoint1: CGPointMake(2.85, 26.57) controlPoint2: CGPointMake(3.19, 26.32)];
    [bezierPath addCurveToPoint: CGPointMake(14.86, 16.52) controlPoint1: CGPointMake(4.4, 20.5) controlPoint2: CGPointMake(9.28, 16.52)];
    [bezierPath addCurveToPoint: CGPointMake(20.78, 18.1) controlPoint1: CGPointMake(16.94, 16.52) controlPoint2: CGPointMake(18.97, 17.06)];
    [bezierPath addCurveToPoint: CGPointMake(22.13, 19.03) controlPoint1: CGPointMake(21.25, 18.37) controlPoint2: CGPointMake(21.7, 18.69)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(9.35, 9.09)];
    [bezierPath addCurveToPoint: CGPointMake(14.86, 3.58) controlPoint1: CGPointMake(9.35, 6.04) controlPoint2: CGPointMake(11.83, 3.58)];
    [bezierPath addCurveToPoint: CGPointMake(20.37, 9.09) controlPoint1: CGPointMake(17.89, 3.58) controlPoint2: CGPointMake(20.37, 6.06)];
    [bezierPath addCurveToPoint: CGPointMake(14.86, 14.6) controlPoint1: CGPointMake(20.37, 12.12) controlPoint2: CGPointMake(17.89, 14.6)];
    [bezierPath addCurveToPoint: CGPointMake(9.35, 9.09) controlPoint1: CGPointMake(11.83, 14.6) controlPoint2: CGPointMake(9.35, 12.14)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    
    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(26.75, 17.66, 1.7, 1.7)];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = ovalPath.CGPath;
    
    
    //// Oval 2 Drawing
    UIBezierPath* oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(24.65, 19.81, 1.7, 1.7)];
    CAShapeLayer *layer2 = [CAShapeLayer layer];
    layer2.fillColor = color.CGColor;
    layer2.path = oval2Path.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(22.49, 22.78)];
    [bezier2Path addLineToPoint: CGPointMake(22.49, 22.78)];
    [bezier2Path addCurveToPoint: CGPointMake(23.35, 23.63) controlPoint1: CGPointMake(22.49, 23.25) controlPoint2: CGPointMake(22.88, 23.63)];
    [bezier2Path addCurveToPoint: CGPointMake(24.21, 22.78) controlPoint1: CGPointMake(23.83, 23.63) controlPoint2: CGPointMake(24.21, 23.25)];
    [bezier2Path addLineToPoint: CGPointMake(24.21, 22.78)];
    [bezier2Path addCurveToPoint: CGPointMake(23.35, 21.92) controlPoint1: CGPointMake(24.21, 22.3) controlPoint2: CGPointMake(23.83, 21.92)];
    [bezier2Path addCurveToPoint: CGPointMake(22.49, 22.78) controlPoint1: CGPointMake(22.88, 21.92) controlPoint2: CGPointMake(22.49, 22.3)];
    [bezier2Path closePath];
    CAShapeLayer *layer3 = [CAShapeLayer layer];
    layer3.fillColor = color.CGColor;
    layer3.path = bezier2Path.CGPath;
    
    
    //// Bezier 3 Drawing
    UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
    [bezier3Path moveToPoint: CGPointMake(20.85, 24.31)];
    [bezier3Path addLineToPoint: CGPointMake(19.06, 26.1)];
    [bezier3Path addLineToPoint: CGPointMake(16.53, 23.57)];
    [bezier3Path addCurveToPoint: CGPointMake(15.43, 23.57) controlPoint1: CGPointMake(16.22, 23.25) controlPoint2: CGPointMake(15.72, 23.25)];
    [bezier3Path addCurveToPoint: CGPointMake(15.43, 24.67) controlPoint1: CGPointMake(15.11, 23.88) controlPoint2: CGPointMake(15.11, 24.38)];
    [bezier3Path addLineToPoint: CGPointMake(18.52, 27.77)];
    [bezier3Path addCurveToPoint: CGPointMake(19.08, 27.99) controlPoint1: CGPointMake(18.68, 27.93) controlPoint2: CGPointMake(18.88, 27.99)];
    [bezier3Path addCurveToPoint: CGPointMake(19.65, 27.77) controlPoint1: CGPointMake(19.29, 27.99) controlPoint2: CGPointMake(19.49, 27.93)];
    [bezier3Path addLineToPoint: CGPointMake(22, 25.42)];
    [bezier3Path addCurveToPoint: CGPointMake(22, 24.29) controlPoint1: CGPointMake(22.31, 25.1) controlPoint2: CGPointMake(22.31, 24.61)];
    [bezier3Path addCurveToPoint: CGPointMake(20.85, 24.31) controlPoint1: CGPointMake(21.66, 24) controlPoint2: CGPointMake(21.16, 24)];
    [bezier3Path closePath];
    CAShapeLayer *layer4 = [CAShapeLayer layer];
    layer4.fillColor = color.CGColor;
    layer4.path = bezier3Path.CGPath;
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:layer1];
    [view.layer addSublayer:layer2];
    [view.layer addSublayer:layer3];
    [view.layer addSublayer:layer4];
}

#pragma mark ---------- 展示更多
- (void)methodNames_drawShowMoreUP1:(UIView *)view color:(UIColor *)color {
    
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(27.55, 14.78)];
    [bezierPath addCurveToPoint: CGPointMake(14.78, 2) controlPoint1: CGPointMake(27.55, 7.72) controlPoint2: CGPointMake(21.83, 2)];
    [bezierPath addCurveToPoint: CGPointMake(2, 14.78) controlPoint1: CGPointMake(7.72, 2) controlPoint2: CGPointMake(2, 7.72)];
    [bezierPath addCurveToPoint: CGPointMake(14.78, 27.55) controlPoint1: CGPointMake(2, 21.83) controlPoint2: CGPointMake(7.72, 27.55)];
    [bezierPath addCurveToPoint: CGPointMake(22.47, 24.94) controlPoint1: CGPointMake(17.67, 27.55) controlPoint2: CGPointMake(20.32, 26.57)];
    [bezierPath addCurveToPoint: CGPointMake(22.61, 24.57) controlPoint1: CGPointMake(22.56, 24.84) controlPoint2: CGPointMake(22.61, 24.71)];
    [bezierPath addCurveToPoint: CGPointMake(22.05, 24.01) controlPoint1: CGPointMake(22.61, 24.26) controlPoint2: CGPointMake(22.36, 24.01)];
    [bezierPath addCurveToPoint: CGPointMake(21.64, 24.18) controlPoint1: CGPointMake(21.89, 24.01) controlPoint2: CGPointMake(21.74, 24.07)];
    [bezierPath addLineToPoint: CGPointMake(21.63, 24.18)];
    [bezierPath addCurveToPoint: CGPointMake(14.79, 26.43) controlPoint1: CGPointMake(19.71, 25.59) controlPoint2: CGPointMake(17.35, 26.43)];
    [bezierPath addCurveToPoint: CGPointMake(3.22, 14.87) controlPoint1: CGPointMake(8.4, 26.43) controlPoint2: CGPointMake(3.22, 21.25)];
    [bezierPath addCurveToPoint: CGPointMake(14.79, 3.3) controlPoint1: CGPointMake(3.22, 8.48) controlPoint2: CGPointMake(8.4, 3.3)];
    [bezierPath addCurveToPoint: CGPointMake(26.36, 14.87) controlPoint1: CGPointMake(21.18, 3.3) controlPoint2: CGPointMake(26.36, 8.48)];
    [bezierPath addCurveToPoint: CGPointMake(25.05, 20.27) controlPoint1: CGPointMake(26.36, 16.82) controlPoint2: CGPointMake(25.9, 18.65)];
    [bezierPath addLineToPoint: CGPointMake(25.05, 20.28)];
    [bezierPath addCurveToPoint: CGPointMake(25.01, 20.44) controlPoint1: CGPointMake(25.03, 20.33) controlPoint2: CGPointMake(25.01, 20.38)];
    [bezierPath addCurveToPoint: CGPointMake(25.58, 21.01) controlPoint1: CGPointMake(25.01, 20.75) controlPoint2: CGPointMake(25.27, 21.01)];
    [bezierPath addCurveToPoint: CGPointMake(26.11, 20.63) controlPoint1: CGPointMake(25.82, 21.01) controlPoint2: CGPointMake(26.03, 20.85)];
    [bezierPath addLineToPoint: CGPointMake(26.11, 20.64)];
    [bezierPath addCurveToPoint: CGPointMake(27.55, 14.78) controlPoint1: CGPointMake(27.02, 18.88) controlPoint2: CGPointMake(27.55, 16.89)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(15.11, 10.68)];
    [bezierPath addCurveToPoint: CGPointMake(14.51, 10.93) controlPoint1: CGPointMake(14.91, 10.67) controlPoint2: CGPointMake(14.68, 10.75)];
    [bezierPath addLineToPoint: CGPointMake(9.31, 16.2)];
    [bezierPath addCurveToPoint: CGPointMake(9.24, 17.23) controlPoint1: CGPointMake(9, 16.5) controlPoint2: CGPointMake(8.98, 16.96)];
    [bezierPath addCurveToPoint: CGPointMake(10.26, 17.16) controlPoint1: CGPointMake(9.5, 17.49) controlPoint2: CGPointMake(9.96, 17.46)];
    [bezierPath addLineToPoint: CGPointMake(15.11, 12.25)];
    [bezierPath addLineToPoint: CGPointMake(20.08, 17.28)];
    [bezierPath addCurveToPoint: CGPointMake(21.1, 17.35) controlPoint1: CGPointMake(20.38, 17.58) controlPoint2: CGPointMake(20.84, 17.61)];
    [bezierPath addCurveToPoint: CGPointMake(21.04, 16.32) controlPoint1: CGPointMake(21.37, 17.08) controlPoint2: CGPointMake(21.34, 16.62)];
    [bezierPath addLineToPoint: CGPointMake(15.72, 10.93)];
    [bezierPath addCurveToPoint: CGPointMake(15.11, 10.68) controlPoint1: CGPointMake(15.54, 10.76) controlPoint2: CGPointMake(15.32, 10.67)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    [view.layer addSublayer:layer];
}
- (void)methodNames_drawShowMoreDown1:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(27.49, 14.75)];
    [bezierPath addCurveToPoint: CGPointMake(14.75, 2) controlPoint1: CGPointMake(27.49, 7.71) controlPoint2: CGPointMake(21.78, 2)];
    [bezierPath addCurveToPoint: CGPointMake(2, 14.75) controlPoint1: CGPointMake(7.71, 2) controlPoint2: CGPointMake(2, 7.71)];
    [bezierPath addCurveToPoint: CGPointMake(14.75, 27.49) controlPoint1: CGPointMake(2, 21.78) controlPoint2: CGPointMake(7.71, 27.49)];
    [bezierPath addCurveToPoint: CGPointMake(22.42, 24.89) controlPoint1: CGPointMake(17.63, 27.49) controlPoint2: CGPointMake(20.28, 26.51)];
    [bezierPath addCurveToPoint: CGPointMake(22.56, 24.52) controlPoint1: CGPointMake(22.51, 24.79) controlPoint2: CGPointMake(22.56, 24.66)];
    [bezierPath addCurveToPoint: CGPointMake(22, 23.95) controlPoint1: CGPointMake(22.56, 24.21) controlPoint2: CGPointMake(22.31, 23.95)];
    [bezierPath addCurveToPoint: CGPointMake(21.59, 24.13) controlPoint1: CGPointMake(21.84, 23.95) controlPoint2: CGPointMake(21.69, 24.02)];
    [bezierPath addLineToPoint: CGPointMake(21.58, 24.13)];
    [bezierPath addCurveToPoint: CGPointMake(14.76, 26.38) controlPoint1: CGPointMake(19.67, 25.53) controlPoint2: CGPointMake(17.31, 26.38)];
    [bezierPath addCurveToPoint: CGPointMake(3.22, 14.83) controlPoint1: CGPointMake(8.38, 26.38) controlPoint2: CGPointMake(3.22, 21.21)];
    [bezierPath addCurveToPoint: CGPointMake(14.76, 3.29) controlPoint1: CGPointMake(3.22, 8.46) controlPoint2: CGPointMake(8.38, 3.29)];
    [bezierPath addCurveToPoint: CGPointMake(26.3, 14.83) controlPoint1: CGPointMake(21.13, 3.29) controlPoint2: CGPointMake(26.3, 8.46)];
    [bezierPath addCurveToPoint: CGPointMake(24.99, 20.22) controlPoint1: CGPointMake(26.3, 16.78) controlPoint2: CGPointMake(25.84, 18.61)];
    [bezierPath addLineToPoint: CGPointMake(24.99, 20.23)];
    [bezierPath addCurveToPoint: CGPointMake(24.96, 20.4) controlPoint1: CGPointMake(24.97, 20.29) controlPoint2: CGPointMake(24.96, 20.34)];
    [bezierPath addCurveToPoint: CGPointMake(25.52, 20.96) controlPoint1: CGPointMake(24.96, 20.71) controlPoint2: CGPointMake(25.21, 20.96)];
    [bezierPath addCurveToPoint: CGPointMake(26.05, 20.59) controlPoint1: CGPointMake(25.77, 20.96) controlPoint2: CGPointMake(25.97, 20.81)];
    [bezierPath addLineToPoint: CGPointMake(26.05, 20.59)];
    [bezierPath addCurveToPoint: CGPointMake(27.49, 14.75) controlPoint1: CGPointMake(26.96, 18.84) controlPoint2: CGPointMake(27.49, 16.86)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(20.04, 12.25)];
    [bezierPath addLineToPoint: CGPointMake(15.08, 17.27)];
    [bezierPath addLineToPoint: CGPointMake(10.24, 12.37)];
    [bezierPath addCurveToPoint: CGPointMake(9.22, 12.3) controlPoint1: CGPointMake(9.94, 12.07) controlPoint2: CGPointMake(9.48, 12.04)];
    [bezierPath addCurveToPoint: CGPointMake(9.29, 13.33) controlPoint1: CGPointMake(8.96, 12.57) controlPoint2: CGPointMake(8.99, 13.03)];
    [bezierPath addLineToPoint: CGPointMake(14.48, 18.59)];
    [bezierPath addCurveToPoint: CGPointMake(15.08, 18.83) controlPoint1: CGPointMake(14.65, 18.76) controlPoint2: CGPointMake(14.87, 18.84)];
    [bezierPath addCurveToPoint: CGPointMake(15.68, 18.58) controlPoint1: CGPointMake(15.29, 18.84) controlPoint2: CGPointMake(15.51, 18.76)];
    [bezierPath addLineToPoint: CGPointMake(20.99, 13.21)];
    [bezierPath addCurveToPoint: CGPointMake(21.06, 12.18) controlPoint1: CGPointMake(21.29, 12.91) controlPoint2: CGPointMake(21.32, 12.45)];
    [bezierPath addCurveToPoint: CGPointMake(20.04, 12.25) controlPoint1: CGPointMake(20.79, 11.92) controlPoint2: CGPointMake(20.34, 11.95)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    [view.layer addSublayer:layer];
}
- (void)methodNames_drawShowMoreUP2:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(14.74, 1)];
    [bezierPath addCurveToPoint: CGPointMake(1, 14.74) controlPoint1: CGPointMake(7.15, 1) controlPoint2: CGPointMake(1, 7.15)];
    [bezierPath addCurveToPoint: CGPointMake(14.74, 28.48) controlPoint1: CGPointMake(1, 22.33) controlPoint2: CGPointMake(7.15, 28.48)];
    [bezierPath addCurveToPoint: CGPointMake(28.48, 14.74) controlPoint1: CGPointMake(22.33, 28.48) controlPoint2: CGPointMake(28.48, 22.33)];
    [bezierPath addCurveToPoint: CGPointMake(14.74, 1) controlPoint1: CGPointMake(28.48, 7.15) controlPoint2: CGPointMake(22.33, 1)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(16.14, 12.6)];
    [bezierPath addLineToPoint: CGPointMake(16.14, 23.7)];
    [bezierPath addLineToPoint: CGPointMake(13.34, 23.7)];
    [bezierPath addLineToPoint: CGPointMake(13.34, 12.6)];
    [bezierPath addLineToPoint: CGPointMake(9.36, 12.6)];
    [bezierPath addLineToPoint: CGPointMake(14.74, 5.78)];
    [bezierPath addLineToPoint: CGPointMake(20.12, 12.6)];
    [bezierPath addLineToPoint: CGPointMake(16.14, 12.6)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    [view.layer addSublayer:layer];
}
- (void)methodNames_drawShowMoreDown2:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(14.74, 1)];
    [bezierPath addCurveToPoint: CGPointMake(1, 14.74) controlPoint1: CGPointMake(7.15, 1) controlPoint2: CGPointMake(1, 7.15)];
    [bezierPath addCurveToPoint: CGPointMake(14.74, 28.48) controlPoint1: CGPointMake(1, 22.33) controlPoint2: CGPointMake(7.15, 28.48)];
    [bezierPath addCurveToPoint: CGPointMake(28.48, 14.74) controlPoint1: CGPointMake(22.33, 28.48) controlPoint2: CGPointMake(28.48, 22.33)];
    [bezierPath addCurveToPoint: CGPointMake(14.74, 1) controlPoint1: CGPointMake(28.48, 7.15) controlPoint2: CGPointMake(22.33, 1)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(14.74, 23.7)];
    [bezierPath addLineToPoint: CGPointMake(9.36, 16.88)];
    [bezierPath addLineToPoint: CGPointMake(13.34, 16.88)];
    [bezierPath addLineToPoint: CGPointMake(13.34, 5.78)];
    [bezierPath addLineToPoint: CGPointMake(16.14, 5.78)];
    [bezierPath addLineToPoint: CGPointMake(16.14, 16.88)];
    [bezierPath addLineToPoint: CGPointMake(20.12, 16.88)];
    [bezierPath addLineToPoint: CGPointMake(14.74, 23.7)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    [view.layer addSublayer:layer];
}
- (void)methodNames_drawShowMoreUP3:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(28.46, 20.29)];
    [bezierPath addLineToPoint: CGPointMake(15.8, 7.38)];
    [bezierPath addCurveToPoint: CGPointMake(14.02, 7.38) controlPoint1: CGPointMake(15.31, 6.87) controlPoint2: CGPointMake(14.51, 6.87)];
    [bezierPath addLineToPoint: CGPointMake(1.36, 20.29)];
    [bezierPath addCurveToPoint: CGPointMake(2.25, 22.42) controlPoint1: CGPointMake(0.58, 21.08) controlPoint2: CGPointMake(1.14, 22.42)];
    [bezierPath addLineToPoint: CGPointMake(27.57, 22.42)];
    [bezierPath addCurveToPoint: CGPointMake(28.46, 20.29) controlPoint1: CGPointMake(28.68, 22.42) controlPoint2: CGPointMake(29.24, 21.08)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    [view.layer addSublayer:layer];
}
- (void)methodNames_drawShowMoreDown3:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(1.36, 9.13)];
    [bezierPath addLineToPoint: CGPointMake(14.02, 22.04)];
    [bezierPath addCurveToPoint: CGPointMake(15.8, 22.04) controlPoint1: CGPointMake(14.51, 22.54) controlPoint2: CGPointMake(15.31, 22.54)];
    [bezierPath addLineToPoint: CGPointMake(28.46, 9.13)];
    [bezierPath addCurveToPoint: CGPointMake(27.57, 7) controlPoint1: CGPointMake(29.24, 8.33) controlPoint2: CGPointMake(28.68, 7)];
    [bezierPath addLineToPoint: CGPointMake(2.25, 7)];
    [bezierPath addCurveToPoint: CGPointMake(1.36, 9.13) controlPoint1: CGPointMake(1.14, 7) controlPoint2: CGPointMake(0.58, 8.33)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    [view.layer addSublayer:layer];
}
- (void)methodNames_drawShowMoreUP4:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(8.76, 18.39)];
    [bezierPath addLineToPoint: CGPointMake(8.76, 18.38)];
    [bezierPath addCurveToPoint: CGPointMake(7, 18.4) controlPoint1: CGPointMake(8.28, 18.87) controlPoint2: CGPointMake(7.49, 18.87)];
    [bezierPath addLineToPoint: CGPointMake(6.98, 18.38)];
    [bezierPath addCurveToPoint: CGPointMake(6.98, 16.65) controlPoint1: CGPointMake(6.51, 17.9) controlPoint2: CGPointMake(6.51, 17.13)];
    [bezierPath addCurveToPoint: CGPointMake(7, 16.63) controlPoint1: CGPointMake(6.99, 16.64) controlPoint2: CGPointMake(6.99, 16.64)];
    [bezierPath addLineToPoint: CGPointMake(14.23, 9.47)];
    [bezierPath addLineToPoint: CGPointMake(14.22, 9.49)];
    [bezierPath addCurveToPoint: CGPointMake(17.75, 9.46) controlPoint1: CGPointMake(15.19, 8.52) controlPoint2: CGPointMake(16.76, 8.5)];
    [bezierPath addLineToPoint: CGPointMake(25.01, 16.64)];
    [bezierPath addLineToPoint: CGPointMake(25.02, 16.65)];
    [bezierPath addCurveToPoint: CGPointMake(25.02, 18.38) controlPoint1: CGPointMake(25.49, 17.13) controlPoint2: CGPointMake(25.49, 17.9)];
    [bezierPath addCurveToPoint: CGPointMake(25, 18.4) controlPoint1: CGPointMake(25.01, 18.39) controlPoint2: CGPointMake(25.01, 18.39)];
    [bezierPath addLineToPoint: CGPointMake(25.02, 18.38)];
    [bezierPath addCurveToPoint: CGPointMake(23.25, 18.4) controlPoint1: CGPointMake(24.53, 18.87) controlPoint2: CGPointMake(23.75, 18.87)];
    [bezierPath addLineToPoint: CGPointMake(16, 11.22)];
    [bezierPath addLineToPoint: CGPointMake(8.76, 18.39)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(16, 30)];
    [bezier2Path addCurveToPoint: CGPointMake(31, 15) controlPoint1: CGPointMake(24.28, 30) controlPoint2: CGPointMake(31, 23.28)];
    [bezier2Path addCurveToPoint: CGPointMake(16, 0) controlPoint1: CGPointMake(31, 6.72) controlPoint2: CGPointMake(24.28, 0)];
    [bezier2Path addCurveToPoint: CGPointMake(1, 15) controlPoint1: CGPointMake(7.72, 0) controlPoint2: CGPointMake(1, 6.72)];
    [bezier2Path addCurveToPoint: CGPointMake(16, 30) controlPoint1: CGPointMake(1, 23.28) controlPoint2: CGPointMake(7.72, 30)];
    [bezier2Path closePath];
    [bezier2Path moveToPoint: CGPointMake(16, 27.5)];
    [bezier2Path addCurveToPoint: CGPointMake(3.5, 15) controlPoint1: CGPointMake(9.1, 27.5) controlPoint2: CGPointMake(3.5, 21.9)];
    [bezier2Path addCurveToPoint: CGPointMake(16, 2.5) controlPoint1: CGPointMake(3.5, 8.1) controlPoint2: CGPointMake(9.1, 2.5)];
    [bezier2Path addCurveToPoint: CGPointMake(28.5, 15) controlPoint1: CGPointMake(22.9, 2.5) controlPoint2: CGPointMake(28.5, 8.1)];
    [bezier2Path addCurveToPoint: CGPointMake(16, 27.5) controlPoint1: CGPointMake(28.5, 21.9) controlPoint2: CGPointMake(22.9, 27.5)];
    [bezier2Path closePath];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = bezier2Path.CGPath;
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:layer1];
}
- (void)methodNames_drawShowMoreDown4:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(8.76, 11.61)];
    [bezierPath addLineToPoint: CGPointMake(8.76, 11.62)];
    [bezierPath addCurveToPoint: CGPointMake(7, 11.6) controlPoint1: CGPointMake(8.28, 11.13) controlPoint2: CGPointMake(7.49, 11.13)];
    [bezierPath addLineToPoint: CGPointMake(6.98, 11.62)];
    [bezierPath addCurveToPoint: CGPointMake(6.98, 13.35) controlPoint1: CGPointMake(6.51, 12.1) controlPoint2: CGPointMake(6.51, 12.87)];
    [bezierPath addCurveToPoint: CGPointMake(7, 13.37) controlPoint1: CGPointMake(6.99, 13.36) controlPoint2: CGPointMake(6.99, 13.36)];
    [bezierPath addLineToPoint: CGPointMake(14.23, 20.53)];
    [bezierPath addCurveToPoint: CGPointMake(17.77, 20.53) controlPoint1: CGPointMake(15.21, 21.49) controlPoint2: CGPointMake(16.79, 21.49)];
    [bezierPath addLineToPoint: CGPointMake(25.01, 13.36)];
    [bezierPath addLineToPoint: CGPointMake(25.02, 13.35)];
    [bezierPath addCurveToPoint: CGPointMake(25.02, 11.62) controlPoint1: CGPointMake(25.49, 12.87) controlPoint2: CGPointMake(25.49, 12.1)];
    [bezierPath addCurveToPoint: CGPointMake(25, 11.6) controlPoint1: CGPointMake(25.01, 11.61) controlPoint2: CGPointMake(25.01, 11.61)];
    [bezierPath addLineToPoint: CGPointMake(25.02, 11.62)];
    [bezierPath addCurveToPoint: CGPointMake(23.25, 11.6) controlPoint1: CGPointMake(24.53, 11.13) controlPoint2: CGPointMake(23.75, 11.13)];
    [bezierPath addLineToPoint: CGPointMake(16, 18.78)];
    [bezierPath addLineToPoint: CGPointMake(8.76, 11.61)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(16, 30)];
    [bezier2Path addCurveToPoint: CGPointMake(31, 15) controlPoint1: CGPointMake(24.28, 30) controlPoint2: CGPointMake(31, 23.28)];
    [bezier2Path addCurveToPoint: CGPointMake(16, 0) controlPoint1: CGPointMake(31, 6.72) controlPoint2: CGPointMake(24.28, 0)];
    [bezier2Path addCurveToPoint: CGPointMake(1, 15) controlPoint1: CGPointMake(7.72, 0) controlPoint2: CGPointMake(1, 6.72)];
    [bezier2Path addCurveToPoint: CGPointMake(16, 30) controlPoint1: CGPointMake(1, 23.28) controlPoint2: CGPointMake(7.72, 30)];
    [bezier2Path closePath];
    [bezier2Path moveToPoint: CGPointMake(16, 27.5)];
    [bezier2Path addCurveToPoint: CGPointMake(3.5, 15) controlPoint1: CGPointMake(9.1, 27.5) controlPoint2: CGPointMake(3.5, 21.9)];
    [bezier2Path addCurveToPoint: CGPointMake(16, 2.5) controlPoint1: CGPointMake(3.5, 8.1) controlPoint2: CGPointMake(9.1, 2.5)];
    [bezier2Path addCurveToPoint: CGPointMake(28.5, 15) controlPoint1: CGPointMake(22.9, 2.5) controlPoint2: CGPointMake(28.5, 8.1)];
    [bezier2Path addCurveToPoint: CGPointMake(16, 27.5) controlPoint1: CGPointMake(28.5, 21.9) controlPoint2: CGPointMake(22.9, 27.5)];
    [bezier2Path closePath];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = bezier2Path.CGPath;
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:layer1];
}

#pragma mark ---------- error
- (void)methodNames_drawError1:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(16, 29)];
    [bezierPath addCurveToPoint: CGPointMake(2, 15) controlPoint1: CGPointMake(8.28, 29) controlPoint2: CGPointMake(2, 22.72)];
    [bezierPath addCurveToPoint: CGPointMake(16, 1) controlPoint1: CGPointMake(2, 7.28) controlPoint2: CGPointMake(8.28, 1)];
    [bezierPath addCurveToPoint: CGPointMake(30, 15) controlPoint1: CGPointMake(23.72, 1) controlPoint2: CGPointMake(30, 7.28)];
    [bezierPath addCurveToPoint: CGPointMake(16, 29) controlPoint1: CGPointMake(30, 22.72) controlPoint2: CGPointMake(23.72, 29)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(16, 3.01)];
    [bezierPath addCurveToPoint: CGPointMake(4.01, 15) controlPoint1: CGPointMake(9.39, 3.01) controlPoint2: CGPointMake(4.01, 8.39)];
    [bezierPath addCurveToPoint: CGPointMake(16, 26.99) controlPoint1: CGPointMake(4.01, 21.61) controlPoint2: CGPointMake(9.39, 26.99)];
    [bezierPath addCurveToPoint: CGPointMake(27.99, 15) controlPoint1: CGPointMake(22.61, 26.99) controlPoint2: CGPointMake(27.99, 21.61)];
    [bezierPath addCurveToPoint: CGPointMake(16, 3.01) controlPoint1: CGPointMake(27.99, 8.39) controlPoint2: CGPointMake(22.61, 3.01)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(17.41, 15.04)];
    [bezier2Path addLineToPoint: CGPointMake(21.73, 10.77)];
    [bezier2Path addCurveToPoint: CGPointMake(21.74, 9.35) controlPoint1: CGPointMake(22.12, 10.38) controlPoint2: CGPointMake(22.13, 9.75)];
    [bezier2Path addCurveToPoint: CGPointMake(20.33, 9.34) controlPoint1: CGPointMake(21.35, 8.96) controlPoint2: CGPointMake(20.72, 8.96)];
    [bezier2Path addLineToPoint: CGPointMake(16, 13.63)];
    [bezier2Path addLineToPoint: CGPointMake(11.73, 9.35)];
    [bezier2Path addCurveToPoint: CGPointMake(10.32, 9.35) controlPoint1: CGPointMake(11.34, 8.96) controlPoint2: CGPointMake(10.71, 8.96)];
    [bezier2Path addCurveToPoint: CGPointMake(10.32, 10.76) controlPoint1: CGPointMake(9.93, 9.74) controlPoint2: CGPointMake(9.93, 10.37)];
    [bezier2Path addLineToPoint: CGPointMake(14.57, 15.03)];
    [bezier2Path addLineToPoint: CGPointMake(10.28, 19.28)];
    [bezier2Path addCurveToPoint: CGPointMake(10.27, 20.69) controlPoint1: CGPointMake(9.89, 19.67) controlPoint2: CGPointMake(9.88, 20.3)];
    [bezier2Path addCurveToPoint: CGPointMake(10.98, 20.99) controlPoint1: CGPointMake(10.47, 20.89) controlPoint2: CGPointMake(10.73, 20.99)];
    [bezier2Path addCurveToPoint: CGPointMake(11.69, 20.7) controlPoint1: CGPointMake(11.24, 20.99) controlPoint2: CGPointMake(11.49, 20.89)];
    [bezier2Path addLineToPoint: CGPointMake(15.99, 16.45)];
    [bezier2Path addLineToPoint: CGPointMake(20.32, 20.8)];
    [bezier2Path addCurveToPoint: CGPointMake(21.03, 21.09) controlPoint1: CGPointMake(20.51, 20.99) controlPoint2: CGPointMake(20.77, 21.09)];
    [bezier2Path addCurveToPoint: CGPointMake(21.73, 20.8) controlPoint1: CGPointMake(21.28, 21.09) controlPoint2: CGPointMake(21.54, 20.99)];
    [bezier2Path addCurveToPoint: CGPointMake(21.74, 19.39) controlPoint1: CGPointMake(22.12, 20.41) controlPoint2: CGPointMake(22.13, 19.78)];
    [bezier2Path addLineToPoint: CGPointMake(17.41, 15.04)];
    [bezier2Path closePath];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = bezier2Path.CGPath;
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:layer1];
    
}
- (void)methodNames_drawError2:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(16, 30)];
    [bezierPath addCurveToPoint: CGPointMake(1, 15) controlPoint1: CGPointMake(7.72, 30) controlPoint2: CGPointMake(1, 23.28)];
    [bezierPath addCurveToPoint: CGPointMake(16, 0) controlPoint1: CGPointMake(1, 6.72) controlPoint2: CGPointMake(7.72, 0)];
    [bezierPath addCurveToPoint: CGPointMake(31, 15) controlPoint1: CGPointMake(24.28, 0) controlPoint2: CGPointMake(31, 6.72)];
    [bezierPath addCurveToPoint: CGPointMake(16, 30) controlPoint1: CGPointMake(31, 23.28) controlPoint2: CGPointMake(24.28, 30)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(16, 13.23)];
    [bezierPath addLineToPoint: CGPointMake(9.81, 7.04)];
    [bezierPath addLineToPoint: CGPointMake(9.81, 7.04)];
    [bezierPath addCurveToPoint: CGPointMake(8.05, 7.04) controlPoint1: CGPointMake(9.32, 6.55) controlPoint2: CGPointMake(8.53, 6.55)];
    [bezierPath addLineToPoint: CGPointMake(8.04, 7.05)];
    [bezierPath addCurveToPoint: CGPointMake(8.04, 8.81) controlPoint1: CGPointMake(7.55, 7.53) controlPoint2: CGPointMake(7.55, 8.32)];
    [bezierPath addLineToPoint: CGPointMake(14.23, 15)];
    [bezierPath addLineToPoint: CGPointMake(8.04, 21.19)];
    [bezierPath addLineToPoint: CGPointMake(8.04, 21.19)];
    [bezierPath addCurveToPoint: CGPointMake(8.04, 22.95) controlPoint1: CGPointMake(7.55, 21.68) controlPoint2: CGPointMake(7.55, 22.47)];
    [bezierPath addLineToPoint: CGPointMake(8.05, 22.96)];
    [bezierPath addCurveToPoint: CGPointMake(9.81, 22.96) controlPoint1: CGPointMake(8.53, 23.45) controlPoint2: CGPointMake(9.32, 23.45)];
    [bezierPath addLineToPoint: CGPointMake(16, 16.77)];
    [bezierPath addLineToPoint: CGPointMake(22.19, 22.96)];
    [bezierPath addLineToPoint: CGPointMake(22.19, 22.96)];
    [bezierPath addCurveToPoint: CGPointMake(23.95, 22.96) controlPoint1: CGPointMake(22.68, 23.44) controlPoint2: CGPointMake(23.47, 23.44)];
    [bezierPath addLineToPoint: CGPointMake(23.96, 22.95)];
    [bezierPath addCurveToPoint: CGPointMake(23.96, 21.19) controlPoint1: CGPointMake(24.45, 22.46) controlPoint2: CGPointMake(24.45, 21.68)];
    [bezierPath addLineToPoint: CGPointMake(17.77, 15)];
    [bezierPath addLineToPoint: CGPointMake(23.96, 8.81)];
    [bezierPath addLineToPoint: CGPointMake(23.96, 8.81)];
    [bezierPath addCurveToPoint: CGPointMake(23.96, 7.05) controlPoint1: CGPointMake(24.44, 8.32) controlPoint2: CGPointMake(24.44, 7.53)];
    [bezierPath addLineToPoint: CGPointMake(23.95, 7.04)];
    [bezierPath addCurveToPoint: CGPointMake(22.19, 7.04) controlPoint1: CGPointMake(23.46, 6.55) controlPoint2: CGPointMake(22.68, 6.55)];
    [bezierPath addLineToPoint: CGPointMake(16, 13.23)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    [view.layer addSublayer:layer];
}
#pragma mark ---------- right
- (void)methodNames_drawRight1:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(16, 29)];
    [bezierPath addCurveToPoint: CGPointMake(2, 15) controlPoint1: CGPointMake(8.28, 29) controlPoint2: CGPointMake(2, 22.72)];
    [bezierPath addCurveToPoint: CGPointMake(16, 1) controlPoint1: CGPointMake(2, 7.28) controlPoint2: CGPointMake(8.28, 1)];
    [bezierPath addCurveToPoint: CGPointMake(30, 15) controlPoint1: CGPointMake(23.72, 1) controlPoint2: CGPointMake(30, 7.28)];
    [bezierPath addCurveToPoint: CGPointMake(16, 29) controlPoint1: CGPointMake(30, 22.72) controlPoint2: CGPointMake(23.72, 29)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(16, 3.01)];
    [bezierPath addCurveToPoint: CGPointMake(4.01, 15) controlPoint1: CGPointMake(9.39, 3.01) controlPoint2: CGPointMake(4.01, 8.39)];
    [bezierPath addCurveToPoint: CGPointMake(16, 26.99) controlPoint1: CGPointMake(4.01, 21.61) controlPoint2: CGPointMake(9.39, 26.99)];
    [bezierPath addCurveToPoint: CGPointMake(27.99, 15) controlPoint1: CGPointMake(22.61, 26.99) controlPoint2: CGPointMake(27.99, 21.61)];
    [bezierPath addCurveToPoint: CGPointMake(16, 3.01) controlPoint1: CGPointMake(27.99, 8.39) controlPoint2: CGPointMake(22.61, 3.01)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(22.72, 11.29)];
    [bezier2Path addCurveToPoint: CGPointMake(21.3, 11.3) controlPoint1: CGPointMake(22.33, 10.9) controlPoint2: CGPointMake(21.69, 10.9)];
    [bezier2Path addLineToPoint: CGPointMake(14.01, 18.66)];
    [bezier2Path addLineToPoint: CGPointMake(10.79, 15.35)];
    [bezier2Path addCurveToPoint: CGPointMake(9.37, 15.33) controlPoint1: CGPointMake(10.4, 14.95) controlPoint2: CGPointMake(9.77, 14.95)];
    [bezier2Path addCurveToPoint: CGPointMake(9.35, 16.74) controlPoint1: CGPointMake(8.98, 15.71) controlPoint2: CGPointMake(8.97, 16.35)];
    [bezier2Path addLineToPoint: CGPointMake(13.29, 20.79)];
    [bezier2Path addCurveToPoint: CGPointMake(13.3, 20.8) controlPoint1: CGPointMake(13.29, 20.79) controlPoint2: CGPointMake(13.3, 20.79)];
    [bezier2Path addCurveToPoint: CGPointMake(13.3, 20.8) controlPoint1: CGPointMake(13.3, 20.8) controlPoint2: CGPointMake(13.3, 20.8)];
    [bezier2Path addCurveToPoint: CGPointMake(13.52, 20.95) controlPoint1: CGPointMake(13.37, 20.87) controlPoint2: CGPointMake(13.45, 20.9)];
    [bezier2Path addCurveToPoint: CGPointMake(13.63, 21.02) controlPoint1: CGPointMake(13.56, 20.97) controlPoint2: CGPointMake(13.59, 21)];
    [bezier2Path addCurveToPoint: CGPointMake(14.01, 21.09) controlPoint1: CGPointMake(13.75, 21.07) controlPoint2: CGPointMake(13.88, 21.09)];
    [bezier2Path addCurveToPoint: CGPointMake(14.38, 21.02) controlPoint1: CGPointMake(14.13, 21.09) controlPoint2: CGPointMake(14.26, 21.07)];
    [bezier2Path addCurveToPoint: CGPointMake(14.49, 20.95) controlPoint1: CGPointMake(14.42, 21) controlPoint2: CGPointMake(14.45, 20.97)];
    [bezier2Path addCurveToPoint: CGPointMake(14.7, 20.81) controlPoint1: CGPointMake(14.56, 20.91) controlPoint2: CGPointMake(14.64, 20.87)];
    [bezier2Path addCurveToPoint: CGPointMake(14.71, 20.8) controlPoint1: CGPointMake(14.71, 20.81) controlPoint2: CGPointMake(14.71, 20.8)];
    [bezier2Path addCurveToPoint: CGPointMake(14.72, 20.8) controlPoint1: CGPointMake(14.71, 20.8) controlPoint2: CGPointMake(14.72, 20.8)];
    [bezier2Path addLineToPoint: CGPointMake(22.73, 12.7)];
    [bezier2Path addCurveToPoint: CGPointMake(22.72, 11.29) controlPoint1: CGPointMake(23.11, 12.31) controlPoint2: CGPointMake(23.11, 11.68)];
    [bezier2Path closePath];
    CAShapeLayer *layer1 = [CAShapeLayer layer];
    layer1.fillColor = color.CGColor;
    layer1.path = bezier2Path.CGPath;
    
    [view.layer addSublayer:layer];
    [view.layer addSublayer:layer1];
}
- (void)methodNames_drawRight2:(UIView *)view color:(UIColor *)color {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(16, 0)];
    [bezierPath addCurveToPoint: CGPointMake(1, 15) controlPoint1: CGPointMake(7.72, 0) controlPoint2: CGPointMake(1, 6.72)];
    [bezierPath addCurveToPoint: CGPointMake(16, 30) controlPoint1: CGPointMake(1, 23.28) controlPoint2: CGPointMake(7.72, 30)];
    [bezierPath addCurveToPoint: CGPointMake(31, 15) controlPoint1: CGPointMake(24.28, 30) controlPoint2: CGPointMake(31, 23.28)];
    [bezierPath addCurveToPoint: CGPointMake(16, 0) controlPoint1: CGPointMake(31, 6.72) controlPoint2: CGPointMake(24.28, 0)];
    [bezierPath closePath];
    [bezierPath moveToPoint: CGPointMake(13.07, 21.54)];
    [bezierPath addLineToPoint: CGPointMake(7.87, 16.33)];
    [bezierPath addLineToPoint: CGPointMake(9.82, 14.38)];
    [bezierPath addLineToPoint: CGPointMake(13.07, 17.63)];
    [bezierPath addLineToPoint: CGPointMake(22.18, 8.52)];
    [bezierPath addLineToPoint: CGPointMake(24.13, 10.48)];
    [bezierPath addLineToPoint: CGPointMake(13.07, 21.54)];
    [bezierPath closePath];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.fillColor = color.CGColor;
    layer.path = bezierPath.CGPath;
    
    [view.layer addSublayer:layer];
}


@end
