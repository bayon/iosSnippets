// table cell height
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 6B74D63C-A6C0-4372-8E27-FEF1C4525948
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// table cell height
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
    {
        int cellHeight = 0;
        
        if ([indexPath section] == 0)
        {
            cellHeight = 61;
            tableView.rowHeight = cellHeight;
        }
        else if ([indexPath section] == 1)
        {
            cellHeight = 61;
            tableView.rowHeight = cellHeight;
        }
        
        return cellHeight;
    }
    else
    {
        int cellHeight = 0;
        
        if ([indexPath section] == 0)
        {
            cellHeight = 31;
            tableView.rowHeight = cellHeight;
        }
        else if ([indexPath section] == 1)
        {
            cellHeight = 31;
            tableView.rowHeight = cellHeight;
        }
        
        return cellHeight;
    }
    return 0;
}
/*
 // table cell height simple
 - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
 int cellHeight = 0;
 return cellHeight;
 
 }
*/