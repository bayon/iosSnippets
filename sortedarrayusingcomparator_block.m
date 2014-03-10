// sortedArrayUsingComparator block
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 374E0BE2-FCEE-47D3-A0A0-8231F6EFAD5E
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//sortedArrayUsingComparator
        NSArray *shelfBottles = [sharedManager FetchDataWithPred:visitor.visitor_id inAttribute:@"visitor_id" inEntity:@"Visitor_Shelf"];
        shelfBottles = [shelfBottles sortedArrayUsingComparator:^NSComparisonResult(Visitor_Shelf *one, Visitor_Shelf *two) {
            return [one.whiskey_shelf_position compare:two.whiskey_shelf_position options:NSNumericSearch];
        }];