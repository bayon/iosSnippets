// fetch request template:Creating Fetch Request Templates Programmatically
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: DB5956BB-B684-4D17-AC85-488168B5F044
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/* 
 // Creating Fetch Request Templates Programmatically
 NSManagedObjectModel *model = <#Get a model#>;
 
 NSFetchRequest *requestTemplate = [[NSFetchRequest alloc] init];
 
 NSEntityDescription *publicationEntity =
 
 [[model entitiesByName] objectForKey:@"Publication"];
 
 [requestTemplate setEntity:publicationEntity];
 
 
 
 NSPredicate *predicateTemplate = [NSPredicate predicateWithFormat:
 
 @"(mainAuthor.firstName like[cd] $FIRST_NAME) AND \
 
 (mainAuthor.lastName like[cd] $LAST_NAME) AND \
 
 (publicationDate > $DATE)"];
 
 [requestTemplate setPredicate:predicateTemplate];
 
 
 
 [model setFetchRequestTemplate:requestTemplate
 
 forName:@"PublicationsForAuthorSinceDate"];
 */

