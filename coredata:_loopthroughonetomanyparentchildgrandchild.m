// coredata: loopThroughOneToManyParentChildGrandchild
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 10EB1061-98B2-4070-86BB-C7E3E264131F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

-(void)loopThroughOneToManyParentChildGrandchild{
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
    //parent.relationToChild = child;
    [parent addRelationToChildObject:child ];
    
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
        
        
        //Here parent has a one to many relationship to child.
        NSSet *childSet = selectedParent.relationToChild;
        NSArray *childArray = [childSet allObjects];
        Child *selectedChild =[childArray objectAtIndex:0];
        NSLog(@"Child: %@", selectedChild.name);
        
        
        
        Grandchild *selectedGrandchild = selectedChild.relationToGrandchild;
        NSLog(@"Grandchild: %@",selectedGrandchild.name);
    }

}

