// .h Core Data
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 29BB608F-009C-4E25-BA12-5A813DC6AD9F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/* .h Core Data

@interface XXXAppDelegate : NSObject
{
    
	
@private
    NSManagedObjectContext *managedObjectContext;
    NSManagedObjectModel *managedObjectModel;
    NSPersistentStoreCoordinator *persistentStoreCoordinator;
	
}

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (NSURL *)applicationDocumentsDirectory;
- (void)saveContext;

 //ALSO:
 //1. Include the core data framework
 //2. insert this into the yourProject-Prefix.pch file
 // #import <CoreData/CoreData.h>
 
 //ALWAYS HAVE THIS CHECK IN OTHER .m files
 //CHECK IF MANAGED_OBJECT_CONTEXT
 if (managedObjectContext == nil)
 {
 managedObjectContext = [(SurveyAppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext];
 }
 
*/
