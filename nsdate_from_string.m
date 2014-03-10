// NSDATE FROM STRING
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 6DE1DF48-0C95-4F84-B05A-2E5454516C11
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 //NSDATE FROM STRING
                /**/
                 NSString *mysqlDateString = [surveyObject objectForKey:@"survey_date"];
                NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
                [dateFormatter setDateFormat:@"yyyy-MM-dd"];
                NSDate *mysqlDateFromString = [[NSDate alloc] init];
                mysqlDateFromString = [dateFormatter dateFromString:mysqlDateString];
                surveys.survey_date  = mysqlDateFromString;
                //CROSS YOUR FINGERS---appeared to have worked.


//String From NSDate
NSString *stringFromDate = [formatter stringFromDate:theDataObject.lastSurveyDate];

/* FROM THIS STRING: "survey_datetime" = "11/19/2012 12:00:00 AM"; to NSDATE
 
 //use
 [dateFormatter setDateFormat:@"MM/dd/yyyy hh:mm:ss a"];
 */

