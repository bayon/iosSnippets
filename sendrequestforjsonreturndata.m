// sendRequestForJSONReturnData
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 496AC888-CB12-4186-A588-EFB0897B224E
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(void)sendRequestForJSONReturnData{
    //method=get_Images will return a list of available images in the database.
    NSString *myRequestString = @"method=get_Images";
    NSData *jsonData = [NSData dataWithBytes: [myRequestString UTF8String] length: [myRequestString length]];
    NSString *url = @"http://www.forteworks.com/jsonImages.php";
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url] cachePolicy:NSURLCacheStorageAllowed timeoutInterval:30.0];
    //POST data 
    [request setHTTPMethod: @"POST"];
    [request setHTTPBody: jsonData];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"content-type"];
    
    self.mutableData = [NSMutableData data]; 
    self.myNSURLConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
}