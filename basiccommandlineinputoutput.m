// basicCommandLineInputOutput
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: A6F61376-2FE2-445A-8CEC-66498137CEF1
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(void)basicCommandLineInputOutput{
    //commandline input
    int inputOne;
    NSLog (@"Enter number: ");
    scanf("%i", &inputOne);
    
    int inputTwo;
    NSLog (@"Enter another number: ");
    scanf("%i", &inputTwo);
    
    NSLog (@"%i + %i = %d", inputOne, inputTwo, inputOne + inputTwo);
}

