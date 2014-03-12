// Design Pattern : Factory 
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 3F2FABFB-2346-4F73-9322-58EAF23A33F1
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Generic
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// Design Pattern : Factory

//VC.h


//VC.m

#import "FBFViewController.h"
#import "LaughFactory.h"

@interface FBFViewController ()

@end

@implementation FBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    LaughFactory *laugh = [[LaughFactory alloc]initWithLaughter:3];
    [laugh laugh];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end


//LaughFactory.h

#import <Foundation/Foundation.h>

#define kLaughWithGuffaw  1
#define kLaughWithGiggle  2
#define kLaughWithSnicker  3

@interface LaughFactory : NSObject

- (LaughFactory *) initWithLaughter:(NSUInteger) laughterType;

- (void) laugh;

@end


//LaughFactory.m

#import "LaughFactory.h"

@interface Guffaws : LaughFactory {}
- (void)laugh;
@end

@interface Giggles : LaughFactory {}
- (void)laugh;
@end

@interface Snicker : LaughFactory {}
- (void)laugh;
@end

@implementation LaughFactory

- (LaughFactory *)initWithLaughter:(NSUInteger)laughterType {
	id instanceReturn = nil;

	if (laughterType == kLaughWithGuffaw)
		instanceReturn = [[Guffaws alloc]init];
	else if (laughterType == kLaughWithGiggle)
		instanceReturn = [[Giggles alloc]init];
    else if (laughterType == kLaughWithSnicker)
		instanceReturn = [[Snicker alloc]init];
	else
		; // deal with this
	return instanceReturn;
}

- (void)laugh {
	NSLog(@"Humbug");
}

@end


@implementation Guffaws
- (void)laugh {
	NSLog(@"OH HA HA HOWAH HA HA HA");
}

@end

@implementation Giggles
- (void)laugh {
	NSLog(@"Tee hee");
}
@end

@implementation Snicker
- (void)laugh {
	NSLog(@"ttttttssssssssss");
}

@end

