// ButtonAndMethod
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 904F3C20-6444-407C-960C-36A390CCD9BB
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/* 
 //ButtonAndMethod .h
 
 
 {
UIButton *button1;
 }
@property (nonatomic,retain) IBOutlet UIButton *button1;
-(IBAction)method1;
 
*/

/*
//  ButtonAndMethod.m
 
@synthesize button1;
//--->UIButton inside viewDidLoad or other method...
    button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button1 addTarget:self action:@selector(method1) forControlEvents:UIControlEventTouchUpInside];
    [button1 setTitle:@"button1_Title" forState:UIControlStateNormal];
    button1.frame = CGRectMake(300.0f,500.0f,100.0f,40.0f);
    [self.view addSubview: button1];
 
 //[cancelButton setBackgroundImage:[UIImage imageNamed:@"but_btn_enterLoginKey_off"] forState:UIControlStateNormal];
// [cancelButton setBackgroundImage:[UIImage imageNamed:@"but_btn_enterLoginKey_on"] forState:UIControlStateHighlighted];
//---->Method1
-(IBAction)method1{
     NSLog(@"FILE->FUNCTION: %s",__FUNCTION__);
}
 
*/