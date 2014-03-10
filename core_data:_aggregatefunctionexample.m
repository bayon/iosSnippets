// core data: aggregateFunctionExample
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 1AB25EE9-2456-4726-8737-1C49A735AEF1
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2


-(void)aggregateFunctionExample{
    if (managedObjectContext == nil)
    {
        managedObjectContext = [(FBFAppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext];
    }
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"EAccount" inManagedObjectContext:managedObjectContext];
    [request setEntity:entity];
    
    // Specify that the request should return dictionaries.
    [request setResultType:NSDictionaryResultType];
    
    // Create an expression for the key path.
    NSExpression *keyPathExpression = [NSExpression expressionForKeyPath:@"balance"];
    
    // Create an expression to represent the minimum value at the key path 'creationDate'
    NSExpression *minExpression = [NSExpression expressionForFunction:@"min:" arguments:[NSArray arrayWithObject:keyPathExpression]];
    
    // Create an expression description using the minExpression and returning a date.
    NSExpressionDescription *expressionDescription = [[NSExpressionDescription alloc] init];
    
    // The name is the key that will be used in the dictionary for the return value.
    [expressionDescription setName:@"minBalance"];
    [expressionDescription setExpression:minExpression];
    [expressionDescription setExpressionResultType:NSNumberFormatterDecimalStyle];
    
    // Set the request's properties to fetch just the property represented by the expressions.
    [request setPropertiesToFetch:[NSArray arrayWithObject:expressionDescription]];
    
    // Execute the fetch.
    NSError *error = nil;
    NSArray *objects = [managedObjectContext executeFetchRequest:request error:&error];
    if (objects == nil) {
        // Handle the error.
    }
    else {
        if ([objects count] > 0) {
            NSLog(@"Minimum Balance: %@", [[objects objectAtIndex:0] valueForKey:@"minBalance"]);
        }
    }

}
