// Programatically Create a Tab Bar Controller Application
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 545D381F-A2C4-4198-9252-7463B2DA491D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 
 //Programatically Create a Tab Bar Controller Application:
 in APP DELEGATE:
 .h
 <UITabBarControllerDelegate>
 @property (strong, nonatomic) UITabBarController *tabBarController;
 .m
 #import "Option2_VC.h"
 #import "Option1_VC.h"
 @synthesize tabBarController;
 - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
 {
     self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
     self.tabBarController = [[UITabBarController alloc] init];
     Option1_VC *viewController1 = [[Option1_VC alloc] initWithNibName:@"Option1_VC" bundle:nil];
     Option2_VC *viewController2 = [[Option2_VC alloc] initWithNibName:@"Option2_VC" bundle:nil];
     self.tabBarController.viewControllers = [NSArray arrayWithObjects: viewController1, viewController2, nil];
     self.window.rootViewController = self.tabBarController;
     [self.tabBarController setSelectedIndex:1];
     [self.window makeKeyAndVisible];
 
 return YES;
 
 }
 //side note: DO NOT create a MainWindow.xib
 
 
 */
