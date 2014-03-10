// ADD CUSTOM FONTS
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: D8E7B0D4-AB2C-4FB6-B71F-D766BB808D9A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
ADD CUSTOM FONTS:
 This is only available for SDK 4.0 and above.
 
 1.Add your custom font files into your project using XCode as resources.
 
 2.Add a key to your info.plist file called “Fonts provided by application” ( Used to be called UIAppFonts).
 
 3.It’s an array key.
 
 4.For each font you have, enter the full name of your font file (including the extension).
 
 5.Save info.plist.
 
 6.Now in your application you can simply call [UIFont fontWithName:@"CustomFontName" size:12] to get the custom font to use with your UILabels and UITextView.
 
 7.“CustomFontName” is not the font’s file name. It is the font name registered in the operating system. For example, if you try to use “Bauhaus Medium BT.ttf”, the “CustomFontName” should be “Bauhaus Md BT”, no extension “.ttf” is needed. You need to install the font in your system to find out what name it is. Some fonts have 2 names, you may need FontForge to find out and try which one works.
 
 8.So far I found out that both ttf and otf format work out of the box. I haven’t tested other font formats yet.


*/