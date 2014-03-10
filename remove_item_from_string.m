// REMOVE ITEM FROM STRING
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: F46CB6E1-FF18-4789-BF7D-205EA45D63C5
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//REMOVE ITEM FROM STRING
    /*
     NSLog(@"\n = = = PHASE 1= = = = = = = = = = = = = = = = = = ");
    NSString *testString = stringDict;
    NSArray *testArray = [testString componentsSeparatedByString:@"("];//ALMOST WORKS: (   //FAILURES: ; , = {
    NSString *key = [testArray objectAtIndex:0];
   
    NSLog(@"\n KEY: %@",key);
    NSArray *values = [testArray subarrayWithRange:NSMakeRange(1, [testArray count] - 1)];
     NSLog(@"\n Values: %@",values);
    NSDictionary *dict = [NSDictionary dictionaryWithObject:values forKey:key];
    NSLog(@"dict:%@",dict);
    */