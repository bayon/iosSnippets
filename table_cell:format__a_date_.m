// table cell:format  a date 
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: BF6DBCD6-B6EB-4269-A6E2-082102423E3B
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// table cell:format  a date 
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"MMMM dd,yyyy"];//@"yyyy-MM-dd"
    // convert it to a string
    NSString *accountDateCreatedString = [dateFormat stringFromDate:account.dateCreated];
    cell.dateLabel.text = accountDateCreatedString;
