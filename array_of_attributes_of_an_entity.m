// Array of Attributes of an Entity
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 19EDDEC8-23EF-4309-A1FE-FEA478BA80E0
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 /*
    //Array of Attributes of an Entity
    if (managedObjectContext == nil)
    {
        managedObjectContext = [(AppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext];
    }
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"StringEntity" inManagedObjectContext:managedObjectContext];
    //Get all of the attributes that are defined for the entity - not the relationship properties - just attributes
    NSDictionary * attributes = [entity attributesByName];
    NSMutableArray *arrayOfAttributes= [[NSMutableArray alloc] init];
    //LOOP THROUGH NSDictionary of attirbutes 
    for(id key in attributes) {
         [arrayOfAttributes addObject:key];
    }
    NSLog(@"\n %@", arrayOfAttributes);
    */
