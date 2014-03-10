// network async connection : example
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 132D4864-DA99-4E84-8229-00D8EB6D941E
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Generic
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//
//  AsyncNetwork.m
//  Music Search
//
//  Created by Bayon Forte on 1/13/14.
//  Copyright (c) 2014 Mocura. All rights reserved.
//

#import "AsyncNetwork.h"
#import "Constants.h"
#import "MusicModel.h"

@interface AsyncNetwork () {
	NSURLConnection *connection;
	NSMutableData *responseData;
}

@property (nonatomic, retain) NSMutableData *responseData;
@property (nonatomic, retain) NSURLConnection *connection;
@property (nonatomic) int spaceIndex;

@end

@implementation AsyncNetwork
@synthesize connection, responseData, spaceIndex;

- (void)load:(NSString *)searchTerm {
	searchTerm = [searchTerm stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
	searchTerm = [searchTerm stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
	NSURL *myURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://ws.spotify.com/search/1/album.json?q=%@", searchTerm]];
	NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:myURL cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:60];
	connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
}

#pragma mark - NSURL Delegate Methods

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
	responseData = [[NSMutableData alloc] init];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
	[responseData appendData:data];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
	[[NSNotificationCenter defaultCenter] postNotificationName:kNotifyFail object:nil];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
	if (responseData != nil) {
		[self parseResponseData:responseData];
	}
	else {
		[[NSNotificationCenter defaultCenter] postNotificationName:kNotifyFail object:nil];
	}
}

#pragma mark - Parse Dictionary


- (void)parseResponseData:(NSMutableData *)mutableResponseData {
	@try {
		NSError *e;
		NSDictionary *dictionaryOfJsonFromResponseData =
        [NSJSONSerialization JSONObjectWithData:mutableResponseData
        options:NSJSONReadingMutableContainers
        error:&e];
        
		NSMutableArray *arrayOfAlbums = dictionaryOfJsonFromResponseData[@"albums"];
        
		NSMutableArray *arrayOfMusicModels = [[NSMutableArray alloc] init];
        
		for (NSDictionary *dict in arrayOfAlbums) {
			MusicModel *musicModel = [[MusicModel alloc] initWithJsonDictionary:dict];
			[arrayOfMusicModels addObject:musicModel];
		}
        
		NSDictionary *dictionaryOfMusicModels = @{ kArrayOfMusicModels : arrayOfMusicModels };
        
		[[NSNotificationCenter defaultCenter] postNotificationName:kNotifySuccess object:self userInfo:dictionaryOfMusicModels];
	}
	@catch (NSException *exception)
	{
		[[NSNotificationCenter defaultCenter] postNotificationName:kNotifyFail object:nil];
	}
}

@end


/////AND THE MODEL THAT IT CALLS
//
//  MusicModel.m
//  Music Search
//
//  Created by Bayon Forte on 12/19/13.
//  Copyright (c) 2013 Mocura. All rights reserved.
//

#import "MusicModel.h"

@implementation MusicModel
@synthesize album, artist, popularity;

- (id)initWithJsonDictionary:(NSDictionary *)dict {
	self = [super init];
	if (self) {
        
        self.album = dict[@"name"];
        
        self.popularity = dict[@"popularity"];
        
		NSArray *artists        = dict[@"artists"];
		NSDictionary *artists0  = artists[0];
		NSString *artistName = artists0[@"name"];
		self.artist = artistName;
	}
    
	return self;
}

@end




