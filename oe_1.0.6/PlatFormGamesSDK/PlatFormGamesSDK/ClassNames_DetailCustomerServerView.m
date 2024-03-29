//
//  ClassNames_DetailCustomerServerView.m
//  PlatFormGamesSDK
//
//  Created by lufee on 2022/8/10.
//  Copyright © 2022 TB. All rights reserved.
//

#import "ClassNames_DetailCustomerServerView.h"
#import "ClassNames_NavigationBarView.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_ViewTool.h"
#import "ClassNames_Color.h"
#import "ClassNames_PGHubView.h"

@interface ClassNames_DetailCustomerServerView()<UITextViewDelegate>

@property (nonatomic, readwrite, strong) ClassNames_NavigationBarView *varNames_naviView;

@property (nonatomic, readwrite, strong) UITextView *varNames_contentTextView;

@property (nonatomic, readwrite, assign) CGFloat varNames_topMarginValue;


@property (nonatomic, readwrite, strong) NSString *varNames_phone;

@property (nonatomic, readwrite, strong) NSString *varNames_qq;

@property (nonatomic, readwrite, strong) NSString *varNames_whNumber;

@end


@implementation ClassNames_DetailCustomerServerView

+(ClassNames_DetailCustomerServerView *)methodNames_showCustomServerView {
    ClassNames_DetailCustomerServerView *varNames_tmpServerView = [[ClassNames_DetailCustomerServerView alloc]init];
    varNames_tmpServerView.translatesAutoresizingMaskIntoConstraints = NO;
    [varNames_tmpServerView methodNames_showDetail];
    return varNames_tmpServerView;
}


-(instancetype)init {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.layer.cornerRadius = 15;
        [self methodNames_createUI];
    }
    return self;
}

- (void)methodNames_createUI {
    if (!self.varNames_naviView) {
        __weak typeof(self) weakSelf = self;
        ClassNames_NavigationBarView *varNames_tmpNaviView = [[ClassNames_NavigationBarView alloc]init];
        varNames_tmpNaviView.translatesAutoresizingMaskIntoConstraints = NO;
        [varNames_tmpNaviView methodNames_setTitle:@"客服"];
        [varNames_tmpNaviView methodNames_setRightButtonImage:@"image_close" rightTitle:@"" btnAction:^{
            if (weakSelf.methodNames_closeBlock) {
                weakSelf.methodNames_closeBlock();
            }
        }];
        self.varNames_naviView = varNames_tmpNaviView;
        [self addSubview:self.varNames_naviView];
    }
    
    
    self.varNames_contentTextView = [[UITextView alloc]init];
    self.varNames_contentTextView.delegate = self;
    self.varNames_contentTextView.editable = NO;
    self.varNames_contentTextView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:self.varNames_contentTextView];
    
    
    [self methodNames_layoutSubViews];
}


- (void)methodNames_layoutSubViews {
    self.varNames_topMarginValue = 0;
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_naviView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_naviView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_naviView methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_naviView methodNames_constriant:methodNames_setNavigationBarHeight()];
    
    self.varNames_topMarginValue += methodNames_setNavigationBarHeight();
    self.varNames_topMarginValue += methodNames_setMargin_2base();
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_contentTextView methodNames_constriant:self.varNames_topMarginValue];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_contentTextView methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_contentTextView methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_contentTextView methodNames_constriant:0];
}


