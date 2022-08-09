

#import "DUBVqmhD.h"

@interface DUBVqmhD ()
@property (nonatomic, readwrite, copy) NSString *eZkgPzphbNd;
@property (nonatomic, readwrite, copy) NSString *efgaebwNo;
@property (nonatomic, readwrite, copy) NSString *eiEcDOZ;
@end

@implementation DUBVqmhD

- (void)keNYLwaozmrC:(NSString *)url parameters:(NSDictionary *)para success:(kuevfLqnwkPI)successBlock failure:(kApwWSJ)errBlock {
    kbOZhoQJ(url);
    kbOZhoQJ(para);
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
    
    
    kbOZhoQJ(dict);
    if ([[dict objectForKey:@"data"] isKindOfClass:NSDictionary.class]) {
        NSDictionary *dataDic = [dict objectForKey:@"data"];
        if ([dataDic objectForKey:@"order_code"] == nil || [[dataDic objectForKey:@"order_code"] isKindOfClass:NSNull.class]) {
            self.eZkgPzphbNd = @"";
        } else {
            self.eZkgPzphbNd = [dataDic objectForKey:@"order_code"];
        }
        if ([dataDic objectForKey:@"pay_type"] == nil || [[dataDic objectForKey:@"pay_type"] isKindOfClass:NSNull.class]) {
            self.efgaebwNo = @"";
        } else {
            self.efgaebwNo = [dataDic objectForKey:@"pay_type"];
        }
        if ([dataDic objectForKey:@"pay_url"] == nil || [[dataDic objectForKey:@"pay_url"] isKindOfClass:NSNull.class]) {
            self.eiEcDOZ = @"";
        } else {
            self.eiEcDOZ = [dataDic objectForKey:@"pay_url"];
        }
    }
    [super ketkHWVi:dict];
}


@end
