// Design Pattern: Decorator
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 6028A6B9-E92A-4C93-A0D4-E9EFC9F99254
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Generic
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//Design Pattern: Decorator


//VC.h

//VC.m

#import "FBFViewController.h"

#import "Icecream.h"
#import "SimpleIcecream.h"
#import "NuttyDecorator.h"
#import "HoneyDecorator.h"

@interface FBFViewController ()

@end

@implementation FBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    /*
     
     Icecream is an interface that declares a method makeIceCream that returns a string.
     SimpleIcecream implements Icecream and overrides uses the makeIcecream method to retuen a string describing itself.
     
     IcecreamDecorator is the "head decorator" that implements Icecream and in addition to implementing Icecream methods, it has a constructor
     that accepts an Icecream object and stores it as a property.
     
     NuttyDecorator extends IcecreamDecorator and overrides its makeIcecream method and adds additional functionality via more custom methods.
     And the HoneyDecorator does the same thing that the NUtyDecorator does.
     
     When the ultimate icecream is created below, it displays the results from inner parenthesis outward.
     */
    
    Icecream *icecream = [[ HoneyDecorator alloc] initWithIcecream: [[NuttyDecorator alloc]initWithIcecream:[[SimpleIcecream alloc]init]]];
    
    
    
    NSLog(@"%@",icecream.makeIcecream);
 }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

@end

//Icecream.h

#import <Foundation/Foundation.h>

@interface Icecream : NSObject
-(NSString *) makeIcecream;
@end


//Icecream.m

#import "Icecream.h"

@implementation Icecream
-(NSString *) makeIcecream{
    return @"nothing";
}
@end



//SimpleIcecream.h

#import <Foundation/Foundation.h>
#import "Icecream.h"

@interface SimpleIcecream : Icecream
 

@end


// SimpleIcecream.m

#import "SimpleIcecream.h"

@implementation SimpleIcecream
-(NSString *) makeIcecream{
    return @"Simple Icecream";
}
@end



//IcecreamDecorator.h

#import <Foundation/Foundation.h>
#import "Icecream.h"

// should be an abstract class ?
@interface IcecreamDecorator : Icecream
{
    Icecream *specialIcecream;
}
@property (nonatomic, retain) Icecream *specialIcecream;
@end


//IcecreamDecorator.m

#import "IcecreamDecorator.h"

@implementation IcecreamDecorator
@synthesize specialIcecream;
- (id)initWithIcecream:(Icecream *)icecream
{
    self = [super init];
    if (self) {
        self.specialIcecream =icecream;
    }
    return self;
}
-(NSString *)makeIcecream{
    return [specialIcecream makeIcecream];
}
@end


//HoneyDecorator.h

#import <Foundation/Foundation.h>
#import "IcecreamDecorator.h"
#import "Icecream.h"

@interface HoneyDecorator : IcecreamDecorator
- (id)initWithIcecream:(Icecream *)icecream;
@end

//HoneyDecorator.m

#import "HoneyDecorator.h"

@implementation HoneyDecorator
- (id)initWithIcecream:(Icecream *)icecream
{
    self = [super init];
    if (self) {
        super.specialIcecream = icecream;
    }
    return self;
}

-(NSString *)makeIcecream{
    NSString *givenIcecream = [specialIcecream makeIcecream];
    NSString *changedIcecream = [self addHoney];
    NSString *processedIcecream = [NSString stringWithFormat:@"%@ %@",givenIcecream, changedIcecream];
    return processedIcecream;
}

-(NSString *)addHoney{
    return @" + HONEY";
}
@end


//NutsDecorator.h

#import <Foundation/Foundation.h>
#import "IcecreamDecorator.h"
#import "Icecream.h"

@interface NuttyDecorator : IcecreamDecorator
- (id)initWithIcecream:(Icecream *)icecream;
@end


//NutsDecorator.m

#import "NuttyDecorator.h"

@implementation NuttyDecorator
- (id)initWithIcecream:(Icecream *)icecream
{
    self = [super init];
    if (self) {
        super.specialIcecream = icecream;
    }
    return self;
}

-(NSString *)makeIcecream{
    NSString *givenIcecream = [specialIcecream makeIcecream];
    NSString *changedIcecream = [self addNuts];
    NSString *processedIcecream = [NSString stringWithFormat:@"%@ %@",givenIcecream, changedIcecream];
    return processedIcecream;
}

-(NSString *)addNuts{
    return @" + NUTS";
}
@end

