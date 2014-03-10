// NAVIGATION CONTROLLER
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 118D52FC-0D08-4FA6-878F-1463C31B3948
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //< NAVIGATION CONTROLLER >
 //.h
 //HEAD
 
 //@interface
 UINavigationController *navigationController;
 //post interface
 @property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
 ---------------------
 //.m
 //HEAD
 #import "AppDelegate.h"
 #import "RootViewController.h"
 
 //@implementation
 
 //@synthesize
    @synthesize navigationController;
 //METHODS
 //didFinishLauncingWithOptions()
     self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
     // Override point for customization after application launch.
     self.window.backgroundColor = [UIColor whiteColor];
     
     UIViewController *rootController = [[RootViewController alloc] initWithNibName:@"RootViewController" bundle:nil];
     navigationController = [[UINavigationController alloc] initWithRootViewController:rootController];
     self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
     [self.window addSubview:navigationController.view];
     
     [_window addSubview:[navigationController view]];
     
     [self.window makeKeyAndVisible];
     return YES;
 
 </ NAVIGATION CONTROLLER >
 */
