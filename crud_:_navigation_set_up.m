// CRUD : Navigation Set Up
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 7F86F717-DBC6-4297-8744-93E91302B69A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 // CRUD : Navigation Set Up
 
 #import <UIKit/UIKit.h>
 #import "Read.h"
 
 @interface AppDelegate : UIResponder <UIApplicationDelegate>{
 UINavigationController *navigationController;
 }
 @property (strong, nonatomic) UIWindow *window;
 @property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
 @property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
 @property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
 @property (strong, nonatomic) Read *readController;
 @property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
 
 - (void)saveContext;
 - (NSURL *)applicationDocumentsDirectory;
 
 @end
 
 
 
 #import "AppDelegate.h"
 
 @implementation AppDelegate
 
 @synthesize managedObjectContext = _managedObjectContext;
 @synthesize managedObjectModel = _managedObjectModel;
 @synthesize persistentStoreCoordinator = _persistentStoreCoordinator;
 
 @synthesize readController;
 @synthesize navigationController;
 
 - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
 {
 self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
 // Override point for customization after application launch.
 self.window.backgroundColor = [UIColor whiteColor];
 [self.window makeKeyAndVisible];
 
 //Add Root View To Empty Project
 // Override point for customization after application launch.
 if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
 
 self.readController = [[Read alloc] initWithNibName:@"Read" bundle:nil];
 navigationController = [[UINavigationController alloc] initWithRootViewController:readController];
 } else {
 self.readController = [[Read alloc] initWithNibName:@"Read" bundle:nil];
 navigationController = [[UINavigationController alloc] initWithRootViewController:readController];
 }
 
 [self.window addSubview:navigationController.view];
 [_window addSubview:[navigationController view]];
 
 
 [self.window makeKeyAndVisible];
 return YES;
 }

 */

