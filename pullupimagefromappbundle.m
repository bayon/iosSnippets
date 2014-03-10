// pullUpImageFromAppBundle
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 5AA453CC-3ECD-4513-9993-E1BE87805D03
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// load an image from the app bundle
-(void)pullUpImageFromAppBundle{
    NSLog(@"\n FILE->FUNCTION: %s",__FUNCTION__);
    
    myUIImage = [self loadImage: @"logo-fazolis.jpg"];
    
    //correct way to get a file path in the app bundle
    NSString *pathString = [[NSBundle mainBundle] pathForResource:@"logo-fazolis" ofType:@"jpg"];
    
    NSLog(@"\n pathString: %@",pathString); 
    
    NSFileManager *fileManager = [[NSFileManager alloc] init];
    NSDictionary *attrs = [fileManager attributesOfItemAtPath:pathString error: NULL];
    
    //NSLog(@"\n imagePath: %@",pathString); 
    int result = [attrs fileSize];
    NSLog(@"fileSize: %d",result);
    
   
}
