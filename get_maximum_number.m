// get Maximum Number
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 3C9E9A44-6B26-4AB4-8EBD-B64AC383FB58
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//get Maximum Number
-(NSNumber *)getMaxNumber: (NSMutableArray *)arrayOfNumbers{
    int max = 0;
    int count = [arrayOfNumbers count];
    NSLog(@"\n count: %i",count);
    for(int i=0; i < count;i++){
        NSLog(@"iteration: %i",[[arrayOfNumbers objectAtIndex:i] integerValue]);
        if(max <[[arrayOfNumbers objectAtIndex:i] integerValue]){
            max = [[arrayOfNumbers objectAtIndex:i] integerValue];
        }
    }
    NSNumber *maxReturn = [NSNumber numberWithInt:max];
    return maxReturn;
}