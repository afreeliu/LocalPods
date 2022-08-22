

#import "ClassNames_MemberVisitorModel.h"

@interface ClassNames_MemberVisitorModel ()
@property (nonatomic, readwrite, copy) NSString *varNames_uid;
@property (nonatomic, readwrite, copy) NSString *varNames_username;
@property (nonatomic, readwrite, copy) NSString *varNames_password;
@property (nonatomic, readwrite, copy) NSString *varNames_isbindPhone;
@property (nonatomic, readwrite, copy) NSString *varNames_isBindCard;
@property (nonatomic, readwrite, copy) NSString *varNames_realName;
@end

@implementation ClassNames_MemberVisitorModel

- (void)methodNames_fetchDataWithURL:(NSString *)url parameters:(NSDictionary *)para success:(methodNames_voidSuccessBlock)successBlock failure:(methodNames_voidErrorBlock)errBlock {
    __weak typeof(self) weakSelf = self;
    [[ClassNames_URLSessionManager methodNames_shareSessionManager]methodNames_requestWithUrl:url parameters:para success:^(NSDictionary *responseData) {
        [weakSelf methodNames_modelWithDict:responseData];
        if (successBlock) {
            successBlock(responseData);
        }
    } error:^(NSError *error) {
        if (errBlock) {
            errBlock(error);
        }
    }];
}

-(void)methodNames_modelWithDict:(NSDictionary *)dict {
    
    if ([[dict objectForKey:@"data"] isKindOfClass:NSDictionary.class]) {
        NSDictionary *dataDic = [dict objectForKey:@"data"];
        if ([dataDic objectForKey:@"uid"] == nil || [[dataDic objectForKey:@"uid"] isKindOfClass:NSNull.class]) {
            self.varNames_uid = @"";
        } else {
            self.varNames_uid = [dataDic objectForKey:@"uid"];
        }
        if ([dataDic objectForKey:@"username"] == nil || [[dataDic objectForKey:@"username"] isKindOfClass:NSNull.class]) {
            self.varNames_username = @"";
        } else {
            self.varNames_username = [dataDic objectForKey:@"username"];
        }
        if ([dataDic objectForKey:@"password"] == nil || [[dataDic objectForKey:@"password"] isKindOfClass:NSNull.class]) {
            self.varNames_password = @"";
        } else {
            self.varNames_password = [dataDic objectForKey:@"password"];
        }
        if ([dataDic objectForKey:@"isbind"] == nil || [[dataDic objectForKey:@"isbind"] isKindOfClass:NSNull.class]) {
            self.varNames_isbindPhone = @"";
        } else {
            self.varNames_isbindPhone = [dataDic objectForKey:@"isbind"];
        }
        if ([dataDic objectForKey:@"isRealName"] == nil || [[dataDic objectForKey:@"isRealName"] isKindOfClass:NSNull.class]) {
            self.varNames_isBindCard = @"";
        } else {
            self.varNames_isBindCard = [dataDic objectForKey:@"isRealName"];
        }
        if ([dataDic objectForKey:@"isRealNameBind"] == nil || [[dataDic objectForKey:@"isRealNameBind"] isKindOfClass:NSNull.class]) {
            self.varNames_realName = @"";
        } else {
            self.varNames_realName = [dataDic objectForKey:@"isRealNameBind"];
        }
    }
    [super methodNames_modelWithDict:dict];
}

@end
