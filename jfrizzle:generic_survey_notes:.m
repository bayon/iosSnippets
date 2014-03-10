// jFrizzle:GENERIC SURVEY NOTES:
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 4292DDE2-D3F9-48A3-BDF2-616CC711CB29
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 jFrizzle:GENERIC SURVEY NOTES:
 
 DynamicViewController.h
 
 INTERFACE:
 //View stuff
 NSMutableArray *vcArray;                            // Purpose: {...ALL Views(questions) for the survey...each view is a subclass of SurveyQuestion   }
 UIViewController *currentViewController;            // Purpose: {...???!!!}
 UILongPressGestureRecognizer *resetGesture;         // Purpose: {...Adds reset gesture to each page}
 UIAlertView *alert;                                 // Purpose: {...Set reset survey message...This has to be set in viewDidLoad or it will be called multiple times}
 
 int page;                                           // Purpose: {...???!!!!}
 int current;                                        // Purpose: {...???!!!!}
 BOOL reset;                                         // Purpose: {...switch for reset}
 
 //web service
 NSURLConnection *myNSURLConnection;                 // Purpose: {...connect to API service to download survey setup information}
 NSMutableData *responseData;                        // Purpose: {...store the data returned by the API service }
 
 //data variables
 NSArray *paths;                                     // Purpose: {...sets path to app documents directory}
 NSString *finalDocumentsPath;                       // Purpose: {...path to the PropertyList.plist that holds general values for the app (i.e. if it has been run)}
 NSString *completedSurveysPath;                     // Purpose: {...path to the Completed.plist that holds completed surveys until they can be uploaded}
 NSMutableDictionary *plistData;                     // Purpose: {...used to grab data from the plist file to determine if the app has "been run" before}
 NSMutableArray *purgeableEntities;                  // Purpose: {...This is an array of all Entities that can be wiped, currently we aren't wiping all the entities,but this can be used in the future }
 NSManagedObjectContext *managedObjectContext;       // Purpose: {...???}
 NSMutableArray *completedSurveys;                   // Purpose: {...1.)create a dictionary for currently saved surveys from the plist, then save the current survey}
 //  2.)loop through each completed survey that hasn't been uploaded, and upload it
 //  3.) //remove all successfully uploaded surveys from the main survey plist
 //this must be done as a separate step because the array cannot be
 //changed as it's being enumerated
 Reachability *reachability;                         // Purpose: {...checks to see if internet connection is available}
 
 
 METHODS:
 
 -(void)purgeItSon:(bool)all;                                                // Purpose: {...if all==true, delete everything...if all==false, delete answers table only}
 -(void)connectToDB:(bool)getAll;                                            // Purpose: {...if getAll==true, it will get everything, otherwise it just refreshes the answers table}
 -(void)populateTableWithMethod:(NSString*)method;                           // Purpose: {...populate Core Data entity("table") with the method}
 -(void)viewSetup;                                                           // Purpose: {...sets up ALL the views with the relevant questions,nav buttons,reset gesture, progress bar,intervention questions    }
 -(UIViewController *)createFinishedPage;                                    // Purpose: {...creates the last page of the app}
 -(void)resetSurvey:(UILongPressGestureRecognizer *)gestureRecognizer;       // Purpose: {...alerts the user with an "Are you sure you want to reset?" window, the "alertView" method actually resets the app. }
 -(void)next:(id)sender;                                                     // Purpose: {...dynamically pulls the correct view controllers based on various conditions}
 //CONDITIONS:
 //1.) if the button being pushed is the start page, push the first Survey Question in the vcArray (first page)
 //2.) if the next question id is greater than the number of views in the array, create the finished page
 //3.) if the current question has an answer
 //4.) if we have two modals in a row, determine if the view controller has already been pushed
 //5.) dismissing the current view controller, pushing the next one
 //6.) if the next question is an intervention, but the current question was a regular one
 //7.) if the current question is a modal, but the next one isn't, dismiss the modal
 //8.) they didn't answer the question
 
 
 
 -(void)back:(id)sender;                                                     // Purpose: {...determines if the current question is an intervention or not // if it is, it dismisses the modal, otherwise it just pops the current view off the stack}
 
 
 
 allocated objects:

 UILabel *welcomeLabel                          // Purpose: {... }
 UIImageView *myGraphic                         // Purpose: {...set background to splash background, then send it to back of view}
 SurveyQuestion *vc                             // Purpose: {...subclass of SurveyQuestion.h , that serves as an individual view during dynamic view creation loop }
 resetGesture  UILongPressGestureRecognizer     // Purpose: {... for recognizing user gestures}
 UIProgressView *progress                       // Purpose: {...display users progress based on a ratio of questions answered to all questions.}
 UIButton *beginButton                          // Purpose: {...button to start survey, added ONLY AFTER everything has been set up }
 NSMutableString *answerString                  // Purpose: {... create a string to store all the answers for uploading}
 NSDateFormatter* df_local                      // Purpose: {...get current time formatted for EST}
 completedSurveys = [[NSMutableArray alloc]     // Purpose: {...create a dictionary for currently saved surveys from the plist}
 NSMutableURLRequest *request                   // Purpose: {...used for 1.) populating a table and 2.) uploading a survey}
 UIAlertView *noAnswer                          // Purpose: {...remind the user to respond...}
 UIViewController *finalView  // Purpose: {...view controller to house the last view  }
 
 
 //===============================================================================================================================
 SurveyQuestion.h
 
 INTERFACE:
 int nextQuestionID;                             // Purpose: {...1.)gets the next question ID to be used by the next button logic in DynamicViewController
 //  2.)use the cell's tag to determine the next question's ID
 //  3.)set next question ID based on button clicked}
 NSManagedObjectContext *managedObjectContext;   // Purpose: {...data context}
 CGRect buttonFrame;                             // Purpose: {...??? }
 AnswerBox *answer;                              // Purpose: {...a custom-made subclass of UITextView that includes code for drawing individual lines for text}
 UIButton *selectedButton;                       // Purpose: {...keeps track of the currently selected button...gets tagged by the "Sender" and is used to define users answer }
 UIButton *previousSelectedButton;               // Purpose: {...??? }
 UIButton *nextButton;                           // Purpose: {...for setting the visibility }
 NSArray *allAnswers;                            // Purpose: {...for all the values in the Answers table...used later in determining next question id based on selected answer}
 NSString *questionAnswer;                       // Purpose: {...the users answer}
 UITableView *answerTable;                       // Purpose: {...table view to display the pertinent Answers }
 NSArray *tableValues;                           // Purpose: {...to hold answers associated with a particular survey question.}
 UILabel *customLabel;                           // Purpose: {...not really used right now...can be used for label popup based on selection...see method congratsPopup}
 UITextField *oneLiner;                          // Purpose: {...used for textfields and gets tagged based on keyboard type}
 NSMutableArray *mcAnswers;                      // Purpose: {...handles questions where multiple choices can be selected ... i.e. "if 1 + 3 were selected," or "if all but 2 were selected"}
 CGFloat windowWidth;                            // Purpose: {...sets to the size of the ipad}
 CGFloat windowHeight;                           // Purpose: {...sets to the size of the ipad}
 UITapGestureRecognizer *tap;                    // Purpose: {...1.) to dismiss the keyboard when inside a text box 2.) if there is a tap without an answer, don't unhide the next button}
 bool beenSeen;                                  // Purpose: {...for showing/hiding next button on questions that have been answered}
 bool intervention_question;                     // Purpose: {...???}
 
 
 METHODS:
 
 -(UIView*) question:(NSArray*)question buttons:(NSArray*)buttons;       // Purpose: {...
 //Create the subview the items will be contained in,loops thru and creates the buttons, adds the images to them
 //then sets the labels //create a variable for the image the loop is iterating over, then set the image frame
 //equal to what the actual image size is, then uses a nested for loop to add images
 //for when those buttons are selected. Finally, it adds selectors and labels and aligns
 //them properly}
 -(UIView*)setQuestionLabel:(int)questionID;                             // Purpose: {...
 //create view for the title of the question
 //this includes question number, question text, and border styling subviews
 //questionNumber is the top text field, displays either "question 3" or intervention question text
 //questionTextString is the actual text for the questionNumber field
 //sizeToFit MUST be called before centerWithWidth... method, it dynamically sets width based on the question text
 //question displays the actual question below the upper text field
 //not calling sizeToFit because we want to word-wrap this line (based on marketing)
 //These three lines parse any newline symbols in the database to make them actually work
 //otherwise, they will display "\n" instead of actually going to a new line
 //format question and add it
 //Set upper and lower border for the question, for Doc Crows its a thin line
 //Right now this isn't dynamic, but set at Y coords that work for all lengths
 //add the final borders to title view and return it all nice and shiny
 //)}
 
 -(void)initAsTable:(int)questionID;                                     // Purpose: {...self explanatory)}
 -(void)initAsYesNo:(int)questionID;                                     // Purpose: {...//this is a simple method, uses other methods to set the question label + create buttons)}
 -(void)initAsSlider:(int)questionID;                                    // Purpose: {...self explanatory}
 -(void)initAsNothing:(int)questionID;                                   // Purpose: {...//this is kind of a fallback option, if the question is unique or doesn't have a type)}
 -(void)initAsText:(int)questionID;
 // Purpose: {...
 //used to store dimensions/location pulled from database
 //this handles text fields with a "no thanks" button
 //could probably be ported to UITextView if necessary
 //filter by button types, if the type is 1, it's a no thanks button
 //if type is 3, its a text field box, grab sizes from DB
 //AnswerBox is a custom-made subclass of UITextView that includes
 //code for drawing individual lines for text
 //its pretty badass if I do say so myself
 //setting delegate makes sure we can use all the UITextView delegate methods
 //pretty self explanatory, gets the next question ID to be used by the
 //next button logic in DynamicViewController
 //set to clear so marketing can use their fancy-pants custom backgrounds
 //and we don't have to kill ourselves drawing dumb shadows
 //here we create said fancy-pants background
 //)}
 -(void)initAsOneLineText:(int)questionID type:(NSString*)type;
 // Purpose: {...
 //used to store dimensions/location pulled from database
 //this handles text fields with a "no thanks" button
 //could probably be ported to UITextView if necessary
 //filter by button types, if the type is 1, it's a no thanks button
 //if type is 2, its a text entry box, grab sizes from DB
 //position, style, etc then add view
 //create actual view w/buttons
 //this filters type of question for validation, can be expanded
 //eric wants the return key to say next, for no reason whatsoever
 //make sure the text box is in front, otherwise things can act funky
 //)}
 -(CGRect)centerWithWidth:(int)width Height:(int)height Y:(int)y ;       // Purpose: {...//this method can center any CGRect based on width, height, and Y)}
 
 -(NSArray*)fetchWithEntity:(NSString*)entityName fieldName:(NSString*)fieldName condition:(NSString*)condition fieldValue:(int)fieldValue;       // Purpose: {...//Filters data based on predicate passed to it)}
 
 //custom methods
 -(void)congratsPopup:(id)sender;
 
 
 allocated objects:
 
 tap = [[UITapGestureRecognizer alloc]      // Purpose: {...1.) set up the tap gesture to dismiss the keyboard when inside a text box 2.) if there is a tap without an answer, don't unhide the next button}
 UIImageView *myGraphic                     // Purpose: {...//creates the background image for the questions and sets it to appear behind the text but in front of the wood }
 NSFetchRequest *fetchRequest               // Purpose: {...for "Answers" and for the fetchWithEntity method. }
 self.customLabel                           // Purpose: {... }
 NSString *conditionPhrase                  // Purpose: {...defines the condition to be used in the fetchWithEntity method }
 UIView *titleView                          // Purpose: {...1.) create view for the title of the question ,...this includes question number, question text, and border styling subviews }
 UILabel *questionNumber                    // Purpose: {...questionNumber is the top text field, displays either "question 3" or intervention question text}
 UILabel *question                          // Purpose: {...this is kind of a fallback option, if the question is unique or doesn't have a type}
 UIImageView *upperBorder                   // Purpose: {...Set upper and lower border for the question, for Doc Crows its a thin line...Right now this isn't dynamic, but set at Y coords that work for all lengths}
 UIImageView *lowerBorder                   // Purpose: {... }
 self.answer = [[AnswerBox alloc]           // Purpose: {...tableview with lines like notebook paper}
 UIImageView *imgView                       // Purpose: {...background for text input fields}
 CustomSlider *slider                       // Purpose: {...for the progress bar }
 UIImageView *tableBG                       // Purpose: {... image view to hold the background image of the table view}
 UIView *buttonView                         // Purpose: {...Create the subview the items will be contained in, then specify variables for width and heigh}
 
 
 
 
 //This is an array of all Entities that can be wiped
 //currently we aren't wiping all the entities,
 //but this can be used in the future
 purgeableEntities = [NSMutableArray array];
 [purgeableEntities addObject:@"Questions"];
 [purgeableEntities addObject:@"Buttons"];
 [purgeableEntities addObject:@"Methods"];
 [purgeableEntities addObject:@"Preferences"];
 [purgeableEntities addObject:@"Questions_customizable"];
 [purgeableEntities addObject:@"Questions_types"];
 [purgeableEntities addObject:@"Answers"];
 
 */