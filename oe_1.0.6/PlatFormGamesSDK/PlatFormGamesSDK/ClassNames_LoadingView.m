

#import "ClassNames_LoadingView.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_ViewTool.h"
#import "ClassNames_Color.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_RegularMatch.h"
#import "ClassNames_AnimateTool.h"
#import "ClassNames_SecurityTool.h"

@interface ClassNames_LoadingView ()<CAAnimationDelegate>



@property (nonatomic, readwrite ,weak) UIView *varNames_round1;
@property (nonatomic, readwrite ,weak) UIView *varNames_round2;
@property (nonatomic, readwrite ,weak) UIView *varNames_round3;

@property (nonatomic, readwrite ,strong) UIColor *varNames_round1Color;
@property (nonatomic, readwrite ,strong) UIColor *varNames_round2Color;
@property (nonatomic, readwrite ,strong) UIColor *varNames_round3Color;

@property (nonatomic, readwrite ,assign) CGFloat varNames_animatRepeatTime;
@property (nonatomic, readwrite ,assign) CGFloat varNames_animatTime;

@end

@implementation ClassNames_LoadingView


//显示加载动画在指定的view上
+ (ClassNames_LoadingView *)methodNames_showLoadingWith:(UIView *)view
{
    ClassNames_LoadingView *varNames_tmploadingView = [[ClassNames_LoadingView alloc] initWithFrame:CGRectMake(0, 0, methodNames_getView_Width(view), methodNames_getView_Height(view))];
    [view addSubview:varNames_tmploadingView];
    return varNames_tmploadingView;
}

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self methodNames_setUI];
    }
    return self;
}

- (void)methodNames_setUI {
    
    _varNames_round1Color = [UIColor colorWithRed:206/255.0 green:7/255.0 blue:85/255.0 alpha:1.0];
    _varNames_round2Color = [UIColor colorWithRed:206/255.0 green:7/255.0 blue:85/255.0 alpha:0.6];
    _varNames_round3Color = [UIColor colorWithRed:206/255.0 green:7/255.0 blue:85/255.0 alpha:0.3];
    
    _varNames_animatTime = 1.5;
    
    CGFloat varNames_tmpwidth = 10.0;
    UIView *varNames_tmpround1 = [[UIView alloc]init];
    methodNames_setView_Width(varNames_tmpround1, varNames_tmpwidth);
    methodNames_setView_Height(varNames_tmpround1, varNames_tmpwidth);
    varNames_tmpround1.backgroundColor = _varNames_round1Color;
    varNames_tmpround1.layer.cornerRadius = 5.0f;
    
    UIView *varNames_tmpround2 = [[UIView alloc]init];
    methodNames_setView_Width(varNames_tmpround2, varNames_tmpwidth);
    methodNames_setView_Height(varNames_tmpround2, varNames_tmpwidth);
    varNames_tmpround2.backgroundColor = _varNames_round1Color;
    varNames_tmpround2.layer.cornerRadius = 5.0f;
    
    UIView *varNames_tmpround3 = [[UIView alloc]init];
    methodNames_setView_Width(varNames_tmpround3, varNames_tmpwidth);
    methodNames_setView_Height(varNames_tmpround3, varNames_tmpwidth);
    varNames_tmpround3.backgroundColor = _varNames_round1Color;
    varNames_tmpround3.layer.cornerRadius = 5.0f;
    
    [self addSubview:varNames_tmpround1];
    [self addSubview:varNames_tmpround2];
    [self addSubview:varNames_tmpround3];
    
    methodNames_setView_CenterX(varNames_tmpround2, self.center.x);
    methodNames_setView_CenterY(varNames_tmpround2, self.center.y);
    
    methodNames_setView_CenterX(varNames_tmpround1, methodNames_getView_CenterX(varNames_tmpround2) - 20);
    methodNames_setView_CenterY(varNames_tmpround1, methodNames_getView_CenterY(varNames_tmpround1) - 20);
    
    methodNames_setView_CenterX(varNames_tmpround3, methodNames_getView_CenterX(varNames_tmpround2) + 20);
    methodNames_setView_CenterY(varNames_tmpround3, methodNames_getView_CenterY(varNames_tmpround3));
    
    _varNames_round1 = varNames_tmpround1;
    _varNames_round2 = varNames_tmpround2;
    _varNames_round3 = varNames_tmpround3;
    
    
    [self methodNames_startAnimat];
}

