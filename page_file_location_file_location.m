// page file location file_location
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: CF8AC16C-1D78-4309-981B-4F4F7156D5B2
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//===file_location==========================================================================
//file_location: page,file,location,function
UILabel *file_location = [[UILabel alloc] initWithFrame:CGRectMake(2, 2, 400, 25)];
UIColor *blackTransparency = [UIColor colorWithRed:0.0f  green:0.0f  blue:0.0f  alpha:0.5f ];
file_location.backgroundColor  =  blackTransparency ;
NSString *locationString = [NSString stringWithFormat:@"%s",__FUNCTION__];
[file_location setText:locationString];
file_location.font = [UIFont boldSystemFontOfSize:12.0];
[file_location setTextColor:[UIColor whiteColor]];
[self.view addSubview:file_location];
[self.view bringSubviewToFront:file_location];
//===========================================================================================