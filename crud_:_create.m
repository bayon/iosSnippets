// CRUD : Create
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: EFDB9AD5-5419-4233-81BB-8485C479BFE5
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#pragma mark - Data Functions: CRUD:Create
//CRUD : Create
-(IBAction)saveRequest : (id)sender{
    NSString *taskText;
    NSString *explanationText;
    taskText  = task.text;
    explanationText = explanation.text;
    [self createRecordWithTask:taskText andExplanation:explanationText];
    [self clearTextInputs];
}
-(void)createRecordWithTask:(NSString*)taskX andExplanation:(NSString *)explanationX{
    if (managedObjectContext == nil)
    {
        managedObjectContext = [(AppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext];
    }
    NSManagedObject	*entityX = [NSEntityDescription insertNewObjectForEntityForName:@"ToDo" inManagedObjectContext:managedObjectContext];
    NSError *err;
    [entityX setValue:taskX          forKey:@"task"];
    [entityX setValue:explanationX   forKey:@"explanation"];
    if (![managedObjectContext save:&err])
    {
        NSLog(@"Problem saving: %@", [err localizedDescription]);
    }else{
        NSLog(@"SAVE COMPLETE.");
        
         [self.navigationController popViewControllerAnimated:YES];
    }
}