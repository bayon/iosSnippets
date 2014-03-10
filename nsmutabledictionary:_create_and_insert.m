// NSMutableDictionary: create and insert
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 8B3602AC-E36D-4B6E-877A-05CA77CB9B94
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
//NSMutableDictionary: create and insert
NSMutableDictionary *mutableDictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
@"obj1", @"key1",
@"obj2", @"key2",
nil];
 //set individual value
 [mutableDictionary setObject:@"foofaa" forKey:@"key8"];
//LOG OUT WHOLE
NSLog(@"%@",mutableDictionary);
//SELECT SPECIFIC
NSLog(@"\n %@",[mutableDictionary objectForKey:@"key1"]);
 //
 //HERE WE CAN REMOVE CERTAIN VALUES:
 
 [dic removeObjectForKey:@"inspectionID"];
 
// LOOP THROUGH
for(id key in mutableDictionary) {
NSString *keyAsString = (NSString *)key;
id object = [mutableDictionary objectForKey:key];
NSString *objectAsString = (NSString *)object;
NSLog(@"key: %@", keyAsString);
NSLog(@"object: %@", objectAsString);
}

*/
