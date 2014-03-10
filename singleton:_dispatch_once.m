// singleton: dispatch_once
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 5977119C-547C-4024-B8B3-0BC01D3C9C3B
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
+ (CoreDataManager *)sharedInstance {
    static CoreDataManager *sharedInstance = nil;
    static dispatch_once_t onceToken;

    dispatch_once(&onceToken, ^{
        sharedInstance = [[CoreDataManager alloc] init];
        // Do any other initialisation stuff here
    });
    return sharedInstance;
}
