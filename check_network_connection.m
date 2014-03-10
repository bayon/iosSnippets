// Check Network Connection
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 9ECB559E-693A-4B0F-B5F2-358B1C28FE80
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 
 //Required Framework: 
 //#import <SystemConfiguration/SystemConfiguration.h>
 // Check Network Connection
 // REQUIRES: #import "Reachability.h"
 
 //web service
 Reachability *reachability;
 @property (nonatomic, retain) Reachability *reachability;
 @synthesize      reachability;
 
 
 
 Reachability *networkReachability = [Reachability reachabilityForInternetConnection];
 NetworkStatus networkStatus = [networkReachability currentReachabilityStatus];
 if (networkStatus == NotReachable) {
     //NO NETWORK
 }
 else
 {
    //YES NETWORK
 }
 
 
 
 
 if (networkStatus == NotReachable) {
 NSLog(@"\n Network Connection option: NotReachable:%u",networkStatus);
 }
 if (networkStatus == ReachableViaWiFi) {
 NSLog(@"\n Network Connection option: ReachableViaWiFi:%u",networkStatus);
 
 }
 if (networkStatus == ReachableViaWWAN) {
 NSLog(@"\n Network Connection option: ReachableViaWWAN:%u",networkStatus);
 }
 */