// Block Completion Handler
// 
//
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: 9D6BBC2B-59A2-4625-8202-7236A781A7A4
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// Block Completion Handler
 
 - (IBAction)animateView:(id)sender {
 CGRect cacheFrame = self.imageView.frame;
 [UIView animateWithDuration:1.5 animations:^{
 CGRect newFrame = self.imageView.frame;
 newFrame.origin.y = newFrame.origin.y + 150.0;
 self.imageView.frame = newFrame;
 self.imageView.alpha = 0.2;
 }
 completion:^ (BOOL finished) {
 if (finished) {
 // Revert image view to original.
 self.imageView.frame = cacheFrame;
 self.imageView.alpha = 1.0;
 }
 }];
 }
 
