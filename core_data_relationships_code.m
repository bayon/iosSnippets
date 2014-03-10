// CORE DATA RELATIONSHIPS CODE
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: A5A4001F-1D90-40A6-9229-ED1231DABCD5
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2


/*
// CORE DATA RELATIONSHIPS CODE
 
 core data relationships code:
 ( remember to create the NSSubclasses twice to insure the relationship was defined in the auto-generated code correctly.)
 
 ONE-TO-ONE
 
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
 
 
 ONE-TO-MANY
 
 
 
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
 
 
 
 MANY-TO-MANY
 
 -(void)loopThroughManyToManyParentChildGrandchild{
 NSManagedObjectContext *context = [self managedObjectContext];
 
 //- - - PARENTS- - - - - - - - - - - - - - - - - - - - - - - -- - - - - -- - - - -
 Parent *parent = [NSEntityDescription
 insertNewObjectForEntityForName:@"Parent"
 inManagedObjectContext:context];
 parent.name = @"SeniorD";
 
 //- - - CHILDREN - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -- - - - -
 Child *child = [NSEntityDescription
 insertNewObjectForEntityForName:@"Child"
 inManagedObjectContext:context];
 child.name = @"JuniorD";
 //parent.relationToChild = child; // one to one
 [parent addRelationToChildObject:child ]; //"one-to-many" and "many-to-many"
 // "2nd child" : adding to parent in a "many-to-many" relationship
 Child *child2 = [NSEntityDescription
 insertNewObjectForEntityForName:@"Child"
 inManagedObjectContext:context];
 child2.name = @"JunioressD";
 //parent.relationToChild = child; // "one-to-one"
 [parent addRelationToChildObject:child2 ]; //"one-to-many"
 
 
 //- - - GRANDCHILDREN - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -- - - - -
 Grandchild *grandchild = [NSEntityDescription
 insertNewObjectForEntityForName:@"Grandchild"
 inManagedObjectContext:context];
 grandchild.name = @"IIID";
 child.relationToGrandchild = grandchild;
 
 // "2nd grandchild" in a one to many
 Grandchild *grandchild2 = [NSEntityDescription
 insertNewObjectForEntityForName:@"Grandchild"
 inManagedObjectContext:context];
 grandchild2.name = @"Miss IIIness";
 child2.relationToGrandchild = grandchild2;
 
 NSError *error;
 if (![context save:&error]) {
 NSLog(@"Whoops, couldn't save: %@", [error localizedDescription]);
 }
 
 NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
 NSEntityDescription *entity = [NSEntityDescription entityForName:@"Parent"
 inManagedObjectContext:context];
 [fetchRequest setEntity:entity];
 NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
 // Loop through parents
 for (Parent *selectedParent in fetchedObjects) {
 NSLog(@"Parent: %@", selectedParent.name);
 //Here parent has a one to many relationship to child.
 NSSet *childSet = selectedParent.relationToChild;
 //Create Array of Children
 NSArray *childArray = [childSet allObjects];
 //Loop through Children: This only looks if something exists in that element of the array
 for(int i = 0; i < [childArray count]; i++){
 NSLog(@"/n yo %d",i);
 Child *selectedChild =[childArray objectAtIndex:i];
 NSLog(@"Child %d %@",i+1 , selectedChild.name);
 // Grand child had to be moved into the loop that iterates over the parents for one to many
 Grandchild *selectedGrandchild = selectedChild.relationToGrandchild;
 NSLog(@"Grandchild: %@",selectedGrandchild.name);
 // !!! --- If grandchildren were many to many we'd need to insert an inner loop like the "childArray" for the "Grandchild Array
 
 }
 }
 
 }

*/