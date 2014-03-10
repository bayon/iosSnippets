// goNext condition
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 898FAAA3-AEA4-425E-AB3A-10DC2085B21C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
if([[sharedManager.mutableDictionary objectForKey:questionNumber]  length] >0)
    {
        if([ [sharedManager.mutableDictionary objectForKey:questionNumber] isEqualToString:@"1"]){
            [self performSegueWithIdentifier: @"KrogerVC5ToVC6" sender: self];
        }
        if([ [sharedManager.mutableDictionary objectForKey:questionNumber] isEqualToString:@"2"]){
            [self performSegueWithIdentifier: @"KrogerVC5ToVC10" sender: self];
        }

    }else{
        NSLog(@"\n \n NULL Value ");
    }