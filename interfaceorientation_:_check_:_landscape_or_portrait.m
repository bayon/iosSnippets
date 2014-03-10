// interfaceOrientation : check : landscape or portrait
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 5A5A8D67-4536-4430-82F9-08ED4908F011
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
  // interfaceOrientation : check : landscape or portrait
  if (UIDeviceOrientationIsLandscape([UIDevice currentDevice].orientation))
  {
  // code for landscape orientation
  }
    
  if (UIDeviceOrientationIsPortrait([UIDevice currentDevice].orientation))
  {
  // code for Portrait orientation
  }
  */

//OR

/*
 //[[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
 
 if ( ([[UIDevice currentDevice] orientation] ==  UIDeviceOrientationPortrait)  )
 {
 //do something for portrait mode
 NSLog(@"\n \n Portrait \n \n ");
 }
 else if(([[UIDevice currentDevice] orientation] == UIDeviceOrientationLandscapeRight) || [[UIDevice currentDevice] orientation] == UIInterfaceOrientationLandscapeLeft)
 {
 //do something for landscapmode
 NSLog(@" \n \n landscapmode \n \n ");
 }
 */
