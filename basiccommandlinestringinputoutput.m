// basicCommandLineStringInputOutput
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: FCF60CFA-6C18-47FE-85D6-BB5278E08B61
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(void)basicCommandLineStringInputOutput{
    char string[256];
    NSLog (@"Enter your name: ");
    scanf( "%s" , string );
    NSLog (@"Hi %s ",string);
}
