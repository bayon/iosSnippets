// nav bar: add a button
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 50372BEE-6EBB-45BE-BC59-EE982BFB00FE
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 UIBarButtonItem *anotherButton = [[UIBarButtonItem alloc] initWithTitle:@"Right" style:UIBarButtonItemStylePlain target:self action:@selector(method:)];
        self.navigationItem.rightBarButtonItem = anotherButton;