// -(void)logPrimaryKey: (NSManagedObject *)managedObject; (Unique Id )
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: A7088C10-CDAC-4949-8EB4-DA3DAE3B54E9
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(void)logPrimaryKey: (NSManagedObject *)managedObject{
    //Core Data makes its own primary key - you don't have to add one. You can retrieve it with
    NSManagedObjectID *moID = [managedObject objectID];
    int mo_PK = [[[[[moID URIRepresentation] absoluteString] lastPathComponent] substringFromIndex:1] intValue];
     NSLog(@"\n mo_PK:%d \n ",mo_PK);
}
