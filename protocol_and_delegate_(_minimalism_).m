// Protocol and Delegate ( minimalism )
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: D7549EE0-542F-474B-8C0E-746102EBBE42
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Generic
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
// Protocol and Delegate ( minimalism )
//  SampleProtocol.h
//  ProtocolHell
//
//  Created by David Durik on 5/31/13.
//  Copyright (c) 2013 David Durik. All rights reserved.
//
#import <Foundation/Foundation.h>

// Protocol definition starts here
@protocol SampleProtocolDelegate <NSObject>
    @required
    - (void) processCompleted;
@end
// Protocol Definition ends here

@interface SampleProtocol : NSObject

{
    // Delegate to respond back
    id <SampleProtocolDelegate> _delegate;
    
}
@property (nonatomic,strong) id delegate;

-(void)startSampleProcess; // Instance method

@end

//
//  SampleProtocol.m
//  ProtocolHell
//
//  Created by David Durik on 5/31/13.
//  Copyright (c) 2013 David Durik. All rights reserved.
//

#import "SampleProtocol.h"

@implementation SampleProtocol

-(void)startSampleProcess{
    
    [NSTimer scheduledTimerWithTimeInterval:3.0 target:self.delegate
                                   selector:@selector(processCompleted) userInfo:nil repeats:NO];
}
@end


//
//  ViewController.h
//  ProtocolHell
//
//  Created by David Durik on 5/31/13.
//  Copyright (c) 2013 David Durik. All rights reserved.
//

#import <UIKit/UIKit.h>



#import "SampleProtocol.h"

@interface ViewController : UIViewController <SampleProtocolDelegate>{
    IBOutlet UILabel *myLabel;
}

@end

//
//  ViewController.m
//  ProtocolHell
//
//  Created by David Durik on 5/31/13.
//  Copyright (c) 2013 David Durik. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    SampleProtocol *sampleProtocol = [[SampleProtocol alloc]init];
    sampleProtocol.delegate = self;
    [myLabel setText:@"Processing..."];
    [sampleProtocol startSampleProcess];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Sample protocol delegate
-(void)processCompleted{
    [myLabel setText:@"Process Completed"];
}


@end
*/
