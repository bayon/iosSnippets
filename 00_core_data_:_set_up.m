// 00_CORE DATA : SET UP
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: E424D460-B1A9-461B-8C4A-AC92BACF6DBF
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //00_CORE DATA : SET UP
 
 1.)
 Include the core data framework. Target > Build Phases > Link Binary with Libraries
 
 2.)
 insert this ,"  #import <CoreData/CoreData.h> ", into the "yourProject-Prefix.pch" file
 
 3.)
 snippet 1:
 .h Core Data
 //CORE DATA
 NSManagedObjectContext *managedObjectContext;
 NSManagedObjectModel *managedObjectModel;
 NSPersistentStoreCoordinator *persistentStoreCoordinator;
 
 //CORE DATA
 @property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
 @property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
 @property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
 - (NSURL *)applicationDocumentsDirectory;
 - (void)saveContext;
 
 4.)
 snippet 2:
 .m CORE_DATA
 - make sure you have: @synthesize managedObjectContext,managedObjectModel,persistentStoreCoordinator;
 - change sqlite db name to "yourProjectName"
 - wire up the core data migration clause
 
 5.)
 Create a data model:
 New File > Core Data > Data Model
 Editor > Add Model Version >
 Set current model version to the one just created.
 Add appropriate entities and attributes.
 probably:
 entity: User
 atributes: id-int64, username-string
 
 6.)
 Create NSManagedObject Subclass:
 select the entity(ies) > Editor> Create NSManagedObject Subclass
 ( I usually put the created files into a "group" named entities.
 
 7.)
 snippet 3:
 CORE DATA: INSERT AND VIEW SOME DATA
 
 
 //README:
 //ALWAYS HAVE THIS CHECK IN OTHER .m files
 //CHECK IF MANAGED_OBJECT_CONTEXT
 if (managedObjectContext == nil)
 {
 managedObjectContext = [(SurveyAppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext];
 }
 //HELPFUL SNIPPETS:
 fetchWithEntity
 
 */