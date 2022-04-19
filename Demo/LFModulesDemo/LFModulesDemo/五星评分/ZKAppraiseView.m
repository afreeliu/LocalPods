//
//  ZKAppraiseView.m
//  LFModulesDemo
//
//  Created by lufee on 2022/4/6.
//

#import "ZKAppraiseView.h"

@interface ZKAppraiseView()<UITextViewDelegate>

@property (nonatomic, strong) ZKAppraiseViewModel *viewModel;

@property (nonatomic, strong) UILabel *placeholderLabel;

@property (nonatomic, strong) UITextView *contentTextView;

@property (nonatomic, strong) UILabel *countLabel;

@end


@implementation ZKAppraiseView

- (void)updateWithViewModel:(ZKAppraiseViewModel *)viewModel {
    self.viewModel = viewModel;
    
    self.placeholderLabel.text = self.viewModel.placeholder;
    self.countLabel.text = [NSString stringWithFormat:@"%ld/%ld", self.viewModel.currentLength, self.viewModel.maxLength];
    
}


-(instancetype)initWithViewModel:(ZKAppraiseViewModel *)viewModel {
    self = [super init];
    if (self) {
        
        self.backgroundColor = [UIColor lightGrayColor];
        
        self.viewModel = viewModel;
        
        [self createView];
        
        [self.viewModel addObserver:self forKeyPath:@"currentLength" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
        
        [self updateWithViewModel:viewModel];
    }
    return self;
}

-(void)dealloc {
    [self.viewModel removeObserver:self forKeyPath:@"currentLength"];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if ([object isEqual:self.viewModel]) {
        if ([keyPath isEqual:@"currentLength"]) {
            self.countLabel.text = [NSString stringWithFormat:@"%ld/%ld", self.viewModel.currentLength, self.viewModel.maxLength];
        }
    }
}



- (void)createView {
    
    [self addSubview:self.placeholderLabel];
    [self addSubview:self.contentTextView];
    [self addSubview:self.countLabel];
}

-(void)layoutSubviews {
    [super layoutSubviews];
    
    [self.placeholderLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(15);
        make.leading.offset(15);
        make.trailing.offset(-8);
    }];
    
    [self.contentTextView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(8);
        make.leading.offset(8);
        make.trailing.offset(-8);
        make.bottom.offset(-8);
    }];
    
    [self.countLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.offset(-8);
        make.trailing.offset(-8);
    }];
}



#pragma mark - UITextViewDelegate
-(void)textViewDidBeginEditing:(UITextView *)textView {
    self.placeholderLabel.hidden = textView.text.length;
}
-(void)textViewDidChange:(UITextView *)textView {
    [self.viewModel configCurrentLenth:textView.text.length];
    self.placeholderLabel.hidden = textView.text.length;
}

-(void)textViewDidEndEditing:(UITextView *)textView {
    [self.viewModel endEditing:textView.text];
}



#pragma mark - Lazy Init
-(UILabel *)placeholderLabel {
    if (!_placeholderLabel) {
        _placeholderLabel = [[UILabel alloc]init];
        _placeholderLabel.textAlignment = NSTextAlignmentLeft;
        _placeholderLabel.textColor = [UIColor grayColor];
        _placeholderLabel.font = [UIFont systemFontOfSize:12];
    }
    return _placeholderLabel;
}

-(UITextView *)contentTextView {
    if (!_contentTextView) {
        _contentTextView = [[UITextView alloc]init];
        _contentTextView.backgroundColor = [UIColor clearColor];
        _contentTextView.delegate = self;
        
    }
    return _contentTextView;
}

-(UILabel *)countLabel {
    if (!_countLabel) {
        _countLabel = [[UILabel alloc]init];
        _countLabel.textAlignment = NSTextAlignmentRight;
        _countLabel.textColor = [UIColor grayColor];
        _countLabel.font = [UIFont systemFontOfSize:12];
    }
    return _countLabel;
}


@end


@interface ZKAppraiseViewModel()

/// 占位文字显示内容
@property (nonatomic, copy) NSString *placeholder;

/// 输入的文字的内容
@property (nonatomic, copy) NSString *content;

/// 最大输入文字内容长度
@property (nonatomic, assign) NSInteger maxLength;

/// 当前输入的文字内容长度
@property (nonatomic, assign) NSInteger currentLength;

@end

@implementation ZKAppraiseViewModel

-(instancetype)initWithModel:(id)model {
    self = [super init];
    if (self) {
        
        self.maxLength = 200;
        self.placeholder = @"请输入您的宝贵意见以便我们更好的为您服务";
    }
    return self;
}


-(void)configCurrentLenth:(NSInteger)length {
    self.currentLength = length;
}

- (void)endEditing:(NSString *)text {
    self.content = text;
}


@end
