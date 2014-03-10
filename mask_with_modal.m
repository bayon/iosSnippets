// mask with modal
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 31133EB2-CF24-484C-AFB7-3BFAC58ACBA6
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//mask with modal
        UIView *mask = [[UIView alloc] initWithFrame:CGRectMake(0,0,self.view.frame.size.width, self.view.frame.size.height)];
        //Black Transparency
        UIColor *blackTransparency = [UIColor colorWithRed:0.0f  green:0.0f  blue:0.0f  alpha:0.5f ];
        mask.backgroundColor  =  blackTransparency ;
        [self.view addSubview:mask];
        //modal background
        UIImageView *modal = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img_bg_modal.png"]];
        modal.frame = CGRectMake(40, 70, 716, 820);
        [self.view addSubview:modal];
         
         
         /*
          //ORDER IS IMPORTANT 
          
          [self.view addSubview:mask];
          
          [self.view bringSubviewToFront:modal];
          */
