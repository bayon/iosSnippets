// popoverFromButton
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: F7DC5801-44E6-4A47-8C65-58452EF273FB
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//popoverFromButton
-(IBAction)popoverFromButton:(UIButton *)button{
     
    //Prevention of Duplicates
    if([popover isPopoverVisible]){
        [popover dismissPopoverAnimated:YES];
    }else{
        
        //1.instantiate  viewcontroller
        SettingsViewController *svc = [[SettingsViewController alloc] init];
        //protocol
        svc.delegate = self;
        
        //2. create popover
        popover = [[UIPopoverController alloc]initWithContentViewController:svc];
        //3. present
        //Popovers Default Size
        popover.popoverContentSize = CGSizeMake(300,100);
        //Call Popover from RECT with a UIButton for the parameter
        [popover presentPopoverFromRect:button.bounds  inView:button   permittedArrowDirections:UIPopoverArrowDirectionAny  animated:YES];

    }
    
    
}

//remember to dismiss the popover
/*
 -(void)viewWillDisappear:(BOOL)animated{
 
 [[self valueForKey:@"popover"] dismissPopoverAnimated:YES];
 
 }
 */
