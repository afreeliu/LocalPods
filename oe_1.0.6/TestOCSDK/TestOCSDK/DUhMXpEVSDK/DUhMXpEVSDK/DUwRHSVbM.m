

#import "DUwRHSVbM.h"
#import "DUPmeiBKkUr.h"
#import "DULCiQqMJAk.h"
#import "DUjHPamSNKWkfM.h"
#import "DUIBriUTudq.h"
//#import "ClassNames_AnimatTool.h"
#import "DUngTeHD.h"
#import "DUGcbRnKpJlPkyoY.h"
#import "DUJwXyISMdzCUh.h"

@interface DUwRHSVbM ()

@property (nonatomic, readwrite, strong) NSString *eCEYSsLnTkwQUxzp;

@property (nonatomic, readwrite, strong) UILabel *eLqgNREyLabel;

@property (nonatomic, readwrite, strong) DUPmeiBKkUr *eaCpkyeP;

@end

@implementation DUwRHSVbM


#pragma mark ---------- public Method

-(void)kdewRqICJlbcojGx:(NSString *)eCEYSsLnTkwQUxzp {
    self.eCEYSsLnTkwQUxzp = eCEYSsLnTkwQUxzp;
    self.eLqgNREyLabel.text = eCEYSsLnTkwQUxzp;
    
    [self layoutIfNeeded];
}






- (void)awakeFromNib {
    [super awakeFromNib];
    
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self kjRvMuF];
    }
    return self;
}


- (void)kjRvMuF {
    
    self.contentView.backgroundColor = [DULCiQqMJAk kzqvYPK:khdrUwfKL()];
    
    UILabel *contentLabel = [[UILabel alloc]init];
    contentLabel.translatesAutoresizingMaskIntoConstraints = NO;
    contentLabel.textColor = [DULCiQqMJAk kzqvYPK:kqbFUBMJuORd()];
    contentLabel.textAlignment = NSTextAlignmentLeft;
    contentLabel.font = [UIFont systemFontOfSize:14];
    self.eLqgNREyLabel = contentLabel;
    
    DUPmeiBKkUr *deleteBtn = [DUPmeiBKkUr kGWgaNbS:eGwYxXRN];
    deleteBtn.translatesAutoresizingMaskIntoConstraints = NO;
    deleteBtn.tintColor = [UIColor whiteColor];
    [deleteBtn addTarget:self action:@selector(kFoePSGKH:) forControlEvents:UIControlEventTouchUpInside];
    self.eaCpkyeP = deleteBtn;
    [self.contentView addSubview:contentLabel];
    [self.contentView addSubview:deleteBtn];
    
}

- (void)kFoePSGKH:(UIButton *)sender {
    if (self.kFoePSGKH) {
        self.kFoePSGKH(self.eCEYSsLnTkwQUxzp);
    }
}


- (void)kFhumUEfn {
    
    [DUjHPamSNKWkfM kYzDgmEuJZa:self.eaCpkyeP kjwoMfYHX:kmaGeEPbBXHK()];
    [DUjHPamSNKWkfM kgrLjqVbGpvdykZl:self.eaCpkyeP kjwoMfYHX:kmaGeEPbBXHK()];
    [DUjHPamSNKWkfM kdMvtuRCVqTon:self.eaCpkyeP kjwoMfYHX:kPofSGniBdetAa()];
    [DUjHPamSNKWkfM kxRZbHCcF:self.eaCpkyeP kjwoMfYHX:0];
    
    
    [DUjHPamSNKWkfM kxRZbHCcF:self.eLqgNREyLabel kjwoMfYHX:0];
    [DUjHPamSNKWkfM kcNCfuJpSgtid:self.eLqgNREyLabel kjwoMfYHX:khSRvCsVT()];
    [DUjHPamSNKWkfM kdMvtuRCVqTon:self.eLqgNREyLabel kjwoMfYHX:kmaGeEPbBXHK() + kPofSGniBdetAa() * 3];

}


+ (instancetype)kiZwyInSzrs:(UITableView *)tableView {
    DUwRHSVbM *cell = [tableView dequeueReusableCellWithIdentifier:@"DUwRHSVbM"];
    if (cell == nil) {
        cell = [[DUwRHSVbM alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DUwRHSVbM"];
    }
    return cell;
}


#pragma mark ---------- Override
-(void)layoutSubviews {
    [super layoutSubviews];
    [self kFhumUEfn];
}



@end
