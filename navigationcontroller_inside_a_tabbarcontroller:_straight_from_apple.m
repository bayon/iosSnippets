// NavigationController inside a TabBarController: straight from apple
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 3A513A64-35B2-4630-8280-2E3F75517C0A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// NavigationController inside a TabBarController: straight from apple
//- (void)applicationDidFinishLaunching:(UIApplication *)application {
//    self.tabBarController = [[UITabBarController alloc] init];
//    
//    MyViewController1* vc1 = [[MyViewController1 alloc] init];
//    MyViewController2* vc2 = [[MyViewController2 alloc] init];
//    MyViewController3* vc3 = [[MyViewController3 alloc] init];
//    MyNavRootViewController* vc4 = [[MyNavRootViewController alloc] init];
//    UINavigationController* navController = [[UINavigationController alloc]
//                                             initWithRootViewController:vc4];
//    
//    NSArray* controllers = [NSArray arrayWithObjects:vc1, vc2, vc3, navController, nil];
//    tabBarController.viewControllers = controllers;
//    
//    window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    window.rootViewController = tabBarController;
//    [window makeKeyAndVisible];
//}
//
//
