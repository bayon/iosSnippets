// Popover from navbar barButtonItem
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 995111D1-347C-4FBB-80C0-A455AE28603D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//Popover from navbar barButtonItem
-(IBAction)popoverFromBarButtonItem:(id)sender{
    //popover code goes here
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
        [popover presentPopoverFromBarButtonItem:sender permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
        
    }  
    
    
}

//remember to dismiss the popover
/*
-(void)viewWillDisappear:(BOOL)animated{
    
    [[self valueForKey:@"popover"] dismissPopoverAnimated:YES];
    
}
 */
