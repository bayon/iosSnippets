// goBack condition
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: DE5FD4DC-1BD5-4D4D-8AF3-19ECBE3E3515
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
if([ [sharedManager.mutableDictionary objectForKey:@"kroger_Q4"] isEqualToString:@"1"]){
        [self performSegueWithIdentifier: @"KrogerVC5ToVC4" sender: self];
    }
    if([ [sharedManager.mutableDictionary objectForKey:@"kroger_Q4"] isEqualToString:@"2"]){
        [self performSegueWithIdentifier: @"KrogerVC5ToVC9" sender: self];
    }