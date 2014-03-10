// action Core Data select *
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: B1AEEA9C-B75B-4C73-A0C0-B598009ACE6E
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/* action Core Data select * 
-(void)recall_core_data{
     //Required:
     NSManagedObjectContext *context = [self managedObjectContext];
    //Required: 
    NSError *error;
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