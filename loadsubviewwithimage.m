// loadSubViewWithImage
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: DDD09402-6169-4E22-ADAC-58A971C0E79C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*loadSubViewWithImage*/
-(void)loadSubViewWithImage:(NSString*)imageName {
    UIImageView *  myImageView =[[UIImageView alloc] initWithFrame:CGRectMake(30.0,100.0,100.0,100.0)];
    myImageView.image=[UIImage imageNamed:imageName];
    [self.view addSubview: myImageView];
    [self.view bringSubviewToFront:myImageView];
}
