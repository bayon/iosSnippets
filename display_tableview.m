// display TableView
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 313CA364-8585-4EDE-B9FF-64BAA70B6DD2
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/* display TableView
 //required: #import <QuartzCore/QuartzCore.h>
 //required: DELEGATES :: <UITableViewDelegate, UITableViewDataSource> 
tableView = [[UITableView alloc] initWithFrame:CGRectMake(130,100,500,500) style:UITableViewStylePlain] ;
 //ALTERNATIVE: Grouped View for Sections
 //tableView = [[UITableView alloc] initWithFrame:CGRectMake(130,100,500,500) style:UITableViewStyleGrouped] ;

tableView.dataSource = self;
tableView.delegate = self;
tableView.layer.borderColor = [UIColor lightGrayColor].CGColor;
tableView.layer.borderWidth = 1.0f;
 tableView.layer.cornerRadius = 10;
[self.view addSubview:tableView];
 
 
 //RELOAD REFRESH
 [self.tableViewOne reloadData];
*/