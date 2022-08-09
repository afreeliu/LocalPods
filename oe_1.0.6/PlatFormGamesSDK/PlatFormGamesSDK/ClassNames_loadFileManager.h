


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface ClassNames_loadFileManager: NSObject

+ (instancetype)shareLoadFileManager;
#pragma mark ---------- 获取SDK对应的Bundle   Bundle 的名称为：PlatFormGamesSDK
- (NSBundle *)methodNames_getMyBundle;

#pragma mark ---------- 根据图片名称获取bundle中的图片，如果不存在则返回nil
- (UIImage *)methodNames_getImage:(NSString *)varNames_argImageName;

#pragma mark ---------- 读取txt文件的内容，根据key值返回value。如果key为空值，那么返回的内容是读取的一个txt的文件内容，不是json内容
- (NSString *)methodNames_initLoadTxtFile:(NSString *)varNames_argFileName
           subMethodNames_getValueFromKey:(NSString *)varNames_argKey;

#pragma mark ---------- 读取plist文件的内容, 根据key值返回value
- (NSString *)methodNames_initLoadPlistFile:(NSString *)varNames_argFileName
             subMethodNames_getValueFromKey:(NSString *)varNames_argKey;

#pragma mark ---------- 读取strings文件的内容, strings文件直接可以根据key值获取value值
- (NSString *)methodNames_initLoadStringsFile:(NSString *)varNames_agrFileName
               subMethodNames_getValueFromKey:(NSString *)varNames_argKey;

#pragma mark ---------- 读取csv文件的内容, 可根据key值直接获取value
- (NSString *)methodNames_initLoadCsvFile:(NSString *)varNames_argFileName
           subMethodNames_getValueFromKey:(NSString *)varNames_argKey;

#pragma mark ---------- 读取json文件的内容, 可根据key值直接获取value
- (NSString *)methodNames_initLoadJsonFile:(NSString *)varNames_argFileName
            subMethodNames_getValueFromKey:(NSString *)varNames_argKey;

#pragma mark ---------- 读取xml文件的内容, 根据key从block返回value值
- (void)methodNames_initLoadXmlFile:(NSString *)varNames_argFileName
              subMethodNames_argKey:(NSString *)varNames_argKey
                    subMethodNames_:(void(^)(NSString *varNames_argValue))methodNames_finishLoadXMLFileAndGetValue;
@end
