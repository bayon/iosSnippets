// Multiple Gesture Recognition
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 8900034D-1A25-4CC3-B593-38B88FE93CAA
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 // Multiple Gesture Recognition
 
 UITapGestureRecognizer *oneTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTapGestureOnAnimal:)];
 oneTap.numberOfTapsRequired = 1;
 [oneTap requireGestureRecognizerToFail:doubleTap];
 [oneTap requireGestureRecognizerToFail:tripleTap];
 
 UITapGestureRecognizer *doubleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleDoubleTapGestureOnAnimal:)];
 doubleTap.numberOfTapsRequired = 2;
 [doubleTap requireGestureRecognizerToFail:oneTap];
 [doubleTap requireGestureRecognizerToFail:tripleTap];
 
 UITapGestureRecognizer* tripleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTripleTapGestureOnAnimal:)];
 tripleTap.numberOfTapsRequired = 3;
 [tripleTap requireGestureRecognizerToFail:doubleTap];
 
 [self addGestureRecognizer:oneTap];
 [self addGestureRecognizer:doubleTap];
 [self addGestureRecognizer:tripleTap];
 

 */