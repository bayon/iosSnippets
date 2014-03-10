// display navigation controller modally
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 1D6DE88F-593F-4639-AEB9-2890CE029393
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*  display navigation controller modally
MyViewController1*  rootVC = [[MyViewController1 alloc] init];
MyViewController2*  nextVC = [[MyViewController2 alloc] init];

// Create the nav controller and add the view controllers.
UINavigationController*  theNavController = [[UINavigationController alloc]
                                             initWithRootViewController:rootVC];
[theNavController pushViewController:nextVC animated:NO];

// Display the nav controller modally.
[currentViewController presentModalViewController:theNavController animated:YES];

// Release the view controllers to prevent over-retention.
[rootVC release];
[nextVC release];
[theNavController release];

*/