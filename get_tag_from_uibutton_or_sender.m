// Get Tag from UIButton or sender
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 020980BF-4F38-45AF-82B7-10AEAF099AC4
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//Get Tag from UIButton or sender
    UIButton *button = (UIButton *)sender;
    int bTag = button.tag;
    NSLog(@"\n sendingButtonTag: %i",bTag);