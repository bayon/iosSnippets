// core data: export core data entity to a XML/CSV file: untested by myself
// 
//
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: F5FEE61F-4F79-4878-9C51-8A6C79F0A29E
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 core data: export core data entity to a XML file: untested . . .
//.h

#import <CoreData/CoreData.h>
#import <Foundation/Foundation.h>

@interface NSManagedObject (XMLSync)
@property (nonatomic, readonly) NSString *xmlString;


@end


////-----
//.m
#import "NSManagedObject+XMLSync.h"

  
@implementation NSManagedObject (XMLSync)

- (NSString *)xmlString
{
    NSEntityDescription *ed = self.entity;
    NSURL *uri = self.objectID.URIRepresentation;
    NSMutableString *x = [NSMutableString stringWithFormat:@"<%@ id=\"/%@%@\"",
                          ed.name, uri.host, uri.path];
    
    for (NSString *a in ed.attributesByName.allKeys) {
        id value = [self valueForKey:a];
        
        if (value) {
            if ([value isKindOfClass:[NSString class]]) {
                [x appendFormat:@" %@=\"%@\"", a, value];
            } else {
                if (![value respondsToSelector:@selector(stringValue)]) {
                    NSLog(@"no stringValue");
                }
                [x appendFormat:@" %@=\"%@\"", a, [value stringValue]];
            }
        }
    }
    
    bool hasChildren = NO;
    
    for (NSString *r in ed.relationshipsByName) {
        if (!hasChildren) {
            [x appendString:@"/>"];
            hasChildren = YES;
        }
        
        NSRelationshipDescription *rd = [ed.relationshipsByName objectForKey:r];
        
        if (rd.isToMany) {
            hasChildren = YES;
            [x appendFormat:@"<%@>", r];
            
            for (NSManagedObject *c in [self valueForKey:r]) {
                [x appendString:c.xmlString];
            }
            
            [x appendFormat:@"", r];
        }
    }
    
    if (hasChildren) {
        [x appendFormat:@"", ed.name];
    }
    
    return x;
}

@end
*/



/*
CSV
 You have to create a method to do this kind of operation, like this:
 NSString *separator = @", ";
 NSString *cvs = @"";
 for (NSObject *object in arrayOfObject) {
 cvs = [NSString stringWithFormat:@"%@%@%@%@%@\n", cvs, [object att1], separator, [object att2], separator, [object att3]...];
 }
 //If you want to store in a file the CVS
 [cvs writeToFile:pathToFile atomically:YES];
 


*/