// Static Library: Make and Import 
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: A966509F-151E-4B57-ADDA-C6A4F669EEE2
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
Static Library: Make and Import 
1. Open XCode and start a new project. Under iOS, select Library and “Cocoa Touch Static Library”.
2. Add your .h and .m files 
3. Make sure it BUILDS
4.look under the Products group in XCode and you should see a file called libYOURLIBRARYNAME.a
    Right click on that and "Show in FInder"
5. Create a folder to contain your Lib File and your Header files
6. Drag the lib.a file and your .h files into that folder.
7. Create/Open your main project.
8. Drag in the library "Folder" you just created.
9. #import "YourHeaderFile.h" where you want to use it.
10. call the methods as you normally would.
*/