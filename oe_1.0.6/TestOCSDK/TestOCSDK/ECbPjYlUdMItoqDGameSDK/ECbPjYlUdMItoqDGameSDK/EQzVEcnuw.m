
#import "EQzVEcnuw.h"

@interface EQzVEcnuw ()
@property (nonatomic, readwrite, copy) NSString *evThKsN;
@property (nonatomic, readwrite, copy) NSString *eHpiXexqPZEtGN;
@property (nonatomic, readwrite, copy) NSString *eNdTzosuD;
@end

@implementation EQzVEcnuw

- (void)nKSlFiCRmZGBwIqc:(NSString *)url parameters:(NSDictionary *)para success:(nDliSuCqFmkVvQ)successBlock failure:(nsuGTXbhFtZ)errBlock {
    nhdDGpskXLRwrS(url);
    nhdDGpskXLRwrS(para);
    __weak typeof(self) weakSelf = self;
    [[EDnreIzBT nlcOitbFD]nHpwfPXDElVioQv:url parameters:para success:^(NSDictionary *responseData) {
        [weakSelf nBKdrTomXLJQV:responseData];
        if (successBlock) {
            successBlock(responseData);
        }
    } error:^(NSError *error) {
        if (errBlock) {
            errBlock(error);
        }
    }];
}

-(void)nBKdrTomXLJQV:(NSDictionary *)dict {
    
    
    nhdDGpskXLRwrS(dict);
    if ([[dict objectForKey:@"data"] isKindOfClass:NSDictionary.class]) {
        NSDictionary *dataDic = [dict objectForKey:@"data"];
        if ([dataDic objectForKey:@"order_code"] == nil || [[dataDic objectForKey:@"order_code"] isKindOfClass:NSNull.class]) {
            self.evThKsN = @"";
        } else {
            self.evThKsN = [dataDic objectForKey:@"order_code"];
        }
        if ([dataDic objectForKey:@"pay_type"] == nil || [[dataDic objectForKey:@"pay_type"] isKindOfClass:NSNull.class]) {
            self.eHpiXexqPZEtGN = @"";
        } else {
            self.eHpiXexqPZEtGN = [dataDic objectForKey:@"pay_type"];
        }
        if ([dataDic objectForKey:@"pay_url"] == nil || [[dataDic objectForKey:@"pay_url"] isKindOfClass:NSNull.class]) {
            self.eNdTzosuD = @"";
        } else {
            self.eNdTzosuD = [dataDic objectForKey:@"pay_url"];
        }
    }
    [super nBKdrTomXLJQV:dict];
}


@end
