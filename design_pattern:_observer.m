// Design Pattern: Observer
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: FFC458DA-D600-4C17-8933-4A4018AD34A1
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Generic
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

//ObserverPattern

// VC.h

#import <UIKit/UIKit.h>

@interface FBFViewController : UIViewController

@end


//VC.m

#import "FBFViewController.h"


#import "Subject.h"
#import "Observer.h"
#import "ObserverX.h"


@interface FBFViewController ()

@end

@implementation FBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Subject *sub = [[Subject alloc]init];
    Observer *obs = [[Observer alloc]init];
    ObserverX *obsX = [[ObserverX alloc]init];
    
    [sub attach:obs];
    [sub attach:obsX];
    
    [sub postMessage:@"foo"];
    [sub postMessage:@"gone"];
    // DUPLICATE ARE PREVENTED: [sub attach:obsX];
    // Works[sub remove:obsX];
    [sub postMessage:@"wild"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end

// Subject.h
#import <Foundation/Foundation.h>

@interface Subject : NSObject

@property (nonatomic, retain) NSMutableArray *observers;

- (void)postMessage:(NSString *)message;
- (void)attach:(id)sender;
- (void)remove:(id)sender;

@end


//Subject.m

#import "Subject.h"
#import "ObserverInterface.h"

@implementation Subject
@synthesize observers;
- (id)init
{
    self = [super init];
    if (self) {
        observers = [[NSMutableArray alloc]init];
    }
    return self;
}
-(void)attach:(id)sender{
     ObserverInterface *obi = (ObserverInterface*)sender;
    if(![observers containsObject:obi])
    {
    [observers addObject:obi];
     NSLog(@"\n ATTACHING observer named: %@",obi.name);
    }else{
        NSLog(@"ALREADY AN OBSERVER");
    }
}
-(void)remove:(id)sender{
    ObserverInterface *obi = (ObserverInterface*)sender;
    [observers removeObject:obi];
}
-(void)postMessage:(NSString *)message{
     for(ObserverInterface * obi in observers){
         [obi update:message];
    }
}

@end


//ObserverInterface.h
#import <Foundation/Foundation.h>

@interface ObserverInterface : NSObject
{
	NSString *name;
}

@property (nonatomic, retain) NSString *name;

- (void)update:(NSString *)message;
@end


//ObserverInterface.m
#import "ObserverInterface.h"

@implementation ObserverInterface
@synthesize name;
- (id)init
{
    self = [super init];
    if (self) {
        self.name = @"unnamed";
    }
    return self;
}
-(void)update:(NSString *)message{
    
    NSLog(@"updated %@ with message %@",self.name,message);
}
@end

// BasicObserver.h
#import <Foundation/Foundation.h>
#import "ObserverInterface.h"

@interface Observer : ObserverInterface

@end


//BasicObserver.m
#import "Observer.h"

@implementation Observer
- (id)init
{
    self = [super init];
    if (self) {
         self.name=@"Generic Observer 1";
    }
    return self;
}

@end






