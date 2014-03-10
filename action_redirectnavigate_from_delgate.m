// action Redirect/Navigate From delgate
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 40F16512-0324-450E-BE5B-10237B4303CB
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// action Redirect/Navigate From delgate

/*
 Preparation:
 CREATE: MainViewController
 delegate .h
 #import "MainViewController.h"
 
 @property (nonatomic, retain) MainViewController *mainViewController;

 delgate .m
 @synthesize mainViewController;
 
 */
//METHOD didFinishLaunchingWithOptions

/*
 //REDIRECT FROM DELEGATE
     self.mainViewController = [[MainViewController alloc]init];
    [self.window addSubview:mainViewController.view];

*/