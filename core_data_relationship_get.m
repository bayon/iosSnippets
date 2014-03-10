// Core Data Relationship GET
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: EA35D24B-5091-41DC-8763-5DBDEADB428F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 // Core Data Relationship GET
 // create fetch object, this objects fetch's the objects out of the database
 NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
 NSEntityDescription *entity = [NSEntityDescription entityForName:@"Artist" inManagedObjectContext:context];
 [fetchRequest setEntity:entity];
 NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
 
 for (NSManagedObject *info in fetchedObjects) 
 {
 NSLog(@"Name: %@", [info valueForKey:@"name"]);
 NSLog(@"Genre: %@", [info valueForKey:@"genre"]);
 NSLog(@"HairColor: %@", [info valueForKey:@"haircolor"]);
 NSManagedObject *details = [info valueForKey:@"creation"];
 NSLog(@"Title: %@", [details valueForKey:@"title"]);
 NSLog(@"Type: %@", [details valueForKey:@"type"]);
 }        
 [fetchRequest release];
 */
