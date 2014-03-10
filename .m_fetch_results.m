// .m FETCH RESULTS
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 41DFDDB5-7B91-4623-87CC-15F8FA1BB674
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/* .m FETCH RESULTS

@synthesize fetchedResultsController, managedObjectContext, destinationsArray;


- (void) viewWillAppear:(BOOL)animated
{
	
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"EntityName" inManagedObjectContext:managedObjectContext];
    [request setEntity:entity];
    NSError *error = nil;
    NSMutableArray *mutableFetchResults = [[managedObjectContext executeFetchRequest:request error:&error] mutableCopy];
    if (mutableFetchResults == nil)
    {
        // Handle the error.
		NSLog(@"mutableFetchResults == nil");
    }
    [self setXXX_Array:mutableFetchResults];
    [request release];
	[XXX_TableView reloadData];
}




- (void)dealloc
{
    [XXX_Array release];
   
    [super dealloc];
}

*/
