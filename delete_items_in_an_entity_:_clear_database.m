// DELETE ITEMS IN AN ENTITY : CLEAR DATABASE
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 9E824F7A-A1A1-414E-B3F0-A06DFA9A1883
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//DELETE ITEMS IN AN ENTITY : CLEAR DATABASE

- (void) deleteAllObjects: (NSString *) entityDescription  {
    
    managedObjectContext = [(AppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:entityDescription inManagedObjectContext:managedObjectContext];
    [fetchRequest setEntity:entity];
    
    NSError *error;
    NSArray *items = [managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    
    
    for (NSManagedObject *managedObject in items) {
        [managedObjectContext deleteObject:managedObject];
        DLog(@"%@ object deleted",entityDescription);
    }
    if (![managedObjectContext save:&error]) {
        DLog(@"Error deleting %@ - error:%@",entityDescription,error);
    }
    
}
