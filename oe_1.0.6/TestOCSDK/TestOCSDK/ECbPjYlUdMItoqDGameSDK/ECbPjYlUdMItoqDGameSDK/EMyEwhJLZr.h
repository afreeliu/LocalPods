

#import <Foundation/Foundation.h>

static inline BOOL neLzEnvOYdZa() {
    NSString *bundlePath = [[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:@"ECbPjYlUdMItoqDGameSDK.bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    NSString *path = [bundle pathForResource:@"ECbPjYlUdMItoqDGameSDK" ofType:@"plist"];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];
    BOOL debugLog = YES;
        debugLog = [[dic objectForKey:@"debugLog"]boolValue];
    return debugLog;
}


static inline void nhdDGpskXLRwrS(id string) {
    if (!neLzEnvOYdZa()) {
        NSLog(@"=============================");
        NSLog(@"=%@=", string);
        NSLog(@"=============================");
    }
}
