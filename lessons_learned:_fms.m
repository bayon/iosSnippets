// Lessons Learned: FMS
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: D72A1A51-DCD3-4B26-B637-4E421AF1A8AB
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //Lessons Learned: FMS
 - protocol general usage
 - popover: 2 variations of calling one
 - popover: adding a navcontroller to one
 - navbar: using images for custom bar button items
 - navbar: loading multiple buttons
 
 
 */
/*
 //CLAUSE TO REMOVE NULL RECORDS BEING SENT UP TO THE SERVICE
 
 if([[object objectForKey:@"building_id"] integerValue] == 0 ){
 //NSLog(@"\n \n HIT: Don't upload the blank survey! ");
 }else{
 bool success = [self uploadSurvey:object];
 
 if (success)
 {
 //add successfully uploaded survey to array
 NSLog(@"\n UPLOAD SUCCESS");
 NSLog(@"\n uploaded object: %@",object);
 [uploadedSurveys addObject:object];
 }
 
 }

*/

/*
verify photo uploads:
 \\192.168.0.169\Media\FMS
*/