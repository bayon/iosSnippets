// loadView : load a custom view 
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: D7E0CA9F-190C-4D75-BE85-123ECDD67E1D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
// loadView : load a custom view 
-(void)loadView{
    NSLog(@"\n F I L E -> F U N C T I O N : \n %s \n",__FUNCTION__);
    UIView *view = [[[NSBundle mainBundle] loadNibNamed:@"MapViewController" owner:self options:nil] objectAtIndex:0];
    self.view = view;
}