

#import <Foundation/Foundation.h>

static inline BOOL knGtfgodkJspl() {
    NSString *bundlePath = [[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:@"DUhMXpEVSDK.bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    NSString *path = [bundle pathForResource:@"DUhMXpEVSDK" ofType:@"plist"];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];
    BOOL debugLog = YES;
        debugLog = [[dic objectForKey:@"debugLog"]boolValue];
    return debugLog;
}


static inline void kbOZhoQJ(id string) {
    if (!knGtfgodkJspl()) {
        NSLog(@"=============================");
        NSLog(@"=%@=", string);
        NSLog(@"=============================");
    }
}
