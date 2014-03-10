// LOOP THROUGH NSDictionary and Sort out Arrays versus variables
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 2F575956-7F35-4C86-8921-CD7C5739545C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//LOOP THROUGH NSDictionary and Sort out Arrays versus variables
    
    for(id key in res) {
        id value = [res objectForKey:key];
        BOOL valueIsArray = [value isKindOfClass:[NSArray class]];
        if(valueIsArray){
            for (id object in value) {
                BOOL objectIsArray = [object isKindOfClass:[NSArray class]];
                 if(objectIsArray){
                     for (id element in object) {
                         BOOL elementIsArray = [element isKindOfClass:[NSArray class]];
                         if(elementIsArray){
                             //NSLog(@"Element in Object IS an Array");
                         }else{
                                    
                                // THE CURRENT ROW OF DATA YOU ARE ON 
                                NSLog(@"Element Array : %@",element);
                         
                                //core data
                                Test_Data  *test_data  =(Test_Data *) [NSEntityDescription insertNewObjectForEntityForName:@"Test_Data" inManagedObjectContext:managedObjectContext];
                         
                                //====     check class types of data =====//
                         
                                //------NSString
                                    test_data.my_string = [element objectForKey:@"my_string"];
                                //------NSNumber
                                    NSNumber * my_id = [NSNumber numberWithInt:[[element objectForKey:@"my_id"] integerValue]];
                                    test_data.my_id = my_id;
                                //------NSNumber
                                    NSNumber * my_integer = [NSNumber numberWithInt:[[element objectForKey:@"my_integer"] integerValue]];
                                    test_data.my_integer = my_integer;
                                //-----NSDate
                                    NSString *mysqlDateString = [element objectForKey:@"my_date"];
                                    //from mysql expect date = yyyy-mm-dd
                                    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
                                    // IMPORTANT - we set our input date format to match our input string
                                    [dateFormatter setDateFormat:@"yyyy-mm-dd"];
                                    NSDate *mysqlDateFromString = [[NSDate alloc] init];
                                    mysqlDateFromString = [dateFormatter dateFromString:mysqlDateString];
                                    test_data.my_date = mysqlDateFromString;
                                  
                                 //-----TIMESTAMP NOT WORKING 
                                     /*
                                     NSString *mysqlDateString2 = [element objectForKey:@"my_timestamp"];
                                     //from mysql expect date = yyyy-mm-dd
                                     NSDateFormatter *dateFormatter2 = [[NSDateFormatter alloc] init];
                                     // IMPORTANT - we set our input date format to match our input string
                                     [dateFormatter2 setDateFormat:@"yyyy-mm-dd"];
                                     NSDate *mysqlDateFromString2 = [[NSDate alloc] init];
                                     mysqlDateFromString2 = [dateFormatter2 dateFromString:mysqlDateString2];
                                     test_data.my_timestamp = mysqlDateFromString2;
                                     */
                                 //------NSString FOR TIMESTAMP
                                 //test_data.my_timestamp = [element objectForKey:@"my_timestamp"];
                                  
                                 
                                 //SAVE DATA
                                 NSError *error;
                                 if (![managedObjectContext save:&error]) {
                                     NSLog(@"Problem saving: %@",[error localizedDescription]);
                                 }
                         }
                     }
                        // NSLog(@"object is NOT an array");
                 }else{
                        // NSLog(@"object IS an array");
                 }
            }
        }else{
           // NSLog(@"Value is NOT an Array");
            NSString *keyAsString = (NSString *)key;
            NSString *valueAsString = (NSString *)value;
            NSLog(@"key: %@", keyAsString);
            NSLog(@"value: %@", valueAsString);
        }
    }