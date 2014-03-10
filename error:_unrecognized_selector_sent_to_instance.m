// ERROR: unrecognized selector sent to instance
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 0D0E815A-31F9-4FF8-936C-589E12A8DF3A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 ERROR: unrecognized selector sent to instance
 Solutions:
 
 1.)  needed a ":" colon when declaring the button's selector...
 [button addTarget:self action:@selector(digitButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
 
 2.) calling wrong array
 
 3.) called wrong method
 */