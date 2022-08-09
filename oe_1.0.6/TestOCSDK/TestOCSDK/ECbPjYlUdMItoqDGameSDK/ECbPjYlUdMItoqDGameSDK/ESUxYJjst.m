

#import "ESUxYJjst.h"

@interface ESUxYJjst ()
@property (nonatomic, readwrite, copy) NSString *eHIRquhplOQgw;
@property (nonatomic, readwrite, copy) NSString *eEJRiLHAkpwhY;
@property (nonatomic, readwrite, copy) NSString *eBVFRgHlmJe;
@property (nonatomic, readwrite, copy) NSString *eGUWxuLgnjhAm;
@property (nonatomic, readwrite, copy) NSString *eGUWxuLgnjhAmBind;

@end


@implementation ESUxYJjst

- (void)nKSlFiCRmZGBwIqc:(NSString *)url parameters:(NSDictionary *)para success:(nDliSuCqFmkVvQ)successBlock failure:(nsuGTXbhFtZ)errBlock {
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
    
    if ([[dict objectForKey:@"data"] isKindOfClass:NSDictionary.class]) {
        NSDictionary *dataDic = [dict objectForKey:@"data"];
        
        if ([dataDic objectForKey:@"uid"] == nil || [[dataDic objectForKey:@"uid"] isKindOfClass:NSNull.class]) {
            self.eHIRquhplOQgw = @"";
        } else {
            self.eHIRquhplOQgw = [dataDic objectForKey:@"uid"];
        }
        if ([dataDic objectForKey:@"username"] == nil || [[dataDic objectForKey:@"username"] isKindOfClass:NSNull.class]) {
            self.eEJRiLHAkpwhY = @"";
        } else {
            self.eEJRiLHAkpwhY = [dataDic objectForKey:@"username"];
        }
        if ([dataDic objectForKey:@"isbind"] == nil || [[dataDic objectForKey:@"isbind"] isKindOfClass:NSNull.class]) {
            self.eBVFRgHlmJe = @"";
        } else {
            self.eBVFRgHlmJe = [dataDic objectForKey:@"isbind"];
        }
        if ([dataDic objectForKey:@"isRealName"] == nil || [[dataDic objectForKey:@"isRealName"] isKindOfClass:NSNull.class]) {
            self.eGUWxuLgnjhAm = @"";
        } else {
            self.eGUWxuLgnjhAm = [dataDic objectForKey:@"isRealName"];
        }
        if ([dataDic objectForKey:@"isRealNameBind"] == nil || [[dataDic objectForKey:@"isRealNameBind"] isKindOfClass:NSNull.class]) {
            self.eGUWxuLgnjhAmBind = @"";
        } else {
            self.eGUWxuLgnjhAmBind = [dataDic objectForKey:@"isRealNameBind"];
        }
        
    }
    [super nBKdrTomXLJQV:dict];
}


@end
