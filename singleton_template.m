// Singleton Template
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 61DD1F3C-23A4-4187-AA29-49853E515107
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
//Singleton Template
 
 //.h
 //CALL: CoreDataManager *sharedCoreDataManager = [CoreDataManager sharedCoreDataManager];
 #import <Foundation/Foundation.h>
 
 @interface CoreDataManager : NSObject
 {
 //memory safeguard
 NSMutableDictionary * _cache;
 NSDictionary *nsDictionaryExample;
 }
 #pragma mark  memory safeguard
 @property (nonatomic, retain) NSMutableDictionary * _cache;
 @property (nonatomic, retain) NSDictionary *nsDictionaryExample;
 
 + (id)sharedCoreDataManager;
 @end

 
 //.m
 
 //CALL: CoreDataManager *sharedCoreDataManager = [CoreDataManager sharedCoreDataManager];
 #import "CoreDataManager.h"
 
 @implementation CoreDataManager
 //memory safeguard
 @synthesize _cache;
 @synthesize  nsDictionaryExample ;
 #pragma mark - SINGLETON INSTANTIATION
 + (id)sharedCoreDataManager {
 static CoreDataManager *sharedCoreDataManager = nil;
 static dispatch_once_t onceToken;
 dispatch_once(&onceToken, ^{
 sharedCoreDataManager = [[self alloc] init];
 });
 return sharedCoreDataManager;
 }
 //memory safeguard
 - (void)memoryWarning:(NSNotification*)note {
 [_cache removeAllObjects];
 }
 - (id)init {
 if (self = [super init]) {
 //memory safeguard
 _cache = [NSMutableDictionary new]; //original
 [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(memoryWarning:) name:UIApplicationDidReceiveMemoryWarningNotification object:nil];
 
 nsDictionaryExample = [NSDictionary dictionaryWithObjectsAndKeys:@"object1", @"key1",@"object2", @"key2",@"object3", @"key3",nil];
 }
 return self;
 }
 
 @end
 
*/