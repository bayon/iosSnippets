// USE PROTOCOL
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 09A8D074-F82C-41EB-BC10-731D0AE9B84F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
//USE PROTOCOL 
 //In your child view controller .h file:
 
 @protocol ChildViewControllerDelegate <NSObject>
 - (void)parentMethodThatChildCanCall;
 @end
 
 @interface ChildViewController : UIViewController
 {
 }
 @property (assign) id <ChildViewControllerDelegate> delegate;
 
 //In your child view controller .m file:
 
 @implementation ChildViewController
 @synthesize delegate;
 
 
 // to call parent method:
 //  [self.delegate parentMethodThatChildCanCall];
 
 //In parent view controller .h file:
 
 @interface parentViewController <ChildViewControllerDelegate>
 
 //In parent view controller .m file:
 
 //after create instant of your ChildViewController
 childViewController.delegate = self;
 
 - (void) parentMethodThatChildCanCall
 {
 //do thing
 }



*/