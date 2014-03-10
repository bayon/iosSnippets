// View Container
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 67394D65-9710-4C14-8F65-1DFCC3BC908F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/* 
// < VIEW CONTAINER >   
//REQUIRES: #import <QuartzCore/QuartzCore.h>
        //Positioning:
        int viewContainer_x = 0;
        int viewContainer_y = 50;
        //Size:
        int viewContainer_width = 800;
        int viewContainer_height = 1024;
        
        UIView *viewContainer = [[UIView alloc] initWithFrame:CGRectMake( viewContainer_x, viewContainer_y, viewContainer_width, viewContainer_height )]; 
        viewContainer.backgroundColor = [UIColor lightGrayColor];
        viewContainer.layer.borderColor = [UIColor blackColor].CGColor;
        viewContainer.layer.borderWidth = 1.0f;
        //ROUNDED CORNERS
        //viewContainer.layer.cornerRadius = 11;
        
        //DIRECTIONS:---> addSubview:whatever to viewContainer ie. [viewContainer addSubview: whatEver];
        //ADD THIS [self.view addSubview:viewContainer];
        // </ END VIEW CONTAINER >

*/