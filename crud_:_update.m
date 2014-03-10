// CRUD : update
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: ABD89FCE-701B-42DE-A473-786884679E23
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//CRUD : update
-(void)update{
    newTask = task.text;
    newExplanation = explanation.text ;
    if (managedObjectContext == nil)
    {
        managedObjectContext = [(AppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext];
    }
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"ToDo" inManagedObjectContext:managedObjectContext];
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:entity];
    NSPredicate *p=[NSPredicate predicateWithFormat:@"task == %@", currentToDo.task];
    [request setPredicate:p];
    NSError *error;
    NSArray *objects=[[self managedObjectContext] executeFetchRequest:request error:&error];
    for (NSManagedObject *info in objects) {
        [info setValue:newTask forKey:@"task"];
        [info setValue:newExplanation forKey:@"explanation"];
    }
    NSError *error2;
    if (![managedObjectContext save:&error2]) {
        NSLog(@"Problem saving: %@",[error2 localizedDescription]);
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}