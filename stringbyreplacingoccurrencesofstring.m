// stringByReplacingOccurrencesOfString
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 042D181A-6D9F-4676-815D-6102909C3F5C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 NSString *stringResultNoSpaces = [stringResult stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *stringResultNoNewLines  = [stringResultNoSpaces stringByReplacingOccurrencesOfString:@"\n" withString:@""];