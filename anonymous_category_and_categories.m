// anonymous category and categories
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 066C31F7-F999-4A81-A829-E26C47EEAEC0
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 /*
    //anonymous category and categories
 
  The two syntaxes serve different purposes.
  
  A named category -- @interface Foo(FooCategory) -- is generally used to:
  
  (1) extend an existing class by adding functionality. Example: NSAttributedString in Foundation is extended by a category in AppKit that adds AppKit specific RTF-like text formatting API.
  
  (2) declare a set of methods that might or might not be implemented by a delegate. Example: Various classes declare -- but don't implement -- @interface NSObject(SetODelegateMethods).
  
  Form (2) has fallen out of favor now that @protocol has been extended to support @optional methods in Objective-C 2.0.
  
  A class extension -- @interface Foo() -- is designed to allow you to declare additional private API -- SPI or System Programming Interface -- that is used to implement the class innards. This typically appears at the top of the .m file. Any methods / properties declared in the class extension must be implemented in the @implementation, just like the methods/properties found in the public @interface.
  
  Class extensions can also be used to redeclare a publicly readonly @property as readwrite prior to @synthesize'ing the accessors.
  
  Example:
  
  Foo.h
  
  @interface Foo:NSObject
  @property(readonly, copy) NSString *bar;
  -(void) publicSaucing;
  @end
  Foo.m
  
  @interface Foo()
  @property(readwrite, copy) NSString *bar;
  - (void) superSecretInternalSaucing;
  @end
  
  @implementation Foo
  @synthesize bar;
  .... must implement the two methods or compiler will warn ....
  @end
 
*/
