// Protocol and Delegate 10 Steps
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 2915219F-F4C0-4D94-80FC-437E1D2FE232
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Generic
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*

 
 
Protocol and Delegate 10 Steps
 
 
 > create a single view project.
 
//
//  SampleProtocol.h
//  00_Protocol
//
//  Created by David Durik on 5/31/13.
//  Copyright (c) 2013 David Durik. All rights reserved.
//

#import <Foundation/Foundation.h>
//1
@protocol SampleProtocolDelegate <NSObject>
    @required
-(void)processCompleted;
@end

@interface SampleProtocol : NSObject
//2
{
    // delegate to respond back
    id<SampleProtocolDelegate> _delegate;
}
//3
@property (nonatomic,strong) id delegate;

//4
-(void)startSampleProcess; // instance method

@end

*/


/*

//
//  SampleProtocol.m
//  00_Protocol
//
//  Created by David Durik on 5/31/13.
//  Copyright (c) 2013 David Durik. All rights reserved.
//

#import "SampleProtocol.h"

@implementation SampleProtocol
//5
-(void)startSampleProcess{
    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self.delegate selector:@selector(processCompleted) userInfo:nil repeats:NO ];
}
@end

*/


/*

//
//  ViewController.h
//  00_Protocol
//
//  Created by David Durik on 5/31/13.
//  Copyright (c) 2013 David Durik. All rights reserved.
//

#import <UIKit/UIKit.h>
 
//6
#import "SampleProtocol.h"

//7 
@interface ViewController : UIViewController  <SampleProtocolDelegate>
{
    //8
    UILabel *label_1;
}

@end
 
*/

/*
//
//  ViewController.m
//  00_Protocol
//
//  Created by David Durik on 5/31/13.
//  Copyright (c) 2013 David Durik. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //8.5
    label_1 = [[UILabel alloc] initWithFrame:CGRectMake(100, 150, 300, 50)];
    label_1.backgroundColor = [UIColor clearColor];
    [label_1 setText:@"...loading..."];
    [self.view addSubview:label_1];

    
    //9
    SampleProtocol *sampleProtocol = [[SampleProtocol alloc]init]   ;
    sampleProtocol.delegate = self;
    [label_1 setText:@"Processing..."];
    [sampleProtocol startSampleProcess];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//10
#pragma mark - Sample Protocol's Delegate Methods
-(void)processCompleted{
    [label_1 setText:@"You protocol-ed it boy!"];
}


@end

*/
