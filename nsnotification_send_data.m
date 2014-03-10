// NSNotification send data
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: F57BEB3E-5469-4E8C-93A1-2375BD5FC755
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*An NSNotification has a property called userInfo that is an NSDictionary. The object is the NSObject that is posting the NSNotification. So usually I use self for the object when I'm setting up the NSNotification because self is the NSObject sending the NSNotification. If you wish to pass an NSArray using an NSNotification I would do the following:
 
 NSArray *myArray = ....;
 NSDictionary *theInfo = [NSDictionary dictionaryWithObjectsAndKeys:myArray,@"myArray", nil];
 [[NSNotificationCenter defaultCenter] postNotificationName:@"reloadData" object:self userInfo:theInfo];
 
 And then catch it using the following:
 
 [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(doTheReload:) name:@"reloadData" object:sendingObject];
 
 where sendingObject is the object that is sending the NSNotification.
 
 Finally, decode the array in doTheReload: using:
NSArray  *theArray = [[notification userInfo] objectForKey:@"myArray"];

*/