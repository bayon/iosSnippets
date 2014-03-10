// check data Type
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: ED3C60DB-4685-4ED7-B8AC-0AFD89EF329D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//check data Type
-(void)checkDataType:(id)dataObject{
    if ([[[dataObject class] description] isEqualToString:@"__NSCFConstantString"]){
        //check for string
        
    }else
    if ([[[dataObject class] description] isEqualToString:@"__NSCFNumber"])
    {
        //check for number
         
    }else
    if ([[[dataObject class] description] isEqualToString:@"__NSDate"])
    {
        //check for date
         
    }
}