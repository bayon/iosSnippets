// popover with it's own navigation controller
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: B60F4102-071F-4ED6-A00B-BFEE8AEE7E50
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //popover with it's own navigation controller
 //1.instantiate  viewcontroller
 SettingsViewController *svc = [[SettingsViewController alloc] init];
 //add nav bar controller in order to redirect views from the popover file
 UINavigationController *navbar = [[UINavigationController alloc] initWithRootViewController:svc];
 navbar.contentSizeForViewInPopover = CGSizeMake(300,300);
 popover.delegate = self;
 //2. create popover
 popover = [[UIPopoverController alloc]initWithContentViewController:navbar];
 //3. present
 //Popovers Default Size
 popover.popoverContentSize = CGSizeMake(300,300);
 [popover presentPopoverFromBarButtonItem:sender permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
 
 
 */

//remember to dismiss the popover
/*
 -(void)viewWillDisappear:(BOOL)animated{
 
 [[self valueForKey:@"popover"] dismissPopoverAnimated:YES];
 
 }
 */
