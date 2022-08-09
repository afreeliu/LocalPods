

#import "DUjumWLgTU.h"
#import "DUGcbRnKpJlPkyoY.h"
#import "DUMsxKfgyw.h"
#import "DULCiQqMJAk.h"
#import "DUjHPamSNKWkfM.h"
#import "DUIBriUTudq.h"
#import "DUqEONnQKwFro.h"
#import "DUJwXyISMdzCUh.h"

@interface DUjumWLgTU ()<CAAnimationDelegate>



@property (nonatomic, readwrite ,weak) UIView *eLjAWPuRyD;
@property (nonatomic, readwrite ,weak) UIView *eDUCTmlX;
@property (nonatomic, readwrite ,weak) UIView *eVAyQCrUj;

@property (nonatomic, readwrite ,strong) UIColor *ehOIuqRPkfm;
@property (nonatomic, readwrite ,strong) UIColor *eDUCTmlXColor;
@property (nonatomic, readwrite ,strong) UIColor *eVAyQCrUjColor;

@property (nonatomic, readwrite ,assign) CGFloat eQUDivVERepeatTime;
@property (nonatomic, readwrite ,assign) CGFloat eQUDivVETime;

@end

@implementation DUjumWLgTU


//显示加载动画在指定的view上
+ (DUjumWLgTU *)kdSzeClsBhOtZIYxLoadingWith:(UIView *)view
{
    DUjumWLgTU *loadingView = [[DUjumWLgTU alloc] initWithFrame:CGRectMake(0, 0, kEIfpyjJg(view), kNPqclpIhv(view))];
    [view addSubview:loadingView];
    return loadingView;
}

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self kjRvMuF];
    }
    return self;
}

- (void)kjRvMuF {
    
    _ehOIuqRPkfm = [UIColor colorWithRed:206/255.0 green:7/255.0 blue:85/255.0 alpha:1.0];
    _eDUCTmlXColor = [UIColor colorWithRed:206/255.0 green:7/255.0 blue:85/255.0 alpha:0.6];
    _eVAyQCrUjColor = [UIColor colorWithRed:206/255.0 green:7/255.0 blue:85/255.0 alpha:0.3];
    
    _eQUDivVETime = 1.5;
    
    CGFloat width = 10.0;
    UIView *round1 = [[UIView alloc]init];
    kVXqQJh(round1, width);
    kDAbcpykgqL(round1, width);
    round1.backgroundColor = _ehOIuqRPkfm;
    round1.layer.cornerRadius = 5.0f;
    
    UIView *round2 = [[UIView alloc]init];
    kVXqQJh(round2, width);
    kDAbcpykgqL(round2, width);
    round2.backgroundColor = _ehOIuqRPkfm;
    round2.layer.cornerRadius = 5.0f;
    
    UIView *round3 = [[UIView alloc]init];
    kVXqQJh(round3, width);
    kDAbcpykgqL(round3, width);
    round3.backgroundColor = _ehOIuqRPkfm;
    round3.layer.cornerRadius = 5.0f;
    
    [self addSubview:round1];
    [self addSubview:round2];
    [self addSubview:round3];
    
    kjBqiuXkFZPSdn(round2, self.center.x);
    kTipkmSt(round2, self.center.y);
    
    kjBqiuXkFZPSdn(round1, kfXijVFZv(round2) - 20);
    kTipkmSt(round1, kZnVrLRhJBG(round1) - 20);
    
    kjBqiuXkFZPSdn(round3, kfXijVFZv(round2) + 20);
    kTipkmSt(round3, kZnVrLRhJBG(round3));
    
    _eLjAWPuRyD = round1;
    _eDUCTmlX = round2;
    _eVAyQCrUj = round3;
    
    
    [self kyXYrpzmR];
}

- (void)kyXYrpzmR {
    CGPoint otherRoundCenter1 = CGPointMake(kfXijVFZv(_eLjAWPuRyD)+10, kZnVrLRhJBG(_eDUCTmlX));
    CGPoint otherRoundCenter2 = CGPointMake(kfXijVFZv(_eDUCTmlX)+10, kZnVrLRhJBG(_eDUCTmlX));
    //圆1的路径
    UIBezierPath *path1 = [[UIBezierPath alloc] init];
    [path1 addArcWithCenter:otherRoundCenter1 radius:10 startAngle:-M_PI endAngle:0 clockwise:true];
    UIBezierPath *path1_1 = [[UIBezierPath alloc] init];
    [path1_1 addArcWithCenter:otherRoundCenter2 radius:10 startAngle:-M_PI endAngle:0 clockwise:false];
    [path1 appendPath:path1_1];
    
    CAKeyframeAnimation *animat1 =  kzEZvyWHInXNq(_eLjAWPuRyD, path1, _eQUDivVETime);
    animat1.delegate = self;
    keLQljWr(_eLjAWPuRyD, _ehOIuqRPkfm, _eVAyQCrUjColor, _eQUDivVETime);
    
    UIBezierPath *path2 = [[UIBezierPath alloc] init];
    [path2 addArcWithCenter:otherRoundCenter1 radius:10 startAngle:0 endAngle:-M_PI clockwise:true];
    CAKeyframeAnimation *animat2 =  kzEZvyWHInXNq(_eDUCTmlX, path2, _eQUDivVETime);
    animat2.delegate =self;
    keLQljWr(_eDUCTmlX, _eDUCTmlXColor, _ehOIuqRPkfm, _eQUDivVETime);
    
    UIBezierPath *path3 = [[UIBezierPath alloc] init];
    [path3 addArcWithCenter:otherRoundCenter2 radius:10 startAngle:0 endAngle:-M_PI clockwise:false];
    CAKeyframeAnimation *animat3 =  kzEZvyWHInXNq(_eVAyQCrUj, path3, _eQUDivVETime);
    animat3.delegate = self;
    keLQljWr(_eVAyQCrUj, _eVAyQCrUjColor, _ehOIuqRPkfm, _eQUDivVETime);
    
}
//可以手动调用隐藏动画
- (void)kmBSjbQLoadingView {
    [_eLjAWPuRyD.layer removeAllAnimations];
    [_eDUCTmlX.layer removeAllAnimations];
    [_eVAyQCrUj.layer removeAllAnimations];
    [self removeFromSuperview];
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    [_eLjAWPuRyD.layer removeAllAnimations];
    [_eDUCTmlX.layer removeAllAnimations];
    [_eVAyQCrUj.layer removeAllAnimations];
    [self removeFromSuperview];
}


#pragma mark ---------- Override
-(void)layoutSubviews {
    [super layoutSubviews];
    
    kjBqiuXkFZPSdn(_eDUCTmlX, self.center.x);
    kTipkmSt(_eDUCTmlX, self.center.y);
    
    kjBqiuXkFZPSdn(_eLjAWPuRyD, kfXijVFZv(_eDUCTmlX) - 20);
    kTipkmSt(_eLjAWPuRyD, kZnVrLRhJBG(_eDUCTmlX) - 20);
    
    kjBqiuXkFZPSdn(_eVAyQCrUj, kfXijVFZv(_eDUCTmlX) + 20);
    kTipkmSt(_eVAyQCrUj, kZnVrLRhJBG(_eVAyQCrUj));
}


@end

