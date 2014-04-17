// NSData : get individual characters from NSData
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 351A851E-EADA-41E9-9267-FD9062B14AD1
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
// NSData : get individual characters from NSData
    const unsigned char *ptr = [data bytes];
    for(int i=0; i<[data length]; ++i) {
        unsigned char c = *ptr++;
        NSLog(@"char=%c hex=%x", c, c);
    }