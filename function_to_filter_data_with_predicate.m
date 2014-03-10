// FUNCTION TO FILTER DATA WITH PREDICATE
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 781016AD-165C-44B4-B9B3-3AB668E3DD54
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/* 

// FUNCTION TO FILTER DATA WITH PREDICATE 

 //Constants
 NSString *entityName = [[NSString alloc]initWithFormat:@"Manager"];
 NSString *fieldname = [[NSString alloc]initWithFormat:@"department"];
 NSString *fieldValue = [[NSString alloc]initWithFormat:@"Sales"];
 NSString *displayName = [[NSString alloc]initWithFormat:@"name"];
 NSString *condition = [[NSString alloc]initWithFormat:@"=="];//conditions: //@"like"  // @">="  // @"<="  
 
 NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]init];
 NSEntityDescription *entity = [NSEntityDescription entityForName:entityName inManagedObjectContext:__managedObjectContext];
 [fetchRequest setEntity:entity];
 NSArray *fetchedObjects = [__managedObjectContext executeFetchRequest:fetchRequest error:&error]; //Array of Data From Entity
 NSString *conditionPhrase = [[NSString alloc]initWithFormat: @" %@  %@ '%@' ",fieldname,condition,fieldValue];//Define Predicate
 NSPredicate *predicate = [NSPredicate predicateWithFormat:conditionPhrase];
 NSArray* filtered = [fetchedObjects filteredArrayUsingPredicate:predicate];//Array filtered down from parent array by predicate
 
 for (NSManagedObject *info in filtered) 
 {
 NSLog(@"%@:%@",displayName,[info valueForKey:displayName]);
 NSLog(@"%@:%@",fieldname,[info valueForKey:fieldname]);
 }

 */