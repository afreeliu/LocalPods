//
//  ClassNames_GiftView.h
//  PlatFormGamesSDK
//
//  Created by lufee on 2022/8/23.
//  Copyright © 2022 TB. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClassNames_GiftView : UIView

+ (instancetype)methodNames_createGiftView;

@property (nonatomic, readwrite, copy) void (^methodNames_closeBlock)(void);
@end

NS_ASSUME_NONNULL_END
