// checkScreenSize
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: E1C41EB0-0C05-4031-B388-13B6B1004F97
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(void)checkScreenSize{
    BOOL isIPhone = [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone;
    BOOL isIPhone5 = isIPhone && ([[UIScreen mainScreen] bounds].size.height > 480.0);
    if (isIPhone5) {
        //imageView.image = [UIImage imageNamed:@"iphone4image.png"];
    } else {
        //imageView.image = [UIImage imageNamed:@"iphone5image.png"];
    }
}
