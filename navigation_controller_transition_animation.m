// Navigation Controller Transition Animation
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 749EEA04-8543-45BC-A4DD-B707703A97D7
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//Navigation Controller Transition Animation
    //REQUIRES: #import <QuartzCore/QuartzCore.h> AND set animated:NO
    CATransition *transition = [CATransition animation];
    transition.duration = 0.3f;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    transition.type = kCATransitionFade;
    [appDelegate.navController.view.layer addAnimation:transition forKey:nil];
    [appDelegate.navController  pushViewController:abPadLockScreen animated:NO];