//
//  LLB_HomeLifeModel.h
//  LFModulesDemo
//
//  Created by lufee on 2022/3/8.
//  首页邻里生活数据model

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface LLB_HomeLifeItemModel : NSObject

/// 横轴（0~horizontalCount）
@property (nonatomic, assign) NSInteger llb_x;
/// 竖轴（0~verticalCount）
@property (nonatomic, assign) NSInteger llb_y;
/// 宽度（0~horizontalCount） 为了去掉小数点使用 number 对象数据类型
@property (nonatomic, strong) NSNumber *llb_width;
/// 高度（0~verticalCount） 为了去掉小数点使用 number 对象数据类型
@property (nonatomic, strong) NSNumber *llb_height;

@end


@interface LLB_HomeLifeModel : NSObject

/// 各item之间的间隙
@property (nonatomic, strong) NSNumber *space;
/// 这个ZKRasterizeView实际宽度pt，无值默认屏幕宽度 后端返回px，需要 / 2
@property (nonatomic, strong) NSNumber *sumWidth;
/// 这个ZKRasterizeView实际高度pt，无值默认屏幕宽度 后端返回px，需要 / 2
@property (nonatomic, strong) NSNumber *sumHeight;
/// 横向栅格数量（默认4）
@property (nonatomic, assign) NSInteger horizontalCount;
/// 竖向栅格数量（默认4）
@property (nonatomic, assign) NSInteger verticalCount;


@property (nonatomic, copy) NSArray<LLB_HomeLifeItemModel *> *itemViewArray;

@end

NS_ASSUME_NONNULL_END
