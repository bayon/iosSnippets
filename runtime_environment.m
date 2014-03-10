// RUNTIME ENVIRONMENT
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 1D0FF9DA-97BE-413C-A8FD-4F502CC89243
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //APP MEMORY
 //RUNTIME ENVIRONMENT
 int runtimeEnvironment; // 0 = DEVELOPMENT ,1 = LIVE , 3 = OTHER
 
 
 //RUNTIME ENVIRONMENT
 @property  int  runtimeEnvironment;
 //RUNTIME ENVIRONMENT
 @synthesize runtimeEnvironment;
 
 */
/*
 //SET THE VARIABLE (in SplashViewController or wherever
 //runtime environment
 theDataObject.runtimeEnvironment = 0; //   { 0 = development, 1 = live, 2 = other }
 
 */


/*
 NSString *url;
 
 @property (nonatomic, retain)NSString *url;
 @synthesize url;
 */



/*
//WEB SERVICE : API : WSDL
    
    //Use AppMemory
    AppMemory *theDataObject = [self theAppDataObject];
    
    //RUNTIME ENVIRONMENT
     
    if(theDataObject.runtimeEnvironment == 0)
    {
        //DEVELOPMENT
          url = @"http://devapi.indatus.com:8732/FMSBackendService/REST/get_SurveyStart";
    }else if(theDataObject.runtimeEnvironment == 1)
    {
        //LIVE
        url = @"http://api.indatus.com:8732/FMSBackendService/REST/get_SurveyStart";
    }else if(theDataObject.runtimeEnvironment == 2)
    {
        //OTHER
       url = @"http://172.16.104.108:8732/FMSBackendService/REST/get_SurveyStart";
    }

*/