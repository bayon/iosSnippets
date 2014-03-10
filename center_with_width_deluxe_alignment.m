// CENTER WITH WIDTH DELUXE ALIGNMENT
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: E4002554-B463-4B12-9453-0DDC98CDE61D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 //alignment center
 [questionNumber setTextAlignment:NSTextAlignmentCenter];
 //sizeToFit MUST be called before centerWithWidth... method, it dynamically sets width based on the question text
 [questionNumber sizeToFit];
 [questionNumber setFrame:[self centerWithWidthDeluxe:questionNumber.frame.size.width Height:questionNumber.frame.size.height Y:110]];
 
//CENTER WITH WIDTH DELUXE
//this method can center any CGRect based on width, height, and Y
-(CGRect)centerWithWidthDeluxe:(int)width Height:(int)height Y:(int)y {
    //deluxe
    CGFloat windowWidth;
    windowWidth = [UIScreen mainScreen].bounds.size.width;
    // end deluxe appendage
    
    int absoluteCenter = windowWidth / 2;
    
    int sideMargin = (width/2);
    
    int centeredX = absoluteCenter - sideMargin;
    
    CGRect centeredRect = CGRectMake(centeredX, y, width, height);
    return centeredRect;
}
//ex call
// [labelBuilding setFrame:[self centerWithWidthDeluxe:456 Height:60 Y:50]];

*/