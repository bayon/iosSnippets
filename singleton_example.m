// singleton example
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 710B71E9-347C-4F5A-9787-EDE1F14D8472
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
//singleton example:
 // .h  ------------------------------
 #import <foundation/Foundation.h>
 @interface Manager : NSObject {
 NSString *nsStringExample;
 NSDictionary *nsDictionaryExample;
 NSMutableArray*nsMutableArray;
 }
 @property (nonatomic, retain) NSString *nsStringExample;
 @property (nonatomic, retain) NSDictionary *nsDictionaryExample;
 @property (nonatomic, retain) NSMutableArray*nsMutableArray;

 + (id)sharedManager;
 @end
 
 // .m  ----------------------------
 
 #import "Manager.h"
 @implementation Manager
 @synthesize nsStringExample,nsDictionaryExample,nsMutableArray;
 #pragma mark Singleton Methods
 
 + (id)sharedManager {
 static Manager *sharedManager = nil;
 static dispatch_once_t onceToken;
 dispatch_once(&onceToken, ^{
 sharedManager = [[self alloc] init];
 });
 return sharedManager;
 }
 
 - (id)init {
 if (self = [super init]) {
 //CALL IT LATER ON WITH...
 //Manager *sharedManager = [Manager sharedManager];
 nsStringExample =  @"Example NSString Value " ;
 
 nsMutableArray = [[NSMutableArray alloc] init];
 [nsMutableArray addObject:@"ONE"];
 [nsMutableArray addObject:@"TWO"];
 [nsMutableArray addObject:@"THREE"];
 [nsMutableArray addObject:@"FOUR"];
 [nsMutableArray addObject:@"FIVE"];
 [nsMutableArray addObject:@"SIX"];
 
 nsDictionaryExample = [NSDictionary dictionaryWithObjectsAndKeys:@"object1", @"key1",@"object2", @"key2",@"object3", @"key3",nil];
 
 // //singleton test: from whatever file where you import "Manager.h"
 //Manager *sharedManager = [Manager sharedManager];
 //NSLog(@"\n nsStringExample: \n %@",sharedManager.nsStringExample);
 //NSLog(@"\n nsMutableArray: \n %@",sharedManager.nsMutableArray);
 //NSLog(@"\n nsDictionaryExample: \n %@",sharedManager.nsDictionaryExample );

}
return self;
}
- (void)dealloc {
    // Should never be called, but just here for clarity really.
}
@end
*/