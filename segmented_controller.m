// SEGMENTED CONTROLLER
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: B118DF60-6DD7-4CF1-A183-CB96D7C95DE6
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //SEGMENTED CONTROLLER 
 
 //SEGMENTED CONTROL
 NSArray *itemArray = [NSArray arrayWithObjects: @"Estimates", @"Projects", nil];
 UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:itemArray];
 segmentedControl.frame = CGRectMake(275, 10, 250, 40);
 segmentedControl.segmentedControlStyle = UISegmentedControlStylePlain;
 [segmentedControl addTarget:self action:@selector(action:)  forControlEvents:UIControlEventValueChanged];
 segmentedControl.selectedSegmentIndex = 1;
 [viewContainer addSubview:segmentedControl];
 
 //action: Change View
- (void)action:(id)sender{
NSLog(@"FILE->FUNCTION: %s",__FUNCTION__);
UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;

 if (selectedSegment == 0) {
 //NSLog(@"A");
 UIView *estimatesView = [[UIView alloc] initWithFrame:CGRectMake( 0, 80, 800, 1000 )]; 
 estimatesView.backgroundColor =[UIColor whiteColor];
 [self.view addSubview:estimatesView];
 }else{
 //NSLog(@"B");
 UIView *projectsView = [[UIView alloc] initWithFrame:CGRectMake( 0, 80, 800, 1000 )]; 
 projectsView.backgroundColor =[UIColor grayColor];
 [self.view addSubview:projectsView];
 }
 
 
 //FROM NIB FILE
 //FROM NIB FILE
 UIViewController *vc = [[UIViewController alloc] initWithNibName:@"EstimatesView" bundle:nil];
 UIView *estimatesView = vc.view;
 estimatesView.backgroundColor =[UIColor yellowColor];
 estimatesView.frame = CGRectMake( 0, 80, 800, 1000 );
 [self.view   addSubview:estimatesView];

*/

/*
 //CHANGE COLOR
 for (int i=0; i<[segmentedControl.subviews count]; i++)
 {
 if ([[segmentedControl.subviews objectAtIndex:i]isSelected] )
 {
 //Custom Color
 UIColor *tintcolor = [UIColor colorWithRed:0.886f green:0.075f blue:0.075 alpha:1.0f ];
 [[segmentedControl.subviews objectAtIndex:i] setTintColor:tintcolor];
 break;
 }
 }

 */
