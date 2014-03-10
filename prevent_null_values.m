// Prevent NULL values
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 03530DB0-CD19-48FD-A732-58E10808766C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//Prevent NULL values
                                   
                 if([[[value class] description] isEqual: @"__NSCFNumber"]){
                     [dicToUpload setObject:value forKey:attribute];
                  }else   if([value length] > 0)
                 {
                      //set individual value
                     [dicToUpload setObject:value forKey:attribute];
                 }