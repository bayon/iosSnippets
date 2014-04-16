// sort : array of objects
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: BA00DCC1-0D19-45A0-A666-7C8C43C83B87
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
// sort : array of objects
    NSMutableArray* array = [ @[person1, person2, person3, person4] mutableCopy ];
    NSArray *sortedArray = [array sortedArrayUsingComparator:^NSComparisonResult(Person *p1, Person *p2){
        return [p1.surname compare:p2.surname];
    }];
    for(Person *p in sortedArray){
         NSLog(@"\n --%@",p.surname );
    }
