//
//  ClassNames_DetailCustomerServerView.h
//  PlatFormGamesSDK
//
//  Created by lufee on 2022/8/10.
//  Copyright © 2022 TB. All rights reserved.
//  详细的客服页面

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClassNames_DetailCustomerServerView : UIView

+(ClassNames_DetailCustomerServerView *)methodNames_showCustomServerView;


@property (nonatomic, copy) void (^methodNames_closeBlock)(void);


@end

NS_ASSUME_NONNULL_END
