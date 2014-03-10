// Documentation : Appledoc
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 756F6C88-EA0E-41FC-95A0-89698EEF6DE5
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 Documentation : Appledoc
  http://www.cocoanetics.com/2011/11/amazing-apple-like-documentation/
 
 CLASSES and CATEGORIES:
 (note: comments spaced out to stay within the bounds of the surrounding comments.)
 / * * This class demonstrates AppleDoc.
 
 A second paragraph comes after an empty line.
 
 int i=0;
 i++;
 
 And some sample code can also be in a block, but indented with a TAB.
 * /
 
 
 METHODS:
 / * *---------------------------------------------------------------------------------------
 * @name A name under which this method appears under "Tasks"
 *  ---------------------------------------------------------------------------------------
 */

/** This is the first super-awesome method.
 
 You can also add lists, but have to keep an empty line between these blocks.
 
 - One
 - Two
 - Three
 
 @param string A parameter that is passed in.
 @return Whatever it returns.
 * /
- (NSString *)someMethodWithString:(NSString *)string;
 
 
 BELLS AND WHISTLES:
 / ** This is the second super-awesome method.
 
 Note that there are additional cool things here, like [direct hyperlinks](http://www.cocoanetics.com)
 
 @param number A parameter that is passed in, almost as cool as someMethodWithString:
 @return Whatever it returns.
 @see someMethodWithString:
 @warning *Warning:* A blue background.
 @bug *Bug:* A yellow background.
 * /
- (NSString *)someMethodWithInteger:(NSInteger)number;
 
 
 BUILDING DOCSET AND HTML:
 (example shell script):
 /usr/local/bin/appledoc \
 --project-name "DTFoundation" \
 --project-company "Cocoanetics" \
 --company-id "com.cocoanetics" \
 --docset-atom-filename "DTFoundation.atom" \
 --docset-feed-url "http://cocoanetics.github.com/DTFoundation/%DOCSETATOMFILENAME" \
 --docset-package-url "http://cocoanetics.github.com/DTFoundation/%DOCSETPACKAGEFILENAME" \
 --docset-fallback-url "http://cocoanetics.github.com/DTFoundation/" \
 --output "~/help" \
 --publish-docset \
 --logformat xcode \
 --keep-undocumented-objects \
 --keep-undocumented-members \
 --keep-intermediate-files \
 --no-repeat-first-par \
 --no-warn-invalid-crossref \
 --ignore "*.m" \
 --ignore "LoadableCategory.h" \
 --index-desc "${PROJECT_DIR}/readme.markdown" \
 "${PROJECT_DIR}"
 
 
 
 /////////////////////////////
 https://github.com/tomaz/appledoc/blob/master/Readme.markdown
 
 */
/*
 Xcode Integration Script
 Sample Script to automate documentation creation using a run script in Xcode. appledoc can be integrated with Xcode in many ways. Below is one of those ways to get you up and running quickly on Xcode 4.6
 
 Select top of your project in Project Navigator
 Click Add Target
 Depending on your project type (iOS or OS X) choose Aggregate Template
 Create new target. I suggest to call it Documentation
 Click on Build Phases and add new Build Phase based on Script
 Paste the script below into the script window
 Adjust variables in section "Start Constants" as required
 Uncomment correct 'target' for your project and comment out another one depending on your project type.
 Adjust path to appledoc binary and appledoc's command-line switches if required
 When you ready to generate a docset from your project, build Documentation target.
 Docset will be installed into new loction and will become available to Xcode immediately.
 To refresh Quick Help (ALT+Click) and (ALT+double-click) you may need to restart Xcode to refresh its index cache.
 Below is a working script that can be added to the Xcode Build Phases, Run Script
 
 #appledoc Xcode script
 # Start constants
 company="ACME";
 companyID="com.ACME";
 companyURL="http://ACME.com";
 target="iphoneos";
 #target="macosx";
 outputPath="~/help";
 # End constants
 /usr/local/bin/appledoc \
 --project-name "${PROJECT_NAME}" \
 --project-company "${company}" \
 --company-id "${companyID}" \
 --docset-atom-filename "${company}.atom" \
 --docset-feed-url "${companyURL}/${company}/%DOCSETATOMFILENAME" \
 --docset-package-url "${companyURL}/${company}/%DOCSETPACKAGEFILENAME" \
 --docset-fallback-url "${companyURL}/${company}" \
 --output "${outputPath}" \
 --publish-docset \
 --docset-platform-family "${target}" \
 --logformat xcode \
 --keep-intermediate-files \
 --no-repeat-first-par \
 --no-warn-invalid-crossref \
 --exit-threshold 2 \
 "${PROJECT_DIR}"
*/