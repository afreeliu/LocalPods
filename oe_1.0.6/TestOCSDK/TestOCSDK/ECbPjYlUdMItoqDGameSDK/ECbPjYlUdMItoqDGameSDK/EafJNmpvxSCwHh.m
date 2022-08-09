

#import "EafJNmpvxSCwHh.h"
#import <WebKit/WebKit.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import "EXlNnwRDGEsF.h"
#import "EfUYsVAp.h"
#import "EGuXiaQqj.h"
#import "EfKgqPeJzFs.h"
#import "EYMhnmstjq.h"
#import "EmKtBeFuqi.h"
#import "EDqxoOtgPanuMV.h"
#import "EarLRky.h"
#import "EKEGsDfJRoQ.h"
#import "EjSOyeZQGuaogMV.h"
#import "EUpQnPOJm.h"

#import "EUpQnPOJm.h"

@interface EafJNmpvxSCwHh ()<UIWebViewDelegate>

@property (nonatomic, readwrite, strong) UIView *edCaQsBicnkyKt;

@property (nonatomic, readwrite, strong) EfUYsVAp *eLhpBkd;

@property (nonatomic, readwrite, strong) UIWebView *eocKeNW;


@property (nonatomic, readwrite, strong) NSLayoutConstraint *eMndrJLERoNWha;

@property (nonatomic, readwrite, assign) CGFloat ewmBVksuopQxNJjO;

@property (nonatomic, copy) void(^openComplete)(NSString *string,BOOL status);

@end

@implementation EafJNmpvxSCwHh

-(void)dealloc {
    
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

+(instancetype)nJVrDAcpuRWTMdbLPayWebViewWithURL:(NSString *)url {
    EafJNmpvxSCwHh *payView = [[EafJNmpvxSCwHh alloc]init];
    payView.translatesAutoresizingMaskIntoConstraints = NO;
    [payView.eocKeNW loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    payView.etiBSOuXD = url;
    
    
    UIWindow *window = nLyAxbKV();
    [window addSubview:payView];
    [EmKtBeFuqi nmlcLxvfi:payView naigAGwYRNfBte:0];
    [EmKtBeFuqi nGTVpsCaIbgQwO:payView naigAGwYRNfBte:0];
    [EmKtBeFuqi nWcbUXozlk:payView naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:payView naigAGwYRNfBte:0];
    
    [payView setNeedsLayout];
    
    return payView;
}

+(instancetype)nDWBQJZFMcpHWithURL:(NSString *)url {
    
    EafJNmpvxSCwHh *payView = [[EafJNmpvxSCwHh alloc]init];
    payView.translatesAutoresizingMaskIntoConstraints = NO;
    [payView.eocKeNW loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    payView.etiBSOuXD = url;
    [payView.eLhpBkd nPsdTkcNr:@"用户协议" leftItems:@[@"返回"] rightItems:@[]];
    UIWindow *window = nLyAxbKV();
    [window addSubview:payView];
    
    [EmKtBeFuqi nmlcLxvfi:payView naigAGwYRNfBte:0];
    [EmKtBeFuqi nGTVpsCaIbgQwO:payView naigAGwYRNfBte:0];
    [EmKtBeFuqi nWcbUXozlk:payView naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:payView naigAGwYRNfBte:0];
    [payView setNeedsLayout];
    return payView;
}


-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(npjRhofJPxzueiVH:) name:etjCufzxWRhH object:nil];
        
        [self nsnzrdyZRfoPKmIx];
        [self addSubview:self.eocKeNW];
        dispatch_async(dispatch_get_main_queue(), ^{
            [EGuXiaQqj nJVrDAcpuRWTMdbLIndicatorWithTitlte:@"加载中..."];
        });
        if (self.etiBSOuXD.length) {
            [self.eocKeNW loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.etiBSOuXD]]];
        }
    }
    return self;
}

- (void)natOdkSsCmDYihMX {
    
    [EmKtBeFuqi nmlcLxvfi:self.eocKeNW naigAGwYRNfBte:self.ewmBVksuopQxNJjO + nsnzrdyZRfoPKmIxgationBarHeight()];
    [EmKtBeFuqi nGTVpsCaIbgQwO:self.eocKeNW naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:self.eocKeNW naigAGwYRNfBte:0];
    [EmKtBeFuqi nWcbUXozlk:self.eocKeNW naigAGwYRNfBte:0];
    
}

-(void)layoutSubviews {
    [super layoutSubviews];
    self.ewmBVksuopQxNJjO = 0;
    if (nHZIaKTONAVbiSsw() == 1 || nHZIaKTONAVbiSsw() == 2) {
        self.ewmBVksuopQxNJjO = 20;
        if ([nEkIRHtqFADMVg() isEqualToString:@"iPhone_X"]) {
            self.ewmBVksuopQxNJjO = 44;
        }
    }
    [self nWlTretHX];
}

