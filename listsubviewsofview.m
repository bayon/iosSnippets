// listSubviewsOfView
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 74BBD84C-C144-4B98-803D-B1A4F864DF2D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
  
- (void)listSubviewsOfView:(UIView *)view {
    NSLog(@"FILE: RootViewController.m , FUNCTION: %s",__FUNCTION__);
    
    /* */
    // Get the subviews of the view
    NSArray *subviews = [view subviews];
    
    // Return if there are no subviews
    if ([subviews count] == 0) return;
    
    for (UIView *subview in subviews) {
        NSLog(@"SUBVIEW: %@", subview);
        // List the subviews of subview
        [self listSubviewsOfView:subview];
    }
   
}