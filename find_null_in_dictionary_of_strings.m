// Find NULL in Dictionary of Strings
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: FC4B689E-7968-4AD4-8B8B-8BC4844B9DFF
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//Find NULL in Dictionary of Strings
    for(id key in mutableDictionary) {
        id object = [mutableDictionary objectForKey:key];
        NSString *objectAsString = (NSString *)object;
        
         if ([objectAsString isEqualToString:@""]){
              NSLog(@"NULL");
         }else{
             NSLog(@"NOT NULL");
         }
    }