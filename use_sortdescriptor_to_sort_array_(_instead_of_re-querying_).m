// Use SortDescriptor to sort array ( instead of re-querying )
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 80D334CD-B6AD-49D8-BA6C-09D2F4A7E61E
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 // Use SortDescriptor to sort array ( instead of re-querying )
	NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"displayOrder" ascending:YES];
	NSArray *sortDescriptors = [[NSArray alloc] initWithObjects:&sortDescriptor count:1];
	
	NSMutableArray *sortedIngredients = [[NSMutableArray alloc] initWithArray:[recipe.ingredients allObjects]];
	[sortedIngredients sortUsingDescriptors:sortDescriptors];
	self.ingredients = sortedIngredients;