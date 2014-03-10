// CustomizedCell
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: EDBE4756-810B-453A-863A-CCC62D810ED8
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //  < CustomizedCell >
 
 //CUSTOM DEFINE CELL
 cell = [[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] ;
 
 //TYPOGRAPHY PARAMETERS:
 int int_label_size_state = 12;
 int int_label_size_capital = 10;
 
 UILabel *stateLabel =[[UILabel alloc] init ];
 stateLabel.tag = 1;
 stateLabel.frame =  CGRectMake(10,5,200,15);
 stateLabel.font = [UIFont fontWithName:@"Arial" size:int_label_size_state]; 
 stateLabel.textColor = [UIColor blackColor];
 [cell.contentView addSubview:stateLabel];
 
 UILabel *capitalLabel =[[UILabel alloc]  init];
 capitalLabel.tag = 2;
 capitalLabel.frame =  CGRectMake(10,18,200,15);
 capitalLabel.font = [UIFont fontWithName:@"Arial" size:int_label_size_capital]; 
 capitalLabel.textColor = [UIColor grayColor];
 [cell.contentView addSubview:capitalLabel];
 
 UILabel *labelA =[[UILabel alloc] init];
 labelA.frame = CGRectMake(200,10,50,15);
 labelA.tag = 3;
 labelA.font = [UIFont fontWithName:@"Arial" size:10]; 
 labelA.textColor = [UIColor grayColor];
 labelA.layer.borderColor = [UIColor lightGrayColor].CGColor;
 labelA.layer.borderWidth = 1.0f;
 [cell.contentView addSubview:labelA];
 
 UILabel *stateLabelDisplay = (UILabel *)[cell.contentView viewWithTag:1];
 UILabel *capitalLabelDisplay = (UILabel *)[cell.contentView viewWithTag:2];
 UILabel *labelADisplay = (UILabel *)[cell.contentView viewWithTag:3];
 
 stateLabelDisplay.text = [states objectAtIndex:indexPath.row];
 capitalLabelDisplay.text = [capitals objectAtIndex:indexPath.row];
 labelADisplay.text = @"Label A";
 
 // </ CustomizedCell >
 */