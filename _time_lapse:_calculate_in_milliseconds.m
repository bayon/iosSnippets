//  time lapse: calculate in milliseconds
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 9B87DE0E-E7C7-49BC-AE37-A5532A73D2E3
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
// time lapse: calculate in milliseconds
    NSDate *start = [NSDate date];
    //some process
    double timePassed_ms = [start timeIntervalSinceNow] * -1000.0;
    NSLog(@"Time Lapse ms: %f",timePassed_ms);