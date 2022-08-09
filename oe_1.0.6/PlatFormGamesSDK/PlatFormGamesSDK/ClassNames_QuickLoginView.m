

#import "ClassNames_QuickLoginView.h"

#import "ClassNames_CommitButton.h"
#import "ClassNames_InputView.h"
#import "ClassNames_Color.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_Title.h"
#import "ClassNames_CutImage.h"
#import "ClassNames_ImageCommitButton.h"
#import "ClassNames_PGHubView.h"

@interface ClassNames_QuickLoginView ()

@property (nonatomic, readwrite, strong) UILabel *varNames_titleLabel;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_firstInputView;

@property (nonatomic, readwrite, strong) ClassNames_InputView *varNames_secondInputView;

@property (nonatomic, readwrite, strong) ClassNames_CommitButton *varNames_firstCommitBtn;

@property (nonatomic, readwrite, strong) ClassNames_CommitButton *varNames_secondCommitBtn;

@property (nonatomic, readwrite, assign) CGFloat varNames_topMarginValue;

@property (nonatomic, readwrite, assign) BOOL varNames_isCanBindPhone;
@property (nonatomic, readwrite, strong) NSLayoutConstraint *varNames_firstCommitBtnConstriant;

@end


@implementation ClassNames_QuickLoginView

#pragma mark ---------- public methodNames
+(instancetype)methodNames_createQuickLoginView {
    ClassNames_QuickLoginView *varNames_tmpQuickLoginView = [[ClassNames_QuickLoginView alloc]init];
    varNames_tmpQuickLoginView.translatesAutoresizingMaskIntoConstraints = NO;
    return varNames_tmpQuickLoginView;
}

-(void)methodNames_fillAccount:(NSString *)varNames_account methodNames_fillPassword:(NSString *)varNames_password {
    [self.varNames_firstInputView methodNames_fillContent:varNames_account methodNames_canEditing:NO];
    [self.varNames_secondInputView methodNames_fillContent:varNames_password methodNames_canEditing:NO];
    __weak typeof(self) weakSelf = self;
    [ClassNames_PGHubView methodNames_hide];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            UIImage *image = methodNames_getScreenImage(methodNames_getCurrentWindow());
            UIImageWriteToSavedPhotosAlbum(image,weakSelf,@selector(image:didFinishSavingWithError:contextInfo:),nil);
        });
    });
}

- (void)methodNames_canBindPhone:(BOOL)varNames_canBind {
    _varNames_isCanBindPhone = varNames_canBind;
}


#pragma mark ----------------------------------------------------------------------

-(instancetype)init {
    self = [super init];
    if (self) {
        [self methodNames_createUI];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self methodNames_layoutSubViews];
}



