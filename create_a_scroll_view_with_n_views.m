// CREATE A SCROLL VIEW WITH n VIEWS
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 2DE0BD2B-E0A7-4A2A-8F0D-C09954DCF772
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/* CREATE A SCROLL VIEW WITH n VIEWS
UIScrollView *scrollview = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width-100, self.view.frame.size.height)];   
NSInteger viewcount= 2;  
for(int i = 0; i< viewcount; i++) { 
    
    CGFloat y = i * self.view.frame.size.height;  
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50, y,self.view.frame.size.width-100, self .view.frame.size.height)];       
    view.backgroundColor = [UIColor lightGrayColor]; 
    [scrollview addSubview:view];  
    //[view release];  
}    
scrollview.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height *viewcount);   
[self.view addSubview:scrollview];
*/
