// Load A Nib Xib File Programatically
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 22C11E34-C147-44A1-B592-541E62850B21
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
// Create and Load A Nib File Programatically
 .h
 UIView *tableHeaderView; 
 @property (nonatomic, retain) IBOutlet UIView *tableHeaderView;
 .m
 @synthesize tableHeaderView;
 - (void)viewDidLoad {
     self.navigationItem.rightBarButtonItem = self.editButtonItem;
     
     // Create and set the table header view.
     if (tableHeaderView == nil) {
         [[NSBundle mainBundle] loadNibNamed:@"DetailHeaderView" owner:self options:nil];
         self.tableView.tableHeaderView = tableHeaderView;
         self.tableView.allowsSelectionDuringEditing = YES;
     }
 }

*/