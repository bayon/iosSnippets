// Standard UI Set Up
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 2C601B42-35B9-4C6B-B393-ED1ADE200531
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //standard UI set up
 .h
 <UITextFieldDelegate,UIGestureRecognizerDelegate>
 IBOutlet UITextField *txtfld1;
 UITapGestureRecognizer *tap;
 
 @property  (nonatomic,retain) IBOutlet UITextField *txtfld1;
 @property  (nonatomic,retain) UITapGestureRecognizer *tap;
 -(IBAction)goBack:(id)sender;
 .m
 @synthesize  tap,txtfld1;
// ADD TO viewDidLoad THESE 3 calls.
 
    [self setTitle:@"Checking"];
    [self setUpInputs];
    [self buildNavBar];
 
 
 #pragma mark Standard UI Set Up
 -(IBAction)goBack:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
 }
 // "Return" key dismiss keyboard
 - (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [txtfld1 resignFirstResponder];
 
    return YES;
 }
 
 -(void)buildNavBar{
     if(self.navigationController){
     
         UIBarButtonItem *addButton =[[UIBarButtonItem alloc]
         initWithTitle:@"Add"
         style:UIBarButtonItemStylePlain
         target:self
         action:@selector(done:)];
         
         self.navigationItem.rightBarButtonItem = addButton;
     
     }
 }
 
 -(void)setUpInputs{
     txtfld1.delegate = self;
 
     tap = [[UITapGestureRecognizer alloc]
     initWithTarget:self
     action:@selector(dismissKeyboard)];
     [self.view addGestureRecognizer:tap];
 }
 -(void)dismissKeyboard {
     [txtfld1 resignFirstResponder];
 
 }
 
 */