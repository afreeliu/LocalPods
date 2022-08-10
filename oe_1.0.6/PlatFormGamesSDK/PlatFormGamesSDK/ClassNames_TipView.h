//
//  ClassNames_TipView.h
//  PlatFormGamesSDK
//
//  Created by lufee on 2022/8/10.
//  Copyright © 2022 TB. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClassNames_TipView : UIView

+ (instancetype)methodNames_createTipViewFromView:(UIView *)varNames_fview;

- (void)methodNames_changeFromView:(UIView *)varNames_view;
// 关闭页面
@property (nonatomic, readwrite, copy) void (^methodNames_closeBlock)(void);
// 返回 fview
@property (nonatomic, readwrite, copy) void (^methodNames_backBlock)(void);

@property (nonatomic, readwrite, copy) void (^methodNames_commitBlock)(void);

@end

NS_ASSUME_NONNULL_END
