// Performance Tweaks
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 842A51C7-840A-4FA4-B31B-718574F6725F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 Performance Tweaks:
 
 
 http://www.raywenderlich.com/31166/25-ios-app-performance-tips-tricks#lazyviews
 8) Enable GZIP Compression
 how to enable it on your Apache or IIS server.
 http://betterexplained.com/articles/how-to-optimize-your-site-with-gzip-compression/
 
 
 
 Here’s a great snippet to use whenever you need to create a NSURLRequest for an image that is unlikely to change:
 
 + (NSMutableURLRequest *)imageRequestWithURL:(NSURL *)url {
 NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
 
 request.cachePolicy = NSURLRequestReturnCacheDataElseLoad; // this will make sure the request always returns the cached image
 request.HTTPShouldHandleCookies = NO;
 request.HTTPShouldUsePipelining = YES;
 [request addValue:@"image/*" forHTTPHeaderField:@"Accept"];
 
 return request;
 }
 
 
 <!DOCTYPE HTML>
 <html manifest="demo.appcache">
 ...
 </html>
 
 demo.appcache would look like this...
 CACHE MANIFEST
 # 2012-02-21 v1.0.0
 /theme.css
 /logo.gif
 /main.js
 
 NETWORK:
 login.asp
 
 FALLBACK:
 /html/ /offline.html
 
 
 
 The code below demonstrates making a property that lazy-loads a date formatter. The first time it is called, it creates a new date formatter. Future calls will just return the already created instance:
 
 // no property is required anymore. The following code goes inside the implementation (.m)
 
 - (NSDateFormatter *)formatter {
 static NSDateFormatter *formatter;
 static dispatch_once_t onceToken;
 dispatch_once(&onceToken, ^{
 _formatter = [[NSDateFormatter alloc] init];
 _formatter.dateFormat = @"EEE MMM dd HH:mm:ss Z yyyy"; // twitter date format
 });
 return formatter;
 }
 
 
 
 Use Autorelease Pool
 NSArray *urls = <# An array of file URLs #>;
 for (NSURL *url in urls) {
 @autoreleasepool {
 NSError *error;
 NSString *fileContents = [NSString stringWithContentsOfURL:url
 encoding:NSUTF8StringEncoding error:&error];
 // Process the string, creating and autoreleasing more objects.
}
}

Cache Images – Or Not
UIImage *img = [UIImage imageNamed:@"myImage"]; // caching
// or
UIImage *img = [UIImage imageWithContentsOfFile:@"myImage"]; // no caching

Avoid Date Formatters Where Possible
- (NSDate*)dateFromUnixTimestamp:(NSTimeInterval)timestamp {
    return [NSDate dateWithTimeIntervalSince1970:timestamp];
}
Note that many web APIs return timestamps as milliseconds, since it’s very common for Javascript to eventually consume and process this data. Just be aware that you’ll need to divide the timestamp by 1000 before passing it to the dateFromUnixTimestamp method.
 
 
 Use Sprite Sheets possibly reducing tons of large images.
 http://www.raywenderlich.com/32045/how-to-use-animations-and-sprite-sheets-in-cocos2d-2-x
 */