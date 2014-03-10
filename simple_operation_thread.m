// simple operation thread
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: E394B4EC-EEBA-4510-8C31-3B2985A1D2DA
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//simple operation thread
- (void) callOperation {
    //Quick:Directions
    // NSMutableArray *array;
    //@property (nonatomic,retain)  NSMutableArray *array;
    //[self callOperation]; call from a method like viewDidLoad
    
	NSOperationQueue *queue = [NSOperationQueue new];
	NSInvocationOperation *operation = [[NSInvocationOperation alloc] initWithTarget:self
																			selector:@selector(doOperation)
																			  object:nil];
	[queue addOperation:operation];
    
}
- (void) doOperation {
    array = [[NSMutableArray alloc] initWithCapacity:10000];
	[array addObject:@"1"];
    [array  addObject:@"2"];
    [array  addObject:@"3"];
    [array  addObject:@"4"];
    
    [self performSelectorOnMainThread:@selector(fooBar) withObject:nil waitUntilDone:YES];
}

-(void)fooBar{
    NSLog(@"%@",array );
}
