// core data: update
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: B5B3E58B-5005-4A05-9AAB-3B960A8E85DA
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 /*
    //core data: update
    NSEntityDescription *entityDesc = [NSEntityDescription entityForName:@"Survey" inManagedObjectContext:[self managedObjectContext]];
    NSFetchRequest *request2 = [[NSFetchRequest alloc] init];
    [request2 setEntity:entityDesc];
    NSError *error;
    NSArray *objects=[[self managedObjectContext] executeFetchRequest:request2 error:&error];
    for (NSManagedObject *info in objects) {
        //str = [NSString stringWithFormat:@"%@",[info valueForKey:@"uploaded"]];
        [info setValue:@"hi" forKey:@"uploaded"];
    }
    NSError *error2;
    if (![managedObjectContext save:&error2]) {
        NSLog(@"Problem saving: %@",[error2 localizedDescription]);
        //sharedManager.coreDataSaveWasASuccess =0;
    }
    */
