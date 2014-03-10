// CRUD : TableView From CoreData
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 1E338203-3BC5-4164-9F5B-1B49CCE4CE55
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 // CRUD : TableView From CoreData
 
 //- - - - -  TABLE CELL - - - - - - 
 #import <UIKit/UIKit.h>
 
 @interface Cell1 : UITableViewCell{
 UILabel *leftLabel;
 UILabel *rightLabel;
 UIImageView *imageView;
 UIImageView *backgroundImageView;
 }
 @property (nonatomic, retain) UILabel *leftLabel;
 @property (nonatomic, retain) UILabel *rightLabel;
 @property (nonatomic, retain) UIImageView *imageView;
 @property (nonatomic, retain) UIImageView *backgroundImageView;
 
 
 @end
 
 
 
 
 #import "Cell1.h"
 
 @implementation Cell1
 @synthesize leftLabel,rightLabel,imageView,backgroundImageView;
 
 
 - (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
 {
 self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
 if (self) {
 // Initialization code
 if (self) {
 // Initialization code
 CGFloat windowWidth = [UIScreen mainScreen].bounds.size.width;
 self.backgroundImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, windowWidth, 61)];
 // self.backgroundImageView.image = [UIImage imageNamed:sharedManager.search_searchTableRow_off ];
 [self.contentView addSubview:backgroundImageView];
 self.leftLabel = [[UILabel alloc] init];
 self.leftLabel.frame = CGRectMake(70, 20, 100, 20);
 self.leftLabel.font = [UIFont boldSystemFontOfSize:12];
 self.leftLabel.backgroundColor = [UIColor clearColor];
 [self.contentView addSubview:leftLabel];
 
 self.rightLabel = [[UILabel alloc] init];
 self.rightLabel.frame = CGRectMake(160, 20, 200, 20);
 self.rightLabel.font = [UIFont boldSystemFontOfSize:10];
 self.rightLabel.textColor = [UIColor grayColor];
 self.rightLabel.backgroundColor = [UIColor clearColor];
 [self.contentView addSubview:rightLabel];
 
 self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
 [self.contentView addSubview:imageView];
 
 }
 return self;
 }
 return self;
 }
 
 - (void)setSelected:(BOOL)selected animated:(BOOL)animated
 {
 [super setSelected:selected animated:animated];
 // Configure the view for the selected state
 }
 
 @end
 
 
  //- - - - -  View Controller - - - - - -
 
 #import <UIKit/UIKit.h>
 
 @interface Read : UIViewController <UITableViewDataSource,UITableViewDelegate>{
 NSManagedObjectContext *managedObjectContext;
 NSMutableArray *toDoData;
 }
 @property (nonatomic,retain) UITableView * tableView1;
 @property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
 @end
 
 
 
 
 #import "Read.h"
 #import "Cell1.h"
 #import "ToDo.h"
 
 @interface Read (){
 
 }
 @property (nonatomic, retain) NSMutableArray *toDoData;
 
 @end
 
 
 @implementation Read
 
 @synthesize tableView1;
 @synthesize managedObjectContext;
 @synthesize toDoData;
 
 
 
 #pragma mark - State Management
 
 - (void)viewWillAppear:(BOOL)animated {
 [super viewWillAppear:animated];
 [self readAll];
 [tableView1 reloadData];
 
 }
 
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 [self buildNavBar];
 [self buildTableView];
 }
 
 - (void)viewWillDisappear:(BOOL)animated{
 //count stack in nav controller
 NSLog(@"Views in Nav Controller hierarchy: %lu", (unsigned long)[self.navigationController.viewControllers count]);
 }
 
 
 #pragma mark - UI Functions
 -(void)buildNavBar{
 if(self.navigationController){
 NSLog(@"yes we have a nav controller.");
 UIBarButtonItem *addButton =[[UIBarButtonItem alloc]
 initWithTitle:@"Add"
 style:UIBarButtonItemStylePlain
 target:self
 action:@selector(navigateToAddController)];
 
 self.navigationItem.rightBarButtonItem = addButton;
 [self setTitle:@"CRUD To Do"];
 }
 }
 -(void)buildTableView{
 //full screen dimensions
 CGRect screenRect = [[UIScreen mainScreen] bounds];
 CGFloat screenWidth = screenRect.size.width;
 CGFloat screenHeight = screenRect.size.height;
 tableView1 = [[UITableView alloc] initWithFrame:CGRectMake(0,0,screenWidth,screenHeight) style:UITableViewStylePlain] ;
 tableView1.dataSource = self;
 tableView1.delegate = self;
 [self.view addSubview:tableView1];
 
 }
 
 

 */