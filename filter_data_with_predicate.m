// FILTER DATA WITH PREDICATE
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 2FB7EFE9-2A17-441E-AF15-E2F290903A9A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/* 
// FILTER DATA WITH PREDICATE
NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]init];
//Define Entity
NSEntityDescription *entity = [NSEntityDescription entityForName:@"Employee" inManagedObjectContext:__managedObjectContext];
[fetchRequest setEntity:entity];
//Array of Data From Entity
NSArray *fetchedObjects = [__managedObjectContext executeFetchRequest:fetchRequest error:&error];
//Define Predicate
NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name like 'George'"];
//Array filtered down from parent array by predicate
NSArray* filtered = [fetchedObjects filteredArrayUsingPredicate:predicate];

for (NSManagedObject *info in filtered) 
{
    NSLog(@"Employee name:%@",[info valueForKey:@"name"]);
    NSLog(@"Employee department:%@",[info valueForKey:@"department"]);
}
*/