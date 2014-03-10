// CORE_DATA_SAVE
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 8AACF1EA-D9FC-4633-B930-2D5C4101D172
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 //< CORE_DATA_SAVE >
 // .h
 //HEAD
 
 //@interface
 NSManagedObjectContext *managedObjectContext;
 //post interface
 @property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
 
 ---------------------
 // .m
 //IMPLEMENTATION
  //#import "Delegate.h" // or wherever the core data got instantiated
 //#import "YourNSManagedObject.h" // for each "Entity" 
 
 //@implementation
 
 //@synthesize
 @synthesize managedObjectContext;
 
 
 //METHODS
 //in your viewDidLoad() ,make sure "CONTEXT" is defined
 // managedObjectContext = [(AppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext]; 
 
 -(IBAction)method1{
 NSLog(@"FILE->FUNCTION: %s",__FUNCTION__);
 //[self dismissKeyboard];
 
 EntityName  *entityName  =(EntityName *) [NSEntityDescription insertNewObjectForEntityForName:@"EntityName" inManagedObjectContext:managedObjectContext];
 entityName.fieldName = text1.text;
 
 NSError *error;
 //here's where the actual SAVE happens 
 if (![managedObjectContext save:&error]) {
 NSLog(@"Problem saving: %@",[error localizedDescription]);
 }
 //*** log objects currently in database ***
 //create fetch object, this object fetch/s the objects out of the database
 NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]init];
 NSEntityDescription *entity = [NSEntityDescription entityForName:@"User" inManagedObjectContext:managedObjectContext];
 [fetchRequest setEntity:entity];
 NSArray *fetchedObjects = [managedObjectContext executeFetchRequest:fetchRequest error:&error];
 
 for (NSManagedObject *info in fetchedObjects) {
 NSLog(@"Entity fieldName:%@",[info valueForKey:@"fieldName"]);
 
 }
 
 }

 
 // .xib
 //VIEW(S)
 
 
 
 </ CORE_DATA_SAVE >
 */
