// unit test : example test file
// 
//
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: DD29DA63-DA16-4D42-9EAD-10DCE8C729D6
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//
//  Music_SearchTests.m
//  Music SearchTests
//
//  Created by Bayon Forte on 12/19/13.
//  Copyright (c) 2013 Mocura. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import "FBFAppDelegate.h"
#import "FBFViewController.h"
#import "MusicModel.h"
#import "AsyncNetwork.h"
#import "MusicCell.h"


/**
   This class is a unit test class that ...
    -Standard XCTest for all service, model, and view classes
    -Test classes using OC Mock for server response
 */

@interface Music_SearchTests : XCTestCase {
	id mock;
	FBFAppDelegate *appDelegate;
	MusicModel *musicModel;
	//Reachability *reachability;
	AsyncNetwork *asyncNetwork;
	FBFViewController *view;
	MusicCell *musicCell;
}

@end

@implementation Music_SearchTests
//(NSURLConnectionDelegate)
- (void)setUp {
	[super setUp];

	mock = [OCMockObject mockForClass:[NSString class]];
	appDelegate = [[UIApplication sharedApplication]delegate];
	musicModel = [[MusicModel alloc]init];
	asyncNetwork = [[AsyncNetwork alloc]init];
	view = [[FBFViewController alloc]init];
	musicCell = [[MusicCell alloc]init];
}

- (void)tearDown {
	appDelegate = nil;
	musicModel = nil;
	asyncNetwork = nil;


	[super tearDown];
}

- (void)testAcceptsStubbedMethod {
	[[mock stub] lowercaseString];
	[mock lowercaseString];
}

#pragma mark - Standard XCTest for all service, model, and view classes.
- (void)testAppDelegate {
	XCTAssertNotNil(appDelegate, @"Cannot find the application delegate");
}

- (void)testMusicModel {
	XCTAssertNotNil(musicModel, @"Cannot find the MusicModel");
}

- (void)testAsyncNetwork {
	XCTAssertNotNil(asyncNetwork, @"AsyncNetwork missing");
}

- (void)testFBFViewController {
	XCTAssertNotNil(view, @"FBFViewCOntroller is nil");
}

- (void)testMusicCell {
	XCTAssertNotNil(musicCell, @"MusicCell is nil");
}

#pragma mark - Test classes using OC Mock for server response
- (void)testServiceResponse {
	id mockDictionary = [OCMockObject mockForClass:[asyncNetwork class]];
	[[[mockDictionary stub] andReturn:@[@"a", @"aa", @"aaa"]] load:[OCMArg any]];
	NSMutableArray *arrayResponse = [mockDictionary load:@"a"];
	int resultCount = (int)[arrayResponse count];
	// Verify that the object being tested returns the appropriate data
	XCTAssertEqual(3, resultCount, @"Array should contain three elements");
}

@end
