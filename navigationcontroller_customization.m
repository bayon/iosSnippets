// NavigationController Customization
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 51B33F4E-81BB-4D3A-9612-F3A6C1D469EA
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#pragma mark - NavigationController Customization

-(void)buildNavBar{
    if(self.navigationController){
        NSLog(@"yes we have a nav controller.");
        UIBarButtonItem *addButton =[[UIBarButtonItem alloc]
                                     initWithTitle:@"+"
                                     style:UIBarButtonItemStylePlain
                                     target:self
                                     action:@selector(addAccount:)];
        
        self.navigationItem.rightBarButtonItem = addButton;
        
        
         self.navigationController.navigationBar.barTintColor = [UIColor redColor];
        self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
        //self.navigationController.navigationBar.titleTextAttributes.titleColor = [UIColor greenColor];
        //self.navigationController.navigationItem.titleView.tintColor = [UIColor greenColor];
        self.navigationController.navigationBar.translucent = NO;
        
        [self setTitle:@"Accounts"];
        
    }
}

- (void)setTitle:(NSString *)title
{
    [super setTitle:title];
    UILabel *titleView = (UILabel *)self.navigationItem.titleView;
    if (!titleView) {
        titleView = [[UILabel alloc] initWithFrame:CGRectZero];
        titleView.backgroundColor = [UIColor clearColor];
        titleView.font = [UIFont boldSystemFontOfSize:20.0];
        //titleView.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.5];
        
        titleView.textColor = [UIColor whiteColor]; // Change to desired color
        
        self.navigationItem.titleView = titleView;
        //[titleView release];
    }
    titleView.text = title;
    [titleView sizeToFit];
}
