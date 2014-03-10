// Align Button and Label
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 4FA2564A-14C8-4460-8E20-306EA163F008
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//Align Button and Label within a container view
    
    //containerView1,button1,myLabel1
    
    UIView *containerView1 = [[UIView alloc]init];
    containerView1.frame = CGRectMake(50,50,200,100);

    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button1 addTarget:self action:@selector(method1) forControlEvents:UIControlEventTouchUpInside];
    [button1 setTitle:@"button1_Title" forState:UIControlStateNormal];
    button1.frame = CGRectMake(0.0f,0.0f,200.0f,50.0f);
    //alignment of button1 content
    [button1 setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
    [button1 setContentHorizontalAlignment:UIControlContentHorizontalAlignmentCenter];
    
    UILabel *myLabel1 = [[UILabel alloc] init ];
    myLabel1.textAlignment = NSTextAlignmentCenter;
    myLabel1.backgroundColor = [UIColor clearColor];
    myLabel1.text = @"center this text within the space allowed by the container view";
    
    [myLabel1 sizeToFit];
    [myLabel1 setNumberOfLines:2];// 0 = infinite
    CGRect myLabel1Frame = myLabel1.frame;
    
    //This, I think adapts to the parent container...
    int labelButtonYDifference = 40;
    myLabel1Frame = CGRectMake( myLabel1Frame.origin.x, myLabel1Frame.origin.y+labelButtonYDifference, containerView1.frame.size.width, containerView1.frame.size.height );
    
    myLabel1.frame = myLabel1Frame;
    [containerView1 addSubview:button1];
    [containerView1 addSubview:myLabel1];
    //HIDE-SHOW: containerView1
    [self.view addSubview:containerView1];