// NSPredicate Examples
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: FE91DA01-14F4-4DB9-8BA6-863436C678B0
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 NSPredicate Examples:
 http://www.peterfriese.de/using-nspredicate-to-filter-data/
 
 
 Simple filtering with NSPredicate
 
 NSPredicate *predicate =
 [NSPredicate predicateWithFormat:@"publisher == %@", @"Apress" ];
 NSArray *filtered  = [bookshelf filteredArrayUsingPredicate:predicate];
 
 
 
 Filtering with Regular Expressions
 
 predicate = [NSPredicate predicateWithFormat:@"title MATCHES '.*(iPhone|iPad).*'"];
 filtered = [bookshelf filteredArrayUsingPredicate:predicate];
 dumpBookshelf(@"Books that contain 'iPad' or 'iPhone' in their title", filtered);
 
 
 
 Filtering using set operations
 
 NSArray *favoritePublishers = [NSArray arrayWithObjects:@"Apress", @"O'Reilly", nil];
 predicate = [NSPredicate predicateWithFormat:@"publisher IN %@", favoritePublishers];
 filtered  = [bookshelf filteredArrayUsingPredicate:predicate];
 dumpBookshelf(@"Books published by my favorite publishers", filtered);
 
 
 
 Advanced filtering thanks to KVC goodness
 
 predicate =
 [NSPredicate predicateWithFormat:@"authors.lastName CONTAINS %@", @"Mark" ];
 filtered  = [bookshelf filteredArrayUsingPredicate:predicate];
 
 */

/*
 NSPredicate* predicate = [NSPredicate predicateWithFormat:@"ANY productOrders.order.client.code == %@ AND productOrders.order.orderDate == %@", clientCode, lastDate];

*/



/*
 Using Predicates with Relationships
 
 If you use a to-many relationship, the construction of a predicate is slightly different. If you want to fetch Departments in which at least one of the employees has the first name "Matthew," for instance, you use an ANY operator as shown in the following example:
 
 NSPredicate *predicate = [NSPredicate predicateWithFormat:
 @"ANY employees.firstName like 'Matthew'"];
 
 If you want to find Departments in which all the employees are paid more than a certain amount, you use an ALL operator as shown in the following example:
 
 float salary = ... ;
 NSPredicate *predicate = [NSPredicate predicateWithFormat:
 @"ALL employees.salary > %f", salary];

 */



