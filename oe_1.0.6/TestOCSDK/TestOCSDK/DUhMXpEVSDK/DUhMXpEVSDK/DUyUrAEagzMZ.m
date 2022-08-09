

#import "DUyUrAEagzMZ.h"
#import "DUGcbRnKpJlPkyoY.h"
#import "DUPmeiBKkUr.h"
#import "DUjHPamSNKWkfM.h"
#import "DULCiQqMJAk.h"


@interface DUyUrAEagzMZ ()

@property (nonatomic, readwrite, strong) UIView *eLZwvNeBOT;

@property (nonatomic, readwrite, strong) UILabel *eVZsbUve;

/// loading
@property (nonatomic, readwrite, strong) UIActivityIndicatorView *eSVspnoGMtrzE;

/// error
@property (nonatomic, readwrite, strong) DUPmeiBKkUr *eRlrYukA;

/// success
@property (nonatomic, readwrite, strong) DUPmeiBKkUr *ehNXtIFiqj;

@end

@implementation DUyUrAEagzMZ

#pragma mark ---------- public MethodNames

+ (instancetype)kdSzeClsBhOtZIYxErrorMessage:(NSString *)err {
    return [self kPdJvDlon:err hubType:1];
}

+ (instancetype)kqSsTXv:(NSString *)success {
    return [self kPdJvDlon:success hubType:2];
}

+ (instancetype)kdSzeClsBhOtZIYxIndicatorWithTitlte:(NSString *)title {
    return [self kPdJvDlon:title hubType:0];
}

+ (instancetype)kdSzeClsBhOtZIYxIndicator {
    
    return [self kPdJvDlon:@"" hubType:0];
}

+ (instancetype)kPdJvDlon:(NSString *)title hubType:(NSInteger)type{
    
    NSAssert([title isKindOfClass:NSString.class], @"title must be string");
//    UIView *view = [[UIApplication sharedApplication].windows lastObject];
    UIView *view = kOjcdzAgI();
    DUyUrAEagzMZ *hubView = [[self alloc]initWithFrame:view.bounds];
    
    if (title && title.length) {
        hubView.eVZsbUve.text = title;
        hubView.eVZsbUve.hidden = NO;
    } else {
        hubView.eVZsbUve.hidden = YES;
    }
    
    switch (type) {
        case 0:
        {
            [hubView.eSVspnoGMtrzE startAnimating];
        }
            break;
        case 1:
        {
            hubView.eRlrYukA.hidden = NO;
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [DUyUrAEagzMZ kmBSjbQ];
            });
        }
            break;
        case 2:
        {
            hubView.ehNXtIFiqj.hidden = NO;
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [DUyUrAEagzMZ kmBSjbQ];
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


+ (instancetype)kPdJvDlon:(NSString *)title {
//    UIView *view = [[UIApplication sharedApplication].windows lastObject];
    UIView *view = kOjcdzAgI();
    DUyUrAEagzMZ *hubView = [[self alloc]initWithFrame:view.bounds];
    if (title) {
        hubView.eVZsbUve.text = title;
    }
    
    [view addSubview:hubView];
    [hubView setNeedsLayout];
    return hubView;
}

+ (instancetype)kdSzeClsBhOtZIYx {
    return [DUyUrAEagzMZ kPdJvDlon:nil];
}

+ (void)kmBSjbQ {
//    UIView *view = [[UIApplication sharedApplication].windows lastObject];
    UIView *view = kOjcdzAgI();
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
        
        [self kjRvMuF];
        [self kFhumUEfn];
    }
    return self;
}

