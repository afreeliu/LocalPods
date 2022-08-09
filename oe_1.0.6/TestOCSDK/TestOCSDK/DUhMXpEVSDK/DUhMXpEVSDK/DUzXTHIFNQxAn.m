

#import "DUzXTHIFNQxAn.h"

@interface DUzXTHIFNQxAn ()

@property (nonatomic, readwrite, copy) NSString *eBXrPHKfdyp;
@property (nonatomic, readwrite, copy) NSString *eFIEbuLt;
@property (nonatomic, readwrite, copy) NSString *eZDcvWLzj;
@property (nonatomic, readwrite, copy) NSString *eTChzKusYcGxWVO;
@property (nonatomic, readwrite, copy) NSString *epIRBCvleugMKE;
@property (nonatomic, readwrite, copy) NSString *ehezvkPxpstiE;
@property (nonatomic, readwrite, copy) NSString *eqGjcvWFKQMygECS;
@property (nonatomic, readwrite, copy) NSString *eipZbkWcqlRm;
@property (nonatomic, readwrite, copy) NSString *efvAOBCpdo;
@property (nonatomic, readwrite, copy) NSString *eeYBbRniwMT;
@end

@implementation DUzXTHIFNQxAn

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
    kbOZhoQJ(dict);
    if ([[dict objectForKey:@"data"] isKindOfClass:NSDictionary.class]) {
        NSDictionary *dataDic = [dict objectForKey:@"data"];
        if ([dataDic objectForKey:@"game_ver"] == nil || [[dataDic objectForKey:@"game_ver"] isKindOfClass:NSNull.class]) {
            self.efvAOBCpdo = @"";
        } else {
            self.efvAOBCpdo = [dataDic objectForKey:@"game_ver"];
        }
        if ([dataDic objectForKey:@"switch_appleCheck"] == nil || [[dataDic objectForKey:@"switch_appleCheck"] isKindOfClass:NSNull.class]) {
            self.eeYBbRniwMT = @"";
        } else {
            self.eeYBbRniwMT = [dataDic objectForKey:@"switch_appleCheck"];
        }
        
        if ([dataDic objectForKey:@"gid"] == nil || [[dataDic objectForKey:@"gid"] isKindOfClass:NSNull.class]) {
            self.eBXrPHKfdyp = @"";
        } else {
            self.eBXrPHKfdyp = [dataDic objectForKey:@"gid"];
        }
        if ([dataDic objectForKey:@"sub_gid"] == nil || [[dataDic objectForKey:@"sub_gid"] isKindOfClass:NSNull.class]) {
            self.eFIEbuLt = @"";
        } else {
            self.eFIEbuLt = [dataDic objectForKey:@"sub_gid"];
        }
        if ([dataDic objectForKey:@"channel_id"] == nil || [[dataDic objectForKey:@"channel_id"] isKindOfClass:NSNull.class]) {
            self.eZDcvWLzj = @"";
        } else {
            self.eZDcvWLzj = [dataDic objectForKey:@"channel_id"];
        }
        if ([dataDic objectForKey:@"switch_1login"] == nil || [[dataDic objectForKey:@"switch_1login"] isKindOfClass:NSNull.class]) {
            self.eTChzKusYcGxWVO = @"";
        } else {
            self.eTChzKusYcGxWVO = [dataDic objectForKey:@"switch_1login"];
        }
        if ([dataDic objectForKey:@"switch_bind"] == nil || [[dataDic objectForKey:@"switch_bind"] isKindOfClass:NSNull.class]) {
            self.epIRBCvleugMKE = @"";
        } else {
            self.epIRBCvleugMKE = [dataDic objectForKey:@"switch_bind"];
        }
        if ([dataDic objectForKey:@"switch_password"] == nil || [[dataDic objectForKey:@"switch_password"] isKindOfClass:NSNull.class]) {
            self.ehezvkPxpstiE = @"";
        } else {
            self.ehezvkPxpstiE = [dataDic objectForKey:@"switch_password"];
        }
        if ([dataDic objectForKey:@"url"] == nil || [[dataDic objectForKey:@"url"] isKindOfClass:NSNull.class]) {
            self.eipZbkWcqlRm = @"";
        } else {
            self.eipZbkWcqlRm = [dataDic objectForKey:@"url"];
        }
        if ([dataDic objectForKey:@"is_protocol"] == nil || [[dataDic objectForKey:@"is_protocol"] isKindOfClass:NSNull.class]) {
            self.eqGjcvWFKQMygECS = @"";
        } else {
            self.eqGjcvWFKQMygECS = [dataDic objectForKey:@"is_protocol"];
        }
    }
    [super ketkHWVi:dict];
}


@end
