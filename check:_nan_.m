// check: NaN 
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 2D1A6857-0AE5-4C01-A075-F2708788E812
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(NSDecimalNumber *)checkNaNForFloatValue : (float)f{
    
    NSDecimalNumber *value =[[NSDecimalNumber alloc] init];
    if(isnan(f)){
        //NSLog(@"\n NOT A NUMBER: NaN!!!");
        value =[[NSDecimalNumber alloc] initWithFloat:0]  ;
    }else{
        value =  [[NSDecimalNumber alloc] initWithFloat:f]  ;
    }
    
    
    return value;
}