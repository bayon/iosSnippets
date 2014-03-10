// loadWebView
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 538CFB05-9081-494E-8C85-A6DAEB08F6A1
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*loadWebView*/
-(void)loadWebView{
    UIWebView * webView = [[UIWebView alloc]init];
    webView.frame = CGRectMake(30.0f,150.0f,800.0f,800.0f);
    [self.view addSubview: webView];
    NSURLRequest *request2 = [NSURLRequest requestWithURL: [NSURL URLWithString:@"http://www.forteworks.com"]] ;
    [webView loadRequest:request2] ;
    [self.view addSubview: webView];
}
