// json : json test file to NSMutableData
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 531EF411-AD52-40C3-A0D4-223E16C4BB11
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 json : json test file to NSMutableData
 
 // Retrieve local JSON file called example.json
 
 NSString *filePath = [[NSBundle mainBundle] pathForResource:@"example" ofType:@"json"];
 
 // Load the file into an NSData object called JSONData
 
 NSError *error = nil;
 
 NSData *JSONData = [NSData dataWithContentsOfFile:filePath options:NSDataReadingMappedIfSafe error:&error];
 
 // Create an Objective-C object from JSON Data
 
 id JSONObject = [NSJSONSerialization
 JSONObjectWithData:JSONData
 options:NSJSONReadingAllowFragments
 error:&error];
 
 */
