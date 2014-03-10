// create Scroll View Programmatically
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: A611E898-732F-4954-BCF2-3ECAC8A522A6
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/* create Scroll View Programmatically 
UIScrollView *scrollview = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];   
NSInteger viewcount= 4;  
for(int i = 0; i< viewcount; i++) { 
    
    CGFloat y = i * self.view.frame.size.height;  
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, y,self.view.frame.size.width, self .view.frame.size.height)];       
    view.backgroundColor = [UIColor lightGrayColor];  
    [scrollview addSubview:view];  
    //[view release];  
}    
scrollview.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height *viewcount);   
[self.view addSubview:scrollview];
 */