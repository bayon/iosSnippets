// ScrollView : like scrollable cell
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 8FD5E595-A728-4979-A286-7245B4DC9AAA
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
 // ScrollView : like scrollable cell
    int scrollHeight = 50;
    UIScrollView *scrollview = [[UIScrollView alloc] initWithFrame:CGRectMake(0, scrollHeight, 300, 50)];
    NSInteger viewcount= 2;
    for(int i = 0; i< viewcount; i++) {
        
        CGFloat y = i * self.view.frame.size.height;
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, y,self.view.frame.size.width, self .view.frame.size.height)];
        view.backgroundColor = [UIColor lightGrayColor];
        [scrollview addSubview:view];
     }
    
    scrollview.contentSize = CGSizeMake(self.view.frame.size.width,scrollHeight );//self.view.frame.size.height
    [scrollview setShowsHorizontalScrollIndicator:NO];
    [scrollview setShowsVerticalScrollIndicator:NO];
    [self.view addSubview:scrollview];