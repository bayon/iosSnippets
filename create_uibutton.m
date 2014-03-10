// create UIButton
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: C8BA2BA7-381F-480C-9FEC-FF6522BA437F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/* create UIButton
 
 .h
 UIButton *button1;
 
@property (nonatomic,retain) IBOutlet UIButton *button1;
 
 .m
 @synthesize button1;
 
 
 */
/* display UIButton
 button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
 [button1 addTarget:self action:@selector(method1) forControlEvents:UIControlEventTouchUpInside];
 [button1 setTitle:@"button1_Title" forState:UIControlStateNormal];
 button1.frame = CGRectMake(300.0f,500.0f,100.0f,40.0f);
 [self.view addSubview: button1];
 */