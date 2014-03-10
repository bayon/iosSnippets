// CRUD : Delete
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 236D2B59-E1A3-4884-8DC7-41B82E7016BA
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//CRUD : Delete
-(IBAction)deleteRequest : (id)sender{
    NSString* msg = [NSString stringWithFormat:@"" ];
    UIAlertView *alertmsg = [[UIAlertView alloc]
                             initWithTitle:@"Are you sure?"
                             message:msg
                             delegate:self
                             cancelButtonTitle:@"cancel"
                             otherButtonTitles:@"yes",nil ];
    [alertmsg show];
    
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	if (buttonIndex == 0) {
        //cancel
	}else{
       //continue
        [self deleteTask:currentToDo.task];
    }
}
- (void)deleteTask:(NSString*)taskText
{
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    NSEntityDescription *entity=[NSEntityDescription entityForName:@"ToDo" inManagedObjectContext:context];
    NSFetchRequest *fetch=[[NSFetchRequest alloc] init];
    [fetch setEntity:entity];
    NSPredicate *p=[NSPredicate predicateWithFormat:@"task == %@", taskText];
    [fetch setPredicate:p];
    NSError *fetchError;
    NSError *error;
    NSArray *fetchedObjects=[context executeFetchRequest:fetch error:&fetchError];
    for (NSManagedObject *object in fetchedObjects) {
        [context deleteObject:object];
    }
    [context save:&error];
    [self clearTextInputs];
     [self.navigationController popViewControllerAnimated:YES];
}
