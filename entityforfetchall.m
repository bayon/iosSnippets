// entityForFetchAll
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 574106BF-F24C-4E63-8C2E-083CC50C1491
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//entityForFetchAll : (for string only entities)
-(NSArray*)entityForFetchAll :(NSString*)entityName
{
    NSLog(@"\n FILE->FUNCTION: %s",__FUNCTION__);
    //Verify managedObjectContext
    if (managedObjectContext == nil)
    {
        managedObjectContext = [(AppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext];
    }
    //Create Fetch
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]init];
    //Entity
    NSEntityDescription *entity = [NSEntityDescription entityForName:entityName inManagedObjectContext:managedObjectContext];
    [fetchRequest setEntity:entity];
    NSError *error = nil;
    //Execute Fetch
    NSArray *fetchedObjects = [managedObjectContext executeFetchRequest:fetchRequest error:&error];
    return fetchedObjects;
    
}