// -(NSMutableDictionary *)getEntityDescription:(NSString *)entityName;
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: B7C63F86-C51A-4143-839A-02BDB3D4C4A9
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(NSMutableDictionary *)getEntityDescription:(NSString *)entityName{
    NSManagedObjectContext *context = [self managedObjectContext];
    NSEntityDescription *entity = [NSEntityDescription entityForName:entityName
                                              inManagedObjectContext:context];
    
    NSDictionary * attributesByName = [[NSDictionary alloc]init];
     attributesByName = [entity attributesByName];
    NSMutableDictionary *dicOfEntityInfo = [[NSMutableDictionary alloc]init];
    NSMutableDictionary *dicOfAttributes = [[NSMutableDictionary alloc]init];
      NSLog(@"\nattributesByName:%@",attributesByName);
    for(id key in attributesByName) {
        NSAttributeDescription *attr = [[entity attributesByName] objectForKey:key];
        NSAttributeType type = [attr attributeType];
        NSString *varType = [[NSString alloc]init];
        switch (type) {
            case 0:
                varType = @"NSUndefinedAttributeType";
                break;
            case 100:
                varType = @"NSInteger16AttributeType";
                varType = @"Number";
                break;
            case 200:
                varType = @"NSInteger32AttributeType";
                varType = @"Number";
                break;
            case 300:
                varType = @"NSInteger64AttributeType";
                varType = @"Number";
                break;
            case 400:
                varType = @"NSDecimalAttributeType";
            varType = @"Number";
                break;
            case 500:
                varType = @"NSDoubleAttributeType";
                varType = @"Number";
                break;
            case 600:
                varType = @"NSFloatAttributeType";
                varType = @"Number";
                break;
            case 700:
                varType = @"NSStringAttributeType";
                varType = @"String";
                break;
            case 800:
                varType = @"NSBooleanAttributeType";
                varType = @"Bool";
                break;
            case 900:
                varType = @"NSDateAttributeType";
                varType = @"Date";
                break;
            case 1000:
                varType = @"NSBinaryDataAttributeType";
                varType = @"Bin";
                break;
            case 1800:
                varType = @"NSTransformableAttributeType";
                varType = @"Transform";
                break;
            case 2000:
                varType = @"NSObjectIDAttributeType";
                varType = @"Object";
                break;
            default:
                break;
        }
         
        //record one attribute and it's varaible type
        [dicOfAttributes setObject:varType forKey:key];
        
    }
        
    NSDictionary * relationshipsByName = [[NSDictionary alloc]init];
    relationshipsByName = [entity relationshipsByName];
    NSMutableArray *arrayOfRelationships = [[NSMutableArray alloc]init];
    for(id key in relationshipsByName) {
        [arrayOfRelationships addObject:key];
    }
    
    [dicOfEntityInfo setObject:dicOfAttributes forKey:@"attributes"];
    [dicOfEntityInfo setObject:arrayOfRelationships forKey:@"relationships"];
    
    return dicOfEntityInfo;
    
    
    
}