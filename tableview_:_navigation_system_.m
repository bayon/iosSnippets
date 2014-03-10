// TableView : Navigation System 
// 
//
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: 2CD11AC7-E536-4EB1-B689-6DF93B252D01
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 //TableView : Navigation System 
 #pragma mark TableView Delegate Methods
 - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
 {
 // Return the number of sections.
 return 1;
 }
 - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
 {
 // Return the number of rows in the section.
 //Table Row Count: First Tier
 return [queryArrayFor_master count];
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
 //Table Data Display: First Tier
 Master *master = (Master *)[queryArrayFor_master objectAtIndex:indexPath.row];
 NSString *string = [NSString stringWithFormat:@"%@ ",[master master_title]] ;
 cell.textLabel.text = string;
 return cell;
 }
 - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
 {
 //Table Navigation: First Tier
 Master *master = (Master *)[queryArrayFor_master objectAtIndex:indexPath.row];
 sharedManager.master_id = [master master_id];
 sharedManager.master_title = [master master_title];
 [self performSegueWithIdentifier: @"HomeToMaster" sender: self];
 }
