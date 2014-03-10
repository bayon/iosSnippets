// Duplicate Projects / Targets
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 2C0E25FB-595A-450E-B5FA-064BAF2DDB54
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 Duplicate Projects:
 bayon:brief:
 R-click & duplicate the target
 move the new plist file to the Supporting Files group.
 -	-	-	-	-	-	-	-	-	-	-	-	-
 
 http://stackoverflow.com/questions/9310635/reuse-xcode-project-for-new-app
 
 The thing that must change between projects is the application ID (or bundle identifier, as you called it).
 And yes, when you change the application ID, you do need to create new provisioning profiles to go with it.
 If you're feeling really ambitious, you can use the exact same project as your original one and merely create a new target (and application). That way any code changes you make to one can be picked up by the other and the differences would be the ID and maybe the localizations/resources used in each app.
 -	-	-	-	-	-	-	-	-	-	-	-	-
 http://stackoverflow.com/questions/6516959/how-to-duplicate-a-project-target-in-xcode4
 Double check you have the new duplicate target selected when you modify the Bundle Identifier setting on the Info Tab. I just tried this and it worked fine.
 So the bundle identifier is on the info tab, which is actually just a view of the info.pList associated with the target.
 To change the info.pList on that target, you will need to make a copy of the pList file (newtarget-info.pList), go into the Build Settings tab for the target, scroll down to the Packaging segment and modify the Info.pList File setting to point to your new file.
 Then when you click on the info tab you will get the settings from your newtarget-info.pList file.
 
 -	-	-	-	-	-	-	-	-	-	-	-	-
 Figure it out.In XCode4, after duplicate the target, the info.plist file need to be duplicated too. 1. Copy the orignal info.plist file, usually "{APP Name}-Info.plist" 2. Change the setting: "Build Settings"->"Info.plist Files"
 
 -	-	-	-	-	-	-	-	-	-	-	-	-
 
 
 
 */