// base64 : encode and decode
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 1EFC474A-D9BB-4E08-9BDE-DC30A066423F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 // base64 : encode and decode
 NSString *plainString = @"foo";
 Encoding
 
 NSData *plainData = [plainString dataUsingEncoding:NSUTF8StringEncoding];
 NSString *base64String = [plainData base64EncodedStringWithOptions:0];
 NSLog(@"%@", base64String); // Zm9v
 Decoding
 
 NSData *decodedData = [[NSData alloc] initWithBase64EncodedString:base64String options:0];
 NSString *decodedString = [[NSString alloc] initWithData:decodedData encoding:NSUTF8StringEncoding];
 NSLog(@"%@", decodedString); // foo
 */