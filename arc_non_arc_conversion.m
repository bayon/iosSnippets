// ARC NON ARC conversion
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 08A8C5DD-0DD6-4F37-86BB-0C6C61C7972E
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*ARC : conversion 1
 Scenario 1 – You have non-ARC project that you want to refactor to enable ARC (using XCode’s refactoring feature), but there is existing code that you do not want to convert.
 
 Here’s how to solve this, when you do the refactoring deselect the files that you don’t want to convert to arc, and Xcode will automatically add the -fno-objc-arc flag to those files.
 
 1. Choose Edit->Refactor->Convert to Objective-C ARC in the Xcode menu.
 2. On the Select Targets To Convert screen select your targets, then click the little arrow beside the target name to expand the list of files.
 3. Highlight the files that you do not want to convert then right click (or ctrl-click) and select uncheck-all to deselect all the files you want to convert to ARC.  Then proceed as usual with the refactoring.
 
 You can see this in the screenshot below where this has already been done with Cocos2D (btw, this is the easy way to get the Cocos2D template projects working with ARC):
 */

/*ARC : conversion 2
 Scenario 2 – You already have a project using ARC and want to add in some non-ARC enabled code, or you want to refactor the project yourself and don’t want to use ARC with some of the code.
 
 I’ve seen this come up all over the internet in answers, and people asking where to add the -fno-objc-arc flag so here’s how it’s done.
 
 1. Bring up the build phases tab for the appropriate target.arc1
 2. Change the compiler flags for the specific code files that you do not want to enable ARC for to -fno-obj-arc (simply clicking on the compiler flags section beside the file, and enter -fno-objc-arc).
 
 The flag will show up beside the file like in this screenshot if done correctly:
 */