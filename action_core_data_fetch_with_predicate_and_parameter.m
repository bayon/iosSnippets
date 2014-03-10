// action Core Data Fetch with Predicate AND Parameter
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 455696F3-BAB7-47C3-8CA5-13A0CD68731F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/* action Core Data Fetch with Predicate AND Parameter
-(void)recallDataWith:(NSString*)name{
     NSLog(@" YOU HIT THE recallDataWith");
    //Required:
    NSManagedObjectContext *context = [self managedObjectContext];
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"User"  inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name==%@", name];
     // AS opposed to :: NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name=='JIMMY'"];
    [fetchRequest setPredicate:predicate];
    NSError *error = nil;
    NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
    if (fetchedObjects == nil) {
        //Error handling code
        NSLog(@" ERROR in recall_with_predicate");
    }
    for (NSManagedObject *info in fetchedObjects) 
    {
        NSLog(@"Name: %@", [info valueForKey:@"name"]);
    }
}

 */
