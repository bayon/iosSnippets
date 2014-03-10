// check if dictionary is NULL
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 837AABD7-2A6B-4CB0-8E0E-C75F296191D6
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//check if dictionary is NULL
        if ([dict count] == 0) {
            NSLog(@"empty");
        }
//check if key in dictionary is NULL
if([dict objectForKey:@"answers"]) {
    NSLog(@"There's an object in answers");
     
}else{
    // Don't insert NULL into core data table.
}



//
id displayNameTypeValue = [dict objectForKey:@"answers"];
if (displayNameTypeValue != [NSNull null]){
    [self INSERT_answers:dict];
}else{
    // DO NOT INSERT NULL
    //return notification necessary
    //NOTIFICATION:post
    [[NSNotificationCenter defaultCenter] postNotificationName:@"downloaded_answers" object:nil];
}
