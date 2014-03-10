// NSDICTIONARY TO JSON
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 1FA9C082-C2DE-4538-A553-E7CF3E75BEBE
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
        // NSDICTIONARY TO JSON
          //currently gives an error about the DATE field, either date or timestamp, they are both set as Date.
         
        NSError *error; 
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:fields 
                                                           options:0 //NSJSONWritingPrettyPrinted // Pass 0 if you don't care about the readability 
                                                             error:&error];
        
        if (! jsonData) {
            NSLog(@"Got an error: %@", error);
        } else {
            NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
            NSLog(@"%@",jsonString);
        }
           */