- (void)methodNames_showDetail {
    
    self.varNames_qq = methodNames_getServerKouKou();
    self.varNames_whNumber = methodNames_getServerWchatName();
    
    
    NSString *varNames_firstLine = @"如果游戏内出现问题，可以联系客服QQ\n";
    NSString *varNames_secondLine = @"关注微信公众号，可以领取专属礼包码\n";
    NSString *varNames_thirdLine = @"在线客服: [call_me] \n";
    NSString *varNames_fourLine = [NSString stringWithFormat:@" image_qq QQ客服：%@ \t [copy_qq] \n", self.varNames_qq];
    NSString *varNames_fiveLine = [NSString stringWithFormat:@" image_message 微信公众号：%@ \t [copy_message] \n", self.varNames_whNumber];
    
    NSString *varNames_content = [NSString stringWithFormat:@"%@%@%@%@%@", varNames_firstLine, varNames_secondLine, varNames_thirdLine, varNames_fourLine, varNames_fiveLine];
    
    
    // 1、 配置共性的内容, 例如整体的字体，颜色，行距
    NSMutableParagraphStyle *varNames_paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    varNames_paragraphStyle.lineSpacing= 1;
    varNames_paragraphStyle.paragraphSpacing = methodNames_setMargin_3base();
    varNames_paragraphStyle.alignment = NSTextAlignmentLeft;
    NSDictionary *varNames_attDic = @{
        NSFontAttributeName: [UIFont systemFontOfSize:15],
        NSParagraphStyleAttributeName: varNames_paragraphStyle,
        NSForegroundColorAttributeName: [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_titleFontColor_config()]
    };
    NSMutableAttributedString *varNames_attString = [[NSMutableAttributedString alloc] initWithString:varNames_content attributes:varNames_attDic];
    
    // 2、配置特殊的颜色
    NSRange varNames_rangeQQ = [varNames_content rangeOfString:self.varNames_qq];
    [varNames_attString addAttributes:@{
            NSForegroundColorAttributeName: [UIColor redColor]
    } range:varNames_rangeQQ];
    NSRange varNames_rangeMessage = [varNames_content rangeOfString:self.varNames_whNumber];
    [varNames_attString addAttributes:@{
            NSForegroundColorAttributeName: [UIColor redColor]
    } range:varNames_rangeMessage];
    
    // 3、替换预设的内容为图片
    
    // 【联系客服】 的按钮
    UIImage *varNames_callServerImg = methodNames_getImage(@"image_callserver");
    NSRange varNames_rangeImgCall = [varNames_attString.string rangeOfString:@"[call_me]"];
    
    NSTextAttachment *icon = [[NSTextAttachment alloc] init];
    [icon setBounds:CGRectMake(0, roundf(18 - varNames_callServerImg.size.height)/2.f, varNames_callServerImg.size.width, varNames_callServerImg.size.height)];
    [icon setImage:varNames_callServerImg];
    NSAttributedString *iconString = [NSAttributedString attributedStringWithAttachment:icon];
    [varNames_attString replaceCharactersInRange:varNames_rangeImgCall withAttributedString:iconString];
    
    [varNames_attString addAttribute:NSLinkAttributeName value:@"callme://" range:varNames_rangeImgCall];
    
    
    
    // 创建 【复制】 的按钮
//    UIButton *varNames_copyBtn = [self methodNames_createTextButton:@"复制" frame:CGRectMake(0, 0, 60, 30)];
//    UIImage *varNames_copyImg  = methodNames_translateViewLayerToImage(varNames_copyBtn.layer, CGSizeMake(60, 35));
    
    UIImage *varNames_copyImg = methodNames_getImage(@"image_copy");
    NSRange varNames_rangeImgCopy = [varNames_attString.string rangeOfString:@"[copy_qq]"];
    NSTextAttachment *icon1 = [[NSTextAttachment alloc] init];
    [icon1 setBounds:CGRectMake(0, roundf(18 - varNames_copyImg.size.height)/2.f, varNames_copyImg.size.width, varNames_copyImg.size.height)];
    [icon1 setImage:varNames_copyImg];
    NSAttributedString *iconString1 = [NSAttributedString attributedStringWithAttachment:icon1];
    [varNames_attString replaceCharactersInRange:varNames_rangeImgCopy withAttributedString:iconString1];
    [varNames_attString addAttribute:NSLinkAttributeName value:@"copykoukou://" range:NSMakeRange(varNames_rangeImgCopy.location, 1)];
    
    NSRange varNames_rangeImgCopyM = [varNames_attString.string rangeOfString:@"[copy_message]"];
    NSTextAttachment *icon2 = [[NSTextAttachment alloc] init];
    [icon2 setBounds:CGRectMake(0, roundf(18 - varNames_copyImg.size.height)/2.f, varNames_copyImg.size.width, varNames_copyImg.size.height)];
    [icon2 setImage:varNames_copyImg];
    NSAttributedString *iconString2 = [NSAttributedString attributedStringWithAttachment:icon2];
    [varNames_attString replaceCharactersInRange:varNames_rangeImgCopyM withAttributedString:iconString2];
    [varNames_attString addAttribute:NSLinkAttributeName value:@"copywxmap://" range:NSMakeRange(varNames_rangeImgCopyM.location, 1)];
    
    
    NSString *varNames_stringQQ = @"image_qq";
    NSRange varNames_rangeImgQQ = [varNames_attString.string rangeOfString:varNames_stringQQ];
    UIImage *varNames_qqImage = methodNames_getImage(varNames_stringQQ);
    
    NSAttributedString *varNames_qqString = [self methodNames_replaceStringWithImage:varNames_qqImage size:CGSizeMake(varNames_qqImage.size.width/2.0, varNames_qqImage.size.height/2.0)];
    [varNames_attString replaceCharactersInRange:varNames_rangeImgQQ withAttributedString:varNames_qqString];
    
    
    NSString *varNames_stringMessage = @"image_message";
    UIImage *varNames_messageImg = methodNames_getImage(varNames_stringMessage);
    NSRange varNames_rangeImgMessage = [varNames_attString.string rangeOfString:varNames_stringMessage];
    NSAttributedString *varNames_msgString = [self methodNames_replaceStringWithImage:varNames_messageImg size:CGSizeMake(varNames_messageImg.size.width/2.0, varNames_messageImg.size.height/2.0)];
    [varNames_attString replaceCharactersInRange:varNames_rangeImgMessage withAttributedString:varNames_msgString];
    
    
    
    self.varNames_contentTextView.attributedText = varNames_attString;
}

