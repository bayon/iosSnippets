// NSMutableData to JSON
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 93EAB24D-64A7-4046-A303-17D5487CD06A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 //convert NSMutableData to a string of json encoded data
    NSString* stringOfJsonEncodedData;
    stringOfJsonEncodedData = [[NSString alloc] initWithData:self.mutableData encoding:NSUTF8StringEncoding];
    NSLog(@"stringOfJsonEncodedData:%@",stringOfJsonEncodedData);