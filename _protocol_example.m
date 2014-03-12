//  PROTOCOL EXAMPLE
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 8894339F-A0B7-4D13-A5FB-2E92F439EB65
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 PROTOCOL EXAMPLE
 .h
 
 #import <Foundation/Foundation.h>
 
 @protocol SampleProtocolDelegate <NSObject>
 @required
 - (void) processCompleted;
 @end
 
 @interface SampleProtocol : NSObject
 {
 
 id <SampleProtocolDelegate> _delegate;
 
 }
 @property (nonatomic,strong) id delegate;
 
 -(void)startSampleProcess; // Instance method
 
 @end

.m
 
 #import "SampleProtocol.h"
 
 @implementation SampleProtocol
 -(void)startSampleProcess{
 
 [NSTimer scheduledTimerWithTimeInterval:3.0 target:self.delegate
 selector:@selector(processCompleted) userInfo:nil repeats:NO];
 }
 @end

 .h
 
 #import <Foundation/Foundation.h>
 #import "SampleProtocol.h"
 
 @interface InterfaceProtocolUser : UIViewController <SampleProtocolDelegate>
 
 @end

 
 .m
 
 #import "InterfaceProtocolUser.h"
 
 @implementation InterfaceProtocolUser
 
 
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 SampleProtocol *sampleProtocol = [[SampleProtocol alloc]init];
 sampleProtocol.delegate = self;
 //[myLabel setText:@"Processing..."];
 NSLog(@"\nProcessing.....");
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
 //[myLabel setText:@"Process Completed"];
 NSLog(@"\nProcessing.....COMPLETED.");
 }
 
 
 @end

 
*/