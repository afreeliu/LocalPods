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

@interface ViewController ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *collectionView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *str = @"你好";
    [str lf_md5];
    
    [self addSubViews];
}

- (void)addSubViews {
    [self.view addSubview:self.collectionView];
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
