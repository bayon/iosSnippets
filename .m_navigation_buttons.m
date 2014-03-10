// .m navigation buttons
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: E34DDFC2-211C-45CB-9B51-C452951B311E
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*   .m navigation buttons
 //navigation buttons.m
 @implementation ViewB
 @synthesize nextButton;
 @synthesize backButton;
 -(IBAction)next{
 NSLog(@"next page please2");
 ViewC *viewC = [[ViewC alloc]init];
 [self presentModalViewController:viewC animated:NO];
 
 }
 -(IBAction)back{
 NSLog(@"back a page1");
 ViewA *viewA = [[ViewA alloc]init];
 [self presentModalViewController:viewA animated:NO];
 
 }
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
 {
 self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
 if (self) {
 // Custom initialization
 [self.view setBackgroundColor : [ UIColor redColor]];
 
 nextButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
 [nextButton addTarget:self action:@selector(next) forControlEvents:UIControlEventTouchUpInside];
 [nextButton setTitle:@"Next >" forState:UIControlStateNormal];
 nextButton.frame = CGRectMake(300.0f,500.0f,100.0f,40.0f);
 [self.view addSubview: nextButton];
 
 backButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
 [backButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
 [backButton setTitle:@"< Back" forState:UIControlStateNormal];
 backButton.frame = CGRectMake(100.0f,500.0f,100.0f,40.0f);
 [self.view addSubview: backButton];
 
 }
 return self;
 }
 
 */
