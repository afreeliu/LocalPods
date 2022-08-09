

#import "EGuXiaQqj.h"
#import "EfKgqPeJzFs.h"
#import "EfPcqlxEisYgVvey.h"
#import "EmKtBeFuqi.h"
#import "EYMhnmstjq.h"


@interface EGuXiaQqj ()

@property (nonatomic, readwrite, strong) UIView *eGnCNlwuzMkyKL;

@property (nonatomic, readwrite, strong) UILabel *embSotwQATK;

/// loading
@property (nonatomic, readwrite, strong) UIActivityIndicatorView *exMwGqAke;

/// error
@property (nonatomic, readwrite, strong) EfPcqlxEisYgVvey *eOyMWwQqreLCBKJn;

/// success
@property (nonatomic, readwrite, strong) EfPcqlxEisYgVvey *enDlbekIBtn;

@end

@implementation EGuXiaQqj

#pragma mark ---------- public MethodNames

+ (instancetype)nHgTIahEeoP:(NSString *)err {
    return [self nJVrDAcpuRWTMdbLWithTitle:err hubType:1];
}

+ (instancetype)nJVrDAcpuRWTMdbLSuccessMessage:(NSString *)success {
    return [self nJVrDAcpuRWTMdbLWithTitle:success hubType:2];
}

+ (instancetype)nJVrDAcpuRWTMdbLIndicatorWithTitlte:(NSString *)title {
    return [self nJVrDAcpuRWTMdbLWithTitle:title hubType:0];
}

+ (instancetype)nJVrDAcpuRWTMdbLIndicator {
    
    return [self nJVrDAcpuRWTMdbLWithTitle:@"" hubType:0];
}

+ (instancetype)nJVrDAcpuRWTMdbLWithTitle:(NSString *)title hubType:(NSInteger)type{
    
    NSAssert([title isKindOfClass:NSString.class], @"title must be string");
//    UIView *view = [[UIApplication sharedApplication].windows lastObject];
    UIView *view = nLyAxbKV();
    EGuXiaQqj *hubView = [[self alloc]initWithFrame:view.bounds];
    
    if (title && title.length) {
        hubView.embSotwQATK.text = title;
        hubView.embSotwQATK.hidden = NO;
    } else {
        hubView.embSotwQATK.hidden = YES;
    }
    
    switch (type) {
        case 0:
        {
            [hubView.exMwGqAke startAnimating];
        }
            break;
        case 1:
        {
            hubView.eOyMWwQqreLCBKJn.hidden = NO;
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [EGuXiaQqj nPjHvlQfar];
            });
        }
            break;
        case 2:
        {
            hubView.enDlbekIBtn.hidden = NO;
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [EGuXiaQqj nPjHvlQfar];
            });
        }
            break;
        default:
            break;
    }
    [view addSubview:hubView];
    [hubView setNeedsLayout];
    return hubView;
}


+ (instancetype)nJVrDAcpuRWTMdbLWithTitle:(NSString *)title {
//    UIView *view = [[UIApplication sharedApplication].windows lastObject];
    UIView *view = nLyAxbKV();
    EGuXiaQqj *hubView = [[self alloc]initWithFrame:view.bounds];
    if (title) {
        hubView.embSotwQATK.text = title;
    }
    
    [view addSubview:hubView];
    [hubView setNeedsLayout];
    return hubView;
}

+ (instancetype)nJVrDAcpuRWTMdbL {
    return [EGuXiaQqj nJVrDAcpuRWTMdbLWithTitle:nil];
}

+ (void)nPjHvlQfar {
//    UIView *view = [[UIApplication sharedApplication].windows lastObject];
    UIView *view = nLyAxbKV();
    NSEnumerator *subviewsEnum = [view.subviews reverseObjectEnumerator];
    for (UIView *subview in subviewsEnum) {
        if ([subview isKindOfClass:self]) {
            subview.hidden = YES;
            [subview removeFromSuperview];
            
        }
    }
}

#pragma mark --------------------------------------------------------------------------------------------------------------


-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        [self nmGaRgnwPFOEQMcd];
        [self nLYuaGKCs];
    }
    return self;
}

