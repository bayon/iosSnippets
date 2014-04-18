// tableview : snap to section methods
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 3E19AF27-1E6D-41B3-B25E-7E1C1974FF29
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// after touch up and it stopped scrolling.
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    [self autosnapSectionIfPossible];
}

// you could put this at the top of your .h if you wanted to...
#define kAutoSnapThreshold 75.0f

- (void)autosnapSectionIfPossible
{
    // if you're at the bottom of the table, don't let auto-snap scroll you back up.
    if (tableX.contentOffset.y >= tableX.contentSize.height - tableX.frame.size.height - 1) {
        //don't autosnap
        return;
    }
    
    // get the indexPaths that are currently in view.
    NSArray *visiblePaths = nil;
    visiblePaths = [tableX indexPathsForVisibleRows];
    
    // there can be one of two sections that might be closest to the top of the view
    NSIndexPath *firstPath = nil, *secondPath = nil;
    
    for (NSIndexPath *p in visiblePaths) {
        // row 0 corresponds to the top of your data object / start of a section
        if (p.row == 0 && firstPath == nil) {
            firstPath = p;
            continue;
        }
        else if (p.row == 0 && firstPath != nil)
        {
            secondPath = p;
            break;
        }
        
    }
    
    if (firstPath == nil && secondPath == nil) {
        // then there was none, so don't do the rest
        return;
    }
    
    UITableViewCell *firstCell = [tableX cellForRowAtIndexPath:firstPath];  // will be nil if path is nil
    UITableViewCell *secondCell = [tableX cellForRowAtIndexPath:secondPath];  // will be nil if path is nil
    
    UITableViewCell *theCell = nil;  // the actual cell of interest.  Will be either firstCell or secondCell
    NSIndexPath     *thePath = nil;  // likewise
    
    CGPoint firstOrigin;
    CGPoint secondOrigin;
    CGPoint theOrigin;
    
    // if it might be one of two cells
    if (firstCell && secondCell) {
        firstOrigin = [firstCell.superview convertPoint:firstCell.frame.origin toView:[tableX superview]];
        secondOrigin = [secondCell.superview convertPoint:secondCell.frame.origin toView:[tableX superview]];
        
        // if the first one is closer to the top of the tableview than the second one.
        if (fabsf(firstOrigin.y) < fabsf(secondOrigin.y)){
            theOrigin = firstOrigin;
            theCell = firstCell;
            thePath = firstPath;
        }
        else{
            theOrigin = secondOrigin;
            theCell = secondCell;
            thePath = secondPath;
        }
    }
    else if (firstCell)
    {
        theOrigin = [firstCell.superview convertPoint:firstCell.frame.origin toView:[tableX superview]];
        theCell = firstCell;
        thePath = firstPath;
    }
    else if (secondCell)
    {
        theOrigin = [secondCell.superview convertPoint:secondCell.frame.origin toView:[tableX superview]];
        theCell = secondCell;
        thePath = secondPath;
    }
    else{
        // else we don't want any auto-snapping, so we make the cell's origin as far away from 0 as possible.  See next few lines as to why it's done like this
        theOrigin = CGPointMake(0, CGFLOAT_MAX);
    }
    
    // now we know which one is closer, but is he close enough? // constant:kAutosnapThreshold
    int autoSnapThreshHold = 200;
    if (fabsf(theOrigin.y) > autoSnapThreshHold) {
        theCell = nil; // there is no snapping to take place, so we aren't interested in auto-snapping to any cell
    }
    
    if (theCell) {
        [ tableX scrollToRowAtIndexPath:thePath atScrollPosition:UITableViewScrollPositionTop animated:YES];
    }
}

