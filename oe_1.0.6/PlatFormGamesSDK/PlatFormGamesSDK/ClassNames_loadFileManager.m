




#import "ClassNames_loadFileManager.h"



@interface ClassNames_loadFileManager()<NSXMLParserDelegate>

@property (nonatomic, readwrite, strong) NSBundle *varNames_myBundle;

#pragma mark ---------- txt 文件读取相关
@property (nonatomic, readwrite, strong) NSMutableDictionary *varNames_finishLoadTxtFileDic;
#pragma mark ---------- plist 文件读取相关
@property (nonatomic, readwrite, strong) NSMutableDictionary *varNames_finishLoadPlistFileDic;
#pragma mark ---------- json 文件读取相关
@property (nonatomic, readwrite, strong) NSMutableDictionary *varNames_finishLoadJsonFileDic;
#pragma mark ---------- csv 文件读取相关
@property (nonatomic, readwrite, strong) NSMutableDictionary *varNames_finishLoadCSVFileDic;
#pragma mark ---------- XML 文件读取相关
/// 保存读取了的所有XML文件的内容
@property (nonatomic, readwrite, strong) NSMutableDictionary *varNames_finishLoadXMLFileDic;
/// 临时存储正在读取的XML文件
@property (nonatomic, readwrite, strong) NSMutableDictionary *varNames_currentLoadXMLFileDic;
/// 当前读取的文件
@property (nonatomic, readwrite, copy) NSString *varNames_currentXMLFileName;
@property (nonatomic, readwrite, strong) NSXMLParser *varNames_parser;
@property (nonatomic, readwrite, copy) NSString *varNames_currenttag;
/// 当前需要获取的值对应的key
@property (nonatomic, readwrite, copy) NSString *varNames_currentKey;
@property (nonatomic, readwrite, copy) void (^methodNames_finishLoadXMLFileAndGetValue)(NSString *varNames_argValue);
#pragma mark -----------------------------------------------------------


@end

@implementation ClassNames_loadFileManager


+ (instancetype)shareLoadFileManager {
    static ClassNames_loadFileManager *varNames_tmpFileManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        varNames_tmpFileManager = [[ClassNames_loadFileManager alloc]init];
    });
    return varNames_tmpFileManager;
}


