// Core Data saveRelatedDataWith 2 parameters
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 8312352D-3AC9-4F16-A4F0-D0C53E388A7D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //Core Data saveRelatedDataWith 2 parameters
 //NOTES:   
 //1.) if using the "App Delegate" to house the code,  MAKE sure to...
 //#define myAppDelegate (AppDelegate *) [[UIApplication sharedApplication] delegate]  
 // in a prominent view/file
 //2.) CALL within custom method with...
 //[myAppDelegate saveRelatedDataWith:text1.text:text2.text];
 //OR
 //[self saveRelatedDataWith:text1.text:text2.text];
 
 
 //3. INSERT this to your app delegate( or other file)  
 // .h
 -(void)saveRelatedDataWith:(NSString*)name:(NSString*)taskName;
 
 //  .m
 
 -(void)saveRelatedDataWith:(NSString*)name:(NSString*)taskName {
 //DATABASE
 NSManagedObjectContext *context = [self managedObjectContext];
 //TABLES
 NSManagedObject	*user = [NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:context];
 [user setValue:name forKey:@"name"];
 NSManagedObject *tasks = [NSEntityDescription insertNewObjectForEntityForName:@"Tasks" inManagedObjectContext:context];
 [tasks setValue:taskName forKey:@"name"];
 //RELATIONSHIPS
 [tasks setValue:user forKey:@"taskToUsers"];
 [user setValue:tasks forKey:@"userToTask"];
 NSError *error;
 //SAVE
 if (![context save:&error]) 
 {
 NSLog(@"Problem saving: %@", [error localizedDescription]);
 }
 }
 */