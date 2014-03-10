// Messaging SMS :
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 39E24BAC-D814-46B1-B945-D8B70512EEA3
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
Messaging SMS :
 MessageUI.Framework
 
 #import <MessageUI/...
 
 -(void) sendMessage {
    static NSString *recipientPhoneNumber = @"555-1212";
    if([MFMessageComposeViewController canSendText]){
        MFMessageComposeViewController *mvc = [[MFMessageComposeViewController alloc]init];
 mvc.recipients = @[recipientPhoneNumber];
    mvc.body = _message.text; // from text field 
    mvc.messageComposeDelegate = self; 
    [self presentViewController : mvc andimated:YES completion: nil];
 
 
        }else{
 
            _status.text = @"Device does not support text messages.";
        }
 
 }
 
 // need the delegate method: messageComposeViewController........
 
 
 
 
*/