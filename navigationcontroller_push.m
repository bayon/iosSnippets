// navigationController Push
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 23A89ECD-3ABA-47EF-BB5F-892F84668F57
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//navigationController Push
    [self.navigationController pushViewController:tvc animated:NO];

// OR STORYBOARDING
//Perform Segue To Storyboard
[self performSegueWithIdentifier: @"SegueToMain" sender: self];