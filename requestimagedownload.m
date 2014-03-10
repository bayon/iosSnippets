// requestImageDownload
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: D3EE2B55-9803-4B8C-9FEF-8ABD7C9E578D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//requestImageDownload
-(void)requestImageDownload{
    //method=get_Images will return a list of available images in the database.
    NSString *myRequestString = @"method=download_Image&file=logo-fazolis.jpg";
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