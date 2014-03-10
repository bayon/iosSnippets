// coredata:tableview:getChildrenOfSelectedParent
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 2B3B9F14-CB88-40D7-9676-0E888A05A7A8
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // [self.navigationController pushViewController:self.editMyClassViewController animated:YES];
    
    //parent name we selected in table view
    Parent *parent = [self.fetchedResultsController objectAtIndexPath:indexPath];
    NSSet *childSet = parent.relationToChild;
    [self loopThroughAllObjectsOfAnNSSet: childSet];
    
}