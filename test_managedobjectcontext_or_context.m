// TEST managedObjectContext or context
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: BBBA93A3-6843-4ADB-BC6E-534EF7FBCED8
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
     //TEST managedObjectContext or context
     if (managedObjectContext == nil) 
     { 
     NSLog(@"YES------>>>>>>>");
     managedObjectContext = [(AppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext]; 
     NSLog(@"After managedObjectContext: %@",  managedObjectContext);
     NSLog(@"Context: %@",managedObjectContext);
     NSLog(@"PS Coord : %@",managedObjectContext.persistentStoreCoordinator);
     NSLog(@"MOM : %@", managedObjectContext.persistentStoreCoordinator.managedObjectModel);
     NSLog(@"Entities : %@",[[managedObjectContext.persistentStoreCoordinator.managedObjectModel entities] valueForKey:@"Table1"]);
     }else{
     NSLog(@"NOT------>>>>>>>");
     }
     */
