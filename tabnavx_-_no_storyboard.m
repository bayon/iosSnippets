// TabNavX - no storyboard
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: B8E4FC95-3EDE-47E5-B033-030207A50EF4
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 
 // TabNavX - no storyboard
 
appdelegate.h
 
UITabBarControllerDelegate
@property (strong, nonatomic) UITabBarController *tabBarController;
 
 aside: create root and other vc's with xib files
 
 
appdelegate.m
 #import "VC1.h"
 #import "VC2.h"
 #import "VC3.h"

@synthesize window, tabBarController;
 
 - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
 {
 self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
 self.tabBarController = [[UITabBarController alloc] init];
 
 
 VC1 *viewController1 = [[VC1 alloc] initWithNibName:@"VC1" bundle:nil];
 UINavigationController* navController = [[UINavigationController alloc]
 initWithRootViewController:viewController1];
 VC2 *viewController2 = [[VC2 alloc] initWithNibName:@"VC2" bundle:nil];
 VC3 *viewController3 = [[VC3 alloc] initWithNibName:@"VC3" bundle:nil];
 self.tabBarController.viewControllers = [NSArray arrayWithObjects:  navController, viewController2, viewController3, nil];
 //set the WINDOWS rootview controller to the tab bar controller
 self.window.rootViewController = self.tabBarController;
 
 [self.tabBarController setSelectedIndex:0];
 [self.window makeKeyAndVisible];
 //TAB BAR CUSTOMIZATION
 [[UITabBar appearance]  setBarTintColor:[UIColor whiteColor]];
 [self tabBarCustomizations];
 //STATUS BAR
 [self setStatusBarBackground];
 //detect device orientation change
 [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(detectOrientation) name:@"UIDeviceOrientationDidChangeNotification" object:nil];
 
 return YES;
 
 }
 
 -(void)tabBarCustomizations{
 // Assign tab bar item with titles
 tabBarController = (UITabBarController *)self.window.rootViewController;
 UITabBar *tabBar = tabBarController.tabBar;
 
 UITabBarItem *tabBarItem1 = [tabBar.items objectAtIndex:0];
 UITabBarItem *tabBarItem2 = [tabBar.items objectAtIndex:1];
 UITabBarItem *tabBarItem3 = [tabBar.items objectAtIndex:2];
 
 UIImage *imageTB1 = [[UIImage imageNamed:@"tb1_sel.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
 UIImage *imageTB1Uns = [[UIImage imageNamed:@"tb1_uns.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
 tabBarItem1.image = imageTB1Uns;
 tabBarItem1.selectedImage = imageTB1;
 
 UIImage *imageTB2 = [[UIImage imageNamed:@"tb2_sel.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
 UIImage *imageTB2Uns = [[UIImage imageNamed: @"tb2_uns.png" ] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
 tabBarItem2.image = imageTB2Uns;
 tabBarItem2.selectedImage = imageTB2;
 
 UIImage *imageTB3 = [[UIImage imageNamed:@"tb3_sel.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
 UIImage *imageTB3Uns = [[UIImage imageNamed: @"tb3_uns.png" ] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
 tabBarItem3.image = imageTB3Uns;
 tabBarItem3.selectedImage = imageTB3;
 
 tabBar.frame = CGRectMake(0, self.window.rootViewController.view.bounds.size.height - 43, self.window.rootViewController.view.bounds.size.width,57 );
 }
 
 -(void)setStatusBarBackground{
 UIImageView *statusBarBackgroundColorImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]];
 statusBarBackgroundColorImage.backgroundColor = [UIColor redColor];
 [self.window.rootViewController.view  addSubview:statusBarBackgroundColorImage];
 statusBarBackgroundColorImage.frame = CGRectMake(0, 0, self.window.rootViewController.view.bounds.size.width, 20);
 [self.window.rootViewController.view  bringSubviewToFront: statusBarBackgroundColorImage];
 
 }
 -(UIStatusBarStyle)preferredStatusBarStyle{
 return UIStatusBarStyleLightContent;
 }
 
 -(void) detectOrientation
 {
 if ([[UIDevice currentDevice] orientation] == UIDeviceOrientationLandscapeLeft)
 {
 //Set up left
 [self setStatusBarBackground];
 [self tabBarCustomizations];
 } else if ([[UIDevice currentDevice] orientation] == UIDeviceOrientationLandscapeRight)
 {
 //Set up Right
 [self setStatusBarBackground];
 [self tabBarCustomizations];
 } else if ([[UIDevice currentDevice] orientation] == UIDeviceOrientationPortrait || [[UIDevice currentDevice] orientation] == UIDeviceOrientationPortraitUpsideDown)
 {
 //It's portrait time!
 [self setStatusBarBackground];
 [self tabBarCustomizations];
 }
 }

 
*/