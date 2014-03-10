// Predicate: with NSNumber
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 6BADAD71-7E31-412D-82A9-B5FFACB48178
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//Predicate: with NSNumber
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"accountNumber == %@",  selectedAccount.accountNumber   ] ;
    [fetchRequest setPredicate:predicate];