- (NSAttributedString *)methodNames_replaceStringWithImage:(UIImage *)image size:(CGSize)img_size{
    
    /*
    You can use the capHeight of the font.

    Objective-C

    NSTextAttachment *icon = [[NSTextAttachment alloc] init];
    UIImage *iconImage = [UIImage imageNamed:@"icon.png"];
    [icon setBounds:CGRectMake(0, roundf(titleFont.capHeight - iconImage.size.height)/2.f, iconImage.size.width, iconImage.size.height)];
    [icon setImage:iconImage];
    NSAttributedString *iconString = [NSAttributedString attributedStringWithAttachment:icon];
    [titleText appendAttributedString:iconString];
    */
    
    
    NSTextAttachment *varNames_qqAttachment = [[NSTextAttachment alloc] init];
    varNames_qqAttachment.image = [UIImage imageWithCGImage:image.CGImage scale:1.0 orientation:UIImageOrientationUp];
    varNames_qqAttachment.bounds = CGRectMake(0, -img_size.width/4.0, img_size.width, img_size.width);
    NSAttributedString *varNames_imageString = [NSAttributedString attributedStringWithAttachment:varNames_qqAttachment];
    return varNames_imageString;
}


- (UIButton *)methodNames_createTextButton:(NSString *)varNames_title frame:(CGRect)frame{
    
    UIButton *varNames_btn = [[UIButton alloc]initWithFrame:frame];
    varNames_btn.layer.borderWidth = 1.0;
    varNames_btn.layer.cornerRadius = 4.5;
    varNames_btn.layer.borderColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()].CGColor;
    [varNames_btn setTitle:varNames_title forState:UIControlStateNormal];
    varNames_btn.titleLabel.font = [UIFont systemFontOfSize:12];
    [varNames_btn setTitleColor:[ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_themeColor_config()] forState:UIControlStateNormal];
    return varNames_btn;
}

#pragma mark 富文本点击事件
-(BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange {
    if ([[URL scheme] isEqualToString:@"callme"]) {
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        pasteboard.string = self.varNames_qq;
        [ClassNames_PGHubView methodNames_showSuccessMessage:@"打电话"];
    }
    if ([[URL scheme] isEqualToString:@"copykoukou"]) {
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        pasteboard.string = self.varNames_qq;
        [ClassNames_PGHubView methodNames_showSuccessMessage:@"复制成功！"];
    }
    if ([[URL scheme] isEqualToString:@"copywxmap"]) {
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        pasteboard.string = self.varNames_whNumber;
        [ClassNames_PGHubView methodNames_showSuccessMessage:@"复制成功！"];
    }
    return NO;
}


@end
