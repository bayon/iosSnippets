// customize cell 3 steps
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: D56CFAB2-67F9-41F7-8DE9-525B5CF7BFBD
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 /* 
         //3 step customize cell
         //1.)
        UILabel *labelAddress =[[UILabel alloc] init];
        labelAddress.frame = CGRectMake(400,15,400,30);
        labelAddress.tag = 3;
        labelAddress.font = [UIFont fontWithName:@"Arial" size:13];
        labelAddress.textColor = [UIColor grayColor];
        [cell.contentView addSubview:labelAddress];
        
         //2.)
         UILabel *labelADisplay = (UILabel *)[cell.contentView viewWithTag:3];
         //3.)
         labelADisplay.text = building.buildingAddress;


*/
