// Multi-Screen Layout: Here is an example using 2 UIViews, 1 for landscape and 1 for portrait.
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 568932C9-C8E5-4536-8E7D-CCAC92F3139E
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/* Multi-Screen Layout: Here is an example using 2 UIViews, 1 for landscape and 1 for portrait.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    if (orientationLock)
        return NO;
    else {
        if (interfaceOrientation == UIInterfaceOrientationPortrait) {
            [landscapeView setHidden:YES];
            
        } else {
            
            [landscapeView setHidden:NO];
        }
        return YES;
    }
}
 */