-(instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

#pragma mark ---------- 获取SDK对应的bBundle
- (NSBundle *)methodNames_getMyBundle {
    if (!self.varNames_myBundle) {
        NSString *varNames_tmpBundlePath = [[NSBundle mainBundle]pathForResource:@"PlatFormGamesSDK"
                                                                          ofType:@"bundle"];
        self.varNames_myBundle = [NSBundle bundleWithPath:varNames_tmpBundlePath];
    }
    return self.varNames_myBundle;
}

#pragma mark ---------- 根据图片名称获取bundle中的图片，如果不存在则返回nil
- (UIImage *)methodNames_getImage:(NSString *)varNames_argImageName {
    if (![self methodNames_getMyBundle]) {
        NSLog(@"无法获取 bundle 文件夹!!!!!!!!!!");
        return nil;
    }
    if ([varNames_argImageName componentsSeparatedByString:@"."].count > 1) {
        NSArray *varNames_tmpArray = [varNames_argImageName componentsSeparatedByString:@"."];
        NSString *varNames_tmpName = varNames_tmpArray[0];
        NSString *varNames_tmpType = varNames_tmpArray[1];
        NSString *varNames_tmpPath = [[self methodNames_getMyBundle] pathForResource:varNames_tmpName ofType:varNames_tmpType];
        UIImage *varNames_tmpImage = [UIImage imageWithContentsOfFile:varNames_tmpPath];
        return varNames_tmpImage;
    } else {
        NSString *varNames_tmpPath = [[self methodNames_getMyBundle] pathForResource:varNames_argImageName ofType:@"png"];
        if (!varNames_tmpPath) {
            varNames_tmpPath = [[self methodNames_getMyBundle] pathForResource:varNames_argImageName ofType:@"jpg"];
        }
        if (!varNames_tmpPath) {
            varNames_tmpPath = [[self methodNames_getMyBundle] pathForResource:varNames_argImageName ofType:@"jpeg"];
        }
        UIImage *varNames_tmpImage = [UIImage imageWithContentsOfFile:varNames_tmpPath];
        return varNames_tmpImage;
    }
}


#pragma mark ---------- 读取txt文件的内容，根据key值返回value。如果key为空值，那么返回的内容是读取的一个txt的文件内容，不是json内容
- (NSString *)methodNames_initLoadTxtFile:(NSString *)varNames_argFileName
           subMethodNames_getValueFromKey:(NSString *)varNames_argKey {
    if ([self.varNames_finishLoadTxtFileDic objectForKey:varNames_argFileName]) {
        if (varNames_argKey.length) {
            NSDictionary *varNames_tmpDic = [self.varNames_finishLoadTxtFileDic objectForKey:varNames_argFileName];
            return [varNames_tmpDic objectForKey:varNames_argKey];
        } else {
            NSString *varNames_tmpDic = [self.varNames_finishLoadTxtFileDic objectForKey:varNames_argFileName];
            return varNames_tmpDic;
        }
    }
    NSString *varNames_tmpPath = [[self methodNames_getMyBundle] pathForResource:varNames_argFileName
                                                                          ofType:@"txt"];
    if (varNames_argKey.length) {
        NSString *varNames_tmpstring = [NSString stringWithContentsOfFile:varNames_tmpPath encoding:NSUTF8StringEncoding error:nil];
        NSData *varNames_tmpData = [varNames_tmpstring dataUsingEncoding:NSUTF8StringEncoding];
        
        NSDictionary *varNames_tmpDic = [NSJSONSerialization JSONObjectWithData:varNames_tmpData options:NSJSONReadingMutableContainers error:nil];
        [self.varNames_finishLoadTxtFileDic setValue:varNames_tmpDic forKey:varNames_argFileName];
        return [varNames_tmpDic objectForKey:varNames_argKey];
    } else {
        NSString *varNames_tmpDic = [NSString stringWithContentsOfFile:varNames_tmpPath encoding:NSUTF8StringEncoding error:nil];
        return varNames_tmpDic;
    }
}

#pragma mark ---------- 读取plist文件的内容, 根据key值返回value
- (NSString *)methodNames_initLoadPlistFile:(NSString *)varNames_argFileName
             subMethodNames_getValueFromKey:(NSString *)varNames_argKey {
    if ([self.varNames_finishLoadPlistFileDic objectForKey:varNames_argFileName]) {
        NSDictionary *varNames_tmpDic = [self.varNames_finishLoadPlistFileDic objectForKey:varNames_argFileName];
        return [varNames_tmpDic objectForKey:varNames_argKey];
    }
    
    NSString *varNames_tmpPath = [[self methodNames_getMyBundle] pathForResource:varNames_argFileName
                                                                          ofType:@"plist"];
    NSDictionary *varNames_tmpDic = [NSDictionary dictionaryWithContentsOfFile:varNames_tmpPath];
    [self.varNames_finishLoadPlistFileDic setValue:varNames_tmpDic forKey:varNames_argFileName];
    return [varNames_tmpDic objectForKey:varNames_argKey];
}
#pragma mark ---------- 读取strings文件的内容, strings文件直接可以根据key值获取value值
- (NSString *)methodNames_initLoadStringsFile:(NSString *)varNames_agrFileName
               subMethodNames_getValueFromKey:(NSString *)varNames_argKey {
    NSString *varNames_tmpValue = [[self methodNames_getMyBundle] localizedStringForKey:varNames_argKey
                                                                                  value:@""
                                                                                  table:varNames_agrFileName];
    return varNames_tmpValue;
}
#pragma mark ---------- 读取csv文件的内容, 可根据key值直接获取value
- (NSString *)methodNames_initLoadCsvFile:(NSString *)varNames_argFileName
           subMethodNames_getValueFromKey:(NSString *)varNames_argKey {
    
    if ([self.varNames_finishLoadCSVFileDic objectForKey:varNames_argFileName]) {
        NSDictionary *varNames_tmpDic = [self.varNames_finishLoadCSVFileDic objectForKey:varNames_argFileName];
        return [varNames_tmpDic objectForKey:varNames_argKey];
    }
    NSString *varNames_tmpFilePsath = [[self methodNames_getMyBundle] pathForResource:varNames_argFileName
                                                                               ofType:@"csv"];
    FILE *varNames_tmpfp = fopen([varNames_tmpFilePsath UTF8String], "r");
    NSMutableDictionary *varNames_tmpDic = [NSMutableDictionary dictionary];
    if (varNames_tmpfp) {
        while (!feof(varNames_tmpfp)) {
            char buff[BUFSIZ];
            fgets(buff, BUFSIZ, varNames_tmpfp);
            //获取的是内容
            NSString *s = [[NSString alloc] initWithUTF8String:(const char *)buff];
            NSString *ss = [s stringByReplacingOccurrencesOfString:@"\r" withString:@""];
            ss = [ss stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            ss = [ss stringByReplacingOccurrencesOfString:@" " withString:@""];
            NSArray *a = [ss componentsSeparatedByString:@"="];
            if (a.count == 2) {
                [varNames_tmpDic setValue:a[1] forKey:a[0]];
            }
        }
    }
    [self.varNames_finishLoadCSVFileDic setValue:varNames_tmpDic forKey:varNames_argFileName];
    if ([varNames_tmpDic objectForKey:varNames_argKey]) {
        return [varNames_tmpDic objectForKey:varNames_argKey];
    }
    return @"";
}
#pragma mark ---------- 读取json文件的内容
- (NSString *)methodNames_initLoadJsonFile:(NSString *)varNames_argFileName
            subMethodNames_getValueFromKey:(NSString *)varNames_argKey {
    
    if ([self.varNames_finishLoadJsonFileDic objectForKey:varNames_argFileName]) {
        NSDictionary *varNames_tmpDic = [self.varNames_finishLoadJsonFileDic objectForKey:varNames_argFileName];
        return [varNames_tmpDic objectForKey:varNames_argKey];
    }
    
    // 获取文件路径
    NSString *varNames_tmpFilePath = [[self methodNames_getMyBundle] pathForResource:varNames_argFileName
                                                                              ofType:@"json"];
    // 将文件数据化
    NSData *varNames_tmpData = [[NSData alloc] initWithContentsOfFile:varNames_tmpFilePath];
    NSDictionary *varNames_tmpDic = [NSJSONSerialization JSONObjectWithData:varNames_tmpData options:NSJSONReadingMutableLeaves error:nil];
    if (varNames_tmpDic) {
        [self.varNames_finishLoadJsonFileDic setValue:varNames_tmpDic forKey:varNames_argFileName];
    }
    return [varNames_tmpDic objectForKey:varNames_argKey];
}
#pragma mark ---------- 读取xml文件的内容, 根据key从block返回value值
- (void)methodNames_initLoadXmlFile:(NSString *)varNames_argFileName
              subMethodNames_argKey:(NSString *)varNames_argKey
                    subMethodNames_:(void(^)(NSString *varNames_argValue))methodNames_finishLoadXMLFileAndGetValue {
    
    if ([self.varNames_finishLoadXMLFileDic objectForKey:varNames_argFileName]) {
        self.varNames_currentLoadXMLFileDic = [self.varNames_finishLoadXMLFileDic objectForKey:varNames_argFileName];
        NSString *varNames_tmpValue = [self.varNames_currentLoadXMLFileDic objectForKey:varNames_argKey];
        self.methodNames_finishLoadXMLFileAndGetValue = methodNames_finishLoadXMLFileAndGetValue;
        methodNames_finishLoadXMLFileAndGetValue(varNames_tmpValue);
        return;
    }
    // 获取文件路径
    NSString *varNames_tmpFilePath = [[self methodNames_getMyBundle] pathForResource:varNames_argFileName ofType:@"xml"];
    self.varNames_currentXMLFileName = varNames_argFileName;
    self.varNames_currentKey = varNames_argKey;
    self.methodNames_finishLoadXMLFileAndGetValue = methodNames_finishLoadXMLFileAndGetValue;
    // 将文件数据化
    NSData *varNames_tmpData = [[NSData alloc] initWithContentsOfFile:varNames_tmpFilePath];
    self.varNames_parser = [[NSXMLParser alloc]initWithData:varNames_tmpData];
    self.varNames_parser.delegate = self;
    [self.varNames_parser parse];
}




#pragma mark ---------- 读取XML 相关文件的协议实现
-(void)parserDidStartDocument:(NSXMLParser *)parser
{
    self.varNames_currentLoadXMLFileDic = [NSMutableDictionary dictionary];
}

-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    self.varNames_currenttag = elementName;
    if (attributeDict && attributeDict.allKeys) {
        [self.varNames_currentLoadXMLFileDic setValuesForKeysWithDictionary:attributeDict];
    }
}



-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    if (string && self.varNames_currenttag) {
        [self.varNames_currentLoadXMLFileDic setValue:string forKey:self.varNames_currenttag];
    }
    if ([self.varNames_currenttag isEqualToString:self.varNames_currentKey]) {
        self.methodNames_finishLoadXMLFileAndGetValue(string);
    }
}

