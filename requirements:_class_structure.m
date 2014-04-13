// Requirements: Class Structure
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 356699FD-5B81-4B7F-B3A4-193FAB54327A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
/*
   // Requirements: Class Structure
 
   1. Private properties should be declared in the anonymous category in the implementation file
   2. Allow XCode to authosynthesize properties, will reduce clutter and keep synthesized isntance variables uniform
   3. Use synthesized ivars when reading properties within a class
   4. During init methods use instance variables to set state
   5. Properties should be declared as nonatomic
   6. Properties should be used when setting instance variable to ensure memory is managed properly (strong, assign, copy)
   7. All poritions of a method signature should be named

        - (id)initWithName:(NSString *)name :(NSString *)address; // Never do this

        - (id)initWithName:(NSString *)name address:(NSString *)address; // Proper form

   8. DO NOT prefix method signatures with underscores, this naming convention is reserved by Apple

   9. Group related code together in categories where possible, if not possible insert pragma's to segment different logical segements of class

   10. Override - (NSString *)description method to provide useful output

 */
