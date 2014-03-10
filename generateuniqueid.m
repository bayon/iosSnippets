// generateUniqueId
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: E0436A4E-8F46-45AE-9A31-42EC686A2A8C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(NSString *)generateUniqueId{
    
    // Get random value between 0 and 99
    int randomNumber = arc4random() % 100;
     NSString *randomNumberString = [NSString stringWithFormat:@"%d", randomNumber];
    //String From NSDate
    //NSString *stringFromDate = [formatter stringFromDate:theDataObject.lastSurveyDate];
    int timestamp = [[NSDate date] timeIntervalSince1970];
    //int TO string
    NSString *timestampString = [NSString stringWithFormat:@"%d", timestamp];
    
    
    char data[4];
    for (int x=0;x<4;data[x++] = (char)('A' + (arc4random_uniform(26))));

    //NSLog(@"RANDOM STRING:%@",[[NSString alloc] initWithBytes:data length:4 encoding:NSUTF8StringEncoding]);
    NSString *alphaString = [[NSString alloc] initWithBytes:data length:4 encoding:NSUTF8StringEncoding];
    NSString *unique_id   = [NSString stringWithFormat:@"%@_%@_%@", alphaString,randomNumberString , timestampString];
    //NSLog(@"GENERATE unique_id FROM randomAlphaString , randomNumberString  and timestampString : %@",unique_id);
    
    return unique_id;
    
}