-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    self.varNames_currenttag = nil;
}

-(void)parserDidEndDocument:(NSXMLParser *)parser
{
    [self.varNames_finishLoadXMLFileDic setValue:self.varNames_currentLoadXMLFileDic forKey:self.varNames_currentXMLFileName];
    self.varNames_currentXMLFileName = nil;
    self.varNames_currenttag = nil;
    self.varNames_currentKey = nil;
    self.varNames_currentLoadXMLFileDic = nil;
}






#pragma mark ---------- lazy load
-(NSMutableDictionary *)varNames_finishLoadTxtFileDic {
    if (!_varNames_finishLoadTxtFileDic) {
        _varNames_finishLoadTxtFileDic = [NSMutableDictionary dictionary];
    }
    return _varNames_finishLoadTxtFileDic;
}

-(NSMutableDictionary *)varNames_finishLoadPlistFileDic {
    if (!_varNames_finishLoadPlistFileDic) {
        _varNames_finishLoadPlistFileDic = [NSMutableDictionary dictionary];
    }
    return _varNames_finishLoadPlistFileDic;
}

-(NSMutableDictionary *)varNames_finishLoadCSVFileDic {
    if (!_varNames_finishLoadCSVFileDic) {
        _varNames_finishLoadCSVFileDic = [NSMutableDictionary dictionary];
    }
    return _varNames_finishLoadCSVFileDic;
}

-(NSMutableDictionary *)varNames_finishLoadXMLFileDic {
    if (!_varNames_finishLoadXMLFileDic) {
        _varNames_finishLoadXMLFileDic = [NSMutableDictionary dictionary];
    }
    return _varNames_finishLoadXMLFileDic;
}

-(NSMutableDictionary *)varNames_finishLoadJsonFileDic {
    if (!_varNames_finishLoadJsonFileDic) {
        _varNames_finishLoadJsonFileDic = [NSMutableDictionary dictionary];
    }
    return _varNames_finishLoadJsonFileDic;
}

@end
