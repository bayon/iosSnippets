// dismiss keyboard when touching outside of textfield
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: AA5124FC-03BE-469A-929E-30AEEEB6BE22
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 
 //dismiss keyboard when touching outside of textfield
 UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
 initWithTarget:self
 action:@selector(dismissKeyboard)];
 
 [self.view addGestureRecognizer:tap];
 
 //In dismissKeyboard:
 
 -(void)dismissKeyboard {
 [aTextField resignFirstResponder];
 }
 
 */