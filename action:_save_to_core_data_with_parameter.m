// action: Save to Core Data with Parameter
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 59222133-1C4E-4CAE-83B4-6BDC51E64CB9
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/* action: Save to Core Data with Parameter
-(void)saveDataWith:(NSString*)name{
    // **** save object to Core Data ****
	// get pointer to managed object context
	NSManagedObjectContext *context = [self managedObjectContext];
	// create instance on NSManagedObect  
	NSManagedObject	*user = [NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:context];
	[user setValue:name forKey:@"name"];
 	NSError *error;
	// here's where the actual save happens, and if it doesn't we print something out to the console
	if (![context save:&error]) 
	{
		NSLog(@"Problem saving: %@", [error localizedDescription]);
	}
	// **** log objects in database ****
    
	// //Recall From Core Data 
    //Required: NSManagedObjectContext *context = [self managedObjectContext];
    // create fetch object, this objects fetch's the objects out of the database
	NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
	NSEntityDescription *entity = [NSEntityDescription entityForName:@"User" inManagedObjectContext:context];
	[fetchRequest setEntity:entity];
	NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
	for (NSManagedObject *info in fetchedObjects) 
	{
		NSLog(@"Name: %@", [info valueForKey:@"name"]);
	}
    
}
*/
