// Find NULL value in an Array
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 7AA9E1CF-54E0-4198-B75A-F37146475E90
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//Find NULL value in an Array
    for (id arrayObject in array1) {
        //...do something useful with myArrayElement
        if ([arrayObject isEqualToString:@""]){
            //
            NSLog(@"NULL");
        }else{
            NSLog(@"NOT NULL");
        }
    }