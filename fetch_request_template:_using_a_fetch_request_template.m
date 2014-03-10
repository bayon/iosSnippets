// fetch request template: Using a fetch request template
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 17256707-7DB2-41E5-A46A-222F33434AB6
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/* 
 // fetch request template: Using a fetch request template
 NSManagedObjectModel *model = <#Get a model#>;
 
 NSError *error = nil;
 
 NSDictionary *substitutionDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
 
 @"Fiona", @"FIRST_NAME", @"Verde", @"LAST_NAME",
 
 [NSDate dateWithTimeIntervalSinceNow:-31356000], @"DATE", nil];
 
 NSFetchRequest *fetchRequest =
 
 [model fetchRequestFromTemplateWithName:@"PublicationsForAuthorSinceDate"
 
 substitutionVariables:substitutionDictionary];
 
 NSArray *results =
 
 [aManagedObjectContext executeFetchRequest:fetchRequest error:&error];
 */