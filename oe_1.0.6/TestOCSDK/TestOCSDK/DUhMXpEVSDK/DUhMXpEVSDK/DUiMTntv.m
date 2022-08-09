

#import "DUiMTntv.h"

@interface DUiMTntv ()
@property (nonatomic, readwrite, copy) NSString *eGzNRZFM;
@property (nonatomic, readwrite, copy) NSString *eHKOtDbFEsVUQThW;
@property (nonatomic, readwrite, copy) NSString *eBVIOmLofsPQDU;
@property (nonatomic, readwrite, copy) NSString *eSILRhOzGbpCrli;
@property (nonatomic, readwrite, copy) NSString *eWmXbyHJhiYDB;
@property (nonatomic, readwrite, copy) NSString *eWmXbyHJhiYDBBind;
@end

@implementation DUiMTntv

- (void)keNYLwaozmrC:(NSString *)url parameters:(NSDictionary *)para success:(kuevfLqnwkPI)successBlock failure:(kApwWSJ)errBlock {
    __weak typeof(self) weakSelf = self;
    [[DUuTWZnmQbKezC kuaDrosxkO]kMhtULydG:url parameters:para success:^(NSDictionary *responseData) {
        [weakSelf ketkHWVi:responseData];
        if (successBlock) {
            successBlock(responseData);
        }
    } error:^(NSError *error) {
        if (errBlock) {
            errBlock(error);
        }
    }];
}

-(void)ketkHWVi:(NSDictionary *)dict {
    
    if ([[dict objectForKey:@"data"] isKindOfClass:NSDictionary.class]) {
        NSDictionary *dataDic = [dict objectForKey:@"data"];
        if ([dataDic objectForKey:@"uid"] == nil || [[dataDic objectForKey:@"uid"] isKindOfClass:NSNull.class]) {
            self.eGzNRZFM = @"";
        } else {
            self.eGzNRZFM = [dataDic objectForKey:@"uid"];
        }
        if ([dataDic objectForKey:@"username"] == nil || [[dataDic objectForKey:@"username"] isKindOfClass:NSNull.class]) {
            self.eHKOtDbFEsVUQThW = @"";
        } else {
            self.eHKOtDbFEsVUQThW = [dataDic objectForKey:@"username"];
        }
        if ([dataDic objectForKey:@"password"] == nil || [[dataDic objectForKey:@"password"] isKindOfClass:NSNull.class]) {
            self.eBVIOmLofsPQDU = @"";
        } else {
            self.eBVIOmLofsPQDU = [dataDic objectForKey:@"password"];
        }
        if ([dataDic objectForKey:@"isbind"] == nil || [[dataDic objectForKey:@"isbind"] isKindOfClass:NSNull.class]) {
            self.eSILRhOzGbpCrli = @"";
        } else {
            self.eSILRhOzGbpCrli = [dataDic objectForKey:@"isbind"];
        }
        if ([dataDic objectForKey:@"isRealName"] == nil || [[dataDic objectForKey:@"isRealName"] isKindOfClass:NSNull.class]) {
            self.eWmXbyHJhiYDB = @"";
        } else {
            self.eWmXbyHJhiYDB = [dataDic objectForKey:@"isRealName"];
        }
        if ([dataDic objectForKey:@"isRealNameBind"] == nil || [[dataDic objectForKey:@"isRealNameBind"] isKindOfClass:NSNull.class]) {
            self.eWmXbyHJhiYDBBind = @"";
        } else {
            self.eWmXbyHJhiYDBBind = [dataDic objectForKey:@"isRealNameBind"];
        }
    }
    [super ketkHWVi:dict];
}

@end
