// NSMUTABLEARRAY TO NSDICTIONARY
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 6776D773-B351-4692-BFC3-80FB80918C63
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //NSMUTABLEARRAY TO NSDICTIONARY
 NSMutableArray *array = [[NSMutableArray alloc]initWithContentsOfFile: @"completedPath"];
 
 NSMutableDictionary *dictionary = [array objectAtIndex:0];
 
 [dictionary removeObjectForKey:@"device_id"];
 
 [dictionary removeObjectForKey:@"date_created"];
 
 NSError *error;
 
 NSData *data = [NSJSONSerialization dataWithJSONObject:dictionary options:0 error:&error];
 */