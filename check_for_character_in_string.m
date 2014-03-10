// check for character in string
// 
//
// IDECodeSnippetCompletionScopes: [Preprocessor]
// IDECodeSnippetIdentifier: 2E65F763-A177-4297-A3F0-CB57F29F1BE9
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//check for character in string
-(bool)checkForExistingChar: (NSString *)stringChar inString:(NSString *)stringToSearch{
    //FIND THE PERIOD
    NSString *string1 =stringToSearch;
    NSRange match;
    match = [string1 rangeOfString: stringChar];
    NSLog (@"match found at index %u", match.location);
    NSLog (@"match length = %u", match.length);
    
    if(match.length ==1 ){
        NSLog(@"\n  TRUE");
        return 1;
    }else{
        NSLog(@"\n  FALSE");
        return 0;
    }
}
