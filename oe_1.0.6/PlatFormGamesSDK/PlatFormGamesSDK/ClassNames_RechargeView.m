

#import "ClassNames_RechargeView.h"
#import <WebKit/WebKit.h>
#import <WebKit/WKWebView.h>
#import "ClassNames_PGHubView.h"
#import "ClassNames_Color.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_NotificationConfigure.h"

#import "ClassNames_loadFileManager.h"
@interface ClassNames_RechargeView ()

@property (nonatomic, readwrite, copy) NSString *varNames_url;
@property (nonatomic, readwrite, strong) NSDictionary *varNames_ipaPayDict;
@property (nonatomic, readwrite, copy) void (^methodNames_applePay)(void);

@end


@interface ClassNames_RechargeView()<WKNavigationDelegate, WKUIDelegate, WKScriptMessageHandler>
@property (nonatomic, readwrite, strong) UIView *varNames_statusNaviView;

@property (nonatomic, readwrite, strong) UIView *varNames_lineView;

@property (nonatomic, readwrite, strong) UILabel *varNames_titleLabel;

@property (nonatomic, readwrite, strong) UIButton *varNames_closeBtn;

@property (nonatomic, readwrite, strong) WKWebView *varNames_webView;

@property (nonatomic, readwrite, strong) NSLayoutConstraint *varNames_topConstraint;

@property (nonatomic, readwrite, assign) CGFloat varNames_statusHeight;

@property (nonatomic, copy) void(^openComplete)(NSString *string,BOOL status);

@end

@implementation ClassNames_RechargeView
-(void)dealloc {
    
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

+(instancetype)methodNames_showPayWebViewWithURL:(NSString *)url {
    ClassNames_RechargeView *payView = [[ClassNames_RechargeView alloc]init];
    payView.translatesAutoresizingMaskIntoConstraints = NO;
    [payView.varNames_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    payView.varNames_url = url;
    UIWindow *window = [[UIApplication sharedApplication]keyWindow];
    [window addSubview:payView];
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:payView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:payView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:payView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:payView methodNames_constriant:0];
    
    [payView setNeedsLayout];
    
    return payView;
}

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(methodNames_endPay:) name:varNames_appleResultNoti object:nil];
        
        [self methodNames_setNavi];
        
        
        WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
        configuration.userContentController = [WKUserContentController new];
        configuration.userContentController = [[WKUserContentController alloc] init];
        WKPreferences *preferences = [WKPreferences new];
        preferences.javaScriptCanOpenWindowsAutomatically = YES;
        preferences.minimumFontSize = 10.0;
        configuration.preferences = preferences;
        self.varNames_webView = [[WKWebView alloc] initWithFrame:self.bounds configuration:configuration];
        self.varNames_webView.translatesAutoresizingMaskIntoConstraints = NO;
        self.varNames_webView.navigationDelegate = self;
        self.varNames_webView.UIDelegate = self;
        [self addSubview:self.varNames_webView];
        dispatch_async(dispatch_get_main_queue(), ^{
            [ClassNames_PGHubView methodNames_showIndicator];
        });
        if (self.varNames_url.length) {
            [self.varNames_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.varNames_url]]];
        }
    }
    return self;
}

- (void)methodNames_layoutWebView {
    
    
    
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_webView methodNames_constriant:44 + CGRectGetHeight([[UIApplication sharedApplication] statusBarFrame])];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_webView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_webView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_webView methodNames_constriant:0];
    
}

-(void)layoutSubviews {
    [super layoutSubviews];
    [self methodNames_layoutView];
}

- (void)methodNames_layoutView {
    
    [ClassNames_BaseViewLayout methodNames_layoutTop:self.varNames_statusNaviView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_statusNaviView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_statusNaviView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_statusNaviView methodNames_constriant:44 + CGRectGetHeight([[UIApplication sharedApplication] statusBarFrame])];
    
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_titleLabel methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutCenterX:self.varNames_titleLabel methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_titleLabel methodNames_constriant:44];
    
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_closeBtn methodNames_constriant:25];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_closeBtn methodNames_constriant:35];
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_closeBtn methodNames_constriant:35];
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_closeBtn methodNames_constriant:5];
    
    [ClassNames_BaseViewLayout methodNames_layoutBottom:self.varNames_lineView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_lineView methodNames_constriant:1];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_lineView methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_lineView methodNames_constriant:0];
    
    [self methodNames_layoutWebView];
}

