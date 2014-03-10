// - (NSArray *) shuffleArray : (NSArray *)arrayToShuffle
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 1D432C5D-9C16-4C9B-8F42-A552F4E7D4B9
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (NSArray *) shuffleArray : (NSArray *)arrayToShuffle
{
	// create temporary autoreleased mutable array
	NSMutableArray *tmpArray = [NSMutableArray arrayWithCapacity:[arrayToShuffle count]];
    
	for (id anObject in arrayToShuffle)
	{
		NSUInteger randomPos = arc4random()%([tmpArray count]+1);
		[tmpArray insertObject:anObject atIndex:randomPos];
	}
    
	return [NSArray arrayWithArray:tmpArray];  // non-mutable autoreleased copy
}
