// fetchedResultsController uitableview : refresh reload trick
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 7A2976BB-F0A9-454A-9065-541325500099
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// fetchedResultsController uitableview : refresh reload trick
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSError *error;
    [self.fetchedResultsController performFetch:&error];
    tableView1 = nil;
   [self buildTableView1];
    //[self.tableView1 reloadData];
}
