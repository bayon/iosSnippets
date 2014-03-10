// abstract entities: sortUsingFunction:context:
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 91DCF934-EE52-46C9-A29F-00BB451B4C41
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 /* 
 // abstract entities: sort array of custom objects:
  sort results from Core Data based on the entity type?
  
  
  Compare method
  
  Either you implement a compare-method for your object:
  
  - (NSComparisonResult)compare:(Person *)otherObject {
  return [self.birthDate compare:otherObject.birthDate];
  }
  
  NSArray *sortedArray;
  sortedArray = [drinkDetails sortedArrayUsingSelector:@selector(compare:)];
  NSSortDescriptor (better)
  
  or usually even better:
  
  NSSortDescriptor *sortDescriptor;
  sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"birthDate"
  ascending:YES];
  NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
  NSArray *sortedArray;
  sortedArray = [drinkDetails sortedArrayUsingDescriptors:sortDescriptors];
  You can easily sort by multiple keys by adding more than one to the array. Using custom comparator-methods is possible as well. Have a look at the documentation.
  
  Blocks (shiny!)
  
  There's also the possibility of sorting with a block since Mac OS X 10.6 and iOS 4:
  
  NSArray *sortedArray;
  sortedArray = [drinkDetails sortedArrayUsingComparator:^NSComparisonResult(id a, id b) {
  NSDate *first = [(Person*)a birthDate];
  NSDate *second = [(Person*)b birthDate];
  return [first compare:second];
  }];
  
 
  also:Sorting on type is not something a sort descriptor can do but a function can, as with
  
  -sortUsingFunction:context:
  
 */
