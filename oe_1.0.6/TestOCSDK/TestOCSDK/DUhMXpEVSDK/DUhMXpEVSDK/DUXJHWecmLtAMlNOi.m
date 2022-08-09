

#import "DUXJHWecmLtAMlNOi.h"
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

#import "DUEjpAyF.h"
#import "DUjHPamSNKWkfM.h"
#import "DUAaXhHMroqv.h"

@interface DUXJHWecmLtAMlNOi ()

//播放器ViewController
@property (nonatomic, readwrite, strong)AVPlayerViewController *eNIZxkzeRv;

@property (nonatomic, readwrite, strong) AVPlayerItem *eoMiYexjdsClaLAv;

/// 跳过按钮
@property (nonatomic, readwrite, strong) UIButton *eljgSVXuQKhwYE;
/// 经过多少时间显示跳过按钮
@property (nonatomic, readwrite, assign) CGFloat eilhAdW;

@property (nonatomic, readwrite, copy) kAsFuMCeIr eMUxvTwrnbsf;



@end


@implementation DUXJHWecmLtAMlNOi

+(instancetype)kdSzeClsBhOtZIYxVideoWithVideoName:(NSString *)ewtmOuDoKv kenwbxNzGcMaQ:(NSString *)eyeFSTH kOYScsxTQXmhjtCF:(CGFloat)eilhAdW kDPBTbpAu:(nonnull kAsFuMCeIr)eMUxvTwrnbsf{
    
    if (!ewtmOuDoKv || !ewtmOuDoKv.length) {
        kbOZhoQJ(@"视频名称格式不正确,不能为空");
        return nil;
    }
    if (!eyeFSTH || !eyeFSTH.length) {
        kbOZhoQJ(@"视频类型格式不正确,不能为空");
        return nil;
    }
    
    UIWindow *etOviTlVh = kOjcdzAgI();
    DUXJHWecmLtAMlNOi *eTgAMRutSl = [[DUXJHWecmLtAMlNOi alloc]init];
    eTgAMRutSl.eilhAdW = eilhAdW;
    eTgAMRutSl.eMUxvTwrnbsf = eMUxvTwrnbsf;
    [eTgAMRutSl kBCFJvrhcepG:ewtmOuDoKv videoType:eyeFSTH];
    [etOviTlVh addSubview:eTgAMRutSl];
    
    [DUjHPamSNKWkfM khXiHKlJYIcsWTb:eTgAMRutSl kjwoMfYHX:0];
    [DUjHPamSNKWkfM kcNCfuJpSgtid:eTgAMRutSl kjwoMfYHX:0];
    [DUjHPamSNKWkfM kKvyLhTYV:eTgAMRutSl kjwoMfYHX:0];
    [DUjHPamSNKWkfM kdMvtuRCVqTon:eTgAMRutSl kjwoMfYHX:0];
    
    [eTgAMRutSl setNeedsLayout];
    
    [eTgAMRutSl kSDLhcTEv];
    return eTgAMRutSl;
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
                [self kZfRoNYBgcay];
            }
                break;
            case AVPlayerItemStatusReadyToPlay:
            {
                NSLog(@"准好播放了");
                //16064    600
                CGFloat eTfaGis = (self.eoMiYexjdsClaLAv.duration.value / self.eoMiYexjdsClaLAv.duration.timescale) * _eilhAdW;
                NSString *eeXMbEcTkoS = [NSString stringWithFormat:@"经过%f秒后显示跳过按钮", eTfaGis];
                __weak typeof(self) weakSelf = self;
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(eTfaGis * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    [weakSelf kwbenkFsVIoPS];
                });
            }
                break;
            case AVPlayerItemStatusUnknown:
            {
                NSLog(@"视频资源出现未知错误");
                [self kZfRoNYBgcay];
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
        
        _eilhAdW = 0;
        
        self.backgroundColor = [UIColor blackColor];
        self.translatesAutoresizingMaskIntoConstraints = NO;
        self.layer.zPosition = 1.0f;
        _eNIZxkzeRv = [[AVPlayerViewController alloc]init];
        if (@available(iOS 9.0, *)) {
            _eNIZxkzeRv.allowsPictureInPicturePlayback = NO;
        }
        _eNIZxkzeRv.showsPlaybackControls = false;
        
        _eljgSVXuQKhwYE = [[UIButton alloc]init];
        _eljgSVXuQKhwYE.titleLabel.font = [UIFont systemFontOfSize:15];
        _eljgSVXuQKhwYE.translatesAutoresizingMaskIntoConstraints = NO;
        [_eljgSVXuQKhwYE setTitle:@"跳 过" forState:UIControlStateNormal];
        _eljgSVXuQKhwYE.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_eljgSVXuQKhwYE setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_eljgSVXuQKhwYE addTarget:self action:@selector(kloCbNdPuBUr:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}


- (void)kwbenkFsVIoPS {
    UIWindow *etOviTlVh = kOjcdzAgI();
    [etOviTlVh bringSubviewToFront:self];
    
    [self addSubview:_eljgSVXuQKhwYE];
    _eljgSVXuQKhwYE.layer.zPosition = 1.1;
    [self bringSubviewToFront:_eljgSVXuQKhwYE];
    
    [DUjHPamSNKWkfM khXiHKlJYIcsWTb:_eljgSVXuQKhwYE kjwoMfYHX:0];
    [DUjHPamSNKWkfM kYzDgmEuJZa:_eljgSVXuQKhwYE kjwoMfYHX:60];
    [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:_eljgSVXuQKhwYE kjwoMfYHX:30];
    [DUjHPamSNKWkfM kdMvtuRCVqTon:_eljgSVXuQKhwYE kjwoMfYHX:0];
    [self setNeedsLayout];
    
}


- (void)kBCFJvrhcepG:(NSString *)ewtmOuDoKv videoType:(NSString *)eyeFSTH {
    
    
    NSString *eZPFYWlpnE =  [[NSBundle mainBundle] pathForResource:ewtmOuDoKv ofType:eyeFSTH];
    NSURL *erQvoSRjZ = [NSURL fileURLWithPath:eZPFYWlpnE];
    
    _eoMiYexjdsClaLAv = [[AVPlayerItem alloc]initWithURL:erQvoSRjZ];
    
    AVPlayer *eXDNxneMTbYqZr = [AVPlayer playerWithPlayerItem:_eoMiYexjdsClaLAv];
    
    //layer
    AVPlayerLayer *ecdQUSkZNvRGp = [AVPlayerLayer playerLayerWithPlayer:eXDNxneMTbYqZr];
    [ecdQUSkZNvRGp setFrame:[UIScreen mainScreen].bounds];
    
    [self.layer addSublayer:ecdQUSkZNvRGp];
    
    //设置填充模式
    ecdQUSkZNvRGp.videoGravity = AVLayerVideoGravityResizeAspect;
    //设置AVPlayerViewController内部的AVPlayer为刚创建的AVPlayer
    _eNIZxkzeRv.player = eXDNxneMTbYqZr;
    
    //这里设置的是重复播放。
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(kPmnludjAUGgErLz:)
                                                 name:AVPlayerItemDidPlayToEndTimeNotification
                                               object:_eoMiYexjdsClaLAv];
    
    [_eoMiYexjdsClaLAv addObserver:self forKeyPath:@"status" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)kSDLhcTEv {
    [_eNIZxkzeRv.player pause];
    [_eNIZxkzeRv.player play];
}


- (void)kXBrUYZdjhVTPN
{
    [_eNIZxkzeRv.player pause];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    _eNIZxkzeRv = nil;
    
    [self removeFromSuperview];
    if (self.eMUxvTwrnbsf) {
        self.eMUxvTwrnbsf();
    }
}


//播放完成的代理
- (void)kPmnludjAUGgErLz:(NSNotification *)Notification{
    
    [self kXBrUYZdjhVTPN];
    
}

- (void)kloCbNdPuBUr:(UIButton *)sender {
    
    [self kZfRoNYBgcay];
}


- (void)kZfRoNYBgcay
{
    [_eNIZxkzeRv.player pause];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    _eNIZxkzeRv = nil;
    _eoMiYexjdsClaLAv = nil;
    _eljgSVXuQKhwYE = nil;
    [self removeFromSuperview];
}

- (void)dealloc
{
    _eNIZxkzeRv = nil;
    _eoMiYexjdsClaLAv = nil;
    _eljgSVXuQKhwYE = nil;
    
}




@end
