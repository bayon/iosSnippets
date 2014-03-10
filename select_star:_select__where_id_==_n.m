// select_star: select * WHERE id == n
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 48FFF458-4AB2-48EA-A313-29464B519FAC
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //select_star: select * WHERE id == n
 //CALL
 NSString * entityName = [NSString stringWithFormat:@"Subdetail"];
 NSString * parentAttributeName = [NSString stringWithFormat:@"detail_id"];
 NSInteger parentIdNumber = [sharedManager.detail_id integerValue];//NSNumber to NSInteger
 NSArray *fetchedObjects = [sharedManager select_star:entityName attribute:parentAttributeName value:parentIdNumber];
 
 //METHOD
 -(NSArray*)select_star:(NSString*)entityName attribute:(NSString*)attribute value:(int)value
 {
 //Filters data based on predicate passed to it
 //credit goes to Bayon Forte
 NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]init];
 NSEntityDescription *entity = [NSEntityDescription entityForName:entityName inManagedObjectContext:managedObjectContext];
 [fetchRequest setEntity:entity];
 NSError *error = nil;
 NSString *conditionPhrase = [[NSString alloc]initWithFormat: @" %@  == '%d' ",attribute,value];//Define Predicate
 NSPredicate *predicate = [NSPredicate predicateWithFormat:conditionPhrase];
 [fetchRequest setPredicate:predicate];
 NSArray *fetchedObjects = [managedObjectContext executeFetchRequest:fetchRequest error:&error]; //Array of Data From Entity
 return fetchedObjects;
 }
 */