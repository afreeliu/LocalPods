//
//  ViewController.m
//  LFModulesDemo
//
//  Created by lufee on 2022/3/8.
//

#import "ViewController.h"
#import <NSString+MD5.h>
#import "ZKCollectionViewCell.h"
#import "UIColor+RandomColor.h"
#import "ZKStarsScoreView.h"
#import "ZKAppraiseView.h"
@interface ViewController ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *collectionView;

@property (nonatomic, strong) ZKStarsScoreView *starScoreView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *str = @"你好";
    [str lf_md5];
    
    [self addCollectionSubViews];
    [self addStarScoreView];
//    [self addAppraiseView];
    [self getToday];
}

- (void)getToday {
    NSDate *today = [NSDate date];
    NSDateFormatter *forMatter = [[NSDateFormatter alloc] init];
        //设置你想要的格式,hh与HH的区别:分别表示12小时制,24小时制
    [forMatter setDateFormat:@"yyyy-MM-dd"];
    NSString *dateStr = [forMatter stringFromDate:today];
    NSLog(@"当前日期:%@", dateStr);
}


- (void)addCollectionSubViews {
    [self.view addSubview:self.collectionView];
}

- (void)addStarScoreView {
    
    ZKStarsScoreViewModel *viewModel = [[ZKStarsScoreViewModel alloc]initWithModel:nil];
    
    self.starScoreView = [[ZKStarsScoreView alloc]initWithViewModel:viewModel];
    
    [self.view addSubview:self.starScoreView];
    
    [self.starScoreView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(105);
        make.center.offset(0);
        make.height.mas_equalTo(42);
        
    }];
}

- (void)addAppraiseView {
    ZKAppraiseViewModel *viewModel = [[ZKAppraiseViewModel alloc]initWithModel:nil];
    
    ZKAppraiseView *view = [[ZKAppraiseView alloc]initWithViewModel:viewModel];
    
    [self.view addSubview:view];
    
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.collectionView.mas_bottom).offset(10);
        make.leading.offset(16);
        make.trailing.offset(-16);
        make.height.mas_equalTo(100);
    }];
    
}



#pragma mark - Delegate
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        CGSize size = CGSizeMake(floor(([UIScreen mainScreen].bounds.size.width - 32)/3) , 144);
        NSLog(@"section:%ld  row:%ld, size:%@", indexPath.section, indexPath.row, NSStringFromCGSize(size));
        return size;
    }
    if (indexPath.row == 4) {
        CGSize size = CGSizeMake(floor(([UIScreen mainScreen].bounds.size.width - 32)) , 40);
        NSLog(@"section:%ld  row:%ld, size:%@", indexPath.section, indexPath.row, NSStringFromCGSize(size));
        return size;
    }
    if (indexPath.row == 1) {
        CGSize size = CGSizeMake(floor(([UIScreen mainScreen].bounds.size.width - 32)/3) , floor(144/2));
        return size;
    }
    if (indexPath.row == 2) {
        CGSize size = CGSizeMake(floor(([UIScreen mainScreen].bounds.size.width - 32)/3) , 144);
        return size;
    }
    if (indexPath.row == 3) {
        CGSize size = CGSizeMake(floor(([UIScreen mainScreen].bounds.size.width - 32)/3) , floor(144/2));
        return size;
    }
    CGSize size = CGSizeMake(floor(([UIScreen mainScreen].bounds.size.width - 32)/3), 144);
    NSLog(@"section:%ld  row:%ld, size:%@", indexPath.section, indexPath.row, NSStringFromCGSize(size));
    return size;
}
//- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
//
//}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    /// item 之间最小间隔
    ///
    return 0;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    
    return 0;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section {
    return CGSizeMake(0, 0);
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section {
    return CGSizeMake(0, 0);
}



-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 5;
}

-(__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    ZKCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ZKCollectionViewCell" forIndexPath:indexPath];
    cell.titleLabel.text = [NSString stringWithFormat:@"%ld ---> %ld", indexPath.section, indexPath.row];
    cell.backgroundColor = [UIColor lf_randomColor];
    return cell;
}





-(UICollectionView *)collectionView {
    if (!_collectionView) {
        
        UICollectionViewFlowLayout *clayout = [[UICollectionViewFlowLayout alloc]init];
        [clayout setScrollDirection:UICollectionViewScrollDirectionVertical];//设置其布局方向
        
        clayout.minimumInteritemSpacing = 0;
        clayout.minimumLineSpacing = 0;
        _collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(16, 200, [UIScreen mainScreen].bounds.size.width - 32, 184) collectionViewLayout:clayout];
        _collectionView.backgroundColor = [UIColor yellowColor];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        [_collectionView registerClass:[ZKCollectionViewCell class] forCellWithReuseIdentifier:@"ZKCollectionViewCell"];
    }
    return _collectionView;
}

@end
