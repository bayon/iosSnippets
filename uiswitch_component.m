// UISwitch Component
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 5D656362-D4F4-44E5-B2A0-9962411A272E
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //BASIC SWITCH
 
 UISwitch *switchView = [[UISwitch alloc]  init ];
 switchView.frame = CGRectMake(10, 10, 100, 40);
 [switchView setOn:NO animated:NO];
 [switchView addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
 [r3column2 addSubview:switchView];
 
 - (void) switchChanged:(id)sender {
 UISwitch* switchControl = sender;
 NSLog( @"The switch is %@", switchControl.on ? @"ON" : @"OFF" );
 }
 */




/* ADVANCED: 
 //UISwitch in a UITableView cell
 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 switch( [indexPath row] ) {
 case MY_SWITCH_CELL: {
 UITableViewCell* aCell = [tableView dequeueReusableCellWithIdentifier:@"SwitchCell"];
 if( aCell == nil ) {
 aCell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:@"SwitchCell"] autorelease];
 aCell.textLabel.text = @"I Have A Switch";
 aCell.selectionStyle = UITableViewCellSelectionStyleNone;
 UISwitch *switchView = [[UISwitch alloc] initWithFrame:CGRectZero];
 aCell.accessoryView = switchView;
 [switchView setOn:NO animated:NO];
 [switchView addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
 [switchView release];
 }
 return aCell;
 }
 break;
 }
 return nil;
 }
 
 - (void) switchChanged:(id)sender {
 UISwitch* switchControl = sender;
 NSLog( @"The switch is %@", switchControl.on ? @"ON" : @"OFF" );
 }
*/
