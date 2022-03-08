//
//  ViewController.m
//  LFModulesDemo
//
//  Created by lufee on 2022/3/8.
//

#import "ViewController.h"
#import <NSString+MD5.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *str = @"你好";
    [str lf_md5];
    
}


@end
