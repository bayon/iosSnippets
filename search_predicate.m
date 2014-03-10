// search predicate
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 71DF58E0-7568-4018-9935-A8CFE76075C2
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//search predicate
    NSPredicate *predicate = [NSPredicate predicateWithFormat:  @"ANY buildingName CONTAINS 'B'"];
    [fetchRequest setPredicate:predicate];