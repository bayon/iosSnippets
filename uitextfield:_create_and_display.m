// UITextField: create and display
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 5DF8A35B-ACE7-4ED9-B2FE-ECC3B3DD859A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//Requires
//.h <UITextFieldDelegate>
#pragma mark TEXT FIELD LAYOUT
UITextField *searchKeyField = [[UITextField alloc]init];
    searchKeyField = [[UITextField alloc] initWithFrame:CGRectMake(30, 100, 200, 40)];
    searchKeyField.borderStyle = UITextBorderStyleRoundedRect;
    searchKeyField.font = [UIFont systemFontOfSize:15];
    [self.view addSubview: searchKeyField];
/*
 
 #pragma mark TEXT FIELD DELEGATE METHODS
 -(void)textFieldDidBeginEditing:(UITextField *)sender{
 NSLog(@"Start text in search");
 
 }
 - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
 NSLog(@"Change In Text Field");
 
 [tableView reloadData];
 return 1;
 }
 
 */




/*
 //ALL DELEGATE METHODS
 Managing Editing
 
 – textFieldShouldBeginEditing:
 – textFieldDidBeginEditing:
 – textFieldShouldEndEditing:
 – textFieldDidEndEditing:
 
 Editing the Text Field’s Text
 
 – textField:shouldChangeCharactersInRange:replacementString:
 – textFieldShouldClear:
 – textFieldShouldReturn:
 */