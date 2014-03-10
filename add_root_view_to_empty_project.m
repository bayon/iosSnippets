// Add Root View To Empty Project
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 5B8B9C33-765E-4DB7-98BF-33DCFE03C59A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //Add Root View To Empty Project
 .h
 #import "ViewController1.h"
 @property (strong, nonatomic) ViewController1 *viewController1;
 
 
 .m
 @synthesize viewController1;
 
 - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
 {
 self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
 // Override point for customization after application launch.
 self.window.backgroundColor = [UIColor whiteColor];
 [self.window makeKeyAndVisible];
 
 //Add Root View To Empty Project
 // Override point for customization after application launch.
 if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
 self.viewController1 = [[ViewController1 alloc] initWithNibName:@"ViewController_iPhone" bundle:nil];
 } else {
 self.viewController1 = [[ViewController1 alloc] initWithNibName:@"ViewController_iPad" bundle:nil];
 }
 self.window.rootViewController = self.viewController1;
 
 return YES;
 }
 */

/*
 //SIMPLE: Add Root View To Empty Project
 self.viewController1 = [[ViewController1 alloc] init ];
 self.window.rootViewController = self.viewController1;
 */
