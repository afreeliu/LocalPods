

#import "EKRjBAorQNnlzXMC.h"
#import "EfKgqPeJzFs.h"
#import "EarLRky.h"
#import "EYMhnmstjq.h"
#import "EmKtBeFuqi.h"
#import "EDqxoOtgPanuMV.h"
#import "EKEGsDfJRoQ.h"
#import "EjSOyeZQGuaogMV.h"

@interface EKRjBAorQNnlzXMC ()<CAAnimationDelegate>



@property (nonatomic, readwrite ,weak) UIView *eCfLyYKJoXaS;
@property (nonatomic, readwrite ,weak) UIView *eBacvGylSI;
@property (nonatomic, readwrite ,weak) UIView *epwkfdFKcCJnGT;

@property (nonatomic, readwrite ,strong) UIColor *eCfLyYKJoXaSColor;
@property (nonatomic, readwrite ,strong) UIColor *esUcFrXiMAfJQw;
@property (nonatomic, readwrite ,strong) UIColor *eyxUYrOFhaRmlA;

@property (nonatomic, readwrite ,assign) CGFloat ezZDlOcmEuRFUTRepeatTime;
@property (nonatomic, readwrite ,assign) CGFloat ezZDlOcmEuRFUTTime;

@end

@implementation EKRjBAorQNnlzXMC


//显示加载动画在指定的view上
+ (EKRjBAorQNnlzXMC *)nZWOwyars:(UIView *)view
{
    EKRjBAorQNnlzXMC *loadingView = [[EKRjBAorQNnlzXMC alloc] initWithFrame:CGRectMake(0, 0, nQangIcPvHdD(view), nMCzaWrHctO(view))];
    [view addSubview:loadingView];
    return loadingView;
}

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self nmGaRgnwPFOEQMcd];
    }
    return self;
}

- (void)nmGaRgnwPFOEQMcd {
    
    _eCfLyYKJoXaSColor = [UIColor colorWithRed:206/255.0 green:7/255.0 blue:85/255.0 alpha:1.0];
    _esUcFrXiMAfJQw = [UIColor colorWithRed:206/255.0 green:7/255.0 blue:85/255.0 alpha:0.6];
    _eyxUYrOFhaRmlA = [UIColor colorWithRed:206/255.0 green:7/255.0 blue:85/255.0 alpha:0.3];
    
    _ezZDlOcmEuRFUTTime = 1.5;
    
    CGFloat width = 10.0;
    UIView *round1 = [[UIView alloc]init];
    nSMLKxcufQ(round1, width);
    nYSTFXQtkUaq(round1, width);
    round1.backgroundColor = _eCfLyYKJoXaSColor;
    round1.layer.cornerRadius = 5.0f;
    
    UIView *round2 = [[UIView alloc]init];
    nSMLKxcufQ(round2, width);
    nYSTFXQtkUaq(round2, width);
    round2.backgroundColor = _eCfLyYKJoXaSColor;
    round2.layer.cornerRadius = 5.0f;
    
    UIView *round3 = [[UIView alloc]init];
    nSMLKxcufQ(round3, width);
    nYSTFXQtkUaq(round3, width);
    round3.backgroundColor = _eCfLyYKJoXaSColor;
    round3.layer.cornerRadius = 5.0f;
    
    [self addSubview:round1];
    [self addSubview:round2];
    [self addSubview:round3];
    
    nizjksomcl(round2, self.center.x);
    nxjsDZebLtwMhGV(round2, self.center.y);
    
    nizjksomcl(round1, nBanrouWF(round2) - 20);
    nxjsDZebLtwMhGV(round1, nivVGFtuH(round1) - 20);
    
    nizjksomcl(round3, nBanrouWF(round2) + 20);
    nxjsDZebLtwMhGV(round3, nivVGFtuH(round3));
    
    _eCfLyYKJoXaS = round1;
    _eBacvGylSI = round2;
    _epwkfdFKcCJnGT = round3;
    
    
    [self nUDzeoRJyu];
}

