// checkIfValueIsInArray
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: AF6E89F3-5811-4208-9B24-FC53F2C57350
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(BOOL)checkIfValueIsInArray: (NSString *)numberString{
    int result = 0;
    for (id answer in multipleRadioArray) {
        if([ answer isEqualToString:numberString]){
            result = 1;
        }
    }
    return result;
}
 