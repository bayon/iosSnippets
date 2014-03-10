// imageToDataTransformer 
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 458D43D1-ED9B-4B30-9786-E3C23198720D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
//imageToDataTransformer
 // core data attribute insid recipe entity is "transformable" and has the name "imageToDataTransformer"
 // from recipe examople: code appears as second @interface and @implementation inside the "Recipe : NSManagedObject"
 .h
 @interface ImageToDataTransformer : NSValueTransformer {
 }
 @end
 
 .m
 @implementation ImageToDataTransformer
 
 
 + (BOOL)allowsReverseTransformation {
 return YES;
 }
 
 + (Class)transformedValueClass {
 return [NSData class];
 }
 
 
 - (id)transformedValue:(id)value {
 NSData *data = UIImagePNGRepresentation(value);
 return data;
 }
 
 
 - (id)reverseTransformedValue:(id)value {
 UIImage *uiImage = [[UIImage alloc] initWithData:value];
 return [uiImage autorelease];
 }
 
 @end


*/