- (void)nUDzeoRJyu {
    CGPoint otherRoundCenter1 = CGPointMake(nBanrouWF(_eCfLyYKJoXaS)+10, nivVGFtuH(_eBacvGylSI));
    CGPoint otherRoundCenter2 = CGPointMake(nBanrouWF(_eBacvGylSI)+10, nivVGFtuH(_eBacvGylSI));
    //圆1的路径
    UIBezierPath *path1 = [[UIBezierPath alloc] init];
    [path1 addArcWithCenter:otherRoundCenter1 radius:10 startAngle:-M_PI endAngle:0 clockwise:true];
    UIBezierPath *path1_1 = [[UIBezierPath alloc] init];
    [path1_1 addArcWithCenter:otherRoundCenter2 radius:10 startAngle:-M_PI endAngle:0 clockwise:false];
    [path1 appendPath:path1_1];
    
    CAKeyframeAnimation *animat1 =  nxLMUsXZnvkHD(_eCfLyYKJoXaS, path1, _ezZDlOcmEuRFUTTime);
    animat1.delegate = self;
    nqsgwFISMp(_eCfLyYKJoXaS, _eCfLyYKJoXaSColor, _eyxUYrOFhaRmlA, _ezZDlOcmEuRFUTTime);
    
    UIBezierPath *path2 = [[UIBezierPath alloc] init];
    [path2 addArcWithCenter:otherRoundCenter1 radius:10 startAngle:0 endAngle:-M_PI clockwise:true];
    CAKeyframeAnimation *animat2 =  nxLMUsXZnvkHD(_eBacvGylSI, path2, _ezZDlOcmEuRFUTTime);
    animat2.delegate =self;
    nqsgwFISMp(_eBacvGylSI, _esUcFrXiMAfJQw, _eCfLyYKJoXaSColor, _ezZDlOcmEuRFUTTime);
    
    UIBezierPath *path3 = [[UIBezierPath alloc] init];
    [path3 addArcWithCenter:otherRoundCenter2 radius:10 startAngle:0 endAngle:-M_PI clockwise:false];
    CAKeyframeAnimation *animat3 =  nxLMUsXZnvkHD(_epwkfdFKcCJnGT, path3, _ezZDlOcmEuRFUTTime);
    animat3.delegate = self;
    nqsgwFISMp(_epwkfdFKcCJnGT, _eyxUYrOFhaRmlA, _eCfLyYKJoXaSColor, _ezZDlOcmEuRFUTTime);
    
}
//可以手动调用隐藏动画
- (void)nbRHLoSKIwCiNBOX {
    [_eCfLyYKJoXaS.layer removeAllAnimations];
    [_eBacvGylSI.layer removeAllAnimations];
    [_epwkfdFKcCJnGT.layer removeAllAnimations];
    [self removeFromSuperview];
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    [_eCfLyYKJoXaS.layer removeAllAnimations];
    [_eBacvGylSI.layer removeAllAnimations];
    [_epwkfdFKcCJnGT.layer removeAllAnimations];
    [self removeFromSuperview];
}


#pragma mark ---------- Override
-(void)layoutSubviews {
    [super layoutSubviews];
    
    nizjksomcl(_eBacvGylSI, self.center.x);
    nxjsDZebLtwMhGV(_eBacvGylSI, self.center.y);
    
    nizjksomcl(_eCfLyYKJoXaS, nBanrouWF(_eBacvGylSI) - 20);
    nxjsDZebLtwMhGV(_eCfLyYKJoXaS, nivVGFtuH(_eBacvGylSI) - 20);
    
    nizjksomcl(_epwkfdFKcCJnGT, nBanrouWF(_eBacvGylSI) + 20);
    nxjsDZebLtwMhGV(_epwkfdFKcCJnGT, nivVGFtuH(_epwkfdFKcCJnGT));
}


@end

