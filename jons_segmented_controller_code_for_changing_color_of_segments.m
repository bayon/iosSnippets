// Jons Segmented Controller code for changing color of segments
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: DE1C0AF9-C760-48FD-8172-0149B193AE74
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 Jons Segmented Controller code for changing color of segments
 1) need this to set initial segmented controller
 
 dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 0.05 * NSEC_PER_SEC), dispatch_get_current_queue(), ^{
 [self setCurrentTable:segment];
 });
 
 2) here is the method to set segments appropriately
 -(IBAction)setCurrentTable:(UISegmentedControl*)sender
 {
 
 for (int i=0; i<[sender.subviews count]; i++)
 {
 if ([[sender.subviews objectAtIndex:i] respondsToSelector:@selector(isSelected)] && [[sender.subviews objectAtIndex:i]isSelected])
 {
 [[sender.subviews objectAtIndex:i] setTintColor:[UIColor colorWithRed:0.929 green:0.337 blue:0.184 alpha:1]];
 }
 if ([[sender.subviews objectAtIndex:i] respondsToSelector:@selector(isSelected)] && ![[sender.subviews objectAtIndex:i] isSelected])
 {
 [[sender.subviews objectAtIndex:i] setTintColor:[UIColor grayColor]];
 }
 }
 if (segment.selectedSegmentIndex == 0)
 {
 numOfCells = buildings.count;
 [self.tableView reloadData];
 }
 else
 {
 numOfCells = clients.count;
 [self.tableView reloadData];
 }
 
 }

 */
