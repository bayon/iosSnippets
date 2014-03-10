// .m CORE_DATA
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: EC1C38A0-BAD0-448D-8B12-A32E83B7BAA1
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/* .m CORE_DATA
@synthesize managedObjectContext,managedObjectModel,persistentStoreCoordinator;
 
// Returns the URL to the application's Documents directory.
- (NSURL *)applicationDocumentsDirectory
{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (void)saveContext
{
	
    NSError *error = nil;
    NSManagedObjectContext *objectContext = self.managedObjectContext;
    if (objectContext != nil)
    {
        if ([objectContext hasChanges] && ![objectContext save:&error])
        {
            // add error handling here
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
    }
}

#pragma mark -
#pragma mark Core Data stack

// Returns the managed object context for the application.
 //If the context doesn't already exist, it is created and bound to the persistent store coordinator //for the application.

- (NSManagedObjectContext *)managedObjectContext
{
	
    if (managedObjectContext != nil)
    {
        return managedObjectContext;
    }
	
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (coordinator != nil)
    {
        managedObjectContext = [[NSManagedObjectContext alloc] init];
        [managedObjectContext setPersistentStoreCoordinator:coordinator];
    }
    return managedObjectContext;
}

// Returns the managed object model for the application.
 //If the model doesn't already exist, it is created from the application's model.
 
- (NSManagedObjectModel *)managedObjectModel
{
    if (managedObjectModel != nil)
    {
        return managedObjectModel;
    }
    //managedObjectModel = [[NSManagedObjectModel mergedModelFromBundles:nil] retain];
	
     managedObjectModel = [NSManagedObjectModel mergedModelFromBundles:nil] ;
    
    
    
    return managedObjectModel;
}
//Returns the persistent store coordinator for the application.
// If the coordinator doesn't already exist, it is created and the application's store added to it.

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator
{
	
    if (persistentStoreCoordinator != nil)
    {
        return persistentStoreCoordinator;
    }
	
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"YourProjectsName.sqlite"];
	
    NSError *error = nil;
 
 
 //CORE DATA MIGRATION CLAUSE
 NSDictionary *options = [NSDictionary dictionaryWithObjectsAndKeys: [NSNumber numberWithBool:YES], NSMigratePersistentStoresAutomaticallyOption, [NSNumber numberWithBool:YES],NSInferMappingModelAutomaticallyOption, nil];
  

 
 
    persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    if (![persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error])
    {
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }  
	
    return persistentStoreCoordinator;
}



*/
