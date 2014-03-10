// ALERTS
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: E7824A9E-5567-4206-AA5E-F759E9F2DDA6
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
NSString* msg = [NSString stringWithFormat:@"Please check your email" ];
UIAlertView *alertmsg = [[UIAlertView alloc] initWithTitle:@"Email Address" message:msg delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil ];

// SHOW ALERTS
[alertmsg show];



- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	if (buttonIndex == 0) {
        NSLog(@"\n FILE->FUNCTION: %s",__FUNCTION__);
        NSLog(@"ALERT Zero");
        
	}else{
        NSLog(@"ALERT ONE");
    }
}
