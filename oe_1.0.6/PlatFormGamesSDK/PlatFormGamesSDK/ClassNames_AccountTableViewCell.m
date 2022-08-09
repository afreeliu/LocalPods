

#import "ClassNames_AccountTableViewCell.h"
#import "ClassNames_itemButton.h"
#import "ClassNames_Color.h"
#import "ClassNames_BaseViewLayout.h"
#import "ClassNames_RegularMatch.h"
#import "ClassNames_ImageErrorRight.h"
#import "ClassNames_DefaultThemeConfigure.h"
#import "ClassNames_SecurityTool.h"

@interface ClassNames_AccountTableViewCell ()

@property (nonatomic, readwrite, strong) NSString *varNames_account;

@property (nonatomic, readwrite, strong) UILabel *varNames_contentLabel;

@property (nonatomic, readwrite, strong) ClassNames_itemButton *varNames_deleteBtn;

@end

@implementation ClassNames_AccountTableViewCell


#pragma mark ---------- public Method

-(void)methodNames_fillWithAccount:(NSString *)varNames_account {
    self.varNames_account = varNames_account;
    self.varNames_contentLabel.text = varNames_account;
    
    [self layoutIfNeeded];
}






- (void)awakeFromNib {
    [super awakeFromNib];
    
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self methodNames_setUI];
    }
    return self;
}


- (void)methodNames_setUI {
    
    self.contentView.backgroundColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_inputViewBackgroundColor_config()];
    
    UILabel *varNames_tmpcontentLabel = [[UILabel alloc]init];
    varNames_tmpcontentLabel.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpcontentLabel.textColor = [ClassNames_Color methodNames_colorWithHexString:methodNames_getDefault_backgroundColor_config()];
    varNames_tmpcontentLabel.textAlignment = NSTextAlignmentLeft;
    varNames_tmpcontentLabel.font = [UIFont systemFontOfSize:14];
    self.varNames_contentLabel = varNames_tmpcontentLabel;
    
    ClassNames_itemButton *varNames_tmpdeleteBtn = [ClassNames_itemButton methodNames_setItemButton:varNames_ItemButtonTypeDelete];
    varNames_tmpdeleteBtn.translatesAutoresizingMaskIntoConstraints = NO;
    varNames_tmpdeleteBtn.tintColor = [UIColor whiteColor];
    [varNames_tmpdeleteBtn addTarget:self action:@selector(methodNames_deleteAccount:) forControlEvents:UIControlEventTouchUpInside];
    self.varNames_deleteBtn = varNames_tmpdeleteBtn;
    [self.contentView addSubview:varNames_tmpcontentLabel];
    [self.contentView addSubview:varNames_tmpdeleteBtn];
    
}

- (void)methodNames_deleteAccount:(UIButton *)sender {
    if (self.methodNames_deleteAccount) {
        self.methodNames_deleteAccount(self.varNames_account);
    }
}


- (void)methodNames_layoutSubViews {
    
    [ClassNames_BaseViewLayout methodNames_layoutWidth:self.varNames_deleteBtn methodNames_constriant:methodNames_getInputView_ItemButton_Width()];
    [ClassNames_BaseViewLayout methodNames_layoutHeight:self.varNames_deleteBtn methodNames_constriant:methodNames_getInputView_ItemButton_Width()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_deleteBtn methodNames_constriant:methodNames_setMargin_base()];
    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_deleteBtn methodNames_constriant:0];
    
    
    [ClassNames_BaseViewLayout methodNames_layoutCenterY:self.varNames_contentLabel methodNames_constriant:0];
    [ClassNames_BaseViewLayout methodNames_layoutLeft:self.varNames_contentLabel methodNames_constriant:methodNames_setMargin_3base()];
    [ClassNames_BaseViewLayout methodNames_layoutRight:self.varNames_contentLabel methodNames_constriant:methodNames_getInputView_ItemButton_Width() + methodNames_setMargin_base() * 3];

}


+ (instancetype)methodNames_cellWithTableView:(UITableView *)tableView {
    ClassNames_AccountTableViewCell *varNames_tmpcell = [tableView dequeueReusableCellWithIdentifier:@"ClassNames_AccountTableViewCell"];
    if (varNames_tmpcell == nil) {
        varNames_tmpcell = [[ClassNames_AccountTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ClassNames_AccountTableViewCell"];
    }
    return varNames_tmpcell;
}


#pragma mark ---------- Override
-(void)layoutSubviews {
    [super layoutSubviews];
    [self methodNames_layoutSubViews];
}



@end
