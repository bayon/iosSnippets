// -(NSMutableDictionary *)managedObjectToDictionaryNew:(NSManagedObject *)info entityName:(NSString *)entityName
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 8B64D29E-9508-46B8-8ED5-32351049963F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(NSMutableDictionary *)managedObjectToDictionaryNew:(NSManagedObject *)info entityName:(NSString *)entityName{
    
    NSManagedObjectContext *context = [self managedObjectContext];
    NSEntityDescription *entity = [NSEntityDescription entityForName:entityName
                                              inManagedObjectContext:context];
    
    NSDictionary * attributesByName = [[NSDictionary alloc]init];
    attributesByName = [entity attributesByName];
    NSMutableArray *arrayOfKeys = [[NSMutableArray alloc]init];
    for(id key in attributesByName) {
        [arrayOfKeys addObject:key];
    }
    
    //Now I have my array of attrributes or keys
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