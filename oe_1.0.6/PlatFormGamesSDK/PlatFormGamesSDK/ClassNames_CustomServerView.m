


#import "ClassNames_CustomServerView.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_DeviceConfigure.h"
#import "ClassNames_Color.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_loadFileManager.h"
#import "ClassNames_PGHubView.h"


@interface ClassNames_CustomServerView()<UITextViewDelegate>

@property (nonatomic, readwrite, strong) UIImageView *varNames_logoImageView;

@property (nonatomic, readwrite, assign) CGFloat varNames_logoWidth;

@property (nonatomic, readwrite, assign) CGFloat varNames_logoHeight;

@property (nonatomic, readwrite, strong) UIButton *varNames_closeBtn;

@property (nonatomic, readwrite, assign) CGFloat varNames_closeWidth;

@property (nonatomic, readwrite, assign) CGFloat varNames_closeHeight;

@property (nonatomic, readwrite, strong) UITextView *varNames_contentTextView;


@property (nonatomic, readwrite, strong) NSString *varNames_qq;
@property (nonatomic, readwrite, strong) NSString *varNames_time;

@end


@implementation ClassNames_CustomServerView

+(ClassNames_CustomServerView *)methodNames_showCustomServerViewWithContentJson:(NSDictionary *)varNames_argDic {
    
    ClassNames_CustomServerView *varNames_tmpServerView = [[ClassNames_CustomServerView alloc]init];
    [varNames_tmpServerView methodNames_showContent:varNames_argDic];
    [varNames_tmpServerView setNeedsLayout];
    return varNames_tmpServerView;
}


- (void)methodNames_showContent:(NSDictionary *)varNames_argDic {
    
    self.varNames_qq = methodNames_getServerKouKou();
    self.varNames_time = methodNames_getServerTime();
    
    NSString *varNames_firstLine = @"如果您遇到什么问题，可以通过以下方式联系客服\n";
    NSString *varNames_qqImageText = @" [image_qq] ";
    NSString *varNames_secondLine = [NSString stringWithFormat:@"QQ客服：%@", self.varNames_qq];
    NSString *varNames_copyButtonText = @" [copy_button] \n";
    NSString *varNames_thirdLine = [NSString stringWithFormat:@"客服工作时间：%@\n", self.varNames_time];
    NSString *varNames_fourthLine = [NSString stringWithFormat:@"CUSTOMER SERVICE HOURS:%@\n", self.varNames_time];
    NSString *varNames_content = [NSString stringWithFormat:@"%@%@%@%@%@%@", varNames_firstLine, varNames_qqImageText, varNames_secondLine, varNames_copyButtonText, varNames_thirdLine, varNames_fourthLine];
    NSMutableParagraphStyle *varNames_paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    varNames_paragraphStyle.lineSpacing= 1;
    varNames_paragraphStyle.paragraphSpacing = methodNames_setMargin_3base();
    varNames_paragraphStyle.alignment = NSTextAlignmentCenter;
    NSDictionary *varNames_attDic = @{NSFontAttributeName:[UIFont systemFontOfSize:14],
                                NSParagraphStyleAttributeName:varNames_paragraphStyle};
    NSMutableAttributedString *varNames_attString = [[NSMutableAttributedString alloc] initWithString:varNames_content attributes:varNames_attDic];
    [varNames_attString addAttribute:NSForegroundColorAttributeName value:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_titleFontColor_config()] range:NSMakeRange(0,varNames_content.length)];
    [varNames_attString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:11] range:NSMakeRange(0,varNames_firstLine.length)];
    
    
    [varNames_attString addAttribute:NSLinkAttributeName value:@"copy://" range:NSMakeRange(varNames_firstLine.length+varNames_qqImageText.length+varNames_secondLine.length + 1,13)];
    
    
    [varNames_attString addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(varNames_firstLine.length+varNames_qqImageText.length+5,self.varNames_qq.length)];
    
    NSTextAttachment *varNames_qqAttachment = [[NSTextAttachment alloc] init];
    UIImage *varNames_qqImage = methodNames_getImage(@"image_qq");
    varNames_qqAttachment.image = [UIImage imageWithCGImage:varNames_qqImage.CGImage scale:2.0 orientation:UIImageOrientationUp];
    NSAttributedString *varNames_imageString = [NSAttributedString attributedStringWithAttachment:varNames_qqAttachment];
    [varNames_attString replaceCharactersInRange:NSMakeRange(varNames_firstLine.length + 1, 10) withAttributedString:varNames_imageString];
    
    // 复制qq号码 按钮
    UIButton *varNames_copyButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 70, 30)];
    varNames_copyButton.layer.borderWidth = 1.0;
    varNames_copyButton.layer.cornerRadius = 4.5;
    varNames_copyButton.layer.borderColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()].CGColor;
    [varNames_copyButton setTitle:@"复制qq号" forState:UIControlStateNormal];
    varNames_copyButton.titleLabel.font = [UIFont systemFontOfSize:12];
    [varNames_copyButton setTitleColor:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()] forState:UIControlStateNormal];
    UIImage *varNames_btnImg = [self methodNames_translateLayerToImage:varNames_copyButton.layer];
    
    NSTextAttachment *varNames_btnAttachment = [[NSTextAttachment alloc] init];
    varNames_btnAttachment.image = [UIImage imageWithCGImage:varNames_btnImg.CGImage scale:1.0 orientation:UIImageOrientationUp];
    NSMutableAttributedString *varNames_btnString = [[NSMutableAttributedString alloc] initWithAttributedString:[NSAttributedString attributedStringWithAttachment:varNames_btnAttachment]];
