// WSDL FOR cSharp
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: CAFED45B-4F48-4415-9F79-694173347ACF
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 WSDL FOR cSharp
 -(void)getCSharpWSDL{
 //FOR PASSING UP JSON IN THE REQUEST
 // NSError *error;
 //NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithObject:@"Devin" forKey:@"firstName"];
 //Do any additional setup after loading the view, typically from a nib.
 //NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic  options:0  error:&error];
 //Pass 0 if you don't care about the readability of the generated string
 //NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
 //[dic setObject:@"Wirth" forKey:@"lastName"];
 //NSData *jsonName = [NSJSONSerialization dataWithJSONObject:dic options:0 error:&error];
 
 
 //WSDL---WSDL---WSDL---WSDL---WSDL---WSDL---WSDL---WSDL---WSDL---WSDL---WSDL---WSDL---
 //WEB ADDRESS AND METHOD NAME in one URL
 NSString *url = @"http://172.16.104.108:8732/SoapRestService/REST/get_Questions";
 //WSDL---WSDL---WSDL---WSDL---WSDL---WSDL---WSDL---WSDL---WSDL---WSDL---WSDL---WSDL---
 
 NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url] cachePolicy:NSURLCacheStorageAllowed timeoutInterval:30.0];
 //POST data
 [request setHTTPMethod: @"POST"];
 //[request setHTTPBody: jsonData];  //ONLY IF PASSING UP JSON TO THE WSDL
 [request setHTTPBody: nil];         //set to nil for WSDL downloading
 [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
 self.responseData = [NSMutableData data];
 NSURLConnection *myNSURLConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
 }
 
 // NSURLConnection Delegate Methods
 -(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
 {
 NSLog(@"\n--> didReceiveResponse");
 [self.responseData setLength:0];
 }
 -(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
 {
 NSLog(@"\n--> didReceiveData");
 [self.responseData appendData:data];
 }
 -(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
 {
 NSLog(@"\n--> didFailWithError");
 NSLog([NSString stringWithFormat:@"Connection failed: %@", [error description]]);
 }
 -(void)connectionDidFinishLoading:(NSURLConnection *)connection
 {
 NSLog(@"\n--> connectionDidFinishLoading");
 [self handleDataDownload];
 }
 
 -(void)handleDataDownload{
 NSLog(@"\n FILE->FUNCTION: %s",__FUNCTION__);
 NSError *myError = nil;
 NSDictionary *res = [NSJSONSerialization JSONObjectWithData:self.responseData options:NSJSONReadingMutableLeaves error:&myError];
 //convert NSMutableData to a string of json encoded data
 NSString* stringOfJsonEncodedData;
 stringOfJsonEncodedData = [[NSString alloc] initWithData:self.responseData encoding:NSUTF8StringEncoding];
 // NSLog(@"NSDictionary Results: %@",res);
 NSLog(@"NSString of JSON  FROM NSMutableData: %@",stringOfJsonEncodedData);
 }
 

 */
