// inheritance prevent wrong class with [self class]
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 160210E3-74BC-4248-9095-CB1F1EACBB39
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 // inheritance prevent wrong class with [self class]
 - (Phone *) copyWithZone:(NSZone *)zone;
 {
 Phone *copy = [[[self class] allocWithZone:zone] initWithBatteryLife:_batteryLife];
 copy.phoneName = [NSString stringWithFormat:@"Copy of %@", self.phoneName];
 return copy;
 }
*/