// method configure cell
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: D4A4DF82-4341-453A-9621-DA639A49B17C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //method configure cell
 //call from cellForRowAtIndexPath
 [self configureCell:cell atIndexPath:indexPath];
 
 //then
 - (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
 
 FailedBankInfo *info = [_fetchedResultsController objectAtIndexPath:indexPath];
 cell.textLabel.text = info.name;
 cell.detailTextLabel.text = [NSString stringWithFormat:@"%@, %@", info.city, info.state];
 
 }

 
 
 */