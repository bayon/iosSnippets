// Operation Thread
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: D4D91A61-8114-4809-9C8A-4AD58F83E55B
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//Operation Thread
//.h NSMutableArray *array;
//.h @property (nonatomic, retain) NSMutableArray *array;
//.m @synthesize array;
/*
- (void)viewDidLoad {
    [super viewDidLoad];
     array = [[NSMutableArray alloc] initWithCapacity:10000];
    [self loadData];
}

- (void) loadData {
	NSOperationQueue *queue = [NSOperationQueue new];
	NSInvocationOperation *operation = [[NSInvocationOperation alloc] initWithTarget:self 
																			selector:@selector(loadDataWithOperation) 
																			  object:nil];
	[queue addOperation:operation];
	 
}

- (void) loadDataWithOperation {
	[self.array addObject:@"1"];
    [self.array addObject:@"2"];
    [self.array addObject:@"3"];
    [self.array addObject:@"4"];
    
    [self performSelectorOnMainThread:@selector(fooBar) withObject:nil waitUntilDone:YES];
}
-(void)fooBar{
    NSLog(@"%@",self.array);
}
*/