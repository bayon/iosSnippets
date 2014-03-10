// WRITE FILE TO DOCUMENTS
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: DD049144-7342-4F70-AC6C-39F8280F67D9
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//WRITE FILE TO DOCUMENTS
-(void)writeFileToDocuments{
    char *saves = "abcd";
    NSData *data = [[NSData alloc] initWithBytes:saves length:4]; 
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *appFile = [documentsDirectory stringByAppendingPathComponent:@"MyFile"];
    [data writeToFile:appFile atomically:YES];
}