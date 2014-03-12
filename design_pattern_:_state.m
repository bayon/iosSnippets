// design pattern : State
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: DDD7C455-E444-4F95-A2AF-772F04E25573
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Generic
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0

// State Design Pattern
//VC.h

#import <UIKit/UIKit.h>

@interface FBFViewController : UIViewController

@end

//VC.m

#import "FBFViewController.h"
#import "SeasonContext.h"


@interface FBFViewController ()

@end

@implementation FBFViewController

- (void)viewDidLoad
{
   
    [super viewDidLoad];
    /*
     * State - Allow an object to alter it’s behavior when it’s internal state changes. The object will appear to change it’s class.
     */
    
    /*
     * SeasonContext, a class that contains a "Season" class and has a constructor that accepts a "Season" as a parameter. It can "set" the season and
     * describe the season.
     *
     * Season, is an INTERFACE that accepts a context as a parameter.
     *
     * All the various seasons implement the Season constructor, and using its context, sets the next season after declaring itself the season in text.
     */
    
    SeasonContext *seasonContext = [[SeasonContext alloc]init];
    [seasonContext whatIsTheSeason];
    [seasonContext whatIsTheSeason];
    [seasonContext whatIsTheSeason];
    [seasonContext whatIsTheSeason];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


//SeasonContext.h

#import <Foundation/Foundation.h>
#import "Season.h"
@class Season;

@interface SeasonContext : NSObject
{
    Season *season;
}
@property (nonatomic, retain) Season *season;
-(void) whatIsTheSeason;

@end


// SeasonContext.m

#import "SeasonContext.h"
#import "Winter.h"

@implementation SeasonContext

@synthesize season = _season;

- (id)init
{
    self = [super init];
    if (self) {
        self.season = [[Winter alloc]init];
    }
    return self;
}
-(void)setSeason:(Season *)seasonToSet{
    _season = seasonToSet;
}

-(void) whatIsTheSeason{
    [_season theSeason:self];
     
    //NSLog(@"The season is your face.");
    
    
}
@end


//Season.h

#import <Foundation/Foundation.h>
#import "SeasonContext.h"
@class SeasonContext;

@interface Season : NSObject
{
    SeasonContext *context;
}
@property (nonatomic, retain) SeasonContext *context;
-(void) theSeason:(SeasonContext *)ctx;
@end


//Season.m
#import "Season.h"


@implementation Season
@synthesize context;

- (id)initWith:(SeasonContext *)ctx
{
    self = [super init];
    if (self) {
        self.context = ctx;
    }
    return self;
}

-(void) theSeason:(SeasonContext *)ctx{
    self.context = ctx;
}

@end


//Winter.h

#import <Foundation/Foundation.h>
#import "Season.h"

@interface Winter : Season
-(void)theSeason:(SeasonContext *)context;
@end


//Winter.m

#import "Winter.h"
#import "Spring.h"
@class Spring;

@implementation Winter
-(void)theSeason:(SeasonContext *)context{
    NSLog(@"SEASON: is Winter");
    [context setSeason:[[Spring alloc]init]];
}
@end


//Spring.h

#import <Foundation/Foundation.h>
#import "Season.h"

@interface Spring : Season
-(void)theSeason:(SeasonContext *)context;
@end



//Spring.m

#import "Spring.h"
#import "Summer.h"
@class Summer;

@implementation Spring

-(void)theSeason:(SeasonContext *)context{
    NSLog(@"SEASON: is Spring");
    [context setSeason:[[Summer alloc]init]];
}

@end


// etc etc etc.....



