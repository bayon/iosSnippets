// buildNavBar 
// 
//
// IDECodeSnippetCompletionScopes: [Preprocessor]
// IDECodeSnippetIdentifier: C3CA719C-7DD2-45DA-BAE8-870D31932922
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(void)buildNavBar{
    if(self.navigationController){
        NSLog(@"yes we have a nav controller.");
        UIBarButtonItem *addButton =[[UIBarButtonItem alloc]
                                     initWithTitle:@"Add"
                                     style:UIBarButtonItemStylePlain
                                     target:self
                                     action:@selector(navigateToAddController)];
        
        self.navigationItem.rightBarButtonItem = addButton;
        [self setTitle:@"CRUD To Do"];
    }
}