
#import "EzWEXxisoAfOU.h"
#import "EfPcqlxEisYgVvey.h"
#import "EYMhnmstjq.h"
#import "EmKtBeFuqi.h"
#import "EDqxoOtgPanuMV.h"
//#import "ClassNames_AnimatTool.h"
#import "ENpvcRedBrhfMZo.h"
#import "EfKgqPeJzFs.h"
#import "EjSOyeZQGuaogMV.h"

@interface EzWEXxisoAfOU ()

@property (nonatomic, readwrite, strong) NSString *eaJLdnisSAFGhH;

@property (nonatomic, readwrite, strong) UILabel *eIOniLlHkrCpJY;

@property (nonatomic, readwrite, strong) EfPcqlxEisYgVvey *emDSJMPiZ;

@end

@implementation EzWEXxisoAfOU


#pragma mark ---------- public Method

-(void)nbKvgosSmGjhyJi:(NSString *)eaJLdnisSAFGhH {
    self.eaJLdnisSAFGhH = eaJLdnisSAFGhH;
    self.eIOniLlHkrCpJY.text = eaJLdnisSAFGhH;
    
    [self layoutIfNeeded];
}






- (void)awakeFromNib {
    [super awakeFromNib];
    
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self nmGaRgnwPFOEQMcd];
    }
    return self;
}


- (void)nmGaRgnwPFOEQMcd {
    self.backgroundColor = [UIColor clearColor];

    UILabel *contentLabel = [[UILabel alloc]init];
    contentLabel.translatesAutoresizingMaskIntoConstraints = NO;
    contentLabel.textColor = [EYMhnmstjq nWsORqEFbUChPdH:nEBJiWSmlnUvVpIg()];
    contentLabel.textAlignment = NSTextAlignmentLeft;
    contentLabel.font = [UIFont systemFontOfSize:14];
    contentLabel.backgroundColor = [UIColor clearColor];
    self.eIOniLlHkrCpJY = contentLabel;
    
    EfPcqlxEisYgVvey *deleteBtn = [EfPcqlxEisYgVvey nUFMWwyJ:ezcGNYaDelete];
    deleteBtn.translatesAutoresizingMaskIntoConstraints = NO;
    deleteBtn.tintColor = [UIColor whiteColor];
    [deleteBtn addTarget:self action:@selector(nQNbdAcDOsln:) forControlEvents:UIControlEventTouchUpInside];
    self.emDSJMPiZ = deleteBtn;
    [self.contentView addSubview:contentLabel];
    [self.contentView addSubview:deleteBtn];
    
}

- (void)nQNbdAcDOsln:(UIButton *)sender {
    if (self.nQNbdAcDOsln) {
        self.nQNbdAcDOsln(self.eaJLdnisSAFGhH);
    }
}


- (void)nLYuaGKCs {
    
    [EmKtBeFuqi nwNALxocFyJupkm:self.emDSJMPiZ naigAGwYRNfBte:nHuGOezMN()];
    [EmKtBeFuqi ntIjPqxLTDs:self.emDSJMPiZ naigAGwYRNfBte:nHuGOezMN()];
    [EmKtBeFuqi nLRCtGMFQZAYsc:self.emDSJMPiZ naigAGwYRNfBte:nxoZcUBXRr()];
    [EmKtBeFuqi niqOtbXFszpxGLMY:self.emDSJMPiZ naigAGwYRNfBte:0];
    
    
    [EmKtBeFuqi niqOtbXFszpxGLMY:self.eIOniLlHkrCpJY naigAGwYRNfBte:0];
    [EmKtBeFuqi nGTVpsCaIbgQwO:self.eIOniLlHkrCpJY naigAGwYRNfBte:ngdbzvfscj()];
    [EmKtBeFuqi nLRCtGMFQZAYsc:self.eIOniLlHkrCpJY naigAGwYRNfBte:nHuGOezMN() + nxoZcUBXRr() * 3];

}


+ (instancetype)nQksndcVTuwrEq:(UITableView *)tableView {
    EzWEXxisoAfOU *cell = [tableView dequeueReusableCellWithIdentifier:@"EzWEXxisoAfOU"];
    if (cell == nil) {
        cell = [[EzWEXxisoAfOU alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"EzWEXxisoAfOU"];
    }
    return cell;
}


#pragma mark ---------- Override
-(void)layoutSubviews {
    [super layoutSubviews];
    [self nLYuaGKCs];
}



@end
