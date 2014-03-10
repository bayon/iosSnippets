// SCROLL VIEW: inside a regular UIViewController
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: FE942546-3ECF-468E-84DB-4C7BD31E4ABA
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 /* SCROLL VIEW: inside a regular UIViewController
CGRect fullScreenRect=[[UIScreen mainScreen] applicationFrame];
UIScrollView *scrollview = [[UIScrollView alloc] init];
scrollview=[[UIScrollView alloc] initWithFrame:fullScreenRect];
scrollview.backgroundColor = [UIColor whiteColor];
scrollview.layer.borderColor = [UIColor blackColor].CGColor;
scrollview.layer.borderWidth = 3.0f;
// do any further configuration to the scroll view
// add a view, or views, as a subview of the scroll view.
//INNER SCROLLER
UIView *view = [[UIView alloc] initWithFrame:CGRectMake(10, 10,scrollview.frame.size.width-20, 200)]; 
view.backgroundColor = [UIColor lightGrayColor];
view.layer.borderColor = [UIColor blackColor].CGColor;
view.layer.borderWidth = 3.0f;
[scrollview addSubview:view]; 
NSInteger heightMultiplier= 6; 
scrollview.contentSize = CGSizeMake(400.0f, 600.0f *heightMultiplier); 
//ADD : Home Button To First view
buttonHome = [UIButton buttonWithType:UIButtonTypeRoundedRect];
[buttonHome addTarget:self action:@selector(goHome) forControlEvents:UIControlEventTouchUpInside];
[buttonHome setTitle:@"HOME" forState:UIControlStateNormal];
buttonHome.frame = CGRectMake(10.0f,10.0f,150.0f,40.0f);
[view addSubview: buttonHome];
self.view=scrollview;
 */
