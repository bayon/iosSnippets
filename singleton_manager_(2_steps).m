// singleton manager (2 steps)
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: AE8486CE-C8A1-4AFB-B8DC-852021315863
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 // singleton manager (2 steps) 
 //.h
 #import <Foundation/Foundation.h>
 
 @interface Manager : NSObject
 {
 
 }
 //1
 + (id)sharedManager;
 
 @end
 */
/*
 //.m
 //2
 #pragma mark Singleton Methods
 
 + (id)sharedManager {
 static Manager *sharedManager = nil;
 static dispatch_once_t onceToken;
 dispatch_once(&onceToken, ^{
 sharedManager = [[self alloc] init];
 });
 return sharedManager;
 }
 - (id)init
 {
 self = [super init];
 if (self) {
 //inits
 
 
 }
 return self;
 }
 
 
 
 
 */