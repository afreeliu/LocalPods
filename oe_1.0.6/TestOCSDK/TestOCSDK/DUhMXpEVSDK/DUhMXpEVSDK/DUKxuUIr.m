

#import "DUKxuUIr.h"
#import <WebKit/WebKit.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import "DUAaXhHMroqv.h"
#import "DUTClpoG.h"
#import "DUyUrAEagzMZ.h"
#import "DUGcbRnKpJlPkyoY.h"
#import "DULCiQqMJAk.h"
#import "DUjHPamSNKWkfM.h"
#import "DUIBriUTudq.h"
#import "DUMsxKfgyw.h"
#import "DUqEONnQKwFro.h"
#import "DUJwXyISMdzCUh.h"
#import "DUmZjChQNHcbXvD.h"

#import "DUmZjChQNHcbXvD.h"

@interface DUKxuUIr ()<UIWebViewDelegate>

@property (nonatomic, readwrite, strong) UIView *eUPGLaQgHBfDJ;

@property (nonatomic, readwrite, strong) DUTClpoG *ejbLMRwQ;

@property (nonatomic, readwrite, strong) UIWebView *eycPaMeNjd;


@property (nonatomic, readwrite, strong) NSLayoutConstraint *eVHmjcTv;

@property (nonatomic, readwrite, assign) CGFloat egMlnefWzd;

@property (nonatomic, copy) void(^openComplete)(NSString *string,BOOL status);

@end

@implementation DUKxuUIr

-(void)dealloc {
    
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

+(instancetype)kcTHZmNMzJuvjBa:(NSString *)url {
    DUKxuUIr *payView = [[DUKxuUIr alloc]init];
    payView.translatesAutoresizingMaskIntoConstraints = NO;
    [payView.eycPaMeNjd loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    payView.eipZbkWcqlRm = url;
    
    
    UIWindow *window = kOjcdzAgI();
    [window addSubview:payView];
    [DUjHPamSNKWkfM khXiHKlJYIcsWTb:payView kjwoMfYHX:0];
    [DUjHPamSNKWkfM kcNCfuJpSgtid:payView kjwoMfYHX:0];
    [DUjHPamSNKWkfM kKvyLhTYV:payView kjwoMfYHX:0];
    [DUjHPamSNKWkfM kdMvtuRCVqTon:payView kjwoMfYHX:0];
    
    [payView setNeedsLayout];
    
    return payView;
}

+(instancetype)koskHQJnAiBFPWithURL:(NSString *)url {
    
    DUKxuUIr *payView = [[DUKxuUIr alloc]init];
    payView.translatesAutoresizingMaskIntoConstraints = NO;
    [payView.eycPaMeNjd loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    payView.eipZbkWcqlRm = url;
    [payView.ejbLMRwQ kCjesSHmKLtngYb:@"用户协议" leftItems:@[@"返回"] rightItems:@[]];
    UIWindow *window = kOjcdzAgI();
    [window addSubview:payView];
    
    [DUjHPamSNKWkfM khXiHKlJYIcsWTb:payView kjwoMfYHX:0];
    [DUjHPamSNKWkfM kcNCfuJpSgtid:payView kjwoMfYHX:0];
    [DUjHPamSNKWkfM kKvyLhTYV:payView kjwoMfYHX:0];
    [DUjHPamSNKWkfM kdMvtuRCVqTon:payView kjwoMfYHX:0];
    [payView setNeedsLayout];
    return payView;
}


-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(kbyElBMOzwVZrdJ:) name:eqFBhKwLo object:nil];
        
        [self kuRXnedAYfSi];
        [self addSubview:self.eycPaMeNjd];
        dispatch_async(dispatch_get_main_queue(), ^{
            [DUyUrAEagzMZ kdSzeClsBhOtZIYxIndicatorWithTitlte:@"加载中..."];
        });
        if (self.eipZbkWcqlRm.length) {
            [self.eycPaMeNjd loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.eipZbkWcqlRm]]];
        }
    }
    return self;
}

