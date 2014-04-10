// HTTP LIVE STREAMING VIDEO
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 8495B18F-5C42-4B5E-A45B-3C4D5B755115
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Generic
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
HTTP LIVE STREAMING
------------------------------------------------------------

PREPARATION:
	1) download Apple Media Tools
	2)The Media File Segmenter (mediafilesegmenter) divides a .mov, .mp4, .m4v, .m4a, or .mp3 file into small media segments and creates an index file.

            On the command line, type something like this: mediafilesegmenter movie.mp4.

	3) configure MIME types in apache's httpd.conf
    
    4) install on server
    
    5) code to receive on the web
    
    6) code to receive on device
------------------------------------------------------------
 *example of mediafilesegmenter result in terminal.

Bayon-Forte:00_movies BForte$ mediafilesegmenter -t 10 stream1polarBear.ts
Apr  9 2014 17:05:01.251: Using floating point is not backward compatible to iOS 4.1 or earlier devices
Apr  9 2014 17:05:01.252: Processing file /Users/BForte/Desktop/00_movies/stream1polarBear.ts
Apr  9 2014 17:05:01.279: Invalid media type, track 1
Apr  9 2014 17:05:01.294: Finalized fileSequence0.mp3
Apr  9 2014 17:05:01.294: segment bitrate 191.76 kbits/sec is new max
Apr  9 2014 17:05:01.310: Finalized fileSequence1.mp3
Apr  9 2014 17:05:01.310: segment bitrate 192.06 kbits/sec is new max
Apr  9 2014 17:05:01.325: Finalized fileSequence2.mp3
Apr  9 2014 17:05:01.327: Finalized fileSequence3.mp3
Apr  9 2014 17:05:01.327: segment bitrate 192.49 kbits/sec is new max
Apr  9 2014 17:05:01.327: average bit rate is 299.30 kbits/sec - max file bit rate is 192.49 kbits/sec
Bayon-Forte:00_movies BForte$


*MIME TYPES TO CONFIGURE:
either/or   apache/httpd.conf  or .htaccess

# For HTTP LIVE STREAMING
AddType application/x-mpegURL .m3u8
AddType video/MP2T .ts
AddType audio/MPEG3 .mp3
AddType audio/aac .aac
AddType audio/mpeg4 .m4a
AddType video/mpeg4 .m4v, .mp4
------------------------------------------------------------


// WEBSERVER:
1) load all your .ts file sequences
2) load your prog_index.m3u8 file

------------------------------------------------------------

// WEB DIGESTION:

<video width="320" height="240" controls>
  <source src="http://172.16.100.100/VideoStreaming/attempt2/prog_index.m3u8" type="video/mp4">
  
  Your browser does not support the video tag.
</video>

/*
   HTTP LIVE STREAMING NOTES:
   /////////      FIREFOX/ CHROME  ??? ///////////
    forteworks to firefox: NO
    forteworks to chrome: NO
    localhost to chrome: NO
    localhost to Firefox: NO
   /////////      FIREFOX/ CHROME  ??? ///////////
*/
------------------------------------------------------------

// OBJECTIVE-C DIGESTION:
.h
#import <UIKit/UIKit.h>

@interface FBFViewController : UIViewController

- (void)moviePlayBackDidFinish:(NSNotification *)notification;
- (void)movieScalingModeDidFinish:(NSNotification *)notification;
@end

.m

#import "FBFViewController.h"
#import <MediaPlayer/MediaPlayer.h>
@interface FBFViewController ()
@property (strong, nonatomic) MPMoviePlayerController *streamPlayer;
@end

@implementation FBFViewController


- (void)viewDidLoad {
	[super viewDidLoad];

	NSLog(@"\n F I L E -> F U N C T I O N : \n %s \n", __FUNCTION__);
	NSString *pathWorkMacLocal = @"http://172.16.100.100/VideoStreaming/attempt2/prog_index.m3u8";
	NSString *pathForteworks = @"http://www.forteworks.com/vid_stream/prog_index.m3u8";

	NSString *path = pathWorkMacLocal;

	// Do any additional setup after loading the view, typically from a nib.
	NSURL *streamURL = [NSURL URLWithString:path];

	_streamPlayer = [[MPMoviePlayerController alloc] initWithContentURL:streamURL];

	// depending on your implementation your view may not have it's bounds set here
	// in that case consider calling the following 4 msgs later
	[self.streamPlayer.view setFrame:self.view.bounds];

	self.streamPlayer.controlStyle = MPMovieControlStyleEmbedded;

	[self.view addSubview:self.streamPlayer.view];

	[self.streamPlayer play];
}

- (void)moviePlayBackDidFinish:(NSNotification *)notification {
}

- (void)movieScalingModeDidFinish:(NSNotification *)notification {
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end





