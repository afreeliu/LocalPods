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

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationLoginCallBack:) name:@"umplatformgamelogin" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationPayCallBack:) name:@"umplatformgameappStore" object:nil];
    
    
}

#pragma mark ---------------------  登录
- (IBAction)loginAction:(UIButton *)sender {
    [[UmPlatsFormGameManager umPlatsFormManagerDeafaults]umPlatsFormLogin];
}

#pragma mark ---------------------  退出登录
- (IBAction)logoutAction:(UIButton *)sender {
    [[UmPlatsFormGameManager umPlatsFormManagerDeafaults]umPlatsFormLogout];
}
#pragma mark ---------------------  致富
- (IBAction)payAction:(UIButton *)sender {
}


#pragma mark ---------------------  通知
#pragma mark ---------------------   登录成功通知
- (void)notificationLoginCallBack:(NSNotification *)noti {
    NSLog(@"notiUserInfo:%@", noti.userInfo);
    if ([[noti userInfo] objectForKey:@"result"]) {
        
        NSString *userName = [[noti userInfo] objectForKey:@"username"];
        NSString *uid      = [[noti userInfo] objectForKey:@"uid"];
        NSLog(@"userNames:%@, uid:%@", userName, uid);
        
    }
}
#pragma mark --------------------- 致富通知
- (void)notificationPayCallBack:(NSNotification *)noti {
    NSLog(@"appStoreBack:%@", noti.userInfo);
}

@end
