// Table View With Array
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 8B80C757-0908-414F-B378-96AB5555C158
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2


/*
 //< Table View With Array >
 // .h
 //HEAD
 //DELEGATES:: <UITableViewDelegate, UITableViewDataSource>
 //@interface
 UITableView *tableView;
 NSMutableArray *array1;
 //post interface
 @property (nonatomic,retain) UITableView *tableView;
 @property (nonatomic,retain) NSMutableArray *array1;
 ---------------------
 // .m
 //IMPLEMENTATION
 
 #import <QuartzCore/QuartzCore.h>
 //@implementation
 
 //@synthesize
 @synthesize array1;
 @synthesize tableView;
 
 //METHODS
 
 - (void)viewWillAppear:(BOOL)animated {
 [super viewWillAppear:animated];
 
 array1 = [[NSMutableArray alloc] init];
 [array1 addObject:@"ONE"];
 [array1 addObject:@"TWO"];
 [array1 addObject:@"THREE"];
 [array1 addObject:@"FOUR"];
 [array1 addObject:@"FIVE"];
 [array1 addObject:@"SIX"];
 
 tableView = [[UITableView alloc] initWithFrame:CGRectMake(130,100,500,500) style:UITableViewStylePlain] ;
 tableView.layer.borderColor = [UIColor lightGrayColor].CGColor;
 tableView.layer.borderWidth = 1.0f;
 tableView.layer.cornerRadius = 10;
 //These require the DELEGATES declared in the header
 tableView.dataSource = self;
 tableView.delegate = self;
 [self.view addSubview:tableView];
 
 }
 
 
 

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
// Return the number of sections.
return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
// Return the number of rows in the section.
//return 1;
return [array1 count];
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
static NSString *CellIdentifier = @"Cell";
UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
if (cell == nil) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] ;
}
cell.selectionStyle = UITableViewCellSelectionStyleGray;
cell.text = [array1 objectAtIndex:indexPath.row];
return cell;
}

#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
 // [self.navigationController pushViewController:self.editMyClassViewController animated:YES];
}

 
 // .xib
 //VIEW(S)
 //  N/A
 
</ Table View With Array >
*/