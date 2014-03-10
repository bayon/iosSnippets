//  00_CORE DATA: INSERT AND VIEW SOME DATA
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 936213AB-32E6-4CBA-A382-0641BAEB09E1
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //CORE DATA: INSERT AND THEN VIEW SOME DATA
 //Requirements:
 // #import "AppDelegate.h"
 //in the .h of current file...
 //NSFetchedResultsController  *fetchedResultsController;
 //NSManagedObjectContext      *managedObjectContext;
 //NSMutableArray *nsMutableArray;
 
 //@property (nonatomic, retain) NSFetchedResultsController    *fetchedResultsController;
 //@property (nonatomic, retain) NSManagedObjectContext        *managedObjectContext;
 //@property (nonatomic, retain) NSMutableArray        *nsMutableArray;
 
 
 
 //@synthesize fetchedResultsController,nsMutableArray,managedObjectContext;
 
 //CHECK the managedObjectContext: add this when outside of the app delegate file.
 if (managedObjectContext == nil)
 {
 managedObjectContext = [(AppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext];
 }
 
 // **** save object to Core Data ****
 //(USE IF INSIDE THE APPDELEGATE) NSManagedObjectContext *context = [self managedObjectContext];
 NSManagedObject	*user = [NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:managedObjectContext];
 NSError *error;
 
 //sqlite integer converts to NSNumber
 NSNumber * currentNumber = [NSNumber numberWithInt:[@"3" integerValue]];
 [user setValue:currentNumber forKey:@"id"];
 [user setValue:@"Sarah Programerski" forKey:@"username"];
 // here's where the actual save happens, and if it doesn't we print something out to the console
 if (![managedObjectContext save:&error])
 {
 NSLog(@"Problem saving: %@", [error localizedDescription]);
 }
 // **** log objects in database ****
 // create fetch object, this objects fetch's the objects out of the database
 NSError *error2;
 NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
 NSEntityDescription *entity = [NSEntityDescription entityForName:@"User" inManagedObjectContext:managedObjectContext];
 [fetchRequest setEntity:entity];
 NSArray *fetchedObjects = [managedObjectContext executeFetchRequest:fetchRequest error:&error2];
 for (NSManagedObject *info in fetchedObjects)
 {
 NSLog(@"\n Id: %@", [info valueForKey:@"id"]);
 NSLog(@"\n Username: %@", [info valueForKey:@"username"]);
 }
 */