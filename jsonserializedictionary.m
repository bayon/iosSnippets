// jsonSerializeDictionary
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: B260D01A-8F14-4E6E-97A9-2C50242444C6
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//jsonSerializeDictionary
-(NSDictionary *)jsonSerializeDictionary: (NSDictionary *)dictionary{
    NSError *myErrorX = nil;
    NSDictionary *json_dictionary = [NSDictionary dictionary];
    json_dictionary = [NSJSONSerialization JSONObjectWithData:dictionary options:NSJSONReadingAllowFragments error:&myErrorX];
    return json_dictionary;
    
}
