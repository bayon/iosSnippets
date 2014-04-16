// AAStats : API request for report
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 2E7A3FA7-611B-4AA1-9CC0-D632ACFC6F47
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// AAStats : API request for report
-(void)request1{
    NSString *urlString =  @"http://hive.indatus.com/precompiled_reports/this_month/23"; // interval | company_id
    NSURL *url = [NSURL URLWithString:[urlString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    NSString *authStr = [NSString stringWithFormat:@"%@:%@", @"bwebb@indatus.com", @"telecom1"];
    NSData *authData = [authStr dataUsingEncoding:NSUTF8StringEncoding];
    NSString *authValue = [NSString stringWithFormat:@"Basic %@", [authData base64Encoding]];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:20.0f];
    [request setValue:authValue forHTTPHeaderField:@"Authorization"];
    
    getConnection = [[NSURLConnection alloc] initWithRequest:request
	                                                delegate:self];
	[getConnection start];
}
