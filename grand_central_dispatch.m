// Grand Central Dispatch
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 237429B2-01E5-47A4-A291-2B1CB5AB07FC
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
#pragma mark - Grand Central Dispatch
 .h 
 //method for grandCentralDispatch
 -(void)methodOne;
 .m
 #import <dispatch/dispatch.h>
 
 //CALL: from inside a method
 // Grand Central Dispatch: set up
 // Register for our table view cell notification
 [[NSNotificationCenter defaultCenter] addObserver:self
 selector:@selector(methodOne:)
 name:@"notification_one"
 object:nil];
 [self methodOne];
 
 
 
 //method for grandCentralDispatch
 -(void)methodOne{
 dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0ul);
 dispatch_async(queue, ^{
 NSLog(@"\n FILE->FUNCTION:GCD GLOBAL QUEUE: %s",__FUNCTION__);
 NSMutableArray *array1 = [[NSMutableArray alloc] init];
 
 [array1 addObject:@"One"];
 [array1 addObject:@"Two"];
 [array1 addObject:@"Three"];
 
 dispatch_async(dispatch_get_main_queue(), ^{
 NSLog(@"\n FILE->FUNCTION:GCD MAIN QUEUE: %s",__FUNCTION__);
 NSLog(@"%@",array1);
 });
 });
 }

 
#pragma mark -
*/