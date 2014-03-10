// -(void)buildTableView
// 
//
// IDECodeSnippetCompletionScopes: [Preprocessor]
// IDECodeSnippetIdentifier: BECA182A-77C1-4D8F-89EC-6F242A2E5B62
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(void)buildTableView{
    //*full screen dimensions
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    
    tableView1 = [[UITableView alloc] initWithFrame:CGRectMake(0,0,screenWidth,screenHeight) style:UITableViewStylePlain] ;
    //ALTERNATIVE: Grouped View for Sections
    //tableView = [[UITableView alloc] initWithFrame:CGRectMake(130,100,500,500) style:UITableViewStyleGrouped] ;
    tableView1.dataSource = self;
    tableView1.delegate = self;
    [self.view addSubview:tableView1];
    
    /*
     //requirements:
     .h
     <UITableViewDataSource,UITableViewDelegate>
     UITableView *tableView1;
     @property (nonatomic,retain) UITableView * tableView1;
     .m
     @synthesize tableView1;
     
     */
    
}