- (void)kjRvMuF {
    UIView *hubView = [[UIView alloc]init];
    hubView.backgroundColor = [UIColor colorWithWhite:0.3 alpha:0.7];
    hubView.layer.cornerRadius = knkmWxIXN();
    hubView.clipsToBounds = YES;
    hubView.translatesAutoresizingMaskIntoConstraints = NO;
    self.eLZwvNeBOT = hubView;
    
    UIActivityIndicatorView *indicatorView = [[UIActivityIndicatorView alloc]init];
    indicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhite;
    indicatorView.hidesWhenStopped = YES;
    indicatorView.translatesAutoresizingMaskIntoConstraints = NO;
    [indicatorView setTintColor:[DULCiQqMJAk kzqvYPK:kaWPuowJpyxrkB()]];
    [indicatorView stopAnimating];
    self.eSVspnoGMtrzE = indicatorView;
    
    DUPmeiBKkUr *errBtn = [DUPmeiBKkUr kGWgaNbS:eIqLEopbuYa];
    errBtn.hidden = YES;
    errBtn.translatesAutoresizingMaskIntoConstraints = NO;
    self.eRlrYukA = errBtn;
    
    DUPmeiBKkUr *successBtn = [DUPmeiBKkUr kGWgaNbS:eJdpeBuEPOW];
    successBtn.hidden = YES;
    successBtn.translatesAutoresizingMaskIntoConstraints = NO;
    self.ehNXtIFiqj = successBtn;
    
    
    UILabel *titleLabel = [[UILabel alloc]init];
    titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    titleLabel.font = [UIFont systemFontOfSize:kPJMcaATz()];
    titleLabel.textColor = [DULCiQqMJAk kzqvYPK:kmKEVTFei()];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.numberOfLines = 2;
    self.eVZsbUve = titleLabel;
    
    [hubView addSubview:indicatorView];
    [hubView addSubview:errBtn];
    [hubView addSubview:successBtn];
    [hubView addSubview:titleLabel];
    [self addSubview:hubView];
}

- (void)kFhumUEfn {
    
    [DUjHPamSNKWkfM ktGjyplNWv:self.eLZwvNeBOT kjwoMfYHX:0];
    [DUjHPamSNKWkfM kxRZbHCcF:self.eLZwvNeBOT kjwoMfYHX:0];
    [DUjHPamSNKWkfM kYzDgmEuJZa:self.eLZwvNeBOT kjwoMfYHX:kTmoCuacQIpAFgxk()];
    [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:self.eLZwvNeBOT kjwoMfYHX:kTmoCuacQIpAFgxk()];
    
    [DUjHPamSNKWkfM kKvyLhTYV:self.eVZsbUve kjwoMfYHX:kPofSGniBdetAa()];
    [DUjHPamSNKWkfM kcNCfuJpSgtid:self.eVZsbUve kjwoMfYHX:kPofSGniBdetAa()];
    [DUjHPamSNKWkfM kdMvtuRCVqTon:self.eVZsbUve kjwoMfYHX:kPofSGniBdetAa()];
    
}

- (void)koyeINxOLqKHfwk {
    
    [DUjHPamSNKWkfM ktGjyplNWv:self.eRlrYukA kjwoMfYHX:0];
    [DUjHPamSNKWkfM kxRZbHCcF:self.eRlrYukA kjwoMfYHX:kPofSGniBdetAa()];
    [DUjHPamSNKWkfM kYzDgmEuJZa:self.eRlrYukA kjwoMfYHX:kciFEGvn()];
    
}

-(void)kEDcFbV {
    [DUjHPamSNKWkfM ktGjyplNWv:self.ehNXtIFiqj kjwoMfYHX:0];
    [DUjHPamSNKWkfM kxRZbHCcF:self.ehNXtIFiqj kjwoMfYHX:kPofSGniBdetAa()];
    [DUjHPamSNKWkfM kYzDgmEuJZa:self.ehNXtIFiqj kjwoMfYHX:kciFEGvn()];
}

- (void)kSWrLNHKkj {
    [DUjHPamSNKWkfM ktGjyplNWv:self.eSVspnoGMtrzE kjwoMfYHX:0];
    [DUjHPamSNKWkfM kxRZbHCcF:self.eSVspnoGMtrzE kjwoMfYHX:kPofSGniBdetAa()];
    [DUjHPamSNKWkfM kYzDgmEuJZa:self.eSVspnoGMtrzE kjwoMfYHX:kciFEGvn()];
}





#pragma mark ---------- Override
-(void)layoutSubviews {
    [super layoutSubviews];
    [self kFhumUEfn];
    [self koyeINxOLqKHfwk];
    [self kEDcFbV];
    [self kSWrLNHKkj];
}

@end

