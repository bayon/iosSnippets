// AAStats: API: Interval
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 18EF4B81-D150-4550-9E7E-C29309042B71
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
   //  AAStats: API: Interval
 #### API
 
 Url: http://hive.indatus.com/precompiled_reports/{interval}/{company_id}
 
 Method: GET
 
 The request will require HTTPBasic authentication which can be the same email and password used for the login.
 
 The possible values for the _interval_ segment of the URL are:
 
 * today
 * yesterday
 * this_week
 * last_week
 * this_month
 * last_month
 * this_year
 * last_year
 
 The timezone for the interval (yesterday, today etc) will be relative to the timezone setting the user has selected inside their web application account.  The mobile device won't need to be concerned with timezone modification or date conversion.
 
 A separate API request will be necessary for each different date interval.
 
 
 */
