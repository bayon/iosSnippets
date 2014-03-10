// sanitizeDataForString
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 404E0B31-ED8D-4B1E-93F4-D5B929AEB9EB
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

//sanitizeDataForString
-(NSString *)sanitizeDataForString: (id)dataObject  {
    NSLog(@"\n F I L E -> F U N C T I O N : \n %s \n",__FUNCTION__);
    NSString * sanitizedString = [[NSString alloc]init];
    if ([[[dataObject class] description] isEqualToString:@"__NSCFConstantString"])
    {
        //check for string
        sanitizedString = dataObject;
    }else
    if ([[[dataObject class] description] isEqualToString:@"__NSCFNumber"])
    {
        //check for number
        NSLog(@"\n \n <<<  WARNING !!! : Number or Date to a String >>> \n ");
        sanitizedString = [NSString stringWithFormat:@"%@",dataObject];
    }else
    if ([[[dataObject class] description] isEqualToString:@"__NSDate"])
    {
        //check for date
        NSLog(@"\n \n <<<  WARNING !!! : Number or Date to a String >>> \n ");
        sanitizedString = [NSString stringWithFormat:@"%@",dataObject];
    }
    return sanitizedString;
}
