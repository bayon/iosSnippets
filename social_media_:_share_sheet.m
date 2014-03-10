// Social Media : share sheet
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 77F15CFC-089A-40BF-96D2-97A20C5CCC8E
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*

Social Media : share sheet
 
 // may require Social.Framework  to be added...
 
 //button should call this method
 -(void) share {
    NSString * text = @"Nice Bear!";
    UIImage * image = [UIIMage imageNamed: @"bear.jpg"];
    NSArray * activityItems = @[text,image];
    UIActivityViewController *avc = [[UIActivityViewController alloc]initWithActivityItems: activityItems applicationActivities:nil];
    [self presentViewController: avc animated:YES completion: nil];
 
 }
 // brings up icon of choices like email, facebook, assign to a message, etc...
 
 /// - - - -   SPECIFIC SOCIAL MEDIA
 
 -(IBAction) buttonFB:(id)sender {
 [self messageLine: @"Post message to Face Book"];
 [self share:SLServiceTypeFacebook];
 
 }
 
 -(void) share : (NSString *)serviceType {
 if([SLComposeViewController isAvailableForServiceType:serviceType]){
 SLComposeViewCOntrolelr *slvc = [SLComposeViewCOntroller composeViewControllerForServiceType:serviceType];
 [slvc setInitialText:@"NiceBear!"];
 [slvc addImage:[UIImage imageNamed:@"bear.jpg"]];
 [self presentViewCOntroller: slvc animated:YES completion:nil];
 
 
 }
 
 }


*/