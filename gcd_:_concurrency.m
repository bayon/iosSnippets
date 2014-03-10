// GCD : concurrency
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 262645E4-50E9-44A3-A3B0-BFEC7859B518
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
   GCD : concurrency
 
 put a long running operation in a background thread
 //instead of this on the main UI thread
 -(void) longRunningOperation{
 
    [NSThread sleepForTimeInterval:5];
 // this is the main thread
   // [self.resultLabel setText:[NSString stringWithFormat:@"Results: %d",arc4random()]];
 // in order to update the main thread from the background
 
 dispatch_async(dispatch_get_main_queue(), ^{[self.resultLabel setText:[NSString stringWithFormat:@"Results: %d",arc4random()]];});
 
 }
 
 
 @interface ViewController(){
    dispatch_queue_t myQueue;
 }
 
 -(IBAction) buttonAction:(id)sender {
    if(!myQueue){
        myQueue = dispatch_queue_create("com.mocura.gcdtest",NULL);
    }
 
    dispatch_async(myQueue,^{[self longRunningOperation];});
    //should dispatch method call to the queue., but doesn't call back...
 
    //preivously [self longRunningOperation];
 
 }
 
*/