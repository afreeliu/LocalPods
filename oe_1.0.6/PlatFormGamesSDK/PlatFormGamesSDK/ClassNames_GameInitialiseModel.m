

#import "ClassNames_GameInitialiseModel.h"

@interface ClassNames_GameInitialiseModel ()

@property (nonatomic, readwrite, copy) NSString *varNames_channel_id;
@property (nonatomic, readwrite, copy) NSString *varNames_format;
@property (nonatomic, readwrite, copy) NSString *varNames_game_ver;
@property (nonatomic, readwrite, copy) NSString *varNames_gid;
@property (nonatomic, readwrite, copy) NSString *varNames_is_ball;
@property (nonatomic, readwrite, copy) NSString *varNames_is_protocol;
@property (nonatomic, readwrite, copy) NSString *varNames_lang;
@property (nonatomic, readwrite, copy) NSString *varNames_set_url;
@property (nonatomic, readwrite, copy) NSString *varNames_sub_gid;
@property (nonatomic, readwrite, copy) NSString *varNames_switch_1login;
@property (nonatomic, readwrite, copy) NSString *varNames_switch_appleCheck;
@property (nonatomic, readwrite, copy) NSString *varNames_switch_bind;
@property (nonatomic, readwrite, copy) NSString *varNames_switch_password;
@property (nonatomic, readwrite, copy) NSString *varNames_url;
@end

@implementation ClassNames_GameInitialiseModel

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
    methodNames_debugLog(dict);
    if ([[dict objectForKey:@"data"] isKindOfClass:NSDictionary.class]) {
        NSDictionary *varNames_tmpDic = [dict objectForKey:@"data"];
        if ([varNames_tmpDic objectForKey:@"channel_id"] == nil || [[varNames_tmpDic objectForKey:@"channel_id"] isKindOfClass:NSNull.class]) {
            self.varNames_channel_id = @"";
        } else {
            self.varNames_channel_id = [varNames_tmpDic objectForKey:@"channel_id"];
        }
        if ([varNames_tmpDic objectForKey:@"format"] == nil || [[varNames_tmpDic objectForKey:@"format"] isKindOfClass:NSNull.class]) {
            self.varNames_format = @"";
        } else {
            self.varNames_format = [varNames_tmpDic objectForKey:@"format"];
        }
        if ([varNames_tmpDic objectForKey:@"game_ver"] == nil || [[varNames_tmpDic objectForKey:@"game_ver"] isKindOfClass:NSNull.class]) {
            self.varNames_game_ver = @"";
        } else {
            self.varNames_game_ver = [varNames_tmpDic objectForKey:@"game_ver"];
        }
        if ([varNames_tmpDic objectForKey:@"gid"] == nil || [[varNames_tmpDic objectForKey:@"gid"] isKindOfClass:NSNull.class]) {
            self.varNames_gid = @"";
        } else {
            self.varNames_gid = [varNames_tmpDic objectForKey:@"gid"];
        }
        if ([varNames_tmpDic objectForKey:@"is_ball"] == nil || [[varNames_tmpDic objectForKey:@"is_ball"] isKindOfClass:NSNull.class]) {
            self.varNames_is_ball = @"";
        } else {
            self.varNames_is_ball = [varNames_tmpDic objectForKey:@"is_ball"];
        }
        if ([varNames_tmpDic objectForKey:@"is_protocol"] == nil || [[varNames_tmpDic objectForKey:@"is_protocol"] isKindOfClass:NSNull.class]) {
            self.varNames_is_protocol = @"";
        } else {
            self.varNames_is_protocol = [varNames_tmpDic objectForKey:@"is_protocol"];
        }
        if ([varNames_tmpDic objectForKey:@"lang"] == nil || [[varNames_tmpDic objectForKey:@"lang"] isKindOfClass:NSNull.class]) {
            self.varNames_lang = @"";
        } else {
            self.varNames_lang = [varNames_tmpDic objectForKey:@"lang"];
        }
        if ([varNames_tmpDic objectForKey:@"set_url"] == nil || [[varNames_tmpDic objectForKey:@"set_url"] isKindOfClass:NSNull.class]) {
            self.varNames_set_url = @"";
        } else {
            self.varNames_set_url = [varNames_tmpDic objectForKey:@"set_url"];
        }
        if ([varNames_tmpDic objectForKey:@"sub_gid"] == nil || [[varNames_tmpDic objectForKey:@"sub_gid"] isKindOfClass:NSNull.class]) {
            self.varNames_sub_gid = @"";
        } else {
            self.varNames_sub_gid = [varNames_tmpDic objectForKey:@"sub_gid"];
        }
        if ([varNames_tmpDic objectForKey:@"switch_1login"] == nil || [[varNames_tmpDic objectForKey:@"switch_1login"] isKindOfClass:NSNull.class]) {
            self.varNames_switch_1login = @"";
        } else {
            self.varNames_switch_1login = [varNames_tmpDic objectForKey:@"switch_1login"];
        }
        if ([varNames_tmpDic objectForKey:@"switch_appleCheck"] == nil || [[varNames_tmpDic objectForKey:@"switch_appleCheck"] isKindOfClass:NSNull.class]) {
            self.varNames_switch_appleCheck = @"";
        } else {
            self.varNames_switch_appleCheck = [varNames_tmpDic objectForKey:@"switch_appleCheck"];
        }
        if ([varNames_tmpDic objectForKey:@"switch_bind"] == nil || [[varNames_tmpDic objectForKey:@"switch_bind"] isKindOfClass:NSNull.class]) {
            self.varNames_switch_bind = @"";
        } else {
            self.varNames_switch_bind = [varNames_tmpDic objectForKey:@"switch_bind"];
        }
        if ([varNames_tmpDic objectForKey:@"switch_password"] == nil || [[varNames_tmpDic objectForKey:@"switch_password"] isKindOfClass:NSNull.class]) {
            self.varNames_switch_password = @"";
        } else {
            self.varNames_switch_password = [varNames_tmpDic objectForKey:@"switch_password"];
        }
        if ([varNames_tmpDic objectForKey:@"url"] == nil || [[varNames_tmpDic objectForKey:@"url"] isKindOfClass:NSNull.class]) {
            self.varNames_url = @"";
        } else {
            self.varNames_url = [varNames_tmpDic objectForKey:@"url"];
        }
    }
    [super methodNames_modelWithDict:dict];
}


@end
