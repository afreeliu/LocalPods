

#import "EwTmvyNepWiE.h"
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

#import "EMyEwhJLZr.h"
#import "EmKtBeFuqi.h"
#import "EXlNnwRDGEsF.h"

@interface EwTmvyNepWiE ()

//播放器ViewController
@property (nonatomic, readwrite, strong)AVPlayerViewController *eHTEVDiR;

@property (nonatomic, readwrite, strong) AVPlayerItem *eyrkMVWuepU;

/// 跳过按钮
@property (nonatomic, readwrite, strong) UIButton *eXMDBCAqreoHQ;
/// 经过多少时间显示跳过按钮
@property (nonatomic, readwrite, assign) CGFloat ekZzgKslRear;

@property (nonatomic, readwrite, copy) nxeMvXVUPJEbClF eJtdjfnFM;



@end


@implementation EwTmvyNepWiE

+(instancetype)nJVrDAcpuRWTMdbLVideoWithVideoName:(NSString *)eTouiEXylWDbFc nzHpyhKW:(NSString *)eGLaWsXYKm nOxGKbQmCEYwz:(CGFloat)ekZzgKslRear nxrWyFk:(nonnull nxeMvXVUPJEbClF)eJtdjfnFM{
    
    if (!eTouiEXylWDbFc || !eTouiEXylWDbFc.length) {
        nhdDGpskXLRwrS(@"视频名称格式不正确,不能为空");
        return nil;
    }
    if (!eGLaWsXYKm || !eGLaWsXYKm.length) {
        nhdDGpskXLRwrS(@"视频类型格式不正确,不能为空");
        return nil;
    }
    
    UIWindow *eFtlqWOBuyQ = nLyAxbKV();
    EwTmvyNepWiE *eQZAEbmpVzo = [[EwTmvyNepWiE alloc]init];
    eQZAEbmpVzo.ekZzgKslRear = ekZzgKslRear;
    eQZAEbmpVzo.eJtdjfnFM = eJtdjfnFM;
    [eQZAEbmpVzo ngjcKxnsLMmdSWQ:eTouiEXylWDbFc videoType:eGLaWsXYKm];
    [eFtlqWOBuyQ addSubview:eQZAEbmpVzo];
    
    [EmKtBeFuqi nmlcLxvfi:eQZAEbmpVzo naigAGwYRNfBte:0];
    [EmKtBeFuqi nGTVpsCaIbgQwO:eQZAEbmpVzo naigAGwYRNfBte:0];
    [EmKtBeFuqi nWcbUXozlk:eQZAEbmpVzo naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:eQZAEbmpVzo naigAGwYRNfBte:0];
    
    [eQZAEbmpVzo setNeedsLayout];
    
    [eQZAEbmpVzo njpHTmfibxaZsw];
    return eQZAEbmpVzo;
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
                [self nsHuEtQUXaYbDvmVer];
            }
                break;
            case AVPlayerItemStatusReadyToPlay:
            {
                NSLog(@"准好播放了");
                //16064    600
                CGFloat euehQCvsHxlnBX = (self.eyrkMVWuepU.duration.value / self.eyrkMVWuepU.duration.timescale) * _ekZzgKslRear;
                NSString *ecABpnHPrEgeC = [NSString stringWithFormat:@"经过%f秒后显示跳过按钮", euehQCvsHxlnBX];
                nhdDGpskXLRwrS(ecABpnHPrEgeC);
                __weak typeof(self) weakSelf = self;
                dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(euehQCvsHxlnBX * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                    [weakSelf nMISwHfos];
                });
            }
                break;
            case AVPlayerItemStatusUnknown:
            {
                NSLog(@"视频资源出现未知错误");
                [self nsHuEtQUXaYbDvmVer];
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
        
        _ekZzgKslRear = 0;
        
        self.backgroundColor = [UIColor blackColor];
        self.translatesAutoresizingMaskIntoConstraints = NO;
        self.layer.zPosition = 1.0f;
        _eHTEVDiR = [[AVPlayerViewController alloc]init];
        if (@available(iOS 9.0, *)) {
            _eHTEVDiR.allowsPictureInPicturePlayback = NO;
        }
        _eHTEVDiR.showsPlaybackControls = false;
        
        _eXMDBCAqreoHQ = [[UIButton alloc]init];
        _eXMDBCAqreoHQ.titleLabel.font = [UIFont systemFontOfSize:15];
        _eXMDBCAqreoHQ.translatesAutoresizingMaskIntoConstraints = NO;
        [_eXMDBCAqreoHQ setTitle:@"跳 过" forState:UIControlStateNormal];
        _eXMDBCAqreoHQ.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_eXMDBCAqreoHQ setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_eXMDBCAqreoHQ addTarget:self action:@selector(nnGueyHFYsTzt:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}


- (void)nMISwHfos {
    nhdDGpskXLRwrS(@"把view放到最上面");
    UIWindow *eFtlqWOBuyQ = nLyAxbKV();
    [eFtlqWOBuyQ bringSubviewToFront:self];
    
    [self addSubview:_eXMDBCAqreoHQ];
    _eXMDBCAqreoHQ.layer.zPosition = 1.1;
    [self bringSubviewToFront:_eXMDBCAqreoHQ];
    
    [EmKtBeFuqi nmlcLxvfi:_eXMDBCAqreoHQ naigAGwYRNfBte:0];
    [EmKtBeFuqi nwNALxocFyJupkm:_eXMDBCAqreoHQ naigAGwYRNfBte:60];
    [EmKtBeFuqi ntIjPqxLTDs:_eXMDBCAqreoHQ naigAGwYRNfBte:30];
    [EmKtBeFuqi nLRCtGMFQZAYsc:_eXMDBCAqreoHQ naigAGwYRNfBte:0];
    [self setNeedsLayout];
    
}


- (void)ngjcKxnsLMmdSWQ:(NSString *)eTouiEXylWDbFc videoType:(NSString *)eGLaWsXYKm {
    
    
    NSString *eEIetUwx =  [[NSBundle mainBundle] pathForResource:eTouiEXylWDbFc ofType:eGLaWsXYKm];
    NSURL *ehafcimrvokQSypx = [NSURL fileURLWithPath:eEIetUwx];
    
    _eyrkMVWuepU = [[AVPlayerItem alloc]initWithURL:ehafcimrvokQSypx];
    
    AVPlayer *eQkhfwqiN = [AVPlayer playerWithPlayerItem:_eyrkMVWuepU];
    
    //layer
    AVPlayerLayer *eDztpCrZakKTVu = [AVPlayerLayer playerLayerWithPlayer:eQkhfwqiN];
    [eDztpCrZakKTVu setFrame:[UIScreen mainScreen].bounds];
    
    [self.layer addSublayer:eDztpCrZakKTVu];
    
    //设置填充模式
    eDztpCrZakKTVu.videoGravity = AVLayerVideoGravityResizeAspect;
    //设置AVPlayerViewController内部的AVPlayer为刚创建的AVPlayer
    _eHTEVDiR.player = eQkhfwqiN;
    
    //这里设置的是重复播放。
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(nfgUtBwGkP:)
                                                 name:AVPlayerItemDidPlayToEndTimeNotification
                                               object:_eyrkMVWuepU];
    
    [_eyrkMVWuepU addObserver:self forKeyPath:@"status" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)njpHTmfibxaZsw {
    [_eHTEVDiR.player pause];
    [_eHTEVDiR.player play];
}


- (void)nsHuEtQUXaYbDvmV
{
    [_eHTEVDiR.player pause];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    _eHTEVDiR = nil;
    
    [self removeFromSuperview];
    if (self.eJtdjfnFM) {
        self.eJtdjfnFM();
    }
}


//播放完成的代理
- (void)nfgUtBwGkP:(NSNotification *)Notification{
    
    [self nsHuEtQUXaYbDvmV];
    
}

- (void)nnGueyHFYsTzt:(UIButton *)sender {
    
    [self nsHuEtQUXaYbDvmVer];
}


- (void)nsHuEtQUXaYbDvmVer
{
    [_eHTEVDiR.player pause];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    _eHTEVDiR = nil;
    _eyrkMVWuepU = nil;
    _eXMDBCAqreoHQ = nil;
    [self removeFromSuperview];
}

- (void)dealloc
{
    _eHTEVDiR = nil;
    _eyrkMVWuepU = nil;
    _eXMDBCAqreoHQ = nil;
    
}




@end
