// Modern Objective C:
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 7AE1A039-6B33-402C-BAB0-C73BF9BD05D4
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 
 Modern Objective C:
 NSMutableArray* array = [ @[@"A", @"B", @"C"] mutableCopy ];
 array[0] = @"X";
 NSString* firstElement = array[0];
 
 
 NSDictionary* dictB = @{@"name": @"Macbook Pro", @"price": @"1,799$"};
 NSString* nameB = modernDict[@"name"];
 NSLog(@"%@",nameB);
 
 
 /////////////
 //NSArray
 
 //declaration
 NSMutableArray* array = [@[@"A",@"B",@"C"] mutableCopy];
 
 //will be translated to
 NSMutableArray* arrayTranslated = [[NSArray arrayWithObjects:@"A",@"B",@"C", nil] mutableCopy];
 
 //access
 NSString* firstElement = array[0];
 
 //will be translated to
 NSString* firstElementTrsnalted = [arrayTranslated objectAtIndexedSubscript:0];
 
 //replace
 array[0] = @"X";
 
 //will be translated to
 [arrayTranslated setObject:@"X" atIndexedSubscript:0];
 
 //NSDictionary
 
 //declaration
 NSMutableDictionary* dict = [@{@"name": @"Macbook Pro"} mutableCopy];
 
 //will be translated to
 NSMutableDictionary* dictTranslated = [[NSDictionary dictionaryWithObjectsAndKeys:@"Macbook Pro", @"name", nil] mutableCopy];
 
 //access
 NSString* name = dict[@"name"];
 
 //will be translated to
 NSString* nameTranslated = [dictTranslated objectForKeyedSubscript:@"name"];
 
 //replace
 dict[@"name"] = @"Macbook Air";
 
 //will be translated to
 [dictTranslated setObject:@"Macbook Air" forKeyedSubscript:@"name"];

 
 */


