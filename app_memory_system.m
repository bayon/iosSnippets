// APP MEMORY SYSTEM
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 9F89CACE-DF70-4F62-A906-965DD8C404A6
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 //APP MEMORY SYSTEM:
 
 //MEMORY ( delegate .h file)
 @class AppMemory;
 
 // MEMORY ( delegate .h file) interface
 AppMemory *theAppDataObject;
 
 //MEMORY (delegate.h)
 //SHORT TERM MEMORY BANK
 @property(nonatomic,retain)AppMemory *theAppDataObject;
 
 //------------------------------
 //MEMORY (delegate .m)
 #import "AppDelegateProtocol.h"
 #import "AppMemory.h"
 
 //MEMORY (delegate .m) implementation
 @synthesize theAppDataObject;
 
 //MEMORY ( delegate .m   Initiation Method  )
 -(id)init{
 
 self.theAppDataObject = [[AppMemory alloc]init];
 return [super init];
 
 }
 
 // view .h
 #define myAppDelegate (AppDelegate *) [[UIApplication sharedApplication] delegate]
 
 
 
 // view .m
 //import :MEMORY OBJECT NEEDS
 #import "AppDelegateProtocol.h"
 #import "AppMemory.h"
 #import "AppDelegate.h"
 
 
 // ACTION : GET MEMORY
 -(AppMemory*)theAppDataObject;
 {
 id<AppDelegateProtocol> theDelegate = (id<AppDelegateProtocol>) [UIApplication sharedApplication].delegate;
 AppMemory *theDataObject ;
 theDataObject = (AppMemory*)theDelegate.theAppDataObject;
 return theDataObject;
 
 }
 
 //MEMORY USE
 -(void) anyMethod{
 //MEM Recall
 AppMemory *theDataObject = [self theAppDataObject];
 }
 
 //---INCLUDED FILES ==============================================
 
 //AppDelegateProtocol.h
 
 #import <Foundation/Foundation.h>
 @class AppDataObject;
 @protocol AppDelegateProtocol 
 -(AppDataObject *)theAppDataObject;
 @end
 
 
 //  AppDataObject.h
 
 #import <Foundation/Foundation.h>
 @interface AppDataObject : NSObject{
 
 }
 @end
 
 
 //  AppDataObject.m
 
 #import "AppDataObject.h"
 @implementation AppDataObject
 @end
 
 
 
 
 // AppMemory.h
 
 #import <Foundation/Foundation.h>//-
 #import "AppDataObject.h"//-
 
 @interface AppMemory : AppDataObject{
 NSString *mem_text1;
 NSString *mem_text2;
 }
 @property(nonatomic,copy)NSString *mem_text1;
 @property(nonatomic,copy)NSString *mem_text2;
 
 @end
 
 //AppMemory.m
 
 #import "AppMemory.h"
 
 @implementation AppMemory
 
 @synthesize mem_text1;
 @synthesize mem_text2;
 
 @end
 
 //------>Use AppMemory
 AppMemory *theDataObject = [self theAppDataObject];
 //theDataObject.yourVariable

 */

