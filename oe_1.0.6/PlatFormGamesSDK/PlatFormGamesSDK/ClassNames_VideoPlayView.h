

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^methodNames_completionBlock)(void);

@interface ClassNames_VideoPlayView : UIView

/**
 播放视频

 @param varNames_videoName 视频的名称
 @param varNames_videoType 视频的类型（例如：mp4, mov 等）
 @param varNames_present 显示关闭按钮的时间，根据视频长度进行百分比取值
 @param varNames_block 视频播放完成之后调用
 @return 当前的对象 view
 */
+ (instancetype)methodNames_showVideoWithVideoName:(NSString *)varNames_videoName methodNames_videoType:(NSString *)varNames_videoType methodNames_showPassButton:(CGFloat)varNames_present methodNames_finishPlay:(methodNames_completionBlock)varNames_block;

- (void)methodNames_stopPlayer;

@end

NS_ASSUME_NONNULL_END
