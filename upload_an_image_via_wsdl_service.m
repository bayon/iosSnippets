// Upload An Image via WSDL Service
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 73817B4A-55CC-4DE9-9A0E-50BCF53B2186
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
//Upload An Image via WSDL Service
-(void)uploadImage:(UIImage*)image
{
    
    NSLog(@"\n FILE->FUNCTION: %s",__FUNCTION__);
    //-(void)uploadImage:(NSString*)path
    //NSString *url = @"http://172.16.104.108:8732/FMSBackendService/REST/UploadImage";
    NSString *url = @"http://172.16.104.108:8606/FMSBackendService/REST/UploadImage";
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc]initWithURL:[NSURL URLWithString:url] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:30];
   // UIImage *img = [[UIImage alloc]initWithContentsOfFile:path];
     UIImage *img = image;
    NSData *imgData = UIImageJPEGRepresentation(img, .3);
    [request setHTTPMethod: @"POST"];
    [request setHTTPBody: imgData];
    [request setValue:@"image/jpeg" forHTTPHeaderField:@"Content-Type"];
    imageResponseData = [NSMutableData data];
    imageNSURLConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    
}
 */
//ALSO REQUIRED:
/*
NSMutableData *imageResponseData;
NSURLConnection *imageNSURLConnection;


- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    //nullify responsedata
    if ([connection isEqual:otherNSURLConnection]) {
        [otherResponseData setLength:0];
    }
    else if([connection isEqual:imageNSURLConnection]) {
        [imageResponseData setLength:0];
    }
    
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    
    //store received data in hex values
    if ([connection isEqual:otherNSURLConnection]) {
        [otherResponseData appendData:data];
    }
    else if([connection isEqual:imageNSURLConnection]) {
        [imageResponseData appendData:data];
    }
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"Connection failed: %@", [error description]);
    
    //put in error handling for current upload (remove, store somewhere for later)
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    
    if ([connection isEqual:otherNSURLConnection]) {
        NSError *myError = nil;
        NSDictionary *res = [NSDictionary dictionary];
        res = [NSJSONSerialization JSONObjectWithData:inspectionResponseData options:NSJSONReadingAllowFragments error:&myError];
    }
    else if([connection isEqual:imageNSURLConnection]) {
        NSMutableString *string = [[NSMutableString alloc]initWithData:imageResponseData encoding:NSUTF8StringEncoding];
        [string replaceOccurrencesOfString:@"\"" withString:@"" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [string length])];
        [self updatePicture:[imagesToUpload objectAtIndex:currentUploadedPictureIndex] withString:string];
        currentUploadedPictureIndex++;
        if (currentUploadedPictureIndex < imagesToUpload.count) {
            [self uploadPictureAtIndex:currentUploadedPictureIndex];
        }
        else
        {
            [self uploadInspection:[inspectionsToUpload objectAtIndex:currentUploadedSurveyIndex]];
        }
        
    }
}

*/






