// checkOSVersion iOS6 iOS7
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: A9CD99B9-61FA-4F87-9969-29F3EDF2DF66
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(void)checkOSVersion{
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] < 7.00) {
        
        // ...
        NSLog(@"\n LESS THAN 7.00 : \n" );
    }
    if ([[[UIDevice currentDevice] systemVersion] floatValue] > 6.00) {
        
        // ...
        NSLog(@"\n GREATER THAN 6.00 : \n" );
    }
    
    
}