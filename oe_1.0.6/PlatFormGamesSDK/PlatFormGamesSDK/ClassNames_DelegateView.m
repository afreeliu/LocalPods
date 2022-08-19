

#import "ClassNames_DelegateView.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_DeviceConfigure.h"
#import "ClassNames_Color.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_loadFileManager.h"
#import "ClassNames_NavigationBarView.h"
@interface ClassNames_DelegateView ()

@property (nonatomic, readwrite, strong) ClassNames_NavigationBarView *varNames_naviView;

//@property (nonatomic, readwrite, strong) UIView *varNames_lineView;
//
//@property (nonatomic, readwrite, strong) UILabel *varNames_titleLabel;
//
//@property (nonatomic, readwrite, strong) UIButton *varNames_closeBtn;

@property (nonatomic, readwrite, strong) UITextView *varNames_contentTextView;

@property (nonatomic, readwrite, strong) NSLayoutConstraint *varNames_topConstraint;

@property (nonatomic, readwrite, assign) CGFloat varNames_statusHeight;
@end


@implementation ClassNames_DelegateView

static NSString *static_title = @"用户协议";

+(ClassNames_DelegateView *)methodNames_showDelegateOrHandleBookViewWithFileName:(NSString *)varNames_fileName methodNames_viewTitle:(NSString *)title{
    static_title = title;
    ClassNames_DelegateView *varNames_tmpView = [[ClassNames_DelegateView alloc]init];
    varNames_tmpView.varNames_contentTextView.text = [[ClassNames_loadFileManager shareLoadFileManager]methodNames_initLoadTxtFile:varNames_fileName subMethodNames_getValueFromKey:@""];
//    if (title && title.length) {
//        varNames_tmpView.varNames_titleLabel.text = title;
//    }
    
    [varNames_tmpView setNeedsLayout];
    return varNames_tmpView;
}

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.translatesAutoresizingMaskIntoConstraints = NO;
        self.varNames_statusHeight = 0;
        [self methodNames_setNavi];
        self.varNames_contentTextView = [[UITextView alloc]init];
        self.varNames_contentTextView.translatesAutoresizingMaskIntoConstraints = NO;
        self.varNames_contentTextView.editable = NO;
        self.varNames_contentTextView.text = [[ClassNames_loadFileManager shareLoadFileManager]methodNames_initLoadTxtFile:@"ClassNames_delegateContent" subMethodNames_getValueFromKey:@""];
        self.varNames_contentTextView.backgroundColor = [UIColor whiteColor];
        self.varNames_contentTextView.textColor = [UIColor blackColor];
        [self addSubview:self.varNames_contentTextView];
        
        [self methodNames_layoutView];
    }
    return self;
}


- (void)methodNames_layoutView {
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_naviView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_naviView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_naviView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_naviView methodNames_constriant:methodNames_setNavigationBarHeight()];
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_contentTextView methodNames_constriant:methodNames_setNavigationBarHeight() + methodNames_setMargin_2base()];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_contentTextView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_contentTextView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_contentTextView methodNames_constriant:0];
}


- (void)methodNames_setNavi {
    
    __weak typeof(self) weakSelf = self;
    ClassNames_NavigationBarView *varNames_tmpNaviView = [[ClassNames_NavigationBarView alloc]init];
    varNames_tmpNaviView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [varNames_tmpNaviView methodNames_setTitle:static_title];
    [varNames_tmpNaviView methodNames_setRightButtonImage:@"image_close" rightTitle:@"" btnAction:^{
        if (weakSelf.methodNames_closeBlock) {
            weakSelf.hidden = YES;
            weakSelf.methodNames_closeBlock();
        }
        
    }];
    
    self.varNames_naviView = varNames_tmpNaviView;
    
    
    [self addSubview:varNames_tmpNaviView];
}
- (void)methodNames_closeAction:(UIButton *)sender {
    __weak typeof(self) weakSelf = self;
    [UIView animateWithDuration:0.2 animations:^{
        [weakSelf setFrame:CGRectMake(0, methodNames_getScreenHeight(), methodNames_getScreenWidth(), methodNames_getScreenHeight())];
    } completion:^(BOOL finished) {
        [weakSelf removeFromSuperview];
        
    }];
}



@end
