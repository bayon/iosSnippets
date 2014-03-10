// json : json string to dictionary
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: F5D4E406-E8A8-4F95-979E-2BC32C1020F4
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
NSError *e = [[NSError alloc]init];
    NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData: [content dataUsingEncoding:NSUTF8StringEncoding]
                                    options: NSJSONReadingMutableContainers
                                      error: &e];
