// NSCopying Protocol
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 6B3945AF-2E95-4FB9-8E2E-6CD58E7943B7
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 // NSCopying Protocol
 <NSCopying>
 - (Phone *) copyWithZone:(NSZone *)zone;
 {
 Phone *copy = [[Phone allocWithZone:zone] init];
 return copy;
 }
 
 //example usage
 Phone *talkingiPhone = [[Phone alloc] init];
 talkingiPhone.phoneName = @"Mr. Higgie";
 [talkingiPhone decreaseBatteryLife:@5];
 
 Phone *copy = [talkingiPhone copy];
 [copy reportBatteryLife];
*/