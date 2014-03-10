// perpetuate an animation
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 01484C65-3033-4BCC-A5E4-6D647D481410
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//perpetuate an animation
    [UIView animateWithDuration:2.0 delay:0.0 options:UIViewAnimationOptionCurveLinear
                     animations:^{
                         self.view.frame = CGRectMake(320, 0, self.view.frame.size.width, self.view.frame.size.height);
                     }
                     completion:^(BOOL finished) {
                         self.view.frame = CGRectMake(-self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height);
                     }
     ];