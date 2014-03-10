// coreDataManagedObjectId
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 5F69C74C-7039-4FBA-A208-3BFD8A454CE2
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//coreDataManagedObjectId
-(id)coreDataManagedObjectId{
    if (managedObjectContext == nil)
    {
        managedObjectContext = [(AppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext];
    }
    
    NSManagedObject	*master = [NSEntityDescription insertNewObjectForEntityForName:@"Master" inManagedObjectContext:managedObjectContext];
     NSManagedObjectID *moID = [master objectID];
    NSLog(@"\n moID: %@",moID);
     //CLASS TYPE: 
     //NSLog(@"\n CLASS TYPE: %@", [[moID class] description]);
    return moID;
}