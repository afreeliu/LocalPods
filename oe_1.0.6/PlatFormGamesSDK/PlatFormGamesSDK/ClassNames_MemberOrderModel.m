

#import "ClassNames_MemberOrderModel.h"

@interface ClassNames_MemberOrderModel ()
@property (nonatomic, readwrite, copy) NSString *varNames_order_code;
@property (nonatomic, readwrite, copy) NSString *varNames_pay_type;
@property (nonatomic, readwrite, copy) NSString *varNames_pay_url;
@end

@implementation ClassNames_MemberOrderModel

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
        if (errBlock) {
            errBlock(error);
        }
    }];
}

-(void)methodNames_modelWithDict:(NSDictionary *)dict {
    
    
    methodNames_debugLog(dict);
    if ([[dict objectForKey:@"data"] isKindOfClass:NSDictionary.class]) {
        NSDictionary *dataDic = [dict objectForKey:@"data"];
        if ([dataDic objectForKey:@"order_code"] == nil || [[dataDic objectForKey:@"order_code"] isKindOfClass:NSNull.class]) {
            self.varNames_order_code = @"";
        } else {
            self.varNames_order_code = [dataDic objectForKey:@"order_code"];
        }
        if ([dataDic objectForKey:[NSString stringWithFormat:@"p%@y_ty%@", @"a", @"pe"]] == nil || [[dataDic objectForKey:[NSString stringWithFormat:@"p%@y_ty%@", @"a", @"pe"]] isKindOfClass:NSNull.class]) {
            self.varNames_pay_type = @"";
        } else {
            self.varNames_pay_type = [dataDic objectForKey:[NSString stringWithFormat:@"p%@y_ty%@", @"a", @"pe"]];
        }
        if ([dataDic objectForKey:[NSString stringWithFormat:@"p%@y_u%@l", @"a", @"r"]] == nil || [[dataDic objectForKey:[NSString stringWithFormat:@"p%@y_u%@l", @"a", @"r"]] isKindOfClass:NSNull.class]) {
            self.varNames_pay_url = @"";
        } else {
            self.varNames_pay_url = [dataDic objectForKey:[NSString stringWithFormat:@"p%@y_u%@l", @"a", @"r"]];
        }
    }
    [super methodNames_modelWithDict:dict];
}


@end
