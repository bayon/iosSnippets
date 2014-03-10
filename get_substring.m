// GET SUBSTRING
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 742DE25E-42B1-4A7B-9E94-C4EAB5FCDA04
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 // GET SUBSTRING
    //FIND THE PERIOD
    NSString *string1 =theDataObject.mem_text1;
    NSRange match;
    match = [string1 rangeOfString: @"."];
    NSLog (@"match found at index %u", match.location);
    NSLog (@"match length = %u", match.length);
    // SUBTRACT THE FILENAME
    NSMutableString *stringA = [NSMutableString stringWithString: string1];
    NSString *string2;
    string2 = [stringA substringWithRange: NSMakeRange (0, 12)];
    NSLog (@"string2 = %@", string2);
