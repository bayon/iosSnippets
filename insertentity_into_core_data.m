// insertEntity into core data
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 2E650E3B-A690-4138-9B6F-D8ADE207EA07
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(void)insertEntity {
    
    //CHECK the managedObjectContext 
    if (managedObjectContext == nil)
    {
        managedObjectContext = [(AppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext];
    }
    NSManagedObject	*entityX = [NSEntityDescription insertNewObjectForEntityForName:@"Entity" inManagedObjectContext:managedObjectContext];
    NSError *err;
    
    //Convert INT to NSNumber
        NSNumber * number_valueX = [NSNumber numberWithInt:[@"X" integerValue]];
        [entityX setValue:number_valueX forKey:@"field1_N"];
    //String
        [entityX setValue:@"string_value" forKey:@"field2_S"];
    //Date
    //NSDATE FROM STRING
    /*
        NSString *mysqlDateString = [entityXObject objectForKey:@"field"];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        //BEWARE: This has to match the "service" EXACTLY
        [dateFormatter setDateFormat:@"MM/dd/yyyy"];
        NSDate *mysqlDateFromString = [[NSDate alloc] init];
        mysqlDateFromString = [dateFormatter dateFromString:mysqlDateString];
        entityX.field  = mysqlDateFromString;
    */
     
    // here's where the actual save happens, and if it doesn't we print something out to the console
    if (![managedObjectContext save:&err])
    {
        NSLog(@"Problem saving: %@", [err localizedDescription]);
    }
     
    // create fetch object, this objects fetch's the objects out of the database
    NSError *error2;
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Entity" inManagedObjectContext:managedObjectContext];
    [fetchRequest setEntity:entity];
    NSArray *fetchedObjects = [managedObjectContext executeFetchRequest:fetchRequest error:&error2];
    for (NSManagedObject *info in fetchedObjects)
    {
        NSLog(@"\n Field1: %@", [info valueForKey:@"field1_N"]);
        NSLog(@"\n Field2: %@", [info valueForKey:@"field2_S"]);
    }
}