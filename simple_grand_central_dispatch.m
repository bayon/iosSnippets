// simple Grand Central Dispatch
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: B25416C5-3562-419E-9775-1C0C157731CE
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //simple Grand Central Dispatch
 .h
 //Grand Central Dispatch Queue
 dispatch_queue_t mConcurrentQueue;
 UILabel *parameterLabel;
 NSString *parameterString;
 @property (nonatomic,retain)  UILabel *parameterLabel;
 @property (nonatomic,retain)  NSString *parameterString;
 .m
 //Grand Central Dispatch:Function
 //just above implementation
 void (^tFunct1)(UILabel *,NSString *) = ^(UILabel *parameterLabel, NSString *parameterString)
 {
 //background thread work
 //work code here
 NSLog(@"\n grunt work code here!");
 //INTERACT WITH UI ONLY ON MAIN THREAD!
 dispatch_async(dispatch_get_main_queue(),^(void)
 {
 //make change on the UI
 //UI code here
 NSLog(@"\n UI code here!");
 }
 );
 };
 
 -(void)simpleDispatch{
 //Inside a method
 //Grand Central Dispatch:Call Queue and Functions
 mConcurrentQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0);
 
 dispatch_async( mConcurrentQueue, ^{ tFunct1  (self->parameterLabel,parameterString );  }  );
 
 }
 */