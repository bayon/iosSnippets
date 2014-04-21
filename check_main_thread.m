// check main thread
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 27983A20-3944-47EF-9821-F1F438205440
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
 if([NSThread mainThread] == myThread){
        NSLog(@"\n YES MAIN");
    }else{
        NSLog(@"\n NO MAIN");
    }