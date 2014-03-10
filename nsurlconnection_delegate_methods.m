// NSURLConnection Delegate Methods
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: AB301EA4-B555-4C9A-B4E6-67A15295A8D8
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

// NSURLConnection Delegate Methods
-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
   NSLog(@"\n FILE->FUNCTION: %s",__FUNCTION__);
}
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"\n FILE->FUNCTION: %s",__FUNCTION__);
}
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
	NSLog(@"\n FILE->FUNCTION: %s",__FUNCTION__);
}
-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"\n FILE->FUNCTION: %s",__FUNCTION__);
    //NSLog(@"Succeeded! Received %d bytes of data",[self.responseData length]);
}
