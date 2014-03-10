// unit test : pull json from a file 
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 67AE1883-DA01-4743-B5B4-92FB5280A35C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//Hard Coded Json String from text file
    NSString * filePath = [[NSBundle bundleForClass:[self class] ] pathForResource:@"json" ofType:@"txt"];
    NSString *content = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];

NSError *e = [[NSError alloc]init];
NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData: [content dataUsingEncoding:NSUTF8StringEncoding]
                                                     options: NSJSONReadingMutableContainers
                                                       error: &e];