// dataToDictionary
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: C67CE4FF-96B5-4F28-85F7-F4F337B08967
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//dataToDictionary
-(NSDictionary *)dataToDictionary:(NSData *)data{
    NSError *jsonError;
    NSDictionary *json_dictionary = [NSDictionary dictionary];
    json_dictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&jsonError];
     
    return json_dictionary;
}