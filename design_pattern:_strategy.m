// Design Pattern: Strategy
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: EBA39D36-294A-4735-B425-DBE8AEB6BF5D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Generic
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0


//VC.h

#import <UIKit/UIKit.h>
#import "TacticContext.h"
#import "FootballStrategy.h"

@interface FBFViewController : UIViewController
{
    NSString *team1;
    NSString *team2;
    TacticContext *tacticContext;
}
@property (nonatomic,retain) NSString *team1;
@property (nonatomic,retain) NSString *team2;
@property (nonatomic,retain) TacticContext *tacticContext;

@end


//VC.m

#import "FBFViewController.h"
#import "AttackTactic.h"
#import "DefenceTactic.h"

@interface FBFViewController ()

@end

@implementation FBFViewController
@synthesize  team1, team2, tacticContext;

- (void)viewDidLoad {
	[super viewDidLoad];

	team1 = @"Barcelona";
	team2 = @"Real Madrid";

	tacticContext = [[TacticContext alloc] init];

	AttackTactic *offense = [[AttackTactic alloc]init];
	[tacticContext setStrategy:offense];
	[tacticContext selectTacticForTeam:(team1)];

	DefenceTactic *defence = [[DefenceTactic alloc]init];
	[tacticContext setStrategy:defence];
	[tacticContext selectTacticForTeam:(team2)];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}

@end

//TacticContext.h

#import <Foundation/Foundation.h>
#import "FootballStrategy.h"

@class FootballStrategy;

@interface TacticContext : NSObject{
    FootballStrategy *strategy;
}
@property (nonatomic, retain) FootballStrategy *strategy;

-(void) selectTacticForTeam:(NSString *)team;
-(FootballStrategy *) getStrategy;
-(void) setStrategy:(FootballStrategy *)strategy;

@end


//TacticContext.m

#import "TacticContext.h"

@implementation TacticContext
@synthesize strategy;

-(void) selectTacticForTeam:(NSString *)team{
    [strategy adhereTacticToTeam:team ];
}
-(FootballStrategy *) getStrategy{
    return strategy;
}
-(void)setStrategy:(FootballStrategy *)strgy{
    strategy = strgy;
}

@end


//FootballStrategy.h

#import <Foundation/Foundation.h>

@interface FootballStrategy : NSObject
-(void) adhereTacticToTeam: (NSString *)team;
@end


//FootballStrategy.m

#import "FootballStrategy.h"

@implementation FootballStrategy
-(void) adhereTacticToTeam: (NSString *)team{
    NSLog(@"Strategy: %@ will be using GENERIC strategy? ",team);
}
@end


//AttackStrategy.h

#import <Foundation/Foundation.h>
#import "FootballStrategy.h"

@interface AttackTactic : FootballStrategy
- (void)adhereTacticToTeam:(NSString *)team;
@end


//AttackStrategy.m

#import "AttackTactic.h"

@implementation AttackTactic

- (void)adhereTacticToTeam:(NSString *)team {
	NSLog(@"Strategy: %@ will be playing offense", team);
}

@end


//DefenceStrategy.h

#import <Foundation/Foundation.h>
#import "FootballStrategy.h"

@interface DefenceTactic : FootballStrategy
- (void)adhereTacticToTeam:(NSString *)team;
@end


//DefenceStrategy.m

#import "DefenceTactic.h"

@implementation DefenceTactic

- (void)adhereTacticToTeam:(NSString *)team {
	NSLog(@"Strategy: %@ will be playing defense", team);
}

@end




