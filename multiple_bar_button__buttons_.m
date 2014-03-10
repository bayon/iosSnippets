// MULTIPLE BAR BUTTON / BUTTONS 
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: BC839219-B8AC-4880-A2D9-3F86F5BA7ACF
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//MULTIPLE BAR BUTTON / BUTTONS  ( in the ViewDidLoad method ) 
    UIBarButtonItem* coolButton = [[UIBarButtonItem alloc]  initWithTitle:@"cool" style:UIBarButtonItemStyleDone  target:self action:@selector(coolAction)];  
    UIBarButtonItem* oneMoreButton = [[UIBarButtonItem alloc]  initWithTitle:@"more..." style:UIBarButtonItemStyleDone  target:self action:@selector(oneMoreAction)]; 
    //order of array items  determines display order:: css-like "float:right;"
    NSArray *myButtons = [[NSArray alloc] initWithObjects:editButton,coolButton,oneMoreButton,nil ];
    // INSERT THE BUTTONS
    self.navigationItem.rightBarButtonItems = myButtons;
    // make sure you have action methods that respond to the @selector(methodName)