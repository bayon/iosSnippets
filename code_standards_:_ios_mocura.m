// Code Standards : iOS Mocura
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 9582B72E-E570-4E47-97C4-164FBF3DD4F0
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 Code Standards : iOS Mocura
 Reference Coding Standards
 We will be conforming to the Apple Cocoa Standards. This is a working document and will be updated as it becomes necessary - if you have suggestions or changes you would like to see, please fork the repo and submit a merge request.
 
 Project Structure
 OCUnit/SenTest will be the testing framework of choice, we will likely migrate to XCTest once XCode 5 has been released (There will be migration tools to convert existing OCUnit test suites to XCTest).
 OCMock will be used for mock objects
 Unit test should be written before writting application code
 External dependancies should be managed with CocoaPods
 Version numbers should be specified for all dependancies to ensure compatability
 Private libraries can be found at here
 A constants file should be created for each projects
 A header file should be added to the project titled {ProjectName}.h which should be included in the prefix.pch file
 Any universal includes should be added to this header file
 Constants
 Frameworks that will be imported across multiple classes
 Universal macros
 Constants that are relevant only to a singular should be contained within the class itself
 Related files should be placed into groups in XCode
 Recommend Structure
 Assets
 Images
 Fonts
 Models
 Services
 Supporting Files (info-plist, main, prefix.pch, {ProjectName}.h)
 Utilities
 View Controllers
 Class Structure
 Private properties should be declared in the anonymous category in the implementation file
 Allow XCode to authosynthesize properties, will reduce clutter and keep synthesized isntance variables uniform
 Use synthesized ivars when reading properties within a class
 During init methods use instance variables to set state
 Properties should be declared as nonatomic
 Properties should be used when setting instance variable to ensure memory is managed properly (strong, assign, copy)
 All poritions of a method signature should be named
 
 - (id)initWithName:(NSString *)name :(NSString *)address; // Never do this
 
 - (id)initWithName:(NSString *)name address:(NSString *)address; // Proper form
 
 DO NOT prefix method signatures with underscores, this naming convention is reserved by Apple
 
 Group related code together in categories where possible, if not possible insert pragma's to segment different logical segements of class
 
 Override - (NSString *)description method to provide useful output
 
 Development Principles
 DRY (Don't repeat yourself), if code is duplicated refactor to eliminate the duplication
 A class should serve a single purpose
 Treat warnings as errors and fix them
 Shared single instance objects should be contained within a singleton
 
 */