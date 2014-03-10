// coredata: loopThroughOneToOneParentChildGrandchild
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 31B52475-EBD9-4B3E-9B9A-005CFC499508
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

-(void)loopThroughOneToOneParentChildGrandchild{
     NSManagedObjectContext *context = [self managedObjectContext];
    //- - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -- - - - - 
    Parent *parent = [NSEntityDescription
                                      insertNewObjectForEntityForName:@"Parent"
                                      inManagedObjectContext:context];
    parent.name = @"SeniorA";
    //- - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -- - - - - 
    Child *child = [NSEntityDescription
                                            insertNewObjectForEntityForName:@"Child"
                                            inManagedObjectContext:context];
    child.name = @"JuniorA";
    parent.relationToChild = child;
    //- - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -- - - - - 
    Grandchild *grandchild = [NSEntityDescription
                              insertNewObjectForEntityForName:@"Grandchild"
                              inManagedObjectContext:context];
    grandchild.name = @"IIIA";
    child.relationToGrandchild = grandchild;
    
    
    NSError *error;
    if (![context save:&error]) {
        NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
    }
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Parent"
                                              inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
    for (Parent *selectedParent in fetchedObjects) {
        NSLog(@"Parent: %@", selectedParent.name);
        Child *selectedChild = selectedParent.relationToChild;
        NSLog(@"Child: %@", selectedChild.name);
        Grandchild *selectedGrandchild = selectedChild.relationToGrandchild;
        NSLog(@"Grandchild: %@",selectedGrandchild.name);
    }

}

