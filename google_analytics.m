// Google Analytics
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 605571A7-FCFC-46E8-98C1-1F084EF0C0EA
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Generic
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
Google Analytics

// FRAMEWORKS
SystemConfig
libz.dylib ????
libGoogleAnalyticsServices


// LIBRARY HEADERS: bring over all the header files in the google ANalytics library from the ios SDK download.


// APPDELEGATE:

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [GAI sharedInstance].trackUncaughtExceptions = YES;
    [[GAI sharedInstance].logger setLogLevel:kGAILogLevelVerbose];
    [GAI sharedInstance].dispatchInterval = 20;
    id<GAITracker> tracker = [[GAI sharedInstance] trackerWithTrackingId:@"UA-48531016-1"];
    return YES;
}


// VIEWCONTROLLER.h
#import "GAIDictionaryBuilder.h"


-(IBAction)logButtonPress:(UIButton *)button;


// VIEWCONTROLLER..m


- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    [tracker set:kGAIScreenName value:@"Stopwatch"];
    [tracker send:[[GAIDictionaryBuilder createAppView] build]];
}
-(IBAction)logButtonPress:(UIButton *)button{
    
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    
    [tracker set:kGAIScreenName value:@"Stopwatch"];
    [tracker send:[[GAIDictionaryBuilder createEventWithCategory:@"UX"
                                                          action:@"touch"
                                                           label:[button.titleLabel text]
                                                           value:nil] build]];
    [tracker set:kGAIScreenName value:nil];
}
//http://www.raywenderlich.com/53459/google-analytics-ios

//https://www.google.com/analytics/
