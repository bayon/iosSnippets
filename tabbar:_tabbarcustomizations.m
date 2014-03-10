// tabbar: tabBarCustomizations
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: E3833284-CA2D-43F1-9D28-EBD1284B1086
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

//tabbar: tabBarCustomizations
-(void)tabBarCustomizations{
    // Assign tab bar item with titles
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UITabBar *tabBar = tabBarController.tabBar;
    UITabBarItem *tabBarItem1 = [tabBar.items objectAtIndex:0];
    UITabBarItem *tabBarItem2 = [tabBar.items objectAtIndex:1];
    UITabBarItem *tabBarItem3 = [tabBar.items objectAtIndex:2];
    
    
    //tabBarItem1.title = @"logoyo";
    //tabBarItem2.title = @"Maps";
    //tabBarItem3.title = @"My Plan";
    
    
    [tabBarItem1 setFinishedSelectedImage:[UIImage imageNamed:@"btn_tabBar_accounts_sel.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"btn_tabBar_accounts_uns.png"]];
    [tabBarItem2 setFinishedSelectedImage:[UIImage imageNamed:@"btn_tabBar_summary_sel.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"btn_tabBar_summary_uns.png"]];
    [tabBarItem3 setFinishedSelectedImage:[UIImage imageNamed:@"btn_tabBar_about_sel.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"btn_tabBar_about_uns.png"]];
    
    
    
    // Change the tab bar background
    UIImage* tabBarBackground = [UIImage imageNamed:@"tabbar.png"];
    [[UITabBar appearance] setBackgroundImage:tabBarBackground];
    [[UITabBar appearance] setSelectionIndicatorImage:[UIImage imageNamed:@"tabbar_selected.png"]];
    
    // Change the title color of tab bar items
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                       [UIColor whiteColor], UITextAttributeTextColor,
                                                       nil] forState:UIControlStateNormal];
    UIColor *titleHighlightedColor = [UIColor colorWithRed:153/255.0 green:192/255.0 blue:48/255.0 alpha:1.0];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                       titleHighlightedColor, UITextAttributeTextColor,
                                                       nil] forState:UIControlStateHighlighted];
    

}