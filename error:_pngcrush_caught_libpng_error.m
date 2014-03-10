// error: pngcrush caught libpng error
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: DF75286C-2F7E-4C4C-8059-7E82DB121AE0
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //error: pngcrush caught libpng error
 
 emitted errors but did not return a nonzero exit code to indicate failure
 http://stackoverflow.com/questions/5387671/ipad-png-crush-error
 1.
 I had the same problem, but it wasn't because of a corrupted png : it was because two PNG files had the same filename in different directories of my source tree. What was peculiar was that the errors (I had 4 files which had "twins") were not identical from one build to another. On one run I had errors on all files, on the other only on some of them.
 2.
 had the same problem. How to fix : Open up image with Preview -> File > Export > Format change to PNG and you are done !!
 3.
 There is no issues with image or Xcode. The issue, which creating that image from photoshop, is whether that image is interlaced or not interlaced. While saving your image in photoshop you will get one option for that.
 not interlaced: You should use image which is not interlaced. This is the original png image.
 interlaced: This option is suitable for the image which are getting downloaded from web. Specifically saying, this is used when you require to reduce image load time. What this option internally does is, it will create a .png file but with lower clarity and lower dpi like a normal jpeg image. That's why such images are having property that it is jpeg image.
 */
