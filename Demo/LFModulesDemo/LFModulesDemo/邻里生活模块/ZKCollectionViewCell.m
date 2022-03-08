//
//  ZKCollectionViewCell.m
//  LFModulesDemo
//
//  Created by lufee on 2022/3/8.
//

#import "ZKCollectionViewCell.h"


@implementation ZKCollectionViewCell

-(instancetype)init {
    self = [super init];
    if (self) {
        [self addSubview:self.titleLabel];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.titleLabel];
    }
    return self;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    [self.titleLabel setFrame:self.bounds];
}




-(UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc]init];
    }
    return _titleLabel;
}

@end
