// Core Data Relationship SET
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 7CA4D7A4-2F73-411E-9CE2-8CBD148E09B6
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/* Core Data Relationship SET
 // get pointer to managed object context
 NSManagedObjectContext *context = [self managedObjectContext];
 // create instance on NSManagedObect artist
 NSManagedObject	*artist = [NSEntityDescription insertNewObjectForEntityForName:@"Artist" inManagedObjectContext:context];
 [artist setValue:@"Mark SINGERGUY" forKey:@"name"];
 [artist setValue:@"Grunge" forKey:@"genre"];
 [artist setValue:@"blonde" forKey:@"haircolor"];
 // create instance on NSManagedObect release
 NSManagedObject *release = [NSEntityDescription insertNewObjectForEntityForName:@"Release" inManagedObjectContext:context];
 [release setValue:@"King of Nuts" forKey:@"title"];
 [release setValue:@"Album" forKey:@"type"];
 [release setValue:artist forKey:@"creator"];
 [artist setValue:release forKey:@"creation"];
 NSError *error;
 
 // here's where the actual save happens, and if it doesn't we print something out to the console
 if (![context save:&error]) 
 {
 NSLog(@"Problem saving: %@", [error localizedDescription]);
 }
 
 */
