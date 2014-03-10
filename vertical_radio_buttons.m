// VERTICAL RADIO BUTTONS
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 832C7F02-59D4-469C-85F1-4650828D4214
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 //VERTICAL RADIO BUTTONS
 //Radio Vertical Multiple
 NSMutableDictionary *multipleRadioDictionary;
 
 @property (nonatomic,retain)   NSMutableDictionary *multipleRadioDictionary;
 
 
 //EXTRA VERTICAL BUTTONS
 UIButton *buttonRadio6;
 UIButton *buttonRadio7;
 UIButton *buttonRadio8;
 UIButton *buttonRadio9;
 UIButton *buttonRadio10;
 
 case 16:
 //Multiple Choice Radio Vertical
 //Create a MutableDictionary to temporarily store multiple answers
 multipleRadioDictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
 @"0", @"key1",
 @"0", @"key2",
 @"0", @"key3",
 @"0", @"key4",
 @"0", @"key5",
 @"0", @"key6",
 @"0", @"key7",
 @"0", @"key8",
 @"0", @"key9",
 @"0", @"key10",
 nil];
 
 [self layoutAnswerMultipleChoiceRadioVertical];
 break;
  
 
 -(void)layoutAnswerMultipleChoiceRadioVertical{
 
 
 if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
 
 
 } else {
 UIView *containerView = [[UIView alloc]init];
 //set up interior components
 //Radio
 buttonRadio1 = [[UIButton alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_buttonRadio1X,
 sharedManager.vertical_buttonRadio1Y,
 sharedManager.vertical_buttonRadioW,
 sharedManager.vertical_buttonRadioH)];
 [buttonRadio1 setTag:1];//set answer id
 //Button States
 UIImage *buttonRadio1Image = [UIImage imageNamed: sharedManager.button_smallRadio_off ];//default
 [buttonRadio1  setImage:buttonRadio1Image forState:UIControlStateNormal];
 [buttonRadio1 setImage:buttonRadio1Image forState:UIControlStateSelected];
 UIImage *buttonRadio1ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];//highlighted
 [buttonRadio1 setImage:buttonRadio1ImageHi forState:UIControlStateHighlighted];
 [buttonRadio1 setImage:buttonRadio1Image forState:UIControlStateDisabled];
 //TURN OFF DEFAULT SHADOWING PROPERTY
 [buttonRadio1 setAdjustsImageWhenHighlighted:NO];
 [buttonRadio1 addTarget:self action:@selector(buttonPressedRadioMultiple:) forControlEvents:UIControlEventTouchUpInside];
 //[self.view addSubview: buttonRadio1];
 
 UILabel *labelRadio1 = [[UILabel alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_labelRadio1X,
 sharedManager.vertical_labelRadio1Y,
 sharedManager.vertical_labelRadioW,
 sharedManager.vertical_labelRadioH)];
 labelRadio1.backgroundColor = [UIColor clearColor];
 [labelRadio1 setText:@"Vertical Radio Buttons"];
 [labelRadio1 setFont: [UIFont fontWithName: sharedManager.fontFamily1 size:sharedManager.labelRadioTextSize]];
 [labelRadio1 setTextColor:sharedManager.textColor2];
 // [self.view addSubview:labelRadio1];
 
 //Radio
 buttonRadio2 = [[UIButton alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_buttonRadio1X,
 sharedManager.vertical_buttonRadio2Y,
 sharedManager.vertical_buttonRadioW,
 sharedManager.vertical_buttonRadioH)];
 [buttonRadio2 setTag:2];//set answer id
 //Button States
 UIImage *buttonRadio2Image = [UIImage imageNamed: sharedManager.button_smallRadio_off ];//default
 [buttonRadio2  setImage:buttonRadio2Image forState:UIControlStateNormal];
 [buttonRadio2 setImage:buttonRadio2Image forState:UIControlStateSelected];
 UIImage *buttonRadio2ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];//highlighted
 [buttonRadio2 setImage:buttonRadio2ImageHi forState:UIControlStateHighlighted];
 [buttonRadio2 setImage:buttonRadio2Image forState:UIControlStateDisabled];
 //TURN OFF DEFAULT SHADOWING PROPERTY
 [buttonRadio2 setAdjustsImageWhenHighlighted:NO];
 [buttonRadio2 addTarget:self action:@selector(buttonPressedRadioMultiple:) forControlEvents:UIControlEventTouchUpInside];
 //[self.view addSubview: buttonRadio2];
 UILabel *labelRadio2 = [[UILabel alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_labelRadio1X,
 sharedManager.vertical_labelRadio2Y,
 sharedManager.vertical_labelRadioW,
 sharedManager.vertical_labelRadioH)];
 labelRadio2.backgroundColor = [UIColor clearColor];
 [labelRadio2 setText:@"0-1 months"];
 [labelRadio2 setFont: [UIFont fontWithName: sharedManager.fontFamily1 size:sharedManager.labelRadioTextSize]];
 [labelRadio2 setTextColor:sharedManager.textColor2];
 //[self.view addSubview:labelRadio2];
 
 //Radio
 buttonRadio3 = [[UIButton alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_buttonRadio1X,
 sharedManager.vertical_buttonRadio3Y,
 sharedManager.vertical_buttonRadioW,
 sharedManager.vertical_buttonRadioH)];
 [buttonRadio3 setTag:3];//set answer id
 //Button States
 UIImage *buttonRadio3Image = [UIImage imageNamed: sharedManager.button_smallRadio_off ];//default
 [buttonRadio3  setImage:buttonRadio3Image forState:UIControlStateNormal];
 [buttonRadio3 setImage:buttonRadio3Image forState:UIControlStateSelected];
 UIImage *buttonRadio3ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];//highlighted
 [buttonRadio3 setImage:buttonRadio3ImageHi forState:UIControlStateHighlighted];
 [buttonRadio3 setImage:buttonRadio3Image forState:UIControlStateDisabled];
 //TURN OFF DEFAULT SHADOWING PROPERTY
 [buttonRadio3 setAdjustsImageWhenHighlighted:NO];
 [buttonRadio3 addTarget:self action:@selector(buttonPressedRadioMultiple:) forControlEvents:UIControlEventTouchUpInside];
 //[self.view addSubview: buttonRadio3];
 UILabel *labelRadio3 = [[UILabel alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_labelRadio1X,
 sharedManager.vertical_labelRadio3Y,
 sharedManager.vertical_labelRadioW,
 sharedManager.vertical_labelRadioH)];
 labelRadio3.backgroundColor = [UIColor clearColor];
 [labelRadio3 setText:@"label3"];
 [labelRadio3 setFont: [UIFont fontWithName: sharedManager.fontFamily1 size:sharedManager.labelRadioTextSize]];
 [labelRadio3 setTextColor:sharedManager.textColor2];
 //[self.view addSubview:labelRadio3];
 //Radio
 buttonRadio4 = [[UIButton alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_buttonRadio1X,
 sharedManager.vertical_buttonRadio4Y,
 sharedManager.vertical_buttonRadioW,
 sharedManager.vertical_buttonRadioH)];
 [buttonRadio4 setTag:4];//set answer id
 //Button States
 UIImage *buttonRadio4Image = [UIImage imageNamed: sharedManager.button_smallRadio_off ];//default
 [buttonRadio4  setImage:buttonRadio4Image forState:UIControlStateNormal];
 [buttonRadio4 setImage:buttonRadio4Image forState:UIControlStateSelected];
 UIImage *buttonRadio4ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];//highlighted
 [buttonRadio4 setImage:buttonRadio4ImageHi forState:UIControlStateHighlighted];
 [buttonRadio4 setImage:buttonRadio4Image forState:UIControlStateDisabled];
 //TURN OFF DEFAULT SHADOWING PROPERTY
 [buttonRadio4 setAdjustsImageWhenHighlighted:NO];
 [buttonRadio4 addTarget:self action:@selector(buttonPressedRadioMultiple:) forControlEvents:UIControlEventTouchUpInside];
 //[self.view addSubview: buttonRadio4];
 UILabel *labelRadio4 = [[UILabel alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_labelRadio1X,
 sharedManager.vertical_labelRadio4Y,
 sharedManager.vertical_labelRadioW,sharedManager.vertical_labelRadioH)];
 labelRadio4.backgroundColor = [UIColor clearColor];
 [labelRadio4 setText:@"label4"];
 [labelRadio4 setFont: [UIFont fontWithName: sharedManager.fontFamily1 size:sharedManager.labelRadioTextSize]];
 [labelRadio4 setTextColor:sharedManager.textColor2];
 
 //[self.view addSubview:labelRadio4];
 
 //Radio
 buttonRadio5 = [[UIButton alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_buttonRadio1X,
 sharedManager.vertical_buttonRadio5Y,
 sharedManager.vertical_buttonRadioW,
 sharedManager.vertical_buttonRadioH)];
 [buttonRadio5 setTag:5];//set answer id
 //Button States
 UIImage *buttonRadio5Image = [UIImage imageNamed: sharedManager.button_smallRadio_off ];//default
 [buttonRadio5  setImage:buttonRadio5Image forState:UIControlStateNormal];
 [buttonRadio5 setImage:buttonRadio5Image forState:UIControlStateSelected];
 UIImage *buttonRadio5ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];//highlighted
 [buttonRadio5 setImage:buttonRadio5ImageHi forState:UIControlStateHighlighted];
 [buttonRadio5 setImage:buttonRadio5Image forState:UIControlStateDisabled];
 //TURN OFF DEFAULT SHADOWING PROPERTY
 [buttonRadio5 setAdjustsImageWhenHighlighted:NO];
 [buttonRadio5 addTarget:self action:@selector(buttonPressedRadioMultiple:) forControlEvents:UIControlEventTouchUpInside];
 //[self.view addSubview: buttonRadio5];
 UILabel *labelRadio5 = [[UILabel alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_labelRadio1X,
 sharedManager.vertical_labelRadio5Y,
 sharedManager.vertical_labelRadioW,
 sharedManager.vertical_labelRadioH)];
 labelRadio5.backgroundColor = [UIColor clearColor];
 [labelRadio5 setText:@"label5"];
 [labelRadio5 setFont: [UIFont fontWithName: sharedManager.fontFamily1 size:sharedManager.labelRadioTextSize]];
 [labelRadio5 setTextColor:sharedManager.textColor2];
 //[self.view addSubview:labelRadio5];
 
 //set up interior components
 //Radio
 buttonRadio6 = [[UIButton alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_buttonRadio2X,
 sharedManager.vertical_buttonRadio1Y,
 sharedManager.vertical_buttonRadioW,
 sharedManager.vertical_buttonRadioH)];
 [buttonRadio6 setTag:6];//set answer id
 //Button States
 UIImage *buttonRadio6Image = [UIImage imageNamed: sharedManager.button_smallRadio_off ];//default
 [buttonRadio6  setImage:buttonRadio6Image forState:UIControlStateNormal];
 [buttonRadio6 setImage:buttonRadio6Image forState:UIControlStateSelected];
 UIImage *buttonRadio6ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];//highlighted
 [buttonRadio6 setImage:buttonRadio6ImageHi forState:UIControlStateHighlighted];
 [buttonRadio6 setImage:buttonRadio6Image forState:UIControlStateDisabled];
 //TURN OFF DEFAULT SHADOWING PROPERTY
 [buttonRadio6 setAdjustsImageWhenHighlighted:NO];
 [buttonRadio6 addTarget:self action:@selector(buttonPressedRadioMultiple:) forControlEvents:UIControlEventTouchUpInside];
 //[self.view addSubview: buttonRadio1];
 
 UILabel *labelRadio6 = [[UILabel alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_labelRadio2X,
 sharedManager.vertical_labelRadio1Y,
 sharedManager.vertical_labelRadioW,
 sharedManager.vertical_labelRadioH)];
 labelRadio6.backgroundColor = [UIColor clearColor];
 [labelRadio6 setText:@"Vertical Radio Buttons"];
 [labelRadio6 setFont: [UIFont fontWithName: sharedManager.fontFamily1 size:sharedManager.labelRadioTextSize]];
 [labelRadio6 setTextColor:sharedManager.textColor2];
 // [self.view addSubview:labelRadio1];
 
 //Radio
 buttonRadio7 = [[UIButton alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_buttonRadio2X,
 sharedManager.vertical_buttonRadio2Y,
 sharedManager.vertical_buttonRadioW,
 sharedManager.vertical_buttonRadioH)];
 [buttonRadio7 setTag:7];//set answer id
 //Button States
 UIImage *buttonRadio7Image = [UIImage imageNamed: sharedManager.button_smallRadio_off ];//default
 [buttonRadio7  setImage:buttonRadio7Image forState:UIControlStateNormal];
 [buttonRadio7 setImage:buttonRadio7Image forState:UIControlStateSelected];
 UIImage *buttonRadio7ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];//highlighted
 [buttonRadio7 setImage:buttonRadio7ImageHi forState:UIControlStateHighlighted];
 [buttonRadio7 setImage:buttonRadio7Image forState:UIControlStateDisabled];
 //TURN OFF DEFAULT SHADOWING PROPERTY
 [buttonRadio7 setAdjustsImageWhenHighlighted:NO];
 [buttonRadio7 addTarget:self action:@selector(buttonPressedRadioMultiple:) forControlEvents:UIControlEventTouchUpInside];
 //[self.view addSubview: buttonRadio2];
 UILabel *labelRadio7 = [[UILabel alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_labelRadio2X,
 sharedManager.vertical_labelRadio2Y,
 sharedManager.vertical_labelRadioW,
 sharedManager.vertical_labelRadioH)];
 labelRadio7.backgroundColor = [UIColor clearColor];
 [labelRadio7 setText:@"0-1 months"];
 [labelRadio7 setFont: [UIFont fontWithName: sharedManager.fontFamily1 size:sharedManager.labelRadioTextSize]];
 [labelRadio7 setTextColor:sharedManager.textColor2];
 //[self.view addSubview:labelRadio2];
 
 //Radio
 buttonRadio8 = [[UIButton alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_buttonRadio2X,
 sharedManager.vertical_buttonRadio3Y,
 sharedManager.vertical_buttonRadioW,
 sharedManager.vertical_buttonRadioH)];
 [buttonRadio8 setTag:8];//set answer id
 //Button States
 UIImage *buttonRadio8Image = [UIImage imageNamed: sharedManager.button_smallRadio_off ];//default
 [buttonRadio8  setImage:buttonRadio8Image forState:UIControlStateNormal];
 [buttonRadio8 setImage:buttonRadio8Image forState:UIControlStateSelected];
 UIImage *buttonRadio8ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];//highlighted
 [buttonRadio8 setImage:buttonRadio8ImageHi forState:UIControlStateHighlighted];
 [buttonRadio8 setImage:buttonRadio8Image forState:UIControlStateDisabled];
 //TURN OFF DEFAULT SHADOWING PROPERTY
 [buttonRadio8 setAdjustsImageWhenHighlighted:NO];
 [buttonRadio8 addTarget:self action:@selector(buttonPressedRadioMultiple:) forControlEvents:UIControlEventTouchUpInside];
 //[self.view addSubview: buttonRadio3];
 UILabel *labelRadio8 = [[UILabel alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_labelRadio2X,
 sharedManager.vertical_labelRadio3Y,
 sharedManager.vertical_labelRadioW,
 sharedManager.vertical_labelRadioH)];
 labelRadio8.backgroundColor = [UIColor clearColor];
 [labelRadio8 setText:@"label8"];
 [labelRadio8 setFont: [UIFont fontWithName: sharedManager.fontFamily1 size:sharedManager.labelRadioTextSize]];
 [labelRadio8 setTextColor:sharedManager.textColor2];
 //[self.view addSubview:labelRadio3];
 //Radio
 buttonRadio9 = [[UIButton alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_buttonRadio2X,
 sharedManager.vertical_buttonRadio4Y,
 sharedManager.vertical_buttonRadioW,
 sharedManager.vertical_buttonRadioH)];
 [buttonRadio9 setTag:9];//set answer id
 //Button States
 UIImage *buttonRadio9Image = [UIImage imageNamed: sharedManager.button_smallRadio_off ];//default
 [buttonRadio9  setImage:buttonRadio9Image forState:UIControlStateNormal];
 [buttonRadio9 setImage:buttonRadio9Image forState:UIControlStateSelected];
 UIImage *buttonRadio9ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];//highlighted
 [buttonRadio9 setImage:buttonRadio9ImageHi forState:UIControlStateHighlighted];
 [buttonRadio9 setImage:buttonRadio9Image forState:UIControlStateDisabled];
 //TURN OFF DEFAULT SHADOWING PROPERTY
 [buttonRadio9 setAdjustsImageWhenHighlighted:NO];
 [buttonRadio9 addTarget:self action:@selector(buttonPressedRadioMultiple:) forControlEvents:UIControlEventTouchUpInside];
 //[self.view addSubview: buttonRadio4];
 UILabel *labelRadio9 = [[UILabel alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_labelRadio2X,
 sharedManager.vertical_labelRadio4Y,
 sharedManager.vertical_labelRadioW,sharedManager.vertical_labelRadioH)];
 labelRadio9.backgroundColor = [UIColor clearColor];
 [labelRadio9 setText:@"label9"];
 [labelRadio9 setFont: [UIFont fontWithName: sharedManager.fontFamily1 size:sharedManager.labelRadioTextSize]];
 [labelRadio9 setTextColor:sharedManager.textColor2];
 
 //[self.view addSubview:labelRadio4];
 
 //Radio
 buttonRadio10 = [[UIButton alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_buttonRadio2X,
 sharedManager.vertical_buttonRadio5Y,
 sharedManager.vertical_buttonRadioW,
 sharedManager.vertical_buttonRadioH)];
 [buttonRadio10 setTag:10];//set answer id
 //Button States
 UIImage *buttonRadio10Image = [UIImage imageNamed: sharedManager.button_smallRadio_off ];//default
 [buttonRadio10  setImage:buttonRadio10Image forState:UIControlStateNormal];
 [buttonRadio10 setImage:buttonRadio10Image forState:UIControlStateSelected];
 UIImage *buttonRadio10ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];//highlighted
 [buttonRadio10 setImage:buttonRadio10ImageHi forState:UIControlStateHighlighted];
 [buttonRadio10 setImage:buttonRadio10Image forState:UIControlStateDisabled];
 //TURN OFF DEFAULT SHADOWING PROPERTY
 [buttonRadio10 setAdjustsImageWhenHighlighted:NO];
 [buttonRadio10 addTarget:self action:@selector(buttonPressedRadioMultiple:) forControlEvents:UIControlEventTouchUpInside];
 //[self.view addSubview: buttonRadio5];
 UILabel *labelRadio10 = [[UILabel alloc] initWithFrame:CGRectMake(
 sharedManager.vertical_labelRadio2X,
 sharedManager.vertical_labelRadio5Y,
 sharedManager.vertical_labelRadioW,
 sharedManager.vertical_labelRadioH)];
 labelRadio10.backgroundColor = [UIColor clearColor];
 [labelRadio10 setText:@"label5"];
 [labelRadio10 setFont: [UIFont fontWithName: sharedManager.fontFamily1 size:sharedManager.labelRadioTextSize]];
 [labelRadio10 setTextColor:sharedManager.textColor2];
 //[self.view addSubview:labelRadio5];
 //BORDERS
 //#import <QuartzCore/QuartzCore.h>
 
 
 //containerView.layer.borderColor = [UIColor redColor].CGColor;
 //containerView.layer.borderWidth = 1.0f;
 //end set up interior components
 [containerView setFrame:[sharedManager centerWithWidthDeluxe: sharedManager.vertical_RadioContainerW
 Height: sharedManager.vertical_RadioContainerH
 Y: sharedManager.vertical_RadioContainerY]];
 
 //[containerView addSubview:buttonYes];
 //[containerView addSubview:buttonNo];
 [containerView addSubview: buttonRadio1];
 [containerView addSubview:labelRadio1];
 [containerView addSubview: buttonRadio2];
 [containerView addSubview:labelRadio2];
 [containerView addSubview: buttonRadio3];
 [containerView addSubview:labelRadio3];
 [containerView addSubview: buttonRadio4];
 [containerView addSubview:labelRadio4];
 [containerView addSubview: buttonRadio5];
 [containerView addSubview:labelRadio5];
 
 [containerView addSubview: buttonRadio6];
 [containerView addSubview:labelRadio6];
 [containerView addSubview: buttonRadio7];
 [containerView addSubview:labelRadio7];
 [containerView addSubview: buttonRadio8];
 [containerView addSubview:labelRadio8];
 [containerView addSubview: buttonRadio9];
 [containerView addSubview:labelRadio9];
 [containerView addSubview: buttonRadio10];
 [containerView addSubview:labelRadio10];
 
 //HIDE-SHOW: containerView
 [self.view addSubview:containerView];
 }
 
 
 }
 
 
 
 
 -(void)buttonPressedRadioMultiple:(id)sender{
 //Get Tag from UIButton or sender
 button = (UIButton *)sender;
 int bTag = button.tag;
 
 if(bTag == 1){
 UIImage *buttonRadio1ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];
 [buttonRadio1 setImage:buttonRadio1ImageHi forState:UIControlStateNormal];
 [multipleRadioDictionary setObject:@"1" forKey:@"key1"];
 }
 if(bTag == 2){
 UIImage *buttonRadio2ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];
 [buttonRadio2 setImage:buttonRadio2ImageHi forState:UIControlStateNormal];
 [multipleRadioDictionary setObject:@"2" forKey:@"key2"];
 }
 if(bTag == 3){
 UIImage *buttonRadio3ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];
 [buttonRadio3 setImage:buttonRadio3ImageHi forState:UIControlStateNormal];
 [multipleRadioDictionary setObject:@"3" forKey:@"key3"];
 }
 if(bTag == 4){
 UIImage *buttonRadio4ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];
 [buttonRadio4 setImage:buttonRadio4ImageHi forState:UIControlStateNormal];
 [multipleRadioDictionary setObject:@"4" forKey:@"key4"];
 }
 if(bTag == 5){
 UIImage *buttonRadio5ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];
 [buttonRadio5 setImage:buttonRadio5ImageHi forState:UIControlStateNormal];
 [multipleRadioDictionary setObject:@"5" forKey:@"key5"];
 }
 if(bTag == 6){
 UIImage *buttonRadio6ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];
 [buttonRadio6 setImage:buttonRadio6ImageHi forState:UIControlStateNormal];
 [multipleRadioDictionary setObject:@"6" forKey:@"key6"];
 }
 if(bTag == 7){
 UIImage *buttonRadio7ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];
 [buttonRadio7 setImage:buttonRadio7ImageHi forState:UIControlStateNormal];
 [multipleRadioDictionary setObject:@"7" forKey:@"key7"];
 }
 if(bTag == 8){
 UIImage *buttonRadio8ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];
 [buttonRadio8 setImage:buttonRadio8ImageHi forState:UIControlStateNormal];
 [multipleRadioDictionary setObject:@"8" forKey:@"key8"];
 }
 if(bTag == 9){
 UIImage *buttonRadio9ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];
 [buttonRadio9 setImage:buttonRadio9ImageHi forState:UIControlStateNormal];
 [multipleRadioDictionary setObject:@"9" forKey:@"key9"];
 }
 if(bTag == 10){
 UIImage *buttonRadio10ImageHi = [UIImage imageNamed: sharedManager. button_smallRadio_on ];
 [buttonRadio10 setImage:buttonRadio10ImageHi forState:UIControlStateNormal];
 [multipleRadioDictionary setObject:@"10" forKey:@"key10"];
 }
 //[self logAnswer];
 }
 
 
 -(void)handleMultipleAnswers{
 NSString *finalString = @"";
 for(id key in multipleRadioDictionary) {
 id value = [multipleRadioDictionary objectForKey:key];
 NSString *valueAsString = (NSString *)value;
 if ([valueAsString isEqualToString:@"0"]){
 //don't do some stuff in here
 }else{
 NSLog(@"value: %@", valueAsString);
 finalString =  [sharedManager strCatCSV: finalString: valueAsString];
 }
 }
 [sharedManager.mutableDictionary  setObject:finalString forKey:questionNumber];
 }
 
 */