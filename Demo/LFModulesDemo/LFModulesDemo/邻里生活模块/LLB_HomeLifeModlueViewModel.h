//
//  LLB_HomeLifeModlueViewModel.h
//  LFModulesDemo
//
//  Created by lufee on 2022/3/8.
//  首页邻里生活模块 ViewModel

#import <Foundation/Foundation.h>
#import "LLB_HomeLifeModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface LLB_HomeLifeModlueViewModel : NSObject

- (void)llb_initWithDataModel:(LLB_HomeLifeModel *)model;


/// item 间的间隔  水平，垂直间item的gap都相等
@property (nonatomic, readonly) CGFloat llb_item_gap;

/// 布局类型， 2*2 / 2*3 / 2*4 / 4*4 / 6*6 / 8*8 / 。。。。
///  水平布局item的数量
@property (nonatomic, readonly) NSInteger llb_horizonalCount;
/// 垂直布局item的数量
@property (nonatomic, readonly) NSInteger llb_verticalCount;

/// 宽度 默认手机尺寸的宽度 - view到两边的的间隔，各16
@property (nonatomic, readonly) CGFloat llb_lifeModule_viewWidth;
/// view 的高度， 一般根据 水平布局item的数量，然后计算了每个item的宽度，因为设置都是为正方形的item，所以高度为垂直方向上的：item数量 * itemwidth + （数量-1）* space
@property (nonatomic, readonly) CGFloat llb_liefModule_viewHeight;


@end

NS_ASSUME_NONNULL_END
