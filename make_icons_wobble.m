// Make Icons Wobble
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: FF9D3E5D-78F1-4D82-968E-1D19995D06AC
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 
 // Make Icons Wobble
 //If you want to make your views, images, etc. wobble, like the home screen, you could do something like this:
 
 CGAffineTransform leftWobble = CGAffineTransformRotate(CGAffineTransformIdentity, RADIANS(-15.0));
 CGAffineTransform rightWobble = CGAffineTransformRotate(CGAffineTransformIdentity, RADIANS(15.0));
 
 view.transform = leftWobble;  // starting point
 
 [UIView beginAnimations:@"wobble" context:view];
 [UIView setAnimationRepeatAutoreverses:YES];
 [UIView setAnimationRepeatCount:5]; // adjustable
 [UIView setAnimationDuration:0.125];
 [UIView setAnimationDelegate:self];
 view.transform = rightWobble; // end here & auto-reverse
 [UIView commitAnimations];
 //You would also need to add this define:
 
 #define RADIANS(degrees) ((degrees * M_PI) / 180.0)
 */
