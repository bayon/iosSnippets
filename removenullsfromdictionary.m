// removeNullsFromDictionary
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: BEAE2830-6DC8-4775-B61C-858B8BE72207
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//removeNullsFromDictionary
-(NSMutableDictionary *)removeNullsFromDictionary : (NSMutableDictionary *)dic {
    //Find and remove NULL in Dictionary of Strings: return new dictionary
    NSMutableDictionary *dictionaryResult = [[NSMutableDictionary alloc]init];
    for(id key in dic) {
        NSString *keyAsString = (NSString *)key;
        id object = [dic objectForKey:key];
        NSString *objectAsString = (NSString *)object;
        if ([objectAsString isEqualToString:@""]){
            //NSLog(@"NULL");
        }else{
             
            [dictionaryResult setObject:objectAsString forKey:keyAsString];
        }
    }
    return dictionaryResult;
    
}