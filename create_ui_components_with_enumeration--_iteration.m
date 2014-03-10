// CREATE UI COMPONENTS WITH ENUMERATION-- ITERATION
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: E595EBE0-EEEB-4E6C-96AD-8B3AE7EE43FD
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*  CREATE UI COMPONENTS WITH ENUMERATION-- ITERATION
NSArray  * array = [NSArray arrayWithObjects:@"foo",@"bar",@"baz",nil];
int oneMoreThanNeeded = 3;
for (int i =0 ; i < oneMoreThanNeeded; i++) {
    NSLog(@"Number : %i",i);
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(5, 20 + 35 * i ,400,25)];
    tf.tag = i + 1;
    tf.text = [array objectAtIndex: i];
    [self.view addSubview:tf];
}

*/