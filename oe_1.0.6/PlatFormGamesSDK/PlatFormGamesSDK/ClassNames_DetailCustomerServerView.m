//
//  ClassNames_DetailCustomerServerView.m
//  PlatFormGamesSDK
//
//  Created by lufee on 2022/8/10.
//  Copyright © 2022 TB. All rights reserved.
//

#import "ClassNames_DetailCustomerServerView.h"
#import "ClassNames_NavigationBarView.h"
@interface ClassNames_DetailCustomerServerView()<UITextViewDelegate>

@property (nonatomic, readwrite, strong) ClassNames_NavigationBarView *varNames_naviView;

@property (nonatomic, readwrite, strong) UITextView *varNames_contentTextView;


@property (nonatomic, readwrite, strong) NSString *varNames_phone;

@property (nonatomic, readwrite, strong) NSString *varNames_qq;

@property (nonatomic, readwrite, strong) NSString *varNames_whNumber;

@end


@implementation ClassNames_DetailCustomerServerView

+(ClassNames_DetailCustomerServerView *)methodNames_showCustomServerView {
    ClassNames_DetailCustomerServerView *varNames_tmpServerView = [[ClassNames_DetailCustomerServerView alloc]init];
    varNames_tmpServerView.translatesAutoresizingMaskIntoConstraints = NO;
    
    return varNames_tmpServerView;
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
    ClassNames_NavigationBarView *varNames_tmpNaviView = [[ClassNames_NavigationBarView alloc]init];
    varNames_tmpNaviView.translatesAutoresizingMaskIntoConstraints = NO;
    [varNames_tmpNaviView methodNames_setTitle:@"客服"];
    [varNames_tmpNaviView methodNames_setRightButtonImage:@"image_close" rightTitle:@"" btnAction:^{
        if (weakSelf.methodNames_closeBlock) {
            weakSelf.methodNames_closeBlock();
        }
    }];
    
    self.varNames_naviView = varNames_tmpNaviView;
    
    self.varNames_contentTextView = [[UITextView alloc]init];
    self.varNames_contentTextView.delegate = self;
    self.varNames_contentTextView.editable = NO;
    self.varNames_contentTextView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.varNames_contentTextView];
    
    
    [self methodNames_layoutSubViews];
}


- (void)methodNames_layoutSubViews {
    
}


@end
