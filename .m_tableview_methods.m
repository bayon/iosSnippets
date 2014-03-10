// .m TABLEVIEW METHODS
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 766F47E6-41CC-46FD-9FC0-86B27A1565EE
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/* -----     .m TABLEVIEW METHODS    ----------------------------------

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
	//OR DEFAULT
  //cell.text = [array1 objectAtIndex:indexPath.row];
 //cell.text = @"Text Here";
    return cell;
}

#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	
   	
   // [self.navigationController pushViewController:self.editMyClassViewController animated:YES];
	
}
*/
