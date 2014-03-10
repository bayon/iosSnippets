// MagicalRecord Brief CRUD
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 7FBDB0A3-D191-4DC0-BA67-8C56A5489232
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 MagicalRecord Brief CRUD :
 
 1.Download and add library to your project
  https://github.com/magicalpanda/MagicalRecord
 2. Link core data framework to your project
 Project navigator > Targets > Build Phases > Link Binary With Libraries > + > CoreData.framework > Add
 3. yourprojectname-Prefix.pch: #import "CoreData+MagicalRecord.h"
 
 
 
 App Delegate Code:
 - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [MagicalRecord setupCoreDataStackWithStoreNamed:@"MyDatabase.sqlite"];
    // ... return YES; 
 }
 - (void)applicationWillTerminate:(UIApplication *)application 
 { 
    [MagicalRecord cleanUp];
 }
 
 
 View Controller Code:
 CREATE:
 - (void)persistNewPersonWithFirstname:(NSString *)firstname lastname:(NSString *)lastname age:(NSNumber *)age {
 // Get the local context 
 NSManagedObjectContext *localContext = [NSManagedObjectContext MR_contextForCurrentThread];
 // Create a new Person in the current thread context 
 Person *person = [Person MR_createInContext:localContext];
 person.firstname = firstname; 
 person.lastname = lastname; 
 person.age = age;
 // Save the modification in the local context 
 // With MagicalRecords 2.0.8 or newer you should use the MR_saveNestedContexts 
 [localContext MR_save];
 }
 
 
 READ:
 // Query to find all the persons store into the database 
 NSArray *persons = [Person MR_findAll]; 
 // Query to find all the persons store into the database order by their 'firstname' 
 NSArray *personsSorted = [Person MR_findAllSortedBy:@"firstname" ascending:YES];
 // Query to find all the persons store into the database which have 25 years old 
 NSArray *personsWhoHave22 = [Person MR_findByAttribute:@"age" withValue:[NSNumber numberWithInt:25]]; 
 // Query to find the first person store into the databe 
 Person *person = [Person MR_findFirst];
 
 UPDATE:
 - (void)updateAge:(NSNumber *)newAge ofPersonWithFirstname:(NSString *)firstname lastname:(NSString *)lastname { 
     // Get the local context 
     NSManagedObjectContext *localContext = [NSManagedObjectContext MR_contextForCurrentThread]; 
     // Build the predicate to find the person sought 
     NSPredicate *predicate = [NSPredicate predicateWithFormat:@"firstname ==[c] %@ AND lastname ==[c] %@", firstname, lastname]; 
     Person *personFounded = [Person MR_findFirstWithPredicate:predicate inContext:localContext]; 
     // If a person was founded 
     if (personFounded) { 
         // Update its age personFounded.age = newAge; 
         // Save the modification in the local context 
         // With MagicalRecords 2.0.8 or newer you should use the MR_saveNestedContexts 
         [localContext MR_save]; 
     }
 }
 
 
 DELETE:
 - (void)deleteFirstPersonWithFirstname:(NSString *)firstname { 
     // Get the local context 
     NSManagedObjectContext *localContext = [NSManagedObjectContext MR_contextForCurrentThread];
     // Retrieve the first person who have the given firstname 
     Person *personFounded = [Person MR_findFirstByAttribute:@"firstname" withValue:firstname inContext:localContext]; 
     if (personFounded) { 
         // Delete the person found 
         [personFounded MR_deleteInContext:localContext]; 
         // Save the modification in the local context 
         // With MagicalRecords 2.0.8 or newer you should use the 
         MR_saveNestedContexts [localContext MR_save]; 
     }
 }
 
 
 */
