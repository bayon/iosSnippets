// sortThroughDictionary
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: DB0F9A23-CF99-4A20-9D1E-C8B42930C8DA
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

//sortThroughDictionary
-(void)sortThroughDictionary:(NSDictionary *)dictionary{
    //LOOP THROUGH NSDictionary and Sort out Arrays versus variables
    for(id key in dictionary) {
        id value = [dictionary objectForKey:key];
        BOOL valueIsArray = [value isKindOfClass:[NSArray class]];
        if(valueIsArray){
            for (id object in value) {
                BOOL objectIsArray = [object isKindOfClass:[NSArray class]];
                if(objectIsArray){
                    for (id element in object) {
                        BOOL elementIsArray = [element isKindOfClass:[NSArray class]];
                        if(elementIsArray){
                            //NSLog(@"Element in Object IS an Array");
                        }else{
                             // THE CURRENT ROW OF DATA   
                            NSLog(@"An Array inside an NSDictionary : %@",element);
                            // THE SPECIFIC INFO YOU WANT  
                            NSLog(@"\n image_filename:   %@",[element objectForKey:@"image_filename"]);
                         }
                    }
                    // NSLog(@"object is NOT an array");
                }else{
                    // NSLog(@"object IS an array");
                }
            }
        }else{
            NSString *keyAsString = (NSString *)key;
            NSString *valueAsString = (NSString *)value;
        }
    }
}
