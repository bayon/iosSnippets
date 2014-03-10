// keypad types: numeric numbers alphanumeric letters
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 5657B7DC-E255-446B-B869-16C5A8FA08A7
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 keypad types: numeric numbers alphanumeric letters
 if(user is prompted for numeric input only)
 [textField setKeyboardType:UIKeyboardTypeNumberPad];
 
 //dismiss numeric keypad
 - (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
 [zipcodeTextField resignFirstResponder];
 }
 
 if(user is prompted for alphanumeric input)
 [textField setKeyboardType:UIKeyboardTypeDefault];
 */