// NSURLConnection: appending data
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 7339477F-FE3F-4355-BFBF-D204896FB452
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//NSURLConnection: appending data =============================================================== 
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    //NSLog(@"\n didReceiveResponse");
    [self.mutableData setLength:0];
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {  
    // NSLog(@"\n didReceiveData:");
    [self.mutableData appendData:data]; 
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {    
    NSLog(@"\n didFailWithError");
    //NSLog([NSString stringWithFormat:@"Connection failed: %@", [error description]]);
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    
    NSLog(@"connectionDidFinishLoading"); 
    [self handleDataDownload];
    [self handleImageDownload];
        
}
