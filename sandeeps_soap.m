// SANDEEPS_SOAP
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: D0004C8E-60EE-48B1-9499-B2574AE52D97
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 SANDEEPS_SOAP
 
 
 -(BOOL) checkConnection:(NSMutableDictionary*) surverResponse            //(NSManagedObject*) surverResponse
 {
 NSLog(@"Sending %@",surverResponse);
 
 NSString *soapMessage = [NSString stringWithFormat:
 @"<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
 "<SOAP-ENV:Envelope \n"
 "xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" \n"
 "xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" \n" 
 "xmlns:SOAP-ENC=\"http://schemas.xmlsoap.org/soap/encoding/\" \n"
 "SOAP-ENV:encodingStyle=\"http://schemas.xmlsoap.org/soap/encoding/\" \n"
 "xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\"> \n"
 "<SOAP-ENV:Body> \n"
 "<survey_upload xmlns=\"http://tempuri.org/\">\n"
 "<user_identifier>""%@""</user_identifier>\n"
 "<restaurant_code>""%@""</restaurant_code>"
 "<response>""%@""</response>"
 "<email_address>test</email_address>"
 "</survey_upload>"
 "</SOAP-ENV:Body> \n"
 "</SOAP-ENV:Envelope>", [surverResponse valueForKey:@"pan"], [surverResponse valueForKey:@"facilityCode"], [surverResponse valueForKey:@"responses"]];
 
 //pan              pan
 //facilityCode     facility_code
 //responses        responses
 
 NSURL *url = [NSURL URLWithString:@"http://api.indatus.com/kindred/survey/?wsdl"];  
 
 NSMutableURLRequest *theRequest = [NSMutableURLRequest requestWithURL:url]; 
 
 NSString *msgLength = [NSString stringWithFormat:@"%d", [soapMessage length]];  
 
 [theRequest addValue: @"text/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];   
 
 [theRequest addValue: @"http://api.indatus.com/kindred/survey/?wsdl" forHTTPHeaderField:@"Soapaction"];
 
 [theRequest addValue: msgLength forHTTPHeaderField:@"Content-Length"];
 
 [theRequest setHTTPMethod:@"POST"];     
 
 [theRequest setHTTPBody: [soapMessage dataUsingEncoding:NSUTF8StringEncoding]];
 
 theConnection = [[NSURLConnection alloc] initWithRequest:theRequest delegate:self];
 
 if(theConnection) 
 {
 webData = [NSMutableData data];
 
 NSLog(@"Returning at true");
 
 return TRUE;
 }
 else 
 {
 NSLog(@"Returning at false");
 
 return FALSE;
 }
 }

 */