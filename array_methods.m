// ARRAY METHODS
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 819D4524-68AD-4667-AC3F-44E8C28CA7B8
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

ARRAY METHODS
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// VIEW ALL
NSLog(@"array: %@", array);
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// VIEW INDIVIDUAL ELEMENTS:
for (id obj in array){
    NSLog(@"obj: %@", obj);
}
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// CREATE: Array With Objects
NSArray  * array = [NSArray arrayWithObjects:a,b,c,nil];
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// ADD OBJECT: to MutableArray
NSMutableArray *items = [[NSMutableArray alloc] init];
[items addObject:@"One"];		//Add to end of array
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// OVERWRITE: a value
[MyArrayName replaceObjectAtIndex:5 withObject:MyNewObject];
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// REMOVE: entry From Array
[SomeArrayName removeObjectAtIndex:5];
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// COUNT: Array Length
int NumberOfObjects = [SomeArrayName count];
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// CLEAR: Array
[SomeArrayName removeAllObjects];
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// CREATE FROM ANOTHER ARRAY:
NSArray * myArray3 = [NSArray arrayWithArray:myArray2];
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// RETURN INDEX: the index of an object in an array
NSInteger index = [myArray indexOfObject:someObject];
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// SORT: array
NSArray *sortedArray = [myArray2 sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
