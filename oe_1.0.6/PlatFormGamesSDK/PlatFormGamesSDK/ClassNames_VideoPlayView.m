

#import "ClassNames_VideoPlayView.h"
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

#import "ClassNames_DebugLog.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_DeviceConfigure.h"

@interface ClassNames_VideoPlayView ()

//播放器ViewController
@property (nonatomic, readwrite, strong)AVPlayerViewController *varNames_AVPlayer;

@property (nonatomic, readwrite, strong) AVPlayerItem *varNames_item;

/// 跳过按钮
@property (nonatomic, readwrite, strong) UIButton *varNames_passBtn;
/// 经过多少时间显示跳过按钮
@property (nonatomic, readwrite, assign) CGFloat varNames_present;

@property (nonatomic, readwrite, copy) methodNames_completionBlock varNames_block;



@end


@implementation ClassNames_VideoPlayView

+(instancetype)methodNames_showVideoWithVideoName:(NSString *)varNames_videoName methodNames_videoType:(NSString *)varNames_videoType methodNames_showPassButton:(CGFloat)varNames_present methodNames_finishPlay:(nonnull methodNames_completionBlock)varNames_block{
    
    if (!varNames_videoName || !varNames_videoName.length) {
        methodNames_debugLog(@"视频名称格式不正确,不能为空");
        return nil;
    }
    if (!varNames_videoType || !varNames_videoType.length) {
        methodNames_debugLog(@"视频类型格式不正确,不能为空");
        return nil;
    }
    
    UIWindow *varNames_tmpWindow = methodNames_getCurrentWindow();
    ClassNames_VideoPlayView *varNames_videoPlayView = [[ClassNames_VideoPlayView alloc]init];
    varNames_videoPlayView.varNames_present = varNames_present;
    varNames_videoPlayView.varNames_block = varNames_block;
    [varNames_videoPlayView methodNames_playVideo:varNames_videoName videoType:varNames_videoType];
    [varNames_tmpWindow addSubview:varNames_videoPlayView];
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:varNames_videoPlayView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:varNames_videoPlayView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:varNames_videoPlayView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:varNames_videoPlayView methodNames_constriant:0];
    
    [varNames_videoPlayView setNeedsLayout];
    
    [varNames_videoPlayView methodNames_startPlay];
    return varNames_videoPlayView;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if ([keyPath isEqualToString:@"status"]) {
        //移除监听（观察者）
        [object removeObserver:self forKeyPath:@"status"];
        //取出status的新值
        AVPlayerItemStatus status = [change[NSKeyValueChangeNewKey]intValue];
        switch (status) {
            case AVPlayerItemStatusFailed:
            {
                NSLog(@"item 有误");
                [self methodNames_stopPlayer];
            }
                break;
            case AVPlayerItemStatusReadyToPlay:
            {
                NSLog(@"准好播放了");
                //16064    600
                CGFloat varNames_duration = (self.varNames_item.duration.value / self.varNames_item.duration.timescale) * _varNames_present;
                NSString *varNames_tmpS = [NSString stringWithFormat:@"经过%f秒后显示跳过按钮", varNames_duration];
                methodNames_debugLog(varNames_tmpS);
                __weak typeof(self) weakSelf = self;
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(varNames_duration * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    [weakSelf methodNames_bringViewToFront];
                });
            }
                break;
            case AVPlayerItemStatusUnknown:
            {
                NSLog(@"视频资源出现未知错误");
                [self methodNames_stopPlayer];
            }
                break;
            default:
                break;
        }
    }
    
}


-(instancetype)init {
    
    self = [super init];
    if (self) {
        
        _varNames_present = 0;
        
        self.backgroundColor = [UIColor blackColor];
        self.translatesAutoresizingMaskIntoConstraints = NO;
        self.layer.zPosition = 1.0f;
        _varNames_AVPlayer = [[AVPlayerViewController alloc]init];
        if (@available(iOS 9.0, *)) {
            _varNames_AVPlayer.allowsPictureInPicturePlayback = NO;
        }
        _varNames_AVPlayer.showsPlaybackControls = false;
        
        _varNames_passBtn = [[UIButton alloc]init];
        _varNames_passBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        _varNames_passBtn.translatesAutoresizingMaskIntoConstraints = NO;
        [_varNames_passBtn setTitle:@"跳 过" forState:UIControlStateNormal];
        _varNames_passBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_varNames_passBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_varNames_passBtn addTarget:self action:@selector(methodNames_passAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}


- (void)methodNames_bringViewToFront {
    methodNames_debugLog(@"把view放到最上面");
    UIWindow *varNames_tmpWindow = methodNames_getCurrentWindow();
    [varNames_tmpWindow bringSubviewToFront:self];
    
    [self addSubview:_varNames_passBtn];
    _varNames_passBtn.layer.zPosition = 1.1;
    [self bringSubviewToFront:_varNames_passBtn];
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:_varNames_passBtn methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:_varNames_passBtn methodNames_constriant:60];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:_varNames_passBtn methodNames_constriant:30];
    [ClassNames_BaseViewLayout methodNames_layoutRight:_varNames_passBtn methodNames_constriant:0];
    [self setNeedsLayout];
    
}


- (void)methodNames_playVideo:(NSString *)varNames_videoName videoType:(NSString *)varNames_videoType {
    
    
    NSString *varNames_path =  [[NSBundle mainBundle] pathForResource:varNames_videoName ofType:varNames_videoType];
    NSURL *varNames_videoURL = [NSURL fileURLWithPath:varNames_path];
    
    _varNames_item = [[AVPlayerItem alloc]initWithURL:varNames_videoURL];
    
    AVPlayer *varNames_player = [AVPlayer playerWithPlayerItem:_varNames_item];
    
    //layer
    AVPlayerLayer *varNames_avPlayLayer = [AVPlayerLayer playerLayerWithPlayer:varNames_player];
    [varNames_avPlayLayer setFrame:[UIScreen mainScreen].bounds];
    
    [self.layer addSublayer:varNames_avPlayLayer];
    
    //设置填充模式
    varNames_avPlayLayer.videoGravity = AVLayerVideoGravityResizeAspect;
    //设置AVPlayerViewController内部的AVPlayer为刚创建的AVPlayer
    _varNames_AVPlayer.player = varNames_player;
    
    //这里设置的是重复播放。
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(methodNames_playDidEnd:)
                                                 name:AVPlayerItemDidPlayToEndTimeNotification
                                               object:_varNames_item];
    
    [_varNames_item addObserver:self forKeyPath:@"status" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)methodNames_startPlay {
    [_varNames_AVPlayer.player pause];
    [_varNames_AVPlayer.player play];
}


- (void)methodNames_stopPlay
{
    [_varNames_AVPlayer.player pause];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    _varNames_AVPlayer = nil;
    
    [self removeFromSuperview];
    if (self.varNames_block) {
        self.varNames_block();
    }
}


//播放完成的代理
- (void)methodNames_playDidEnd:(NSNotification *)Notification{
    
    [self methodNames_stopPlay];
    
}

- (void)methodNames_passAction:(UIButton *)sender {
    
    [self methodNames_stopPlayer];
}


- (void)methodNames_stopPlayer
{
    [_varNames_AVPlayer.player pause];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    _varNames_AVPlayer = nil;
    _varNames_item = nil;
    _varNames_passBtn = nil;
    [self removeFromSuperview];
}

- (void)dealloc
{
    _varNames_AVPlayer = nil;
    _varNames_item = nil;
    _varNames_passBtn = nil;
    
}




@end
