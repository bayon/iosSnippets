// send text info to server NSURL
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 503973B4-E13C-4716-AFAB-7AB09CDC8196
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //send text info to server 
 NSString *textdata = [YourTextField text];
 NSString *anotherTextdata = [YourAnotherTextField text];
 
 NSString *urlpath;
 urlpath = [@"http://yoursiteapiurl.com/" stringByAppendingString:@"yourserverfile.php?textdata="];
 urlpath = [urlpath stringByAppendingString:textdata];
 urlpath = [urlpath stringByAppendingString:@"&anotherTextData="];
 urlpath = [urlpath stringByAppendingString:anotherTextdata];
 
 NSURL *url=[[NSURL alloc] initWithString:[urlpath stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
 
 NSString *a = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];

*/