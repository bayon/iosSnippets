// modal : presentViewController
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 8533B212-AE31-43CB-A81C-D72D7F408DD0
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// modal : presentViewController
-(IBAction)selectedOption1{
    NSLog(@"FILE->FUNCTION: %s",__FUNCTION__);
    OptionOneViewController *oovc = [[OptionOneViewController alloc]init];
    
    [self presentViewController:oovc animated:YES completion:nil];
}
