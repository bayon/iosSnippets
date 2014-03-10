// Action: Maintain Memory
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: C72560FA-B14D-4622-A275-E1064CB689E4
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
//Action: Maintain Memory  
 //AppDataObject: TextField Maintenance-----START
#pragma mark-
#pragma mark UITextFieldDelegate methods
 
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return TRUE;
}
-(void)textFieldDidEndEditing:(UITextField *)textField{
    ThisAppDataObject *theDataObject = [self theAppDataObject];
    theDataObject.string1 = theInputView.text;
}
#pragma mark-
#pragma mark View Lifecycle
-(void)voidWillAppear:(BOOL)animated
{
    ThisAppDataObject *theDataObject =[self theAppDataObject];
    theInputView.text = theDataObject.string1;
}
//---------------------------------END
 */
