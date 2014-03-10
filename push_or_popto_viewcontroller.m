// Push or PopTo ViewController
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: F13C7D1A-35EB-4EAD-9EA9-6C2593AA6417
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 //Push or PopTo ViewController
-(void)pushViewController:(UIViewController *)viewController{
    
    if(viewController){
        @try {
            [self.navigationController pushViewController:viewController animated:NO];
        }
        @catch (NSException * ex) {
            //“Pushing the same view controller instance more than once is not supported”
            //NSInvalidArgumentException
            NSLog(@"Exception: [%@]:%@",[ex  class], ex );
            NSLog(@"ex.name:'%@'", ex.name);
            NSLog(@"ex.reason:'%@'", ex.reason);
            //Full error includes class pointer address so only care if it starts with this error
            NSRange range = [ex.reason rangeOfString:@"Pushing the same view controller instance more than once is not supported"];
            
            if([ex.name isEqualToString:@"NSInvalidArgumentException"] &&
               range.location != NSNotFound)
            {
                //view controller already exists in the stack - just pop back to it
                [self.navigationController popToViewController:viewController animated:NO];
            }else{
                NSLog(@"ERROR:UNHANDLED EXCEPTION TYPE:%@", ex);
            }
        }
        @finally {
            //NSLog(@"finally");
        }
    }else {
        NSLog(@"ERROR:pushViewController: viewController is nil");
    }
}
