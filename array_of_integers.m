// array of integers
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 5FD8D82C-9CC9-4001-91D3-F54CB91754B9
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//array of integers
    _array = [NSMutableArray array];
    for (int n = 1; n <= 10; n++)
        [_array addObject:@(n)];
    
    NSArray *_array2 = @[ @10, @2, @9, @4, @8, @6, @7, @1, @9, @3 ];
    NSLog(@"_array: %@",_array);
    NSLog(@"_array2: %@",_array2);