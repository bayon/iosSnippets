// Run Loop: Here is the trick
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 459AE340-D2E5-4391-91A3-9ACB443EF277
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
// Run Loop: Here is the trick
        NSPort *port = [NSPort port];
        NSRunLoop *runLoop = [NSRunLoop currentRunLoop]; // Get the runloop
        [runLoop addPort:port forMode:NSDefaultRunLoopMode];
        [getConnection scheduleInRunLoop:runLoop forMode:NSDefaultRunLoopMode];
        [getConnection start];
        [runLoop run];
