// Tab Bar Background image
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 1D7AF5C8-7B44-4AF6-9311-FA95EF36F8A4
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//Tab Bar Background image
    UITabBar *tabBar = self.tabBarController.tabBar;
    tabBar.alpha = 1.0;
    UIImage *tabBarBackground = [UIImage imageNamed:@"navigation_nav_on.png"];
    [self.tabBarController.tabBar setBackgroundImage:tabBarBackground];