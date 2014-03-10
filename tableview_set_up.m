// TableView Set Up
// 
//
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: 9EF8609F-CF62-42D2-8D51-4EE90B754843
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

 //----->customize the TableView Delegate Methods ->
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

 */
