// TABLE VIEW
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 2029E5C2-45B8-42E2-A9F9-50D7FD6FF6B8
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 

/*
 //< TABLE VIEW  >
 //.h
 //HEAD
 //DELEGATES: <UITableViewDelegate, UITableViewDataSource>
 //@interface
 UITableView *tableView;
 //post interface
 @property (nonatomic, retain) IBOutlet UITableView  *tableView;
 ---------------------
 //.m
 //HEAD
 
 
 //@implementation
 
 //@synthesize
 
 //METHODS
 
 // TABLEVIEW METHODS  
 
 - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
 {
 // Return the number of sections.
 return 1;
 }
 
 - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
 {
 // Return the number of rows in the section.
 return 1;
 //return [xxx_Array count];
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
 
 
 // Configure the cell...
 // MyClass *myclass = (MyClass *)[xxx_Array objectAtIndex:indexPath.row];
 cell.textLabel.text = @"data goes here";
 //cell.textLabel.text = myclass.name;
 
 return cell;
 }
 
 #pragma mark -
 #pragma mark Table view delegate
 
 - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
 {
 
 
 // [self.navigationController pushViewController:self.editMyClassViewController animated:YES];
 
 }
  
 
 </ TABLE VIEW >
 */


/*
//DISPLAY  TABLE VIEW 
//May Require: //BORDERS #import <QuartzCore/QuartzCore.h>
tableView = [[UITableView alloc] initWithFrame:CGRectMake(130,100,500,500) style:UITableViewStylePlain] ;
tableView.dataSource = self;
tableView.delegate = self;
tableView.layer.borderColor = [UIColor lightGrayColor].CGColor;
tableView.layer.borderWidth = 1.0f;
[self.view addSubview:tableView];
 */
