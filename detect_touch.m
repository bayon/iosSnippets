// Detect Touch
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 984F8EC8-A0DD-4A4E-86FC-7F1D1A15284A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 // Detect Touch
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSSet *countTouches = [event allTouches];
    NSLog(@"touchesBegan");
}