- (void)methodNames_createUI {
    
    UILabel *varNames_tmpTitleLabel = [[UILabel alloc]init];
    varNames_tmpTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpTitleLabel.text = methodNames_getTitle_QuickLoginView_Title();
    varNames_tmpTitleLabel.textColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_titleFontColor_config()];
    varNames_tmpTitleLabel.textAlignment = NSTextAlignmentCenter;
    varNames_tmpTitleLabel.font = [UIFont systemFontOfSize:17];
    self.varNames_titleLabel = varNames_tmpTitleLabel;
    
    ClassNames_InputView *varNames_tmpFirstInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeQuickLoginAccount];
    varNames_tmpFirstInputView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_firstInputView = varNames_tmpFirstInputView;
    
    ClassNames_InputView *varNames_tmpSecondInputView = [ClassNames_InputView methodNames_inputViewType:varNames_inputViewTypeQuickLoginPassword];
    varNames_tmpSecondInputView.translatesAutoresizingMaskIntoConstraints = NO;
    self.varNames_secondInputView = varNames_tmpSecondInputView;
    
    ClassNames_CommitButton *varNames_tmpFirstCommitBtn = [[ClassNames_CommitButton alloc]init];
    varNames_tmpFirstCommitBtn.translatesAutoresizingMaskIntoConstraints = NO;
    
    methodNames_drawEnterGameButtonImage(varNames_tmpFirstCommitBtn, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_titleFontColor_config()]);
    [varNames_tmpFirstCommitBtn addTarget:self action:@selector(methodNames_firstCommitAction:) forControlEvents:UIControlEventTouchUpInside];
    self.varNames_firstCommitBtn = varNames_tmpFirstCommitBtn;
    
    ClassNames_CommitButton *varNames_tmpSecondCommitBtn = [[ClassNames_CommitButton alloc]init];
    varNames_tmpSecondCommitBtn.translatesAutoresizingMaskIntoConstraints = NO;
    methodNames_drawOKCommitImage(varNames_tmpSecondCommitBtn, [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_titleFontColor_config()]);
    [varNames_tmpSecondCommitBtn addTarget:self action:@selector(methodNames_secondCommitAction:) forControlEvents:UIControlEventTouchUpInside];
    self.varNames_secondCommitBtn = varNames_tmpSecondCommitBtn;
    
    [self addSubview:self.varNames_titleLabel];
    [self addSubview:self.varNames_firstInputView];
    [self addSubview:self.varNames_secondInputView];
    [self addSubview:self.varNames_firstCommitBtn];
    self.varNames_firstCommitBtn.hidden = YES;
    [self addSubview:self.varNames_secondCommitBtn];
}

- (void)methodNames_layoutSubViews {
    
    self.varNames_topMarginValue = methodNames_setMargin_2base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_titleLabel methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_titleLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_titleLabel methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_titleLabel methodNames_constriant:methodNames_getInputView_inputView_Height()];
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
    self.varNames_topMarginValue += methodNames_setMargin_3base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_firstInputView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_firstInputView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_firstInputView methodNames_constriant:methodNames_getInputView_inputView_Width()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_firstInputView methodNames_constriant:methodNames_getInputView_inputView_Height()];
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
    self.varNames_topMarginValue += methodNames_setMargin_3base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_secondInputView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_secondInputView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_secondInputView methodNames_constriant:methodNames_getInputView_inputView_Width()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_secondInputView methodNames_constriant:methodNames_getInputView_inputView_Height()];
    
    self.varNames_topMarginValue += methodNames_getInputView_inputView_Height();
    self.varNames_topMarginValue += methodNames_setMargin_2base() * 2;
    
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:_varNames_secondCommitBtn methodNames_constriant:_varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:_varNames_secondCommitBtn methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:_varNames_secondCommitBtn methodNames_constriant:methodNames_setCommitButtonWidth()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:_varNames_secondCommitBtn methodNames_constriant:methodNames_setCommitButtonHeight()];
    
    
    self.varNames_topMarginValue -= methodNames_setMargin_2base();
    [ClassNames_BaseViewLayout methodNames_layoutTop:_varNames_secondCommitBtn methodNames_constriant:_varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:_varNames_secondCommitBtn methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:_varNames_secondCommitBtn methodNames_constriant:methodNames_setCommitButtonWidth()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:_varNames_secondCommitBtn methodNames_constriant:methodNames_setCommitButtonHeight()];
    
}

#pragma mark ---------- button Action
- (void)methodNames_firstCommitAction:(UIButton *)sender {
    if (self.methodNames_enterGame) {
        self.methodNames_enterGame();
    }
}

- (void)methodNames_secondCommitAction:(UIButton *)sender {
    if (self.methodNames_bindPhone) {
        self.methodNames_bindPhone();
    }
}

#pragma mark ---------- 保存图片
- (void)image:(UIImage*)image didFinishSavingWithError:(NSError*)error contextInfo:(void*)contextInfo{
    
    if(error) {
        [ClassNames_PGHubView methodNames_showErrorMessage:@"截图保存失败"];
        NSLog(@"保存截图失败");
    }else{
        [ClassNames_PGHubView methodNames_showSuccessMessage:@"已截图保存到手机相册"];
        NSLog(@"保存截图成功");
    }
}


@end