- (void)kEGpRDLNsj {
    
    [DUjHPamSNKWkfM khXiHKlJYIcsWTb:self.eycPaMeNjd kjwoMfYHX:self.egMlnefWzd + kAHqXWKaSlL()];
    [DUjHPamSNKWkfM kcNCfuJpSgtid:self.eycPaMeNjd kjwoMfYHX:0];
    [DUjHPamSNKWkfM kdMvtuRCVqTon:self.eycPaMeNjd kjwoMfYHX:0];
    [DUjHPamSNKWkfM kKvyLhTYV:self.eycPaMeNjd kjwoMfYHX:0];
    
}

-(void)layoutSubviews {
    [super layoutSubviews];
    self.egMlnefWzd = 0;
    if (kOfnBPLtvXKJYDT() == 1 || kOfnBPLtvXKJYDT() == 2) {
        self.egMlnefWzd = 20;
        if ([kiDdoFwSNbfKBsr() isEqualToString:@"iPhone_X"]) {
            self.egMlnefWzd = 44;
        }
    }
    [self klQwztMGYCXjubh];
}

- (void)klQwztMGYCXjubh {
    
    [DUjHPamSNKWkfM khXiHKlJYIcsWTb:self.eUPGLaQgHBfDJ kjwoMfYHX:0];
    [DUjHPamSNKWkfM kcNCfuJpSgtid:self.eUPGLaQgHBfDJ kjwoMfYHX:0];
    [DUjHPamSNKWkfM kdMvtuRCVqTon:self.eUPGLaQgHBfDJ kjwoMfYHX:0];
    [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:self.eUPGLaQgHBfDJ kjwoMfYHX:self.egMlnefWzd];
    
    [DUjHPamSNKWkfM khXiHKlJYIcsWTb:self.ejbLMRwQ kjwoMfYHX:self.egMlnefWzd];
    [DUjHPamSNKWkfM kcNCfuJpSgtid:self.ejbLMRwQ kjwoMfYHX:0];
    [DUjHPamSNKWkfM kdMvtuRCVqTon:self.ejbLMRwQ kjwoMfYHX:0];
    [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:self.ejbLMRwQ kjwoMfYHX:kAHqXWKaSlL()];
    
    
    [self kEGpRDLNsj];
}

- (void)kuRXnedAYfSi {
    __weak typeof(self) weakSelf = self;
    self.egMlnefWzd = 0;
    
    if (kOfnBPLtvXKJYDT() == 1 || kOfnBPLtvXKJYDT() == 2) {
        self.egMlnefWzd = 20;
        if ([kiDdoFwSNbfKBsr() isEqualToString:@"iPhone_X"]) {
            self.egMlnefWzd = 44;
        }
    }
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    self.eUPGLaQgHBfDJ = view;
    [self addSubview:view];
    
    
    DUTClpoG *navigationBar =  [[DUTClpoG alloc]init];
    navigationBar.kvABkErUSyh = ^(NSInteger tag) {
        
        [UIView animateWithDuration:0.2 animations:^{
            [weakSelf setFrame:CGRectMake(0, kZkBLDYhsTvqnS(), kowSicjDdCrROfnE(), kZkBLDYhsTvqnS())];
        } completion:^(BOOL finished) {
            [weakSelf removeFromSuperview];
            
        }];
    };
    navigationBar.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:navigationBar];
    self.ejbLMRwQ = navigationBar;
    [self.ejbLMRwQ kCjesSHmKLtngYb:@"充值中心" leftItems:@[@"返回"] rightItems:@[]];
}


#pragma mark ---------- 接受通知执行的方法
- (void)kbyElBMOzwVZrdJ:(NSNotification *)noti {
    __weak typeof(self) weakSelf = self;
    dispatch_after(0.3, dispatch_get_main_queue(), ^{
        [UIView animateWithDuration:0.2 animations:^{
            [weakSelf setFrame:CGRectMake(0, kZkBLDYhsTvqnS(), kowSicjDdCrROfnE(), kZkBLDYhsTvqnS())];
        }];
    });
}


