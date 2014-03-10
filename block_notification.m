// Block Notification
// 
//
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: FC608A33-6412-401A-9BF0-BAEE8E18C700
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

 // Block Notification
 
 [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardWillShowNotification
 object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *notif) {
 // Notification-handling code goes here.
 }];
 
