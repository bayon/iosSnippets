// GET MySQL data from PHP via JSON
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 5DA79B74-7171-4AE1-A7F1-566BAFD832F1
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //GET MySQL data from PHP via JSON { json_encoded() }
 //Parameters
 //MULTIPLE PARAMETERS: NSString *myRequestString = @"keyA=valA&keyB=valB&keyC=ValC";
 NSString *myRequestString = @"my_id=4";
 NSData *jsonData = [NSData dataWithBytes: [myRequestString UTF8String] length: [myRequestString length]];
 //web address to access
 
 NSString *url = @"http://www.forteworks.com/jsonToCore/";
 NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url] cachePolicy:NSURLCacheStorageAllowed timeoutInterval:30.0];
 //POST data
 [request setHTTPMethod: @"POST"];
 [request setHTTPBody: jsonData];
 [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"content-type"];
 
 self.responseData = [NSMutableData data];
 self.myNSURLConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
 */