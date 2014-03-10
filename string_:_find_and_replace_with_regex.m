// string : find and replace with regex
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 74924695-1BC3-4256-B1A8-54BC935D1F1F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 //string : find and replace with regex
 // Create a regular expression with given string and options
 - (NSRegularExpression *)regularExpressionWithString:(NSString *)string
 {
 
 BOOL isCaseSensitive = true;
 BOOL isWholeWords = true;
 
 NSError *error = NULL;
 NSRegularExpressionOptions regexOptions = isCaseSensitive ? 0 : NSRegularExpressionCaseInsensitive;
 
 NSString *placeholder = isWholeWords ? @"\\b%@\\b" : @"%@";
 NSString *pattern = [NSString stringWithFormat:placeholder, string];
 
 NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:pattern options:regexOptions error:&error];
 if (error)
 {
 NSLog(@"Couldn't create regex with given string and options");
 }
 
 return regex;
 }
 // Search for a searchString and replace it with the replacementString in the given text view with search options
 - (NSString *)searchAndReplaceText:(NSString *)searchString withText:(NSString *)replacementString  forParentString:(NSString *)parentString
 {
 NSString *beforeText = parentString;
 
 // Create a range for it. We do the replacement on the whole
 // range of the text view, not only a portion of it.
 NSRange range = NSMakeRange(0, beforeText.length);
 
 // Call the convenient method to create a regex for us with the options we have
 NSRegularExpression *regex = [self regularExpressionWithString:searchString  ];
 
 // Call the NSRegularExpression method to do the replacement for us
 NSString *afterText = [regex stringByReplacingMatchesInString:beforeText options:0 range:range withTemplate:replacementString];
 
 // Update UI
 //textView.text = afterText;
 return afterText;
 }

 */
