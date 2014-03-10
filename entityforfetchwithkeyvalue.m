// entityForFetchWithKeyValue
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 4550A6A2-5BEF-4BA2-A22A-87070CE241B5
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//entityForFetchWithKeyValue
-(NSManagedObject *)entityForFetchWithKeyValue:(NSString*)entityName fieldName:(NSString*)fieldName fieldValue:(NSString*)fieldValue
{
    NSLog(@"\n FILE->FUNCTION: %s",__FUNCTION__);
    //Verify managedObjectContext
    if (managedObjectContext == nil)
    {
        managedObjectContext = [(AppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext];
    }
    //Create Fetch
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]init];
    //Entity
    NSEntityDescription *entity = [NSEntityDescription entityForName:entityName inManagedObjectContext:managedObjectContext];
    [fetchRequest setEntity:entity];
    NSError *error = nil;
    //Execute Fetch
    NSArray *fetchedObjects = [managedObjectContext executeFetchRequest:fetchRequest error:&error];
    //return fetchedObjects;
    for (NSManagedObject *info in fetchedObjects)
    {
        if([[[info class] description] isEqualToString:entityName]){
            if([[info valueForKey:fieldName] isEqualToString:fieldValue ]){
                return  info;
            }
        }
    }
    //KEEP THE TRY CATCH FOR THIS, OR RISK CRASHING! the following is a "dummy" return for a failed query.
    NSManagedObject *info = [[NSManagedObject alloc]initWithEntity:entityName insertIntoManagedObjectContext:managedObjectContext];
    return info;
}

//CALL entityForFetchWithKeyValue: keep the try catch, or crash!
@try{
    
    //CALL CODE here
    //FETCH
    NSString *entityForFetch = [NSString stringWithFormat:@"StringEntity"];
    NSString *fieldName = [NSString stringWithFormat:@"primaryID"];
    NSString *fieldValue = [NSString stringWithFormat:@"333"];
    NSManagedObject *myData =[sharedManager entityForFetchWithKeyValue:entityForFetch fieldName:fieldName fieldValue:fieldValue];
    NSLog(@"\n myData: %@",myData);
    //end CALL CODE
}
@catch(NSException *exception){
    // To see the "REAL" error, uncomment this.
    // NSString *exceptionMsg = [NSString stringWithFormat:@"%s : %@",__FUNCTION__,exception];
    // UIAlertView *alertmsg = [[UIAlertView alloc] initWithTitle:@"TryCatch" message:exceptionMsg delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil ];
    
    UIAlertView *alertmsg2 = [[UIAlertView alloc] initWithTitle:@"error" message:@"entityForFetchWithKeyValue" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil ];
    [alertmsg2 show];
}@finally{
    //NSLog(@"\n oh well!");
}

