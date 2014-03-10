// concatenate nsnumbers
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: C2FF9608-9472-48FE-B365-86181CE0CE12
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//concatenate nsnumbers
    int first; /* Assuming this is initialized to the first number */
    int second; /* Assuming this is initalized to the second number */
    int myVal = [[NSString stringWithFormat:@"%d%d",first, second] intValue];