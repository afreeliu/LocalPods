//
//  LLB_AdvertisementImageView.m
//  LFModulesDemo
//
//  Created by lufee on 2022/3/8.
//

#import "LLB_ AdvertisementImageView.h"

@interface LLB_AdvertisementImageView()

@property (nonatomic, strong) UIImageView *llb_imageView;

@property (nonatomic, strong) UIButton *llb_tagButton;


@end


@implementation LLB_AdvertisementImageView

-(instancetype)init {
    self = [super init];
    if (self) {
        [self addSubview:self.llb_imageView];
        [self addSubview:self.llb_tagButton];
    }
    return self;
}

- (instancetype)initWithViewModel:(LLB_AdvertisementImageViewModel *)viewModel {
    self = [self init];
    if (self) {
        
    }
    return self;
}




#pragma mark - lazyInit
-(UIImageView *)llb_imageView {
    if (!_llb_imageView) {
        _llb_imageView = [[UIImageView alloc]init];
    }
    return _llb_imageView;
}

-(UIButton *)llb_tagButton {
    if (!_llb_tagButton) {
        _llb_tagButton = [[UIButton alloc]init];
    }
    return _llb_tagButton;
}

@end
