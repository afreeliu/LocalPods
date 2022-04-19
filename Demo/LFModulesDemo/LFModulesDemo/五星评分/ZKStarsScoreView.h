//
//  ZKStarsScoreView.h
//  LFModulesDemo
//
//  Created by lufee on 2022/4/6.
//  星星打分view

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class ZKStarsScoreViewModel;
@interface ZKStarsScoreView : UIView

-(instancetype)initWithViewModel:(ZKStarsScoreViewModel *)viewModel;

-(void)updateWithViewModel:(ZKStarsScoreViewModel *)viewModel;



@end

@interface ZKStarsScoreViewModel : NSObject

- (instancetype)initWithModel:(id)model;

/// 星星的个数
@property (nonatomic, readonly) NSInteger starsCount;
/// 评定的分数， 具体的得分 * 10 得到的 score
@property (nonatomic, readonly) int score;
/// 是否可进行评分
@property (nonatomic, readonly) BOOL canScore;

/// 对于可评定分数的view进行评分的方法
- (void)scoreAction:(CGFloat)score;

@end



NS_ASSUME_NONNULL_END
