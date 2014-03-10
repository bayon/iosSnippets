//  NSNumberFormatter
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 7EA3B107-587E-4BC9-B479-E2FA0D9527CB
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
// NSNumberFormatter
    // credit: http://useyourloaf.com/blog/2012/06/14/using-number-formatters.html
    // No Style - NSNumberFormatterNoStyle
    // 1234568
    // Decimal Style - NSNumberFormatterDecimalStyle
    // 1,234,567.837
    // Currency Style - NSNumberFormatterCurrencyStyle
    // £1,234,567.84
    // Percent Style - NSNumberFormatterPercentStyle
    // 123,456,784%
    // Scientific Style - NSNumberFormatterScientificStyle
    // 1.2345678369E6
    
    NSNumber *num1 = [NSNumber numberWithDouble:.83];
    NSString *numberStr = [NSNumberFormatter localizedStringFromNumber:num1 numberStyle:NSNumberFormatterPercentStyle];
    
    
    NSLog(@"numberStr:%@",numberStr);