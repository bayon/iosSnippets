// downloadImageFromURL
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: B916551A-ABF4-46EC-A623-D8CCD4A49E34
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// downloadImageFromURL
-(void)downloadImageFromURL{
    NSLog(@"\n FILE->FUNCTION: %s",__FUNCTION__);
    NSString *stringURL = @"http://www.forteworks.com/logo-fazolis.jpg";
    NSURL  *url = [NSURL URLWithString:stringURL];
    NSData *urlData = [NSData dataWithContentsOfURL:url];
    if ( urlData )
    {
        NSArray       *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString  *documentsDirectory = [paths objectAtIndex:0];  
        NSString  *filePath = [NSString stringWithFormat:@"%@/%@", documentsDirectory,@"logo-fazolis.jpg"];
        [urlData writeToFile:filePath atomically:YES];
        NSLog(@"OK");
    }
    [self loadImage:@"logo-fazolis.jpg"];
    [self loadSubViewWithImage:@"logo-fazolis.jpg"];
    
}