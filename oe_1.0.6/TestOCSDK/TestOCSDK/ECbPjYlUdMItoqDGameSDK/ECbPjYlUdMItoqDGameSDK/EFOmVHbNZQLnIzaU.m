

#import "EFOmVHbNZQLnIzaU.h"

@interface EFOmVHbNZQLnIzaU ()

@property (nonatomic, readwrite, copy) NSString *eKfhwHQY;
@property (nonatomic, readwrite, copy) NSString *ezyIdfihWu;
@property (nonatomic, readwrite, copy) NSString *eTnzGMHXYDpEWOfA;
@property (nonatomic, readwrite, copy) NSString *ekeHRaqgxn;
@property (nonatomic, readwrite, copy) NSString *eLeyQavbNndF;
@property (nonatomic, readwrite, copy) NSString *eLBlDMy;
@property (nonatomic, readwrite, copy) NSString *eizlFjbce;
@property (nonatomic, readwrite, copy) NSString *etiBSOuXD;
@property (nonatomic, readwrite, copy) NSString *esJblgeVukFSnA;
@property (nonatomic, readwrite, copy) NSString *eqPoJWHcpCk;
@end

@implementation EFOmVHbNZQLnIzaU

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
    nhdDGpskXLRwrS(dict);
    if ([[dict objectForKey:@"data"] isKindOfClass:NSDictionary.class]) {
        NSDictionary *dataDic = [dict objectForKey:@"data"];
        if ([dataDic objectForKey:@"game_ver"] == nil || [[dataDic objectForKey:@"game_ver"] isKindOfClass:NSNull.class]) {
            self.esJblgeVukFSnA = @"";
        } else {
            self.esJblgeVukFSnA = [dataDic objectForKey:@"game_ver"];
        }
        if ([dataDic objectForKey:@"switch_appleCheck"] == nil || [[dataDic objectForKey:@"switch_appleCheck"] isKindOfClass:NSNull.class]) {
            self.eqPoJWHcpCk = @"";
        } else {
            self.eqPoJWHcpCk = [dataDic objectForKey:@"switch_appleCheck"];
        }
        
        if ([dataDic objectForKey:@"gid"] == nil || [[dataDic objectForKey:@"gid"] isKindOfClass:NSNull.class]) {
            self.eKfhwHQY = @"";
        } else {
            self.eKfhwHQY = [dataDic objectForKey:@"gid"];
        }
        if ([dataDic objectForKey:@"sub_gid"] == nil || [[dataDic objectForKey:@"sub_gid"] isKindOfClass:NSNull.class]) {
            self.ezyIdfihWu = @"";
        } else {
            self.ezyIdfihWu = [dataDic objectForKey:@"sub_gid"];
        }
        if ([dataDic objectForKey:@"channel_id"] == nil || [[dataDic objectForKey:@"channel_id"] isKindOfClass:NSNull.class]) {
            self.eTnzGMHXYDpEWOfA = @"";
        } else {
            self.eTnzGMHXYDpEWOfA = [dataDic objectForKey:@"channel_id"];
        }
        if ([dataDic objectForKey:@"switch_1login"] == nil || [[dataDic objectForKey:@"switch_1login"] isKindOfClass:NSNull.class]) {
            self.ekeHRaqgxn = @"";
        } else {
            self.ekeHRaqgxn = [dataDic objectForKey:@"switch_1login"];
        }
        if ([dataDic objectForKey:@"switch_bind"] == nil || [[dataDic objectForKey:@"switch_bind"] isKindOfClass:NSNull.class]) {
            self.eLeyQavbNndF = @"";
        } else {
            self.eLeyQavbNndF = [dataDic objectForKey:@"switch_bind"];
        }
        if ([dataDic objectForKey:@"switch_password"] == nil || [[dataDic objectForKey:@"switch_password"] isKindOfClass:NSNull.class]) {
            self.eLBlDMy = @"";
        } else {
            self.eLBlDMy = [dataDic objectForKey:@"switch_password"];
        }
        if ([dataDic objectForKey:@"url"] == nil || [[dataDic objectForKey:@"url"] isKindOfClass:NSNull.class]) {
            self.etiBSOuXD = @"";
        } else {
            self.etiBSOuXD = [dataDic objectForKey:@"url"];
        }
        if ([dataDic objectForKey:@"is_protocol"] == nil || [[dataDic objectForKey:@"is_protocol"] isKindOfClass:NSNull.class]) {
            self.eizlFjbce = @"";
        } else {
            self.eizlFjbce = [dataDic objectForKey:@"is_protocol"];
        }
    }
    [super nBKdrTomXLJQV:dict];
}


@end
