// .m CORE_DATA_MIGRATE
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: B850B419-F347-4E45-86C9-7C24EEDA0D54
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*  .m CORE_DATA_MIGRATE PART A
 
     NSDictionary *options = [NSDictionary dictionaryWithObjectsAndKeys:
     
     [NSNumber numberWithBool:YES], NSMigratePersistentStoresAutomaticallyOption,
     
     [NSNumber numberWithBool:YES], NSInferMappingModelAutomaticallyOption, nil];
 
// add options into the condtion that currently has nil
 
 */
/*   .m CORE_DATA_MIGRATE PART B: Then you need to do a little trick in xCode:

Select your xcdatamodel file
Select the Design Menu at the top - then Data Model - then choose Add Model Version
Your xcdatamodel file will then get moved into a new directory with the same name as your xcdatamodel file but with the extension xcdatamodeld - there will be a second file in this directory with a 2 in the name. Select the new file and then Design->Data Model->Set Current Version
If you have already made the changes that have caused your project to be incompatible - take these changes out of the original xcdatamodel file. If you have yet to make the changes - then just edit the 2.xcdatamodel file (the one you just made current version).
Now when you install this version onto a device that has the old model - it will automatically upgrade that model to the new model.
 */
