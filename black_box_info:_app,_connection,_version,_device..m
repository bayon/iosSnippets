// black box info: app, connection, version, device.
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 5549FAA9-DE30-47C9-AB19-0B3B2DA23650
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 // black box info: app, connection, version, device.
 1. which software version are you running.
 NSString *appInfo = [NSString stringWithFormat:@"Version %@", [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]];
 NSLog(@"\n appInfo: %@ \n ",appInfo);
 appInfo: Version 1.0
 
 2. which network are you on.( what type of connection )
 NSLog(@"\n network connection type: %u \n ",networkStatus);
 
 if (networkStatus == NotReachable) {
 NSLog(@"\n Network Connection option: NotReachable:%u",networkStatus);
 }
 if (networkStatus == ReachableViaWiFi) {
 NSLog(@"\n Network Connection option: ReachableViaWiFi:%u",networkStatus);
 
 }
 if (networkStatus == ReachableViaWWAN) {
 NSLog(@"\n Network Connection option: ReachableViaWWAN:%u",networkStatus);
 }
 Network Connection option: ReachableViaWiFi:2
 3. which services are you employing.
 // inside a connection delegate method
 NSLog(@"\n NSURL currentRequest: %@ \n ",[connection currentRequest]);
 NSURL currentRequest: <NSMutableURLRequest https://devapi.mocura.com:8733/FMSBackendService/SSL/get_InspectionStart>
 4. which device are you on.
 NSString *deviceName = [[UIDevice currentDevice] name];
 
 Device Name: iPad Simulator
 
 
 
 */
