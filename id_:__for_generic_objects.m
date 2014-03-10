// id :  for generic objects
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 8716A866-6022-4551-B1B5-C4AD88DE0F1D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 // id :  for generic objects
 - (id) copyWithZone:(NSZone *)zone;
 {
 id copy = [[[self class] allocWithZone:zone] initWithBatteryLife:_batteryLife];
 //id objects can NOT use the "." dot syntax, instead use the "setPhoneName" style.//
 [copy setPhoneName: [NSString stringWithFormat:@"Copy of %@", self.phoneName]];
 return copy;
 }*/