// setStatusBarBackground
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 2F260407-A908-4D9E-A431-CF775C8D8C63
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(void)setStatusBarBackground{
    
    //BACKGROUND IMAGE
    Storage *sharedStorage = [Storage sharedStorage];
    UIImageView *statusBarBackgroundColorImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]];
    statusBarBackgroundColorImage.backgroundColor = sharedStorage.red;
    [self.window.rootViewController.view  addSubview:statusBarBackgroundColorImage];
    statusBarBackgroundColorImage.frame = CGRectMake(0, 0, self.self.window.rootViewController.view.bounds.size.width, 20);
    [self.window.rootViewController.view  bringSubviewToFront: statusBarBackgroundColorImage];
    
}


/*
 // change Status Bar Text Color:
 -(UIStatusBarStyle)preferredStatusBarStyle{
 return UIStatusBarStyleLightContent;
 }
 
 
 */
