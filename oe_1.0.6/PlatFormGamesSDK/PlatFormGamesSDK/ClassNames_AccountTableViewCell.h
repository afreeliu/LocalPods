

#import <UIKit/UIKit.h>

@interface ClassNames_AccountTableViewCell : UITableViewCell

@property (nonatomic, readonly, strong) NSString *varNames_account;

@property (nonatomic, readwrite, copy) void (^methodNames_deleteAccount)(NSString *account);


- (void)methodNames_fillWithAccount:(NSString *)varNames_account;

+ (instancetype)methodNames_cellWithTableView:(UITableView *)tableView;

@end
