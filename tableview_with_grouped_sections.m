// TableView With Grouped Sections
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: D2B077F7-4106-4699-96E3-FA9F9AB015F3
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 //< TableView With Grouped Sections >
 // .h
 //HEAD
 
 //@interface
 NSMutableArray *array1;
 NSMutableArray *array2;
 //post interface
 @property (nonatomic,retain) NSMutableArray *array1;
 @property (nonatomic,retain) NSMutableArray *array2;
 ---------------------
 // .m
 //IMPLEMENTATION
 
 
 //@implementation
 
 //@synthesize
 @synthesize array1;
 @synthesize array2;
 //METHODS
 
 - (void)viewDidLoad {
 self.title = NSLocalizedString(@"Grouped Sections", @"Comment");
 
 array1 = [[NSMutableArray alloc] init];
 [array1 addObject:@"ONE"];
 [array1 addObject:@"TWO"];
 [array1 addObject:@"THREE"];
 [array1 addObject:@"FOUR"];
 [array1 addObject:@"FIVE"];
 [array1 addObject:@"SIX"];
 
 array2 = [[NSMutableArray alloc] init];
 [array2 addObject:@"A"];
 [array2 addObject:@"B"];
 [array2 addObject:@"C"];
 [array2 addObject:@"D"];
 [array2 addObject:@"E"];
 [array2 addObject:@"F"];
 
 /*
 //DISPLAY  TABLE VIEW  
//May Require: //BORDERS #import <QuartzCore/QuartzCore.h>
tableView = [[UITableView alloc] initWithFrame:CGRectMake(130,100,500,500) style:UITableViewStyleGrouped] ;
tableView.dataSource = self;
tableView.delegate = self;
tableView.layer.borderColor = [UIColor lightGrayColor].CGColor;
tableView.layer.borderWidth = 1.0f;
[self.view addSubview:tableView];
 
 }
 */
 
 #pragma mark -
 #pragma mark Table view data source methods
 
 - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
 // Number of sections is the number of regions.
 return [array1 count];
 }
 
 - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
 // Number of rows is the number of time zones in the region for the specified section.
 return [array2 count];
 }
 
 
 - (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
 // The header for the section is the region name -- get this from the region at the section index.
 return [array1 objectAtIndex:section];
 }
 
 
 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 
 static NSString *MyIdentifier = @"MyIdentifier";
 
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
 if (cell == nil) {
 cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyIdentifier];
 }
 
 //cell 
 cell.textLabel.text = [array2 objectAtIndex:indexPath.row];
 
 return cell;
 }
 
 #pragma mark -
 #pragma mark Table view delegate method
 - (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
 return nil;
 }
 
 // .xib
 //VIEW(S)
 
 
 
 </ TableView With Grouped Sections >
 */