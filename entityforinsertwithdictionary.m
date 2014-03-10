// entityForInsertWithDictionary
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 6A39EDDF-0983-48CB-940C-0399CB2F0B7C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//entityForInsertWithDictionary: (for string only entities)
-(void)entityForInsertWithDictionary:(NSString *)entity :(NSMutableDictionary *)insertDictionary
{
    NSLog(@"\n FILE->FUNCTION: %s",__FUNCTION__);
    //VERIFY managedObjectContext
    if (managedObjectContext == nil)
    {
        managedObjectContext = [(AppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext];
    }
    //set entity
    nsManagedObject_Utility =[NSEntityDescription insertNewObjectForEntityForName:entity inManagedObjectContext:managedObjectContext];
    NSError *err;
    //insert keys and values from dictionary
    for(id key in insertDictionary)
    {
        [nsManagedObject_Utility setValue:[insertDictionary objectForKey:key] forKey:key ];
    }
    //save
    if (![managedObjectContext save:&err])
    {
        NSLog(@"Problem saving: %@", [err localizedDescription]);
    }
}


//CALL: entityForInsertWithDictionary
//Entity
NSString *entityForInsert = [NSString stringWithFormat:@"StringEntity"];
//NSMutableDictionary
NSMutableDictionary *insertDictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                         @"123", @"primaryID",
                                         @"555", @"secondaryID",
                                         @"Joe", @"field1",
                                         @"Sixpack", @"field2",
                                         nil];
//INSERT
[sharedManager entityForInsertWithDictionary:entityForInsert :insertDictionary];