- (void)nmGaRgnwPFOEQMcd {
    UIView *hubView = [[UIView alloc]init];
    hubView.backgroundColor = [UIColor colorWithWhite:0.3 alpha:0.7];
    hubView.layer.cornerRadius = nwndvbP();
    hubView.clipsToBounds = YES;
    hubView.translatesAutoresizingMaskIntoConstraints = NO;
    self.eGnCNlwuzMkyKL = hubView;
    
    UIActivityIndicatorView *indicatorView = [[UIActivityIndicatorView alloc]init];
    indicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhite;
    indicatorView.hidesWhenStopped = YES;
    indicatorView.translatesAutoresizingMaskIntoConstraints = NO;
    [indicatorView setTintColor:[EYMhnmstjq nWsORqEFbUChPdH:nmfLuKZkvwh()]];
    [indicatorView stopAnimating];
    self.exMwGqAke = indicatorView;
    
    EfPcqlxEisYgVvey *errBtn = [EfPcqlxEisYgVvey nUFMWwyJ:exGyMYnr];
    errBtn.hidden = YES;
    errBtn.translatesAutoresizingMaskIntoConstraints = NO;
    self.eOyMWwQqreLCBKJn = errBtn;
    
    EfPcqlxEisYgVvey *successBtn = [EfPcqlxEisYgVvey nUFMWwyJ:ezcGNYaRight];
    successBtn.hidden = YES;
    successBtn.translatesAutoresizingMaskIntoConstraints = NO;
    self.enDlbekIBtn = successBtn;
    
    
    UILabel *titleLabel = [[UILabel alloc]init];
    titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    titleLabel.font = [UIFont systemFontOfSize:naRbLMcqHhnUxYVu()];
    titleLabel.textColor = [EYMhnmstjq nWsORqEFbUChPdH:nXzJhTpidnv()];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.numberOfLines = 2;
    titleLabel.adjustsFontSizeToFitWidth = YES;
    self.embSotwQATK = titleLabel;
    
    [hubView addSubview:indicatorView];
    [hubView addSubview:errBtn];
    [hubView addSubview:successBtn];
    [hubView addSubview:titleLabel];
    [self addSubview:hubView];
}

- (void)nLYuaGKCs {
    
    [EmKtBeFuqi navgXGEYtfjL:self.eGnCNlwuzMkyKL naigAGwYRNfBte:0];
    [EmKtBeFuqi niqOtbXFszpxGLMY:self.eGnCNlwuzMkyKL naigAGwYRNfBte:0];
    [EmKtBeFuqi nwNALxocFyJupkm:self.eGnCNlwuzMkyKL naigAGwYRNfBte:nZidXmHTUsOhJf()];
    [EmKtBeFuqi ntIjPqxLTDs:self.eGnCNlwuzMkyKL naigAGwYRNfBte:nZidXmHTUsOhJf()];
    
    [EmKtBeFuqi nWcbUXozlk:self.embSotwQATK naigAGwYRNfBte:nxoZcUBXRr()];
    [EmKtBeFuqi nGTVpsCaIbgQwO:self.embSotwQATK naigAGwYRNfBte:nxoZcUBXRr()];
    [EmKtBeFuqi nLRCtGMFQZAYsc:self.embSotwQATK naigAGwYRNfBte:nxoZcUBXRr()];
    
}

- (void)ncQLFyR {
    
    [EmKtBeFuqi navgXGEYtfjL:self.eOyMWwQqreLCBKJn naigAGwYRNfBte:0];
    [EmKtBeFuqi niqOtbXFszpxGLMY:self.eOyMWwQqreLCBKJn naigAGwYRNfBte:nxoZcUBXRr()];
    [EmKtBeFuqi nwNALxocFyJupkm:self.eOyMWwQqreLCBKJn naigAGwYRNfBte:nOvZQUCDSTmzG()];
    
}

-(void)njyUZxIDzePocLOt {
    [EmKtBeFuqi navgXGEYtfjL:self.enDlbekIBtn naigAGwYRNfBte:0];
    [EmKtBeFuqi niqOtbXFszpxGLMY:self.enDlbekIBtn naigAGwYRNfBte:nxoZcUBXRr()];
    [EmKtBeFuqi nwNALxocFyJupkm:self.enDlbekIBtn naigAGwYRNfBte:nOvZQUCDSTmzG()];
}

- (void)nYHKetPvG {
    [EmKtBeFuqi navgXGEYtfjL:self.exMwGqAke naigAGwYRNfBte:0];
    [EmKtBeFuqi niqOtbXFszpxGLMY:self.exMwGqAke naigAGwYRNfBte:nxoZcUBXRr()];
    [EmKtBeFuqi nwNALxocFyJupkm:self.exMwGqAke naigAGwYRNfBte:nOvZQUCDSTmzG()];
}





#pragma mark ---------- Override
-(void)layoutSubviews {
    [super layoutSubviews];
    [self nLYuaGKCs];
    [self ncQLFyR];
    [self njyUZxIDzePocLOt];
    [self nYHKetPvG];
}

@end

