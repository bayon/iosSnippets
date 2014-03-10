// sanitizeDataForNumber
// 
//
// IDECodeSnippetCompletionScopes: [Preprocessor]
// IDECodeSnippetIdentifier: EEBE500C-AA70-4997-BE99-A82149CCC205
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//sanitizeDataForNumber
-(NSNumber *)sanitizeDataForNumber: (id)dataObject  {
     NSNumber * sanitizedNumber = [[NSNumber alloc]init];
    if ([[[dataObject class] description] isEqualToString:@"__NSCFConstantString"])
    {
        //check for string
        sanitizedNumber = [NSNumber numberWithInt:[dataObject integerValue]];
    }else
    if ([[[dataObject class] description] isEqualToString:@"__NSCFNumber"])
    {
        //check for number
        sanitizedNumber =  dataObject  ;
        
    }else
    if ([[[dataObject class] description] isEqualToString:@"__NSDate"])
    {
        //check for date
        NSLog(@"\n \n <<<  WARNING !!! : Date to a Number ? >>> \n ");
    }
    return sanitizedNumber;
}
