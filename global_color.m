// Global Color
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 0B2B018F-F818-48EB-9474-77994644994B
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //Global Color
 
 //1. ) set up in appDataObject
 //2. ) defined once in the MainViewController.m
 
 ThisAppDataObject.h
 @interface ThisAppDataObject : AppDataObject{
 NSString *data1;
 NSInteger int1;
 CGFloat float1;
 UIColor *primaryColor;
  UIColor *secondaryColor;
  UIColor *tertiaryColor;
 
 
 
 }
 @property (nonatomic,retain) UIColor * primaryColor;
  @property (nonatomic,retain) UIColor * secondaryColor;
  @property (nonatomic,retain) UIColor * tertiaryColor;
 
 MainViewController.m
 
 -(id)init{
     self = [super self];
         if(self){
            theDataObject.primaryColor = [UIColor colorWithRed:0.4f green:0.4f blue:0.1f alpha:1.0f ];
         }
     return self;
 }
 
 */