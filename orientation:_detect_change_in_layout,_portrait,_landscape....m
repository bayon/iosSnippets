// orientation: detect change in layout, portrait, landscape...
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: EA2524C0-17D2-45FE-9506-76BA99ED1E77
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// orientation: detect change in layout, portrait, landscape...
-(void) detectOrientation
{
   
    /*
     // Put this code in your appDidFinishLauncing
     //detect device orientation change
     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(detectOrientation) name:@"UIDeviceOrientationDidChangeNotification" object:nil];
     
     */
    
    
    
    
    if ([[UIDevice currentDevice] orientation] == UIDeviceOrientationLandscapeLeft)
    {
        //Set up left
        [self setStatusBarBackground];
    } else if ([[UIDevice currentDevice] orientation] == UIDeviceOrientationLandscapeRight)
    {
        //Set up Right
        [self setStatusBarBackground];
    } else if ([[UIDevice currentDevice] orientation] == UIDeviceOrientationPortrait || [[UIDevice currentDevice] orientation] == UIDeviceOrientationPortraitUpsideDown)
    {
        //It's portrait time!
        [self setStatusBarBackground];
    }
}
