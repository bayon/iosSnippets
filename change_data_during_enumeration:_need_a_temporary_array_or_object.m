// change data during enumeration: need a temporary array or object
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: CE23D255-6644-4950-8822-7E5B35723BE4
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //change data during enumeration: need a temporary array or object
 -(void)changeDataWhileEnumerating{
     NSMutableArray *temporaryArray = [NSMutableArray arrayWithArray:realObject.array];
     for( id element in temporaryArray)
     {
         if([@"value1" isEqualToString:@"value2"])
         {
             [realObject.array removeObject:element];
         }
     }

 }
 */