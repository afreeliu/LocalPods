

#import "ClassNames_CommitButton.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_Color.h"
@interface ClassNames_CommitButton()


@property (nonatomic, readwrite, copy) void(^methodNames_commitButtonAction)(void);

@end


@implementation ClassNames_CommitButton


-(instancetype)init {
    self = [super init];
    if (self) {
        [self addTarget:self action:@selector(methodNames_commitAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)methodNames_commitAction:(UIButton *)sender {
    if (self.methodNames_commitButtonAction) {
        self.methodNames_commitButtonAction();
    }
}

+(ClassNames_CommitButton *)methodNames_createCommitButtonWithTitle:(NSString *)varNames_title withTouchUpInsidBlock:(void (^)(void))varNames_block {
    ClassNames_CommitButton *varNames_tmpCommitBtn = [[ClassNames_CommitButton alloc]init];
    varNames_tmpCommitBtn.translatesAutoresizingMaskIntoConstraints = NO;
    [varNames_tmpCommitBtn setTitle:varNames_title forState:UIControlStateNormal];
    [varNames_tmpCommitBtn setTitleColor:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_commitBtnFontColor_config()] forState:UIControlStateNormal];
    [varNames_tmpCommitBtn setBackgroundColor:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_commitBtnBackgroundColor_config()]];
    varNames_tmpCommitBtn.layer.cornerRadius = 5.0;
    varNames_tmpCommitBtn.methodNames_commitButtonAction = varNames_block;
    
    return varNames_tmpCommitBtn;
}

@end
