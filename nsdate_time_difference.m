// NSDATE TIME DIFFERENCE
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: AA3F3014-AF39-44C1-88D9-4CAE0DC3B7FE
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
     // NSDATE TIME DIFFERENCE
     NSDate *dateA;
     NSDate *dateB;
     
     NSCalendar *calendar = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
     NSDateComponents *components = [calendar components:NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit
     fromDate:dateA
     toDate:dateB
     options:0];
     
     NSLog(@"Difference in date components: %i/%i/%i", components.day, components.month, components.year);

     
     */