//    NSMutableAttributedString *varNames_btnString = [NSAttributedString attributedStringWithAttachment:varNames_btnAttachment];
    
    [varNames_btnString addAttribute:NSLinkAttributeName value:@"copy://" range:NSMakeRange(0,1)];
    [varNames_attString replaceCharactersInRange:NSMakeRange(varNames_firstLine.length + 3 + varNames_secondLine.length + 1, 13) withAttributedString:varNames_btnString];
    
    
    // 工作时间 标红色
    [varNames_attString addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(varNames_firstLine.length + 3 + varNames_secondLine.length + 4 + 7,self.varNames_time.length)];
    [varNames_attString addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(varNames_firstLine.length + 3 +varNames_secondLine.length + 4 + varNames_thirdLine.length + 23,self.varNames_time.length)];
    
    
    
    self.varNames_contentTextView.attributedText= varNames_attString;
    //设置被点击字体颜色
    self.varNames_contentTextView.linkTextAttributes = @{NSForegroundColorAttributeName:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()]};
}

- (UIImage *)methodNames_translateLayerToImage:(CALayer *)varNames_layer {
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(70, 30), 0, 1);
    [varNames_layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *varNames_img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return varNames_img;
}
#pragma mark 富文本点击事件
-(BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange {
    if ([[URL scheme] isEqualToString:@"copy"]) {
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        pasteboard.string = self.varNames_qq;
        [ClassNames_PGHubView methodNames_showSuccessMessage:@"复制成功!"];
    }
    return NO;
}

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor whiteColor];
        
        self.translatesAutoresizingMaskIntoConstraints = NO;
        [self methodNames_setNavi];
        self.varNames_contentTextView = [[UITextView alloc]init];
        self.varNames_contentTextView.delegate = self;
        self.varNames_contentTextView.editable = NO;
        self.varNames_contentTextView.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:self.varNames_contentTextView];
        [self methodNames_layoutView];
        
    }
    return self;
}

- (void)methodNames_layoutView {
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_logoImageView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_logoImageView methodNames_constriant:methodNames_setMargin_2base()];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_logoImageView methodNames_constriant:self.varNames_logoWidth];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_logoImageView methodNames_constriant:self.varNames_logoHeight];
    
    
    [ClassNames_BaseViewLayout methodNames_layoutSubView1:self.varNames_closeBtn methodNames_attribute1:NSLayoutAttributeCenterY methodNames_layoutSubView2:self.varNames_logoImageView methodNames_attribute2:NSLayoutAttributeCenterY methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_closeBtn methodNames_constriant:methodNames_setMargin_2base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_closeBtn methodNames_constriant:self.varNames_closeHeight];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_closeBtn methodNames_constriant:self.varNames_closeWidth];
    
    [ClassNames_BaseViewLayout methodNames_layoutSubView1:self.varNames_contentTextView methodNames_attribute1:NSLayoutAttributeTop methodNames_layoutSubView2:self.varNames_logoImageView methodNames_attribute2:NSLayoutAttributeBottom methodNames_constriant:methodNames_setMargin_2base()];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_contentTextView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_contentTextView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_contentTextView methodNames_constriant:0];
}


- (void)methodNames_setNavi {
    
    UIImageView *varNames_logoImageView = [[UIImageView alloc]init];
    varNames_logoImageView.translatesAutoresizingMaskIntoConstraints = NO;
    UIImage *varNames_logoImage = methodNames_getImage(@"image_logo");
    self.varNames_logoWidth = varNames_logoImage.size.width/2.0;
    self.varNames_logoHeight = varNames_logoImage.size.height/2.0;
    varNames_logoImageView.image = varNames_logoImage;
    self.varNames_logoImageView = varNames_logoImageView;
    
    UIButton *varNames_tmpCloseBtn = [[UIButton alloc]init];
    varNames_tmpCloseBtn.translatesAutoresizingMaskIntoConstraints = NO;
    UIImage *varNames_closeImage = methodNames_getImage(@"image_close");
    self.varNames_closeWidth = varNames_closeImage.size.width/2.0;
    self.varNames_closeHeight = varNames_closeImage.size.height/2.0;
    [varNames_tmpCloseBtn setBackgroundImage:methodNames_getImage(@"image_close") forState:UIControlStateNormal];
    [varNames_tmpCloseBtn addTarget:self action:@selector(methodNames_closeAction:) forControlEvents:UIControlEventTouchUpInside];
    self.varNames_closeBtn = varNames_tmpCloseBtn;
    
    
    [self addSubview:varNames_logoImageView];
    [self addSubview:varNames_tmpCloseBtn];
    
}
- (void)methodNames_closeAction:(UIButton *)sender {
    
    
    if (self.methodNames_closeBlock) {
        self.hidden = YES;
        self.methodNames_closeBlock();
    }
    
//    [UIView animateWithDuration:0.2 animations:^{
//        [weakSelf setFrame:CGRectMake(0, methodNames_getScreenHeight(), methodNames_getScreenWidth(), methodNames_getScreenHeight())];
//    } completion:^(BOOL finished) {
//        [weakSelf removeFromSuperview];
//
//    }];
}
@end