- (void)methodNames_startAnimat {
    CGPoint varNames_tmpotherRoundCenter1 = CGPointMake(methodNames_getView_CenterX(_varNames_round1)+10, methodNames_getView_CenterY(_varNames_round2));
    CGPoint varNames_tmpotherRoundCenter2 = CGPointMake(methodNames_getView_CenterX(_varNames_round2)+10, methodNames_getView_CenterY(_varNames_round2));
    //圆1的路径
    UIBezierPath *varNames_tmppath1 = [[UIBezierPath alloc] init];
    [varNames_tmppath1 addArcWithCenter:varNames_tmpotherRoundCenter1 radius:10 startAngle:-M_PI endAngle:0 clockwise:true];
    UIBezierPath *varNames_tmppath1_1 = [[UIBezierPath alloc] init];
    [varNames_tmppath1_1 addArcWithCenter:varNames_tmpotherRoundCenter2 radius:10 startAngle:-M_PI endAngle:0 clockwise:false];
    [varNames_tmppath1 appendPath:varNames_tmppath1_1];
    
    CAKeyframeAnimation *varNames_tmpanimat1 =  methodNames_setViewMoveAnimat(_varNames_round1, varNames_tmppath1, _varNames_animatTime);
    varNames_tmpanimat1.delegate = self;
    methodNames_setViewColorAnimat(_varNames_round1, _varNames_round1Color, _varNames_round3Color, _varNames_animatTime);
    
    UIBezierPath *varNames_tmppath2 = [[UIBezierPath alloc] init];
    [varNames_tmppath2 addArcWithCenter:varNames_tmpotherRoundCenter1 radius:10 startAngle:0 endAngle:-M_PI clockwise:true];
    CAKeyframeAnimation *varNames_tmpanimat2 =  methodNames_setViewMoveAnimat(_varNames_round2, varNames_tmppath2, _varNames_animatTime);
    varNames_tmpanimat2.delegate =self;
    methodNames_setViewColorAnimat(_varNames_round2, _varNames_round2Color, _varNames_round1Color, _varNames_animatTime);
    
    UIBezierPath *varNames_tmppath3 = [[UIBezierPath alloc] init];
    [varNames_tmppath3 addArcWithCenter:varNames_tmpotherRoundCenter2 radius:10 startAngle:0 endAngle:-M_PI clockwise:false];
    CAKeyframeAnimation *varNames_tmpanimat3 =  methodNames_setViewMoveAnimat(_varNames_round3, varNames_tmppath3, _varNames_animatTime);
    varNames_tmpanimat3.delegate = self;
    methodNames_setViewColorAnimat(_varNames_round3, _varNames_round3Color, _varNames_round1Color, _varNames_animatTime);
    
}
//可以手动调用隐藏动画
- (void)methodNames_hideLoadingView {
    [_varNames_round1.layer removeAllAnimations];
    [_varNames_round2.layer removeAllAnimations];
    [_varNames_round3.layer removeAllAnimations];
    [self removeFromSuperview];
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    [_varNames_round1.layer removeAllAnimations];
    [_varNames_round2.layer removeAllAnimations];
    [_varNames_round3.layer removeAllAnimations];
    [self removeFromSuperview];
}


#pragma mark ---------- Override
-(void)layoutSubviews {
    [super layoutSubviews];
    
    methodNames_setView_CenterX(_varNames_round2, self.center.x);
    methodNames_setView_CenterY(_varNames_round2, self.center.y);
    
    methodNames_setView_CenterX(_varNames_round1, methodNames_getView_CenterX(_varNames_round2) - 20);
    methodNames_setView_CenterY(_varNames_round1, methodNames_getView_CenterY(_varNames_round2) - 20);
    
    methodNames_setView_CenterX(_varNames_round3, methodNames_getView_CenterX(_varNames_round2) + 20);
    methodNames_setView_CenterY(_varNames_round3, methodNames_getView_CenterY(_varNames_round3));
}


@end

