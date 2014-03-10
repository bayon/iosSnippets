// explode a string
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 9A2D5E99-9FB9-4D2A-91A5-63421210C747
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// explode a string
-(NSMutableArray *)explodeString : (NSString *)string   separatedBy :(NSString *)separator{
    NSMutableArray *explodedArray = [NSMutableArray arrayWithArray:[string componentsSeparatedByString:separator]];
    NSLog(@"%@",explodedArray);
    return explodedArray;
}