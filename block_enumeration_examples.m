// block enumeration examples
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: C8DA90E8-FB3A-4753-977C-DDEBD0245A7C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//block enumeration examples
- (void)enumerationExamples {
    
    NSDictionary *sampleDictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Hello World", @"Test String 1",
                                      @"How are you?", @"Test String 2",
                                      @"I am fine.", @"Test String 3",
                                      @"Let's have lunch!", @"Test String 4",
                                      @"Open the pod bay doors HAL.", @"Test String 5",
                                      @"I am fine.", @"Test String 6",
                                      nil];
    
    NSLog(@"Printing my dictionary out by enumerating:");
    [sampleDictionary enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        NSLog(@"\tKey: %@ Value: %@", key, obj);
    }];
    
    NSArray *sampleArray = [sampleDictionary allKeys];
    NSLog(@"Printing my array out by enumerating:");
    [sampleArray enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"\tValue: %@ Index: %d", obj, idx);
    }];
    
    NSSet *sampleSet = [NSSet setWithArray:[sampleDictionary allValues]];
    NSLog(@"Printing my set out by enumerating, this set will be all UNIQUE objects:");
    [sampleSet enumerateObjectsUsingBlock:^(id obj, BOOL *stop) {
        NSLog(@"\tValue: %@", obj);
    }];
    
    NSLog(@"Printing my array out by enumerating and stopping at index 1:");
    [sampleArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"\tValue: %@ Index: %d", obj, idx);
        
        if(idx == 1) {
            *stop = YES;
        }
    }];
}

