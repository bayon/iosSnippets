// z index : zPosition
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 4655485B-513B-45DB-90A5-17875D2F4C1B
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 // z index : zPosition
 #import "QuartzCore/QuartzCore.h"
 then
 theView.layer.zPosition = 1;
 
 
 //also...
 @property(nonatomic,readonly) UIView *superview;
 @property(nonatomic,readonly,copy) NSArray *subviews;
 
 - (void)removeFromSuperview;
 - (void)insertSubview:(UIView *)view atIndex:(NSInteger)index;
 - (void)exchangeSubviewAtIndex:(NSInteger)index1 withSubviewAtIndex:(NSInteger)index2;
 
 - (void)addSubview:(UIView *)view;
 - (void)insertSubview:(UIView *)view belowSubview:(UIView *)siblingSubview;
 - (void)insertSubview:(UIView *)view aboveSubview:(UIView *)siblingSubview;
 
 - (void)bringSubviewToFront:(UIView *)view;
 - (void)sendSubviewToBack:(UIView *)view;
 The sibling views are ordered back to front in the subviews array. So the topmost view will be:
 
 [parentView.subviews lastObject];
 and bottom view will be:
 
 [parentView.subviews objectAtIndex:0];
 
 */

