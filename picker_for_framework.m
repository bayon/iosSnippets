// Picker For Framework
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: FB4BB0F4-C5D6-41BC-AC6E-00E44E49F074
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 //Picker For Framework
 //Picker String Array
 NSMutableArray *arrayOfPickerStrings;
 
 @property (nonatomic,retain)  NSMutableArray * arrayOfPickerStrings;
 
 
 //picker
 @synthesize  arrayOfPickerStrings;
 
 
 #pragma mark Picker Methods
 - (void)pickerView:(UIPickerView *)pickerView didSelectRow: (NSInteger)row inComponent:(NSInteger)component {
 // Handle the selection
 NSLog(@"\n FILE->FUNCTION: %s",__FUNCTION__);
 //NSLog(@"Component 0: %i", [pickerView selectedRowInComponent:0]);
 
 
 //get int value ::
 [sharedManager.mutableDictionary  setObject:[NSNumber numberWithInt:[pickerView selectedRowInComponent:0]] forKey:questionNumber];
 
 
 
 //[self logAnswer];
 }
 //NUMBER OF ROWS
 - (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
 NSUInteger numRows = 5;
 return numRows;
 }
 // NUMBER OF COLUMNS
 - (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
 return 1;
 }
 //COLUMNS PREPARATION===============================================================
 // tell the picker the width of each row for a given component
 - (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {
 
 if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
 //iPHONE
 int sectionWidth = 75;
 return sectionWidth;
 } else {
 //iPAD
 int sectionWidth = 300;
 return sectionWidth;
 }
 
 }
 // tell the picker the title for a given component
 - (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
 NSString *title;
 //numbers::  title = [@"" stringByAppendingFormat:@"%d",row];
 //strings::
 title = [arrayOfPickerStrings objectAtIndex:row];
 


return title;
}


- (void)selectRow:(NSInteger)row inComponent:(NSInteger)component animated:(BOOL)animated{
    NSLog(@"\n FILE->FUNCTION: %s",__FUNCTION__);
    
}

//Picker

arrayOfPickerStrings = [[NSMutableArray alloc] init];
[arrayOfPickerStrings addObject:@"Pick an event:"];
[arrayOfPickerStrings addObject:@"Basketball Classics"];
[arrayOfPickerStrings addObject:@"Kroger Festiv"];
[arrayOfPickerStrings addObject:@"Mini Marathon"];
[arrayOfPickerStrings addObject:@"Pegasus Parade"];



 */

