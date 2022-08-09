

#import "DUTClpoG.h"
#import "DUGcbRnKpJlPkyoY.h"
#import "DUjHPamSNKWkfM.h"
#import "DULCiQqMJAk.h"
#import "DUPmeiBKkUr.h"

#import "DULCiQqMJAk.h"
#import "DUjHPamSNKWkfM.h"
#import "DUIBriUTudq.h"
#import "DUMsxKfgyw.h"
#import "DUqEONnQKwFro.h"
#import "DUJwXyISMdzCUh.h"


@interface DUTClpoG ()


/// 标题
@property (nonatomic, readwrite, copy) NSString *eFZBysd;
/// 左边的items
@property (nonatomic, readwrite, strong) NSMutableArray *ebDopgBiSUPeqfv;
/// 右边的items
@property (nonatomic, readwrite, strong) NSMutableArray *eVpYKLTvCUFOGaEx;

@property (nonatomic, readwrite, strong) UILabel *eVZsbUve;

@end


@implementation DUTClpoG

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()];
        [self kjRvMuF];
    }
    return self;
}

-(instancetype)init {
    self = [super init];
    if (self) {
        self.backgroundColor = [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()];
        [self kjRvMuF];
    }
    return self;
}

-(void)kjRvMuF {
    
    UILabel *eVZsbUve = [[UILabel alloc]init];
    eVZsbUve.translatesAutoresizingMaskIntoConstraints = NO;
    eVZsbUve.font = [UIFont systemFontOfSize:17];
    eVZsbUve.textColor = [DULCiQqMJAk kzqvYPK:kCwNfzgtTG()];
    eVZsbUve.textAlignment = NSTextAlignmentCenter;
    [self addSubview:eVZsbUve];
    self.eVZsbUve = eVZsbUve;
    
    
}

- (void)kQiLrTkJhOKMIs {
    
    [DUjHPamSNKWkfM ktGjyplNWv:self.eVZsbUve kjwoMfYHX:0];
    [DUjHPamSNKWkfM kxRZbHCcF:self.eVZsbUve kjwoMfYHX:0];
    
}

- (void)kCjesSHmKLtngYb:(NSString *)title leftItems:(NSArray *)leftItems rightItems:(NSArray *)rightItems {
    
    self.eVZsbUve.text = title;
    [self kQiLrTkJhOKMIs];
    if (leftItems.count) {
        self.ebDopgBiSUPeqfv = [leftItems mutableCopy];
        for (int i = 0; i < self.ebDopgBiSUPeqfv.count; i++) {
            DUPmeiBKkUr *itemBtn = [DUPmeiBKkUr kGWgaNbS:eGydJZTIbDhLS];
            itemBtn.translatesAutoresizingMaskIntoConstraints = NO;
            itemBtn.tag = i + 100;
            itemBtn.translatesAutoresizingMaskIntoConstraints = NO;
            [itemBtn addTarget:self action:@selector(kvABkErUSyh:) forControlEvents:UIControlEventTouchUpInside];
            
            UIView *ezHdxYy = [[UIView alloc]init];
            ezHdxYy.translatesAutoresizingMaskIntoConstraints = NO;
            [self addSubview:ezHdxYy];
            [ezHdxYy addSubview:itemBtn];
            
            [DUjHPamSNKWkfM kcNCfuJpSgtid:ezHdxYy kjwoMfYHX:ktaMSrs() + (kAHqXWKaSlL() + kPofSGniBdetAa()) * i];
            [DUjHPamSNKWkfM kxRZbHCcF:ezHdxYy kjwoMfYHX:0];
            [DUjHPamSNKWkfM kYzDgmEuJZa:ezHdxYy kjwoMfYHX:kAHqXWKaSlL()];
            [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:ezHdxYy kjwoMfYHX:kAHqXWKaSlL()];
            
            [DUjHPamSNKWkfM ktGjyplNWv:itemBtn kjwoMfYHX:0];
            [DUjHPamSNKWkfM kxRZbHCcF:itemBtn kjwoMfYHX:0];
            [DUjHPamSNKWkfM kYzDgmEuJZa:itemBtn kjwoMfYHX:kmaGeEPbBXHK()];
            [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:itemBtn kjwoMfYHX:kmaGeEPbBXHK()];
        }
    }
    if (rightItems.count) {
        self.eVpYKLTvCUFOGaEx = [rightItems mutableCopy];
        for (int i = 0; i < self.eVpYKLTvCUFOGaEx.count; i++) {
            
        }
    }
    [self setNeedsLayout];
}

- (void)kvABkErUSyh:(UIButton *)sender {
    if (self.kvABkErUSyh) {
        self.kvABkErUSyh(sender.tag);
    }
}







@end
