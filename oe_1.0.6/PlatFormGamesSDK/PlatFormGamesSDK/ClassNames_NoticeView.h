//
//  ClassNames_NoticeView.h
//  PlatFormGamesSDK
//
//  Created by 刘飞 on 2022/8/14.
//  Copyright © 2022 TB. All rights reserved.
//  公告页面

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClassNames_NoticeView : UIView

+ (instancetype)methodNames_createNoticeViewWithtitle:(NSString *)varNames_title methodNames_content:(NSString *)varNames_notice;

@property (nonatomic, readwrite, copy) void (^methodNames_closeBlock)(void);

@end

NS_ASSUME_NONNULL_END
