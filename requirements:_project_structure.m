// Requirements: Project Structure
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: B5CD03A3-1C42-4D01-8B4C-DDAE6D8849C0
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
/*
   // Requirements: Project Structure
   Project Structure
   1. XCTest is the testing framework to be used (built into XCode 5)
   2. OCMock will be used for mock objects
   3. Unit test should be written before writting application code
   4. External dependancies should be managed with CocoaPods
        Version numbers should be specified for all dependancies to ensure compatability
        Private libraries can be found at here
   5. A constants file should be created for each projects
   6. A header file should be added to the project titled {ProjectName}.h which should be included in the prefix.pch file
        Any universal includes should be added to this header file
            Constants
            Frameworks that will be imported across multiple classes
            Universal macros
   7. Constants that are relevant only to a singular should be contained within the class itself
   8. Related files should be placed into groups in XCode
   Recommend Structure
        Assets
            Images
            Fonts
        Models
        Services
        Supporting Files (info-plist, main, prefix.pch, {ProjectName}.h)
        Utilities
        View Controllers

 */
