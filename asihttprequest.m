// ASIHTTPRequest
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: D52ED7E5-D01A-479D-9A69-E6A3C48EB683
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //ASIHTTPRequest
 //pokeb-asi-http-request-3ed0b3c
 
 If you don’t have ASIHTTPRequest already, first download it. Once you have it downloaded, right click your ImageGrabber project entry in groups and files, select New Group, and name the new group ASIHTTPRequest. Then drag all of the files from the ASIHTTPRequest\Classes directory (ASIAuthenticationDialog.h and several others, but IMPORTANT! don’t add the subfolders such as ASIWebPageRequest, CloudFiles, S3, and Tests.) into the new ASIHTTPRequest group. Make sure “Copy items into destination group’s folder (if needed)” is selected, and click Finish.
 
 Also repeat this for the two files in ASIHTTPRequest\External\Reachability, as these are dependencies of the project.
 
 The last step to add ASIHTTPRequest is you need to link your project against a few required frameworks. To do this, click on your ImageGrabber project entry in Groups & Files, click the PromoTest target, choose the Build Phases tab, and expand the Link Binary with Libraries section. Click the plus button in this section, and choose CFNetwork.framework. Then repeat this for SystemConfiguration.framework and MobileCoreServices.framework.
 */