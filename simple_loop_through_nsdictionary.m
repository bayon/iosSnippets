// SIMPLE LOOP THROUGH NSDICTIONARY
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 4E0335C2-FD2E-4BF6-83D6-5026FA1FF5FD
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//SIMPLE LOOP THROUGH NSDICTIONARY
for(id key in dictionary) {
    NSString *keyAsString = (NSString *)key;
    id value = [dictionary objectForKey:key];
    NSString *valueAsString = (NSString *)value;
    NSLog(@"key: %@", keyAsString);
    NSLog(@"value: %@", valueAsString);
}