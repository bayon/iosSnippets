// CRUD : Read All ( sorted or filtered ?)
// 
//
// IDECodeSnippetCompletionScopes: [Preprocessor]
// IDECodeSnippetIdentifier: E901EE0E-517F-41A4-9556-2A8CB9FCA0CB
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//CRUD : Read All ( sorted or filtered ?)
-(void)readAll{
   [self checkContext];
    NSArray *returnArray = [[NSArray alloc]init];
    
    NSError *error;
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Account" inManagedObjectContext:_managedObjectContext];
    [fetchRequest setEntity:entity];
    NSArray *fetchedObjects = [_managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
     // Data All
    NSMutableArray *allDataArray = [NSMutableArray arrayWithArray:fetchedObjects];
    
    //Data Sorted
    NSArray *sortedDataArray;
    sortedDataArray = [allDataArray sortedArrayUsingComparator:^NSComparisonResult(id a, id b) {
        NSString *first = [(Account*)a owner];
        NSString *second = [(Account*)b owner];
        return [first compare:second];
    }];
    
   //Data Filtered By Class
    NSMutableArray *filteredDataArray = [[NSMutableArray alloc]init];
    for (NSManagedObject *info in fetchedObjects)
    {
        if([[[info class] description]  isEqualToString:@"Credit"]){
            [filteredDataArray addObject:info];
        }
    }
    
    returnArray = [NSArray arrayWithArray:allDataArray];
    returnArray = [NSArray arrayWithArray:sortedDataArray];
    returnArray = [NSArray arrayWithArray:filteredDataArray];
    
    NSLog(@"\nreturnArray:%@",returnArray);
    
}