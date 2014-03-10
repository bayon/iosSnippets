// managedObjectToDictionary
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 408709D7-62E6-4B8A-B911-B617827E7EDE
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//managedObjectToDictionary
-(NSMutableDictionary *)managedObjectToDictionary:(NSManagedObject *)info : (NSMutableArray *)arrayOfKeys{
    mutableDictionary = [[NSMutableDictionary alloc] init ];
    for(int i=0;i<[arrayOfKeys count]; i++)
    {
        @try{
         
            if([info valueForKey:[arrayOfKeys objectAtIndex:i]] > 0)
            {
                [mutableDictionary setObject:[info valueForKey:[arrayOfKeys objectAtIndex:i]] forKey:[arrayOfKeys objectAtIndex:i]];
            }
        }
        @catch(NSException *exception){
        NSLog(@"\n CATCH: exception:%@ ",exception );
        }
        @finally{
         
        }
    }
    //NSLog(@"\n -> mutableDictionary: %@ \n",mutableDictionary);
    return mutableDictionary;
}
