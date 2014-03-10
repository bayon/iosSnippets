// gesture
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 2CC7D02E-1D62-4554-925F-02E28EB09EFE
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
//gesture
  < UIGestureRecognizerDelegate>
  UITapGestureRecognizer *tap;
  
  .m
  //inside viewDidLoad
  tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
  [tap setCancelsTouchesInView:NO];
  [self.view addGestureRecognizer:tap];
  
  #pragma mark - Keyboard Methods
  -(void)dismissKeyboard{
  NSLog(@"\n FILE->FUNCTION: %s",__FUNCTION__);
  [formTextField1 resignFirstResponder];
  }
*/