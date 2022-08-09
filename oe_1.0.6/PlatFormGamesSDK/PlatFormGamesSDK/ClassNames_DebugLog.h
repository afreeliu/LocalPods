

#import <Foundation/Foundation.h>

static inline BOOL methodNames_getDebugLogConfig() {
    NSString *varNames_tmpbundlePath = [[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:@"PlatFormGamesSDK.bundle"];
    NSBundle *varNames_tmpbundle = [NSBundle bundleWithPath:varNames_tmpbundlePath];
    NSString *varNames_tmppath = [varNames_tmpbundle pathForResource:@"PFGames" ofType:@"plist"];
    NSDictionary *varNames_tmpdic = [NSDictionary dictionaryWithContentsOfFile:varNames_tmppath];
    BOOL varNames_tmpdebugLog = YES;
        varNames_tmpdebugLog = [[varNames_tmpdic objectForKey:@"debugLog"]boolValue];
    return varNames_tmpdebugLog;
}


static inline void methodNames_debugLog(id string) {
    if (!methodNames_getDebugLogConfig()) {
        NSLog(@"=============================");
        NSLog(@"=%@=", string);
        NSLog(@"=============================");
    }
}
