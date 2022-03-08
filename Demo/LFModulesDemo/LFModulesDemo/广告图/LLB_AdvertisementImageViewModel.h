//
//  LLB_AdvertisementImageViewModel.h
//  LFModulesDemo
//
//  Created by lufee on 2022/3/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, LLB_AdvertisementTagButtonType) {
    LLB_AdvertisementTagButtonTypeNone = 0, // 不显示任何内容，隐藏
    LLB_AdvertisementTagButtonTypeTitle, // 显示广告字样或给定标题
    LLB_AdvertisementTagButtonTypeCountDown, // 显示结束隐藏倒计时
};


@interface LLB_AdvertisementImageViewModel : NSObject

#pragma mark - 图片相关
/// 圆角 默认 0
@property (nonatomic, assign) CGFloat llb_imageViewCornerRadius;
/// 图片显示模式
@property (nonatomic, assign) UIViewContentMode llb_imageViewContentMode;
/// 图片的内容
@property (nonatomic, copy) NSString *llb_imageUrl;

#pragma mark - 右上角标识按钮相关
@property (nonatomic, assign) LLB_AdvertisementTagButtonType *llb_tagButtonType;

@end

NS_ASSUME_NONNULL_END
