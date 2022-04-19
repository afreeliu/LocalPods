//
//  ZKAppraiseView.h
//  LFModulesDemo
//
//  Created by lufee on 2022/4/6.
//  评价输入框

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class ZKAppraiseViewModel;
@interface ZKAppraiseView : UIView

- (instancetype)initWithViewModel:(ZKAppraiseViewModel *)viewModel;


@end

@interface ZKAppraiseViewModel : NSObject

- (instancetype)initWithModel:(id)model;

/// 占位文字显示内容
@property (nonatomic, readonly) NSString *placeholder;

/// 输入的文字的内容
@property (nonatomic, readonly) NSString *content;



/// 最大输入文字内容长度
@property (nonatomic, readonly) NSInteger maxLength;

/// 当前输入的文字内容长度
@property (nonatomic, readonly) NSInteger currentLength;

/// 记录输入的文字的数量
- (void)configCurrentLenth:(NSInteger)length;

/// 结束输入文字后，得到文字的全部内容
- (void)endEditing:(NSString *)text;


@end


NS_ASSUME_NONNULL_END
