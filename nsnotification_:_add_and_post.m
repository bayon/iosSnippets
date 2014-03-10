// NSNotification : add and post
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: B7E41A83-EB70-4472-8417-53DC11668EC1
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
  
 //NOTIFICATION:add
 [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(methodToCall) name:@"Notification_NameOfThisNotification" object:nil];
 //NOTIFICATION:post
 [[NSNotificationCenter defaultCenter] postNotificationName:@"Notification_NameOfThisNotification" object:nil];
 
 //- - - > METHOD:Notification_NameOfThisNotification
 -(void)methodToCall{
 NSLog(@"\n FILE->FUNCTION: %s",__FUNCTION__);
 }
 */