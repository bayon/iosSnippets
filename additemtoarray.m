// addItemToArray
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: F014870F-87DF-49C3-A732-9E2E7FDA2B79
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(void)addItemToArray:(NSString *)stringItem{
    BOOL valueIsArray = [multipleRadioArray isKindOfClass:[NSArray class]];
    if(valueIsArray){
        [multipleRadioArray addObject:stringItem];
    }
    NSLog(@"\n updated multipleRadioArray: %@",multipleRadioArray);
}