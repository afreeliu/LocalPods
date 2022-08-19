//
//  ClassNames_PayView.h
//  PlatFormGamesSDK
//
//  Created by 刘飞 on 2022/8/14.
//  Copyright © 2022 TB. All rights reserved.
//  备钱页面

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClassNames_PayView : UIView


+ (instancetype)methodNames_createPayViewWithUserName:(NSString *)varNames_userName payMoney:(NSString *)varNames_money;

// 关闭页面
@property (nonatomic, readwrite, copy) void (^methodNames_closeBlock)(void);

@property (nonatomic, readwrite, copy) void (^methodNames_commitBlock)(void);


@end

NS_ASSUME_NONNULL_END
