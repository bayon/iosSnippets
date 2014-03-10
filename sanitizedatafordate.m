// sanitizeDataForDate
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 38FF7616-10DD-4200-B52D-AA03E0065AAA
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

//sanitizeDataForDate
-(NSDate *)sanitizeDataForDate: (id)dataObject dateFormat:(NSString *)format {
    NSDate * sanitizedDate = [[NSDate alloc]init];
    if ([[[dataObject class] description] isEqualToString:@"__NSCFConstantString"])
    {
        //check for string
        NSString *mysqlDateString = dataObject;
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        //BEWARE: This has to match the "service" EXACTLY, or the given data EXACTLY.
        //NSString *currentDateFormat = [NSString stringWithFormat:@"MM/dd/yyyy"];
        //OTHER DATE FORMAT EXAMPLES:
        //[dateFormatter setDateFormat:@"MM/dd/yyyy HH:mm:ss a"];
        //[dateFormatter setDateFormat:@"MM-dd-yyyy HH:mm:ss"];
        [dateFormatter setDateFormat:format];
        sanitizedDate = [dateFormatter dateFromString:mysqlDateString];
    }else
        if ([[[dataObject class] description] isEqualToString:@"__NSCFNumber"])
    {
        //input Number
        NSLog(@"\n \n <<<  WARNING !!! : Number to a Date  >>> \n ");
    }else
    if ([[[dataObject class] description] isEqualToString:@"__NSDate"])
    {
        //check for date
        sanitizedDate = dataObject;
    }
    return sanitizedDate;
}