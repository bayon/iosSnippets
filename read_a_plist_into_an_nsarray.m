// READ A PLIST INTO AN NSARRAY
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 3FF7B7B6-5881-47E4-A0AF-7804ED1E5824
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 
 //READ A PLIST INTO AN NSARRAY
 // Path to the plist (in the application bundle)
 NSString *path = [[NSBundle mainBundle] pathForResource:
 @"DrinkArray" ofType:@"plist"];
 
 // Build the array from the plist
 NSMutableArray *array2 = [[NSMutableArray alloc] initWithContentsOfFile:path];
 
 // Show the string values
 for (NSString *str in array2)
 NSLog(@"--%@", str);
 */