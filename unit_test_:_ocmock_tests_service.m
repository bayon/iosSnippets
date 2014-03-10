// unit test : ocmock tests service
// 
//
// IDECodeSnippetCompletionScopes: [Preprocessor]
// IDECodeSnippetIdentifier: ED3883DD-04D6-44ED-94C9-BCE77D291BB7
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (void)testServiceResponse {
	id mockDictionary = [OCMockObject mockForClass:[asyncNetwork class]];
	[[[mockDictionary stub] andReturn:@[@"a", @"aa", @"aaa"]] load:[OCMArg any]];
	NSMutableArray *arrayResponse = [mockDictionary load:@"a"];
	int resultCount = (int)[arrayResponse count];
	// Verify that the object being tested returns the appropriate data
	XCTAssertEqual(3, resultCount, @"Array should contain three elements");
}