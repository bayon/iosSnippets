// SEARCH FIELD METHODS
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 3AE5EC1A-F662-4BA3-B65C-9091A82EA229
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//SEARCH FIELD METHODS
#pragma mark Search Bar Action
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    //Use AppMemory
    AppMemory *theDataObject = [self theAppDataObject];
    theDataObject.searchKey = searchKeyField.text;
    [self searchFieldChangeData];
    [tableView reloadData];
    
    return 1;
}
#pragma mark DATA (refresh)
-(void)searchFieldChangeData{
    //CHECK the managedObjectContext: add this when outside of the app delegate file.
    if (managedObjectContext == nil)
    {
        managedObjectContext = [(SurveyAppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext];
    }
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Building"
                                      inManagedObjectContext:managedObjectContext];
    [fetchRequest setEntity:entity];
    //Use AppMemory
    AppMemory *theDataObject = [self theAppDataObject];
    //PREDICATE
    NSString *searchString = [[NSString alloc]initWithFormat: @"%@",theDataObject.searchKey ];
    NSString *conditionPhrase = [[NSString alloc]initWithFormat: @"ANY buildingName CONTAINS '%@'",searchString ];
    NSLog(@"\n - - - - - -conditionPhrase: %@",conditionPhrase );
    NSPredicate *predicate = [NSPredicate predicateWithFormat:conditionPhrase];//TRYING
    [fetchRequest setPredicate:predicate];
    //SORTING
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"buildingName" ascending:YES];
    NSArray *sortDescriptors = [[NSArray alloc] initWithObjects:sortDescriptor, nil];
    [fetchRequest setSortDescriptors:sortDescriptors];
     NSError *error = nil;
    NSArray *fetchedObjects = [managedObjectContext executeFetchRequest:fetchRequest error:&error];
    if (fetchedObjects == nil) {
        // Handle the error
    }
     theDataObject.mutableArray = [[NSMutableArray alloc] init];
    theDataObject.mutableArray= [NSMutableArray arrayWithArray:fetchedObjects];
      
}