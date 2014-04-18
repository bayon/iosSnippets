// Spinner : Quick
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 24A92151-09FE-45C2-935C-C3D8F7EC0DBC
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// Spinner : Quick
    //UIActivityIndicatorView *spinner;
    //@property (nonatomic, retain) UIActivityIndicatorView *spinner;
    
    spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    spinner.center = CGPointMake(160, 70);
    spinner.hidesWhenStopped = YES;
    [self.view addSubview:spinner];
    [spinner startAnimating];
    //[spinner stopAnimating]; // in the return method of the asynchronous call usually