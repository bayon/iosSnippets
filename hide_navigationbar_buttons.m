// hide navigationbar buttons
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 91B3D121-B289-4247-B797-B5D9AC40537C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//hide navigationbar buttons
    //in the viewWillAppear method
    self.navigationItem.backBarButtonItem=nil;
    self.navigationItem.hidesBackButton=YES;