// Custom NavBar Button: NavigationController  no border image
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 16FE17F0-B036-46E8-B709-F268322645F3
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//Custom NavBar Button: NavigationController  no border image
    UIImage *image = [UIImage imageNamed:@"but_btn_search_off.png"];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage: [image stretchableImageWithLeftCapWidth:7.0 topCapHeight:0.0] forState:UIControlStateNormal];
    [button setBackgroundImage: [[UIImage imageNamed: @"but_btn_search_off.png"] stretchableImageWithLeftCapWidth:7.0 topCapHeight:0.0] forState:UIControlStateHighlighted];
    button.frame= CGRectMake(0.0, 0.0, image.size.width, image.size.height);
    [button addTarget:self action:@selector(goSearch:)    forControlEvents:UIControlEventTouchUpInside];
    UIView *v=[[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, image.size.width, image.size.height) ];
    [v addSubview:button];
    UIBarButtonItem *search = [[UIBarButtonItem alloc] initWithCustomView:v];
    
    // multiple buttons on NavigationController
    self.navigationItem.rightBarButtonItems = @[settingsButton,settingsButton2,search];
