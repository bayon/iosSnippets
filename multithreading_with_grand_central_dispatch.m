// Multithreading with Grand Central Dispatch
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: AFA28BC4-087D-456A-A047-25495D835354
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //Multithreading with Grand Central Dispatch
 .h
 dispatch_queue_t mConcurrentQueue;
 
 .m
 @interface ViewController (){
 IBOutlet UILabel *lblOne;
 IBOutlet UILabel *lblTwo;
 
 NSString *strOne;
 NSString *strTwo;
 
 
 }
 //below imports above implementation
 void (^tFunct1)(UILabel *,NSString *) = ^(UILabel *lbl, NSString *src)
 {
 //background thread work
 NSLog(@"Going to sleep");
 sleep(4);
 NSLog(@"Waking Up");
 
 // CAN ONLY INTERACT WITH UI ON MAIN THREAD
 dispatch_async(dispatch_get_main_queue(),^(void)
 {
 [lbl setText:src];
 NSLog(@"Label Done!");
 }
 );
 };
 
 -(IBAction)buttonPressed:(id)sender
 {
 mConcurrentQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0);
 
 dispatch_async( mConcurrentQueue, ^{ tFunct1  (self->lblOne,@"1 Go!" );  }  );
 dispatch_async( mConcurrentQueue, ^{ tFunct1  (self->lblTwo,@"2 Go!" );  }  );
 
 }
 
 
 
 */