- (void)methodNames_setNavi {
    
    UIView *varNames_tmpstatusNaviView = [[UIView alloc]init];
    varNames_tmpstatusNaviView.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpstatusNaviView.backgroundColor = [UIColor whiteColor];
    self.varNames_statusNaviView = varNames_tmpstatusNaviView;
    
    UIView *varNames_tmpLineView = [[UIView alloc]init];
    varNames_tmpLineView.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpLineView.backgroundColor = [UIColor grayColor];
    self.varNames_lineView = varNames_tmpLineView;
    
    UILabel *varNames_tmpTitleLabel = [[UILabel alloc]init];
    varNames_tmpTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpTitleLabel.textColor = [UIColor blackColor];
    varNames_tmpTitleLabel.font = [UIFont boldSystemFontOfSize:17];
    varNames_tmpTitleLabel.textAlignment = NSTextAlignmentCenter;
    self.varNames_titleLabel = varNames_tmpTitleLabel;
    
    UIButton *varNames_tmpCloseBtn = [[UIButton alloc]init];
    varNames_tmpCloseBtn.translatesAutoresizingMaskIntoConstraints = NO;
    
    [varNames_tmpCloseBtn setBackgroundImage:[[ClassNames_loadFileManager shareLoadFileManager]methodNames_getImage:@"image_closeview"] forState:UIControlStateNormal];
    [varNames_tmpCloseBtn addTarget:self action:@selector(methodNames_closeAction:) forControlEvents:UIControlEventTouchUpInside];
    self.varNames_closeBtn = varNames_tmpCloseBtn;
    
    [varNames_tmpstatusNaviView addSubview:varNames_tmpTitleLabel];
    [varNames_tmpstatusNaviView addSubview:varNames_tmpCloseBtn];
    [varNames_tmpstatusNaviView addSubview:varNames_tmpLineView];
    [self addSubview:varNames_tmpstatusNaviView];
}

- (void)methodNames_closeAction:(UIButton *)sender {
    __weak typeof(self) weakSelf = self;
    [UIView animateWithDuration:0.2 animations:^{
        
        [weakSelf setFrame:CGRectMake(0, CGRectGetHeight([UIScreen mainScreen].bounds), CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetHeight([UIScreen mainScreen].bounds))];
        
    } completion:^(BOOL finished) {
        [weakSelf removeFromSuperview];
        
    }];
}

- (void)methodNames_setTitle:(NSString *)varNames_argtitle {
    self.varNames_titleLabel.text = varNames_argtitle;
}

#pragma mark ---------- 接受通知执行的方法
- (void)methodNames_endPay:(NSNotification *)noti {
    __weak typeof(self) weakSelf = self;
    dispatch_after(0.3, dispatch_get_main_queue(), ^{
        [UIView animateWithDuration:0.2 animations:^{
            [weakSelf setFrame:CGRectMake(0, CGRectGetHeight([UIScreen mainScreen].bounds), CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetHeight([UIScreen mainScreen].bounds))];
        }];
    });
}


#pragma mark ----------------------
#pragma mark UIWebViewDelegate
//这个是网页加载完成，导航的变化
-(void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    dispatch_async(dispatch_get_main_queue(), ^{
        [ClassNames_PGHubView methodNames_hide];
    });
    //    NSLog(@"didFinishNavigation");
    
}

//开始加载
-(void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{
    //    NSLog(@"didStartProvisionalNavigation");
}

//内容返回时调用
-(void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{
    //    NSLog(@"didCommitNavigation");
}

//服务器请求跳转的时候调用
-(void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(WKNavigation *)navigation{
    //    NSLog(@"服务器请求跳转的时候调用");
}

//服务器开始请求的时候调用
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {
    
    NSString *varNames_tmpmobileUrl = [[navigationAction.request URL] absoluteString];
    if ([varNames_tmpmobileUrl hasPrefix:@"http://"] || [varNames_tmpmobileUrl hasPrefix:@"https://"]) {
        
    } else {
        [self methodNames_open:varNames_tmpmobileUrl];
    }
    decisionHandler(WKNavigationActionPolicyAllow);
}

- (void)methodNames_open:(NSString *)varNames_argUrl {
    if (@available(iOS 10.0, *)) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:varNames_argUrl]
                                           options:[NSDictionary dictionary]
                                 completionHandler:nil];
    } else {
        // Fallback on earlier versions
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:varNames_argUrl]];
    }
}

// 内容加载失败时候调用
-(void)webView:(WKWebView *)webView didFailProvisionalNavigation:(WKNavigation *)navigation withError:(NSError *)error{
    NSLog(@"页面加载超时:%@", webView.URL);
    dispatch_async(dispatch_get_main_queue(), ^{
        [ClassNames_PGHubView methodNames_hide];
    });
}

//跳转失败的时候调用
-(void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation withError:(NSError *)error{
    NSLog(@"跳转失败的时候调用");
}

//进度条
-(void)webViewWebContentProcessDidTerminate:(WKWebView *)webView{
    NSLog(@"进度");
}
@end
