// iOS literals
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: BFD654DD-12D1-4EEE-8FC2-172F27F6FCD0
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
/*
   iOS literals

   //STRING
   NSString *literalString = @"Bork Bork Bork";

   // ARRAY
   NSArray *numbArray = [NSArray arrayWithObjects: @0, @23, @3.1415, @25.101, nil];
   NSArray *strArray = @[ @"hi", @"bork", @23, @YES ];
   NSLog (@"strArray 0: %@", strArray[0]);
   NSMutableArray *mutArray = [NSMutableArray arrayWithArray: @[ @"A", @"B", @"C"] ];
    //array containing a block
    NSString *thing1 = [NSString stringWithFormat: @"thing1"];
    NSString *thing2 = [NSMutableString stringWithString: @"thing2"];
    NSOperation *op = [NSBlockOperation blockOperationWithBlock: ^{ }];
    NSArray *stuff = @[ thing1, thing2, op ];
    NSLog (@"%@", stuff);

   // DICTIONARY
   NSDictionary *dic = @{ @"hi" :  @"bork", @"greeble" :  @"bork" };
    NSLog (@"%@", dic[@"greeble"]);
    // nested dictionary
    NSDictionary *nestedDic = @{ @"hi" : @"ohai", @"ichc" :  @{ @"oop" : @"ack"} };
    //convert to mutable
    NSDictionary *flarn = @{ @"name" :  @"Hoover",  @"age" :  @42 };
    NSMutableDictionary *mutaflarn = [flarn mutableCopy];

   BOOLS  NSLog (@"YES: %@  NO: %@", @YES, @NO);

 */