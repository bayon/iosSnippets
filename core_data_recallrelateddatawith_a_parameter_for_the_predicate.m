// Core Data recallRelatedDataWith a parameter for the predicate
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 8BCF9024-0206-446C-98CB-AA9C3B1B99F2
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //Core Data recallRelatedDataWith a parameter for the predicate
 -(void)recallRelatedDataWith:(NSString*)name{
 //Required:
 NSManagedObjectContext *context = [self managedObjectContext];
 NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
 NSEntityDescription *entity = [NSEntityDescription entityForName:@"User"  inManagedObjectContext:context];
 [fetchRequest setEntity:entity];
 NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name==%@", name];
 [fetchRequest setPredicate:predicate];
 NSError *error = nil;
 NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
 if (fetchedObjects == nil) {
 NSLog(@" ERROR in recall_with_predicate");
 }
 for (NSManagedObject *userInfo in fetchedObjects) 
 {
 NSLog(@"Name: %@", [userInfo valueForKey:@"name"]);
 //RELATED
 NSManagedObject *tasks = [userInfo valueForKey:@"userToTask"];
 NSLog(@"Task: %@", [tasks valueForKey:@"name"]);
 }
 }
 
*/