#pragma mark ----------------------
#pragma mark UIWebViewDelegate

//即将加载某个请求的时候调用
-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSString *absoluteString = request.URL.absoluteString;
    
    if ([self isOpenAppSpecialURLValue:absoluteString]) {
        //空白地址就直接返回不执行加载
        if ([absoluteString hasPrefix:@"about:blank"]) {
            return NO;
        }
        __weak typeof(self) weakSelf = self;
        [[self class] openURL:request.URL complete:^(BOOL status) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [UIView animateWithDuration:0.2 animations:^{
                    [weakSelf setFrame:CGRectMake(0, -kZkBLDYhsTvqnS(), kowSicjDdCrROfnE(), kZkBLDYhsTvqnS())];
                } completion:^(BOOL finished) {
                    [weakSelf removeFromSuperview];
                    
                }];
            });
            if (self.openComplete) {
                
                weakSelf.openComplete(absoluteString, status);
                
            }
        }];
        return NO;
    }
    
    return YES;
}

//1.开始加载网页的时候调用
-(void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"start");
}

//2.加载完成的时候调用
-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"finish");
    dispatch_async(dispatch_get_main_queue(), ^{
        [DUyUrAEagzMZ kmBSjbQ];
    });
    JSContext *context = [_eycPaMeNjd valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    
    context[@"applePay"] = ^() {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (self.kSwHrjTcmkhNQo) {
                self.kSwHrjTcmkhNQo();
            }
            kXQPAZNUwrm(eqFBhKwLo, nil, nil);
        });
    };
    
    context[@"openSafari"] = ^() {
        NSArray *args = [JSContext currentArguments];
        for (id obj in args) {
            __block NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@",obj]];
            dispatch_async(dispatch_get_main_queue(), ^{
                [[UIApplication sharedApplication] openURL:url];
            });
        }
    };
    
    __weak typeof(self) weakSelf = self;
    context[@"closeWeb"] = ^() {
        dispatch_async(dispatch_get_main_queue(), ^{
            [UIView animateWithDuration:0.2 animations:^{
                [weakSelf setFrame:CGRectMake(0, -kZkBLDYhsTvqnS(), kowSicjDdCrROfnE(), kZkBLDYhsTvqnS())];
            } completion:^(BOOL finished) {
                [weakSelf removeFromSuperview];
                
            }];
        });
    };
    
    context[@"closewebview"] = ^() {
        dispatch_async(dispatch_get_main_queue(), ^{
            kXQPAZNUwrm(eqFBhKwLo, nil, nil);
        });
    };
}

//3.加载失败的时候调用
-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"failure");
    dispatch_async(dispatch_get_main_queue(), ^{
        [DUyUrAEagzMZ kmBSjbQ];
    });
}

#pragma mark - Private Method
+ (void)openURL:(NSURL *)object complete:(void(^)(BOOL))complete {
    UIApplication *application = nil;
    application = [UIApplication sharedApplication];
    SEL selector = @selector(openURL:options:completionHandler:);
    if ([UIApplication instancesRespondToSelector:selector]) {
#ifdef __IPHONE_10_0
        [application openURL:object
                     options:[NSDictionary dictionary]
           completionHandler:complete];
#else
        if (complete) {
            complete([application openURL:object]);
        }
#endif
    } else {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        if (complete) {
            complete([application openURL:object]);
        }
#pragma clang diagnostic pop
    }
}



- (BOOL)isOpenAppSpecialURLValue:(NSString *)string {
    if ([string hasPrefix:@"http://"]) {
        return NO;
    } else if ([string hasPrefix:@"https://"]) {
        return NO;
    }
    return YES;
}



-(UIWebView *)eycPaMeNjd {
    if (!_eycPaMeNjd) {
        _eycPaMeNjd = [[UIWebView alloc]init];
        _eycPaMeNjd.translatesAutoresizingMaskIntoConstraints = NO;
        _eycPaMeNjd.delegate = self;
    }
    return _eycPaMeNjd;
}

@end
