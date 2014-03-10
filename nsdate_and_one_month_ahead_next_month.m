// NSDate and one month ahead next month
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: D5FEF821-7573-41C0-B477-26459CB67F26
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
     //NSDate and one month ahead next month
     NSDate *today = [NSDate date];
     NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
     NSDateComponents *components = [[NSDateComponents alloc] init];
     components.month = 1;
     NSDate *nextMonth = [gregorian dateByAddingComponents:components toDate:today options:0];
     [components release];
     NSDateComponents *nextMonthComponents = [gregorian components:NSYearCalendarUnit | NSMonthCalendarUnit fromDate:nextMonth];
     NSDateComponents *todayDayComponents = [gregorian components:NSDayCalendarUnit fromDate:today];
     nextMonthComponents.day = todayDayComponents.day;
     NSDate *nextMonthDay = [gregorian dateFromComponents:nextMonthComponents];
     [gregorian release];

     */