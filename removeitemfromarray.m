// removeItemFromArray
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 8775B5D6-E7B7-41F4-B2E5-63392D176000
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(void)removeItemFromArray:(NSString *)stringItem{
    int i;
    int indexToRemove;
    indexToRemove = -1;
    for (i = 0; i < [multipleRadioArray count]; i++) {
        //compare given string to string in array
        if ([[multipleRadioArray objectAtIndex:i] isEqualToString:stringItem]){
           
            indexToRemove = i;
        }
    }
    NSLog(@"indexToRemove: %i",indexToRemove);
    NSLog(@"\n before removal::: multipleRadioArray: %@",multipleRadioArray);
    [multipleRadioArray removeObjectAtIndex: indexToRemove];
    //[multipleRadioArray insertObject:@"0" atIndex:indexToRemove];
    NSLog(@"\n updated multipleRadioArray: %@",multipleRadioArray);
}
