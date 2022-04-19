//
//  ZKStarsScoreView.m
//  LFModulesDemo
//
//  Created by lufee on 2022/4/6.
//

#import "ZKStarsScoreView.h"

@interface ZKStarsScoreView()

@property (nonatomic, strong) ZKStarsScoreViewModel *viewModel;

@property (nonatomic, strong) UIStackView *starListStackView;


@end

@implementation ZKStarsScoreView


- (void)updateWithViewModel:(ZKStarsScoreViewModel *)viewModel {
    self.viewModel = viewModel;
    
    /// 根据分数得到整个星星的个数
    int count = self.viewModel.score / 10;
    /// 根据分数得到分数的小树部分
    int pointScore = self.viewModel.score % 10;
    [self.starListStackView.arrangedSubviews enumerateObjectsUsingBlock:^(__kindof UIButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj setBackgroundImage:[UIImage imageNamed:@"icon_star_normal"] forState:UIControlStateNormal];
        if (obj.tag <= count) {
            [obj setBackgroundImage:[UIImage imageNamed:@"icon_star_select"] forState:UIControlStateNormal];
        }
        if (idx == count) {
            [obj setBackgroundImage:[UIImage imageNamed:[self getStarIconForScore:pointScore]] forState:UIControlStateNormal];
        }
        
        
    }];
    
}


-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if ([object isEqual:self.viewModel]) {
        if ([keyPath isEqual:@"score"]) {
            NSLog(@"更新分数:%d", self.viewModel.score);
        }
    }
}



-(instancetype)initWithViewModel:(ZKStarsScoreViewModel *)viewModel {
    self = [super init];
    if (self) {
        self.viewModel = viewModel;
        
        [self createStarListView];
        
        [self updateWithViewModel:viewModel];
        
        [self.viewModel addObserver:self forKeyPath:@"score" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
        
        
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self.starListStackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.bottom.trailing.offset(0);
    }];
}

-(void)dealloc {
    [self.viewModel removeObserver:self forKeyPath:@"score"];
}


/// 创建星星的个数
- (void)createStarListView {
    for (int i = 0; i < self.viewModel.starsCount; i++) {
        UIButton *btn = [[UIButton alloc]init];
        btn.tag = i + 1;
        [btn setBackgroundImage:[UIImage imageNamed:@"icon_star_normal"] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(markScoreAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.starListStackView addArrangedSubview:btn];
    }
    [self addSubview:self.starListStackView];
}

/// 根据分数的小数部分获取相关的的图标
- (NSString *)getStarIconForScore:(int)score {
    if (!score) {
        return @"icon_star_normal";
    }
    return [NSString stringWithFormat:@"icon_star%d", score];
}

#pragma mark - 点击事件------评分
- (void)markScoreAction:(UIButton *)sender {
    
    CGFloat randScore = random() % 50 / 10.0;
    [self.viewModel scoreAction:sender.tag];
    [self updateWithViewModel:self.viewModel];
}



-(UIStackView *)starListStackView {
    if (!_starListStackView) {
        _starListStackView = [[UIStackView alloc]init];
        _starListStackView.axis = UILayoutConstraintAxisHorizontal;
        _starListStackView.distribution = UIStackViewDistributionFillEqually;
        _starListStackView.alignment = UIStackViewAlignmentCenter;
        _starListStackView.spacing = 15;
        _starListStackView.backgroundColor = [UIColor lf_randomColor];
    }
    return _starListStackView;
}



@end




@interface ZKStarsScoreViewModel()


@property (nonatomic, strong) id model;

/// 星星的个数
@property (nonatomic, assign) NSInteger starsCount;
/// 评定的分数
@property (nonatomic, assign) int score;
/// 是否可进行评分
@property (nonatomic, assign) BOOL canScore;

@end

@implementation ZKStarsScoreViewModel

-(instancetype)initWithModel:(id)model {
    self = [super init];
    if (self) {
        self.model = model;
        
        self.starsCount = 5;
        self.canScore = YES;
        self.score = 35;
    }
    return self;
}



-(void)scoreAction:(CGFloat)score {
    self.score = score * 10;
}


@end
