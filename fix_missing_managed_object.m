// FIX MISSING MANAGED OBJECT
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 5724E790-3093-4D94-99DD-5C77CFEE30EF
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//FIX MISSING MANAGED OBJECT
     if (managedObjectContext == nil) 
     { 
         managedObjectContext = [(AppDelegate *)[[UIApplication sharedApplication] delegate] managedObjectContext]; 
         NSLog(@"After managedObjectContext: %@",  managedObjectContext);
     }