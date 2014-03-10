// Are You Sure
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: EAEA6F3C-A0D4-4D87-A8E9-AB6276A84A6E
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //Are You Sure
 //.h
 //Are You Sure?
 id tempSender;
 @property (nonatomic,retain) id tempSender;
 @synthesize tempSender;
 
 //.m
 -(void)areYouSure:(id)sender{
 tempSender = sender;
 NSString* msg = [NSString stringWithFormat:@"Are You Sure You Want to Delete."];
 UIAlertView *alertmsg = [[UIAlertView alloc] initWithTitle:@"Are You Sure?" message:msg delegate:self cancelButtonTitle:@"Yes" otherButtonTitles:@"No" ,nil];
 [alertmsg show];
 }
 - (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
 if (buttonIndex == 0) {
 NSLog(@"index0");
 [self deleteRow:tempSender];
 }else{
 NSLog(@"index1");
 }
 }

 */
