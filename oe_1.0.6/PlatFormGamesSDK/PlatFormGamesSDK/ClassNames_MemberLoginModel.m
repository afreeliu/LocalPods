

#import "ClassNames_MemberLoginModel.h"

@interface ClassNames_MemberLoginModel ()

@property (nonatomic, readwrite, copy) NSString *varNames_isbindPhone;
@property (nonatomic, readwrite, copy) NSString *varNames_isBindCard;
@property (nonatomic, readwrite, copy) NSString *varNames_username;  // 如果是手机登录的用户，该值为手机号
@property (nonatomic, readwrite, copy) NSString *varNames_uid;


@property (nonatomic, readwrite, copy) NSString *varNames_realName;
@property (nonatomic, readwrite, copy) NSString *varNames_carId;

@property (nonatomic, readwrite, copy) NSString *varNames_password; // 手机号登录的会返回密码
@property (nonatomic, readwrite, copy) NSString *varNames_token;// 只有在 acctreg/2 的情况下返回

@end

@implementation ClassNames_MemberLoginModel

- (void)methodNames_fetchDataWithURL:(NSString *)url parameters:(NSDictionary *)para success:(methodNames_voidSuccessBlock)successBlock failure:(methodNames_voidErrorBlock)errBlock {
    methodNames_debugLog(url);
    methodNames_debugLog(para);
    __weak typeof(self) weakSelf = self;
    [[ClassNames_URLSessionManager methodNames_shareSessionManager]methodNames_requestWithUrl:url parameters:para success:^(NSDictionary *responseData) {
        [weakSelf methodNames_modelWithDict:responseData];
        if (successBlock) {
            successBlock(responseData);
        }
    } error:^(NSError *error) {
        methodNames_debugLog(error.userInfo);
        if (errBlock) {
            errBlock(error);
        }
    }];
}

-(void)methodNames_modelWithDict:(NSDictionary *)dict {
    
    if ([[dict objectForKey:@"data"] isKindOfClass:NSDictionary.class]) {
        NSDictionary *dataDic = [dict objectForKey:@"data"];
        
        if ([dataDic objectForKey:@"bind_phone"] == nil || [[dataDic objectForKey:@"bind_phone"] isKindOfClass:NSNull.class]) {
            self.varNames_isbindPhone = @"";
        } else {
            self.varNames_isbindPhone = [dataDic objectForKey:@"bind_phone"];
        }
        if ([dataDic objectForKey:@"id_card"] == nil || [[dataDic objectForKey:@"id_card"] isKindOfClass:NSNull.class]) {
            self.varNames_isBindCard = @"";
        } else {
            self.varNames_isBindCard = [dataDic objectForKey:@"id_card"];
        }
        if ([dataDic objectForKey:@"token"] == nil || [[dataDic objectForKey:@"token"] isKindOfClass:NSNull.class]) {
            self.varNames_token = @"";
        } else {
            self.varNames_token = [dataDic objectForKey:@"token"];
        }
        if ([dataDic objectForKey:@"uname"] == nil || [[dataDic objectForKey:@"uname"] isKindOfClass:NSNull.class]) {
            self.varNames_username = @"";
        } else {
            self.varNames_username = [dataDic objectForKey:@"uname"];
        }
        if ([dataDic objectForKey:@"uid"] == nil || [[dataDic objectForKey:@"uid"] isKindOfClass:NSNull.class]) {
            self.varNames_uid = @"";
        } else {
            self.varNames_uid = [dataDic objectForKey:@"uid"];
        }
        if ([dataDic objectForKey:@"card_name"] == nil || [[dataDic objectForKey:@"card_name"] isKindOfClass:NSNull.class]) {
            self.varNames_realName = @"";
        } else {
            self.varNames_realName = [dataDic objectForKey:@"card_name"];
        }
        if ([dataDic objectForKey:@"card_id"] == nil || [[dataDic objectForKey:@"card_id"] isKindOfClass:NSNull.class]) {
            self.varNames_carId = @"";
        } else {
            self.varNames_carId = [dataDic objectForKey:@"card_id"];
        }
        if ([dataDic objectForKey:@"pwd"] == nil || [[dataDic objectForKey:@"pwd"] isKindOfClass:NSNull.class]) {
            self.varNames_password = @"";
        } else {
            self.varNames_password = [dataDic objectForKey:@"pwd"];
        }
    }
    [super methodNames_modelWithDict:dict];
}

@end
