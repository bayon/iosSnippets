// ACTION: HIDE KEYBOARD
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 80200BFD-94BB-4474-86BA-5465301D8B60
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //ACTION: HIDE KEYBOARD
 text1 = [[UITextField alloc] initWithFrame:CGRectMake(30, 20, 200, 40)];
 text1.borderStyle = UITextBorderStyleRoundedRect;
 text1.font = [UIFont systemFontOfSize:15];
 [text1 addTarget:self  action:@selector(hideKeyboard) forControlEvents:UIControlEventEditingDidEndOnExit];
 
 
 
 -(void)hideKeyboard{
 [self resignFirstResponder];
 
 //or
 [inputTextField resignFirstResponder];
 
 }
 
 // also from "Return" key
 - (BOOL)textFieldShouldReturn:(UITextField *)textField {
 [textField resignFirstResponder];
 }
 
 // and this somewhere in the viewDidLoad
  misc_textfield.delegate = self;
 
 */
