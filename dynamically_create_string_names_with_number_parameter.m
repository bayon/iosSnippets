// Dynamically Create String Names with Number parameter
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 3967240A-2AAD-4290-96C3-BB2C489AB8EE
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //Dynamically Create String Names with Number parameter
 - (UIButton *)getStyledButtonForNumber:(int)number
 {
 UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
 NSString *imageName = [NSString stringWithFormat:@"but_btn_%iloginKey_off", number];
 NSString *altImageName = [NSString stringWithFormat:@"but_btn_%iloginKey_on", number];
 [button setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
 [button setBackgroundImage:[UIImage imageNamed:altImageName] forState:UIControlStateHighlighted];
 [button setTag:number];
 [button addTarget:self action:@selector(digitButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
 return button;
 
 }
 */