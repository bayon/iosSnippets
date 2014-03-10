//  MoGenerator: the parameters
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 7002D5FA-BC2E-4728-B2B7-AE18C469C85F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2


/* 
 // MoGenerator: the parameters
 Parameters that work both via the command line utility and Xcode:
 
 --base-class: The name af the base class which the "private class" (e.g. _MyObject.h) will inherit from. This will also add an import in the form of #import "MyManagedObject.h" to the same .h file. Tip: if the class you want to inherit from is located in a library, the default import statement won't work. As a workaround, you could have an extra level of inheritance for each project you create and have that class inherit from the library on (e.g. set the base class to MyProjectManagedObject which you create manually and inherit from MyLibManagedObject).
 --template-path: The path to where the 4 .motemplate files are located. When this is not provided, it will look at all the "app support directories" (e.g. "/Library/Application Support/mogenerator/").
 --template-group: A subdirectory name underneath the template-path directory to use.
 --template-var arc=true: Required for the generated files to compile while using ARC.
 --output-dir: The output directory for all generated files.
 --machine-dir: The directory where the _<class>.h and _<class>.m will be output to. If --output-dir is also defined, this parameter takes precedence.
 --human-dir: The directory where the <class>.h and <class>.m will be output to. If --output-dir is also defined, this parameter takes precedence.
 --includem: the full path to a file that will include all the #import for all the .h files that are created. This file does not need to exist (i.e. it will be created for you if it doesn't). This file, will not be included in the project automatically for you. You must include it manually by dragging it into the Groups & Files list of your project.
 
 Using relative paths in Xcode for any of the above arguments won't work since the working directory is set to one of the root directories of the system (e.g. Applications, Developer, Library, or System). (I haven't had enough time to figure out which one of these it is exactly.)
 
 Parameters that cannot be used in Xcode:
 
 --model: The path to the .xcdatamodel file, cannot be set in Xcode.
 --list-source-files
 --orphaned
 --versioned
 --help
 
 Running and sending parameters to xmod via Xcode:
 
 (Update: I haven't tried this on Xcode 4, only Xcode 3. For Xcode 4, you can add mogenerator as a build phase instead of following the following steps.)
 
 Go to the info page of the .xcdatamodel file.
 Choose the Comments tab.
 Add xmod to the comments field, on its own line.
 Every time you save the model, it will regenerate the machine files for you.
 
 To send parameters, they must be on their own line(s):
 
 This works:
 
 xmod
 --base-class CLASS
 --template-path PATH
 
 And even this works:
 
 xmod
 --base-class CLASS --template-path PATH
 
 But, this won't work:
 
 xmod --base-class CLASS --template-path PATH
 
 Note: You must close the Info window for the settings to take effect.

 */