- (void)nWlTretHX {
    
    [EmKtBeFuqi nmlcLxvfi:self.edCaQsBicnkyKt naigAGwYRNfBte:0];
    [EmKtBeFuqi nGTVpsCaIbgQwO:self.edCaQsBicnkyKt naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:self.edCaQsBicnkyKt naigAGwYRNfBte:0];
    [EmKtBeFuqi ntIjPqxLTDs:self.edCaQsBicnkyKt naigAGwYRNfBte:self.ewmBVksuopQxNJjO];
    
    [EmKtBeFuqi nmlcLxvfi:self.eLhpBkd naigAGwYRNfBte:self.ewmBVksuopQxNJjO];
    [EmKtBeFuqi nGTVpsCaIbgQwO:self.eLhpBkd naigAGwYRNfBte:0];
    [EmKtBeFuqi nLRCtGMFQZAYsc:self.eLhpBkd naigAGwYRNfBte:0];
    [EmKtBeFuqi ntIjPqxLTDs:self.eLhpBkd naigAGwYRNfBte:nsnzrdyZRfoPKmIxgationBarHeight()];
    
    
    [self natOdkSsCmDYihMX];
}

- (void)nsnzrdyZRfoPKmIx {
    __weak typeof(self) weakSelf = self;
    self.ewmBVksuopQxNJjO = 0;
    
    if (nHZIaKTONAVbiSsw() == 1 || nHZIaKTONAVbiSsw() == 2) {
        self.ewmBVksuopQxNJjO = 20;
        if ([nEkIRHtqFADMVg() isEqualToString:@"iPhone_X"]) {
            self.ewmBVksuopQxNJjO = 44;
        }
    }
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    self.edCaQsBicnkyKt = view;
    [self addSubview:view];
    
    
    EfUYsVAp *navigationBar =  [[EfUYsVAp alloc]init];
    navigationBar.nscSoAxzknMb = ^(NSInteger tag) {
        
        [UIView animateWithDuration:0.2 animations:^{
            [weakSelf setFrame:CGRectMake(0, nXgiTSk(), nkzbPtcTEMQdGayw(), nXgiTSk())];
        } completion:^(BOOL finished) {
            [weakSelf removeFromSuperview];
            
        }];
    };
    navigationBar.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:navigationBar];
    self.eLhpBkd = navigationBar;
    [self.eLhpBkd nPsdTkcNr:@"充值中心" leftItems:@[@"返回"] rightItems:@[]];
}


#pragma mark ---------- 接受通知执行的方法
- (void)npjRhofJPxzueiVH:(NSNotification *)noti {
    __weak typeof(self) weakSelf = self;
    dispatch_after(0.3, dispatch_get_main_queue(), ^{
        [UIView animateWithDuration:0.2 animations:^{
            [weakSelf setFrame:CGRectMake(0, nXgiTSk(), nkzbPtcTEMQdGayw(), nXgiTSk())];
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
                    [weakSelf setFrame:CGRectMake(0, -nXgiTSk(), nkzbPtcTEMQdGayw(), nXgiTSk())];
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
        [EGuXiaQqj nPjHvlQfar];
    });
    JSContext *context = [_eocKeNW valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    
    context[@"applePay"] = ^() {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (self.ncKYjrGgauUsQfMP) {
                self.ncKYjrGgauUsQfMP();
            }
            nQPXLfIKevpyzFVH(etjCufzxWRhH, nil, nil);
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
                [weakSelf setFrame:CGRectMake(0, -nXgiTSk(), nkzbPtcTEMQdGayw(), nXgiTSk())];
            } completion:^(BOOL finished) {
                [weakSelf removeFromSuperview];
                
            }];
        });
    };
    
    context[@"closewebview"] = ^() {
        dispatch_async(dispatch_get_main_queue(), ^{
            nQPXLfIKevpyzFVH(etjCufzxWRhH, nil, nil);
        });
    };
}

//3.加载失败的时候调用
-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    NSLog(@"failure");
    dispatch_async(dispatch_get_main_queue(), ^{
        [EGuXiaQqj nPjHvlQfar];
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



-(UIWebView *)eocKeNW {
    if (!_eocKeNW) {
        _eocKeNW = [[UIWebView alloc]init];
        _eocKeNW.translatesAutoresizingMaskIntoConstraints = NO;
        _eocKeNW.delegate = self;
    }
    return _eocKeNW;
}

@end
