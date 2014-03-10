// String Substitution
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 8FCBBF64-C512-4EAE-A53A-A9EEEB90E752
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// String Substitution
     
    NSString *string1 =@"some_ReallyStupid_dumb_building_off.png";
    NSRange match;
    match = [string1 rangeOfString: @"_off.png"];
    NSString *swap = [NSString stringWithFormat:@"_on.png"];
    //NSLog (@"\n match found at index %u", match.location);
    int position = match.location;
    //NSLog (@"\n match length = %u", match.length);
    NSMutableString *stringA = [NSMutableString stringWithString: string1];
    NSString *string2;
    string2 = [stringA substringWithRange: NSMakeRange (0, position)];
    //NSLog (@"\n string2 = %@", string2);
    NSString *selectedString = [NSString stringWithFormat:@"%@%@",string2,swap];
    //NSLog (@"\n selectedString = %@", selectedString);