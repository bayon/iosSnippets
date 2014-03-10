// string fix kit
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: C96446D0-AD9A-4B57-99D3-352C59F131B9
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //string fix kit:
 -(void) someFunction{
 NSMutableString *stringBeingCleaned = [[NSMutableString alloc]init];
 NSString *trimmedString = [searchTerm stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
 
 stringBeingCleaned = [ trimmedString mutableCopy];
 
 bool isSpace;
 isSpace =  [self checkForExistingChar:@" " inString:stringBeingCleaned];
 if(isSpace){
 do {
 stringBeingCleaned = [[self replaceSpaceInString :searchTerm atIndex:spaceIndex] mutableCopy];
 isSpace =  [self checkForExistingChar:@" " inString:stringBeingCleaned];
 } while (isSpace);
 
 }
 
 NSLog(@"\n stringBeingCleaned %@",stringBeingCleaned);
 }
 -(bool)checkForExistingChar: (NSString *)stringChar inString:(NSString *)stringToSearch{
 
 NSString *string1 =stringToSearch;
 NSRange match;
 match = [string1 rangeOfString: stringChar];
 NSLog (@"match found at index %u", match.location);
 spaceIndex = match.location;
 NSLog (@"match length = %u", match.length);
 
 if(match.length ==1 ){
 NSLog(@"\n  TRUE");
 return 1;
 }else{
 NSLog(@"\n  FALSE");
 return 0;
 }
 }
 -(NSString *)replaceSpaceInString :(NSString *) string atIndex:(int)index{
 //replaceCharactersInRange:withString:
 NSString *str = string;
 str = [str stringByReplacingCharactersInRange:NSMakeRange(index, 1) withString:@"%20"];
 NSLog(@"%@",str);
 return str;
 }
*/
