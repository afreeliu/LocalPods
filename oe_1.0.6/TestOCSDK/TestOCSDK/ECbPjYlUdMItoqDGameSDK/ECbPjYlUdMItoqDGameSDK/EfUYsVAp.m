

#import "EfUYsVAp.h"
#import "EfKgqPeJzFs.h"
#import "EmKtBeFuqi.h"
#import "EYMhnmstjq.h"
#import "EfPcqlxEisYgVvey.h"

#import "EYMhnmstjq.h"
#import "EmKtBeFuqi.h"
#import "EDqxoOtgPanuMV.h"
#import "EarLRky.h"
#import "EKEGsDfJRoQ.h"
#import "EjSOyeZQGuaogMV.h"


@interface EfUYsVAp ()


/// 标题
@property (nonatomic, readwrite, copy) NSString *eNLyGrDdpTSPwh;
/// 左边的items
@property (nonatomic, readwrite, strong) NSMutableArray *eQmSJGaUIfnHh;
/// 右边的items
@property (nonatomic, readwrite, strong) NSMutableArray *eDvYInUzXxLjT;

@property (nonatomic, readwrite, strong) UILabel *embSotwQATK;

@end


@implementation EfUYsVAp

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()];
        [self nmGaRgnwPFOEQMcd];
    }
    return self;
}

-(instancetype)init {
    self = [super init];
    if (self) {
        self.backgroundColor = [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()];
        [self nmGaRgnwPFOEQMcd];
    }
    return self;
}

-(void)nmGaRgnwPFOEQMcd {
    
    UILabel *embSotwQATK = [[UILabel alloc]init];
    embSotwQATK.translatesAutoresizingMaskIntoConstraints = NO;
    embSotwQATK.font = [UIFont systemFontOfSize:17];
    embSotwQATK.textColor = [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()];
    embSotwQATK.textAlignment = NSTextAlignmentCenter;
    [self addSubview:embSotwQATK];
    self.embSotwQATK = embSotwQATK;
    
    
}

- (void)nLYuaGKC {
    
    [EmKtBeFuqi navgXGEYtfjL:self.embSotwQATK naigAGwYRNfBte:0];
    [EmKtBeFuqi niqOtbXFszpxGLMY:self.embSotwQATK naigAGwYRNfBte:0];
    
}

- (void)nPsdTkcNr:(NSString *)title leftItems:(NSArray *)leftItems rightItems:(NSArray *)rightItems {
    
    self.embSotwQATK.text = title;
    [self nLYuaGKC];
    if (leftItems.count) {
        self.eQmSJGaUIfnHh = [leftItems mutableCopy];
        for (int i = 0; i < self.eQmSJGaUIfnHh.count; i++) {
            EfPcqlxEisYgVvey *etpBFTVKg = [EfPcqlxEisYgVvey nUFMWwyJ:eeWkLSlrt];
//            UIButton *etpBFTVKg = [[UIButton alloc]init];
//            UIImage *ENzWBAJVGwOepo = nBSjbOCNdlsTEfq(@"ENzWBAJVGwOepo");
//            [etpBFTVKg setBackgroundImage:ENzWBAJVGwOepo forState:UIControlStateNormal];
            etpBFTVKg.translatesAutoresizingMaskIntoConstraints = NO;
            etpBFTVKg.tag = i + 100;
            [etpBFTVKg addTarget:self action:@selector(nscSoAxzknMb:) forControlEvents:UIControlEventTouchUpInside];
            
            UIView *esOZPtupXxIJQ = [[UIView alloc]init];
            esOZPtupXxIJQ.translatesAutoresizingMaskIntoConstraints = NO;
            [self addSubview:esOZPtupXxIJQ];
            [esOZPtupXxIJQ addSubview:etpBFTVKg];
            
            [EmKtBeFuqi nGTVpsCaIbgQwO:esOZPtupXxIJQ naigAGwYRNfBte:ngdbzvfscj() + (nsnzrdyZRfoPKmIxgationBarHeight() + nxoZcUBXRr()) * i];
            [EmKtBeFuqi niqOtbXFszpxGLMY:esOZPtupXxIJQ naigAGwYRNfBte:0];
            [EmKtBeFuqi nwNALxocFyJupkm:esOZPtupXxIJQ naigAGwYRNfBte:nsnzrdyZRfoPKmIxgationBarHeight()];
            [EmKtBeFuqi ntIjPqxLTDs:esOZPtupXxIJQ naigAGwYRNfBte:nsnzrdyZRfoPKmIxgationBarHeight()];
            
            [EmKtBeFuqi navgXGEYtfjL:etpBFTVKg naigAGwYRNfBte:0];
            [EmKtBeFuqi niqOtbXFszpxGLMY:etpBFTVKg naigAGwYRNfBte:0];
            [EmKtBeFuqi nwNALxocFyJupkm:etpBFTVKg naigAGwYRNfBte:nHuGOezMN()];
            [EmKtBeFuqi ntIjPqxLTDs:etpBFTVKg naigAGwYRNfBte:nHuGOezMN()];
        }
    }
    if (rightItems.count) {
        self.eDvYInUzXxLjT = [rightItems mutableCopy];
        for (int i = 0; i < self.eDvYInUzXxLjT.count; i++) {
            
        }
    }
    [self setNeedsLayout];
}

- (void)nscSoAxzknMb:(UIButton *)sender {
    if (self.nscSoAxzknMb) {
        self.nscSoAxzknMb(sender.tag);
    }
}







@end
