// get indexPath of selected cell in collectionview
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: CCB27BE6-310E-441B-9C4A-A3710A3D05AD
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 //get indexPath of selected cell in collectionview
    CGPoint touchPoint = [touch locationInView:self.collectionView];
    NSIndexPath *indexPath = [self.collectionView indexPathForItemAtPoint:touchPoint];
    NSLog(@"\n Getting IndexPath remotely: %d",indexPath.item);