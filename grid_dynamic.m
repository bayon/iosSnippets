// grid dynamic
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: E2E13C7D-7A2E-4317-8D68-6A81BF8E1B5C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

        
         // VIEW CONTAINER   -------
        //Positioning:
        int viewContainer_x = 0;
        int viewContainer_y = 50;
        //Size:
        int viewContainer_width = 800;
        int viewContainer_height = 1024;
        
        UIView *viewContainer = [[UIView alloc] initWithFrame:CGRectMake( viewContainer_x, viewContainer_y, viewContainer_width, viewContainer_height )]; 
        viewContainer.backgroundColor = [UIColor lightGrayColor];
        viewContainer.layer.borderColor = [UIColor blackColor].CGColor;
        viewContainer.layer.borderWidth = 1.0f;
        //ROUNDED CORNERS
        //viewContainer.layer.cornerRadius = 11;
        
        //DIRECTIONS:---> addSubview:whatever to viewContainer ie. [viewContainer addSubview: whatEver];
        //ADD THIS [self.view addSubview:viewContainer];
        //END VIEW CONTAINER
        
        
        
        
        //--- GRID VIEW : from a ScrollView inside a UIViewController-------------------
        //GRID CONTAINER-----------------
            //Positioning:
            int gridContainer_x = 200;
            int gridContainer_y = 100;
            //Size:
            int gridContainer_width = 500;
            int gridContainer_height = 200;
        
            UIView *gridContainer = [[UIView alloc] initWithFrame:CGRectMake( gridContainer_x, gridContainer_y, gridContainer_width, gridContainer_height )]; 
            gridContainer.backgroundColor = [UIColor whiteColor];
            gridContainer.layer.borderColor = [UIColor lightGrayColor].CGColor;
            gridContainer.layer.borderWidth = 1.0f;
            //ROUNDED CORNERS
            gridContainer.layer.cornerRadius = 11;
            gridContainer.layer.masksToBounds = YES;
        
        //HEADER---------------------------------HHHH
        int header_x = 0;
        int header_y = 0;
        int numberOfColumns = 5;
        
        //Define GRID HEADER WIDTH from "sum of individually defined widths
        int header_width = numberOfColumns * WIDTH_COL_STD;
        
        //---HEADER ROW--------------------->>>
        UIView *header = [[UIView alloc] initWithFrame:CGRectMake( header_x, header_y, header_width, ROW_HEIGHT )]; 
        header.backgroundColor = [UIColor whiteColor];
        header.layer.borderColor = [UIColor lightGrayColor].CGColor;
        header.layer.borderWidth = 0.5f;
                     
        //HEADER COLUMNS ITERATION
         for (int i =0 ; i < numberOfColumns; i++) {
             UIView *columnView = [[UIView alloc] initWithFrame:CGRectMake(WIDTH_COL_STD * i, 0, WIDTH_COL_STD, CELL_HEIGHT)];
             columnView.tag = i + 1;
             columnView.backgroundColor = [UIColor whiteColor];
             columnView.layer.borderColor = [UIColor lightGrayColor].CGColor;
             columnView.layer.borderWidth = .5f;
             
             //HEADER LABEL  GENERAL DEFINITIONS
             headerSTD = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, WIDTH_COL_STD, CELL_HEIGHT)];
                 if(i==0){
                     headerSTD.text = @"H 1";
                 }
                 if(i==1){
                    headerSTD.text = @"H 2";
                 }
                 if(i==2){
                     headerSTD.text = @"H 3";
                 }
                 if(i==3){
                    headerSTD.text = @"H 4";
                 }
                 if(i==4){
                    headerSTD.text = @"H 5";
                 }
             
             headerSTD.textColor = [UIColor blueColor];
             [columnView addSubview: headerSTD];
             [header addSubview:columnView];
         }      

        //------------END HEADER
        
        //---GRID: BODY CONTAINER------------------------------------------------------------------------------------>>>
        UIScrollView *grid = [[UIScrollView alloc] init];
            //Define GRID WIDTH from "sum of individually defined widths
            int grid_width = header_width; 
            //Define GRID HEIGHT from the product of rows times row height
            int grid_custom_height = 150;
            int grid_x = 0;
            int grid_y = header_y + ROW_HEIGHT;
            //CUSTOM SCREEN SIZE
            grid=[[UIScrollView alloc]  initWithFrame:CGRectMake(grid_x, grid_y ,grid_width, grid_custom_height)]; 
            grid.backgroundColor = [UIColor lightGrayColor];
            grid.layer.borderColor = [UIColor lightGrayColor].CGColor;
            grid.layer.borderWidth = 1.0f; 
            //EFFECTS THE SCROLLING CAPABILITY
            NSInteger heightMultiplier= 2; 
            grid.contentSize = CGSizeMake(grid_width, grid_custom_height *heightMultiplier);
       
        //---ROWS------------------------------------------------------------------------------------>>>

        //---ROW--------------------->>>
        UIView *row1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, grid.frame.size.width, ROW_HEIGHT)]; 
        row1.backgroundColor = [UIColor whiteColor];
        row1.layer.borderColor = [UIColor lightGrayColor].CGColor;
        row1.layer.borderWidth = 0.5f;
            //COLUMNS ITERATION
            for (int i =0 ; i < numberOfColumns; i++) {
                UIView *columnView = [[UIView alloc] initWithFrame:CGRectMake(WIDTH_COL_STD * i, 0, WIDTH_COL_STD, CELL_HEIGHT)];
                columnView.tag = i + 1;
                columnView.backgroundColor = [UIColor whiteColor];
                columnView.layer.borderColor = [UIColor lightGrayColor].CGColor;
                columnView.layer.borderWidth = .5f;
                
                if(i==0){
                    //BUTTON: 
                    buttonHome = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                    [buttonHome addTarget:self action:@selector(goHome) forControlEvents:UIControlEventTouchUpInside];
                    [buttonHome setTitle:@"HOME" forState:UIControlStateNormal];
                    buttonHome.frame = CGRectMake(10.0f, 10.0f, 80.0f, 30.0f);
                    [columnView addSubview: buttonHome];
                    
                }
                if(i==1){
                    NSLog(@" FILE: %s : Iteration %i",__FILE__,i ); 
                }
                if(i==2){
                   NSLog(@" FILE: %s : Iteration %i",__FILE__,i );
                }
                if(i==3){
                     NSLog(@" FILE: %s : Iteration %i",__FILE__,i );
                }
                if(i==4){
                    UISwitch *switchView = [[UISwitch alloc] initWithFrame:CGRectMake(15,15,WIDTH_COL_STD,CELL_HEIGHT)];
                    [switchView setOn:NO animated:NO];
                    [switchView addTarget:self action:@selector(switchChanged:) forControlEvents:UIControlEventValueChanged];
                    [columnView addSubview: switchView];
                }
                [row1 addSubview:columnView];
            }                 
        
        //---ROW--------------------->>>
        UIView *row2 = [[UIView alloc] initWithFrame:CGRectMake( 0, ROW_HEIGHT*1, grid.frame.size.width, ROW_HEIGHT )]; 
        row2.backgroundColor = [UIColor whiteColor];
        row2.layer.borderColor = [UIColor lightGrayColor].CGColor;
        row2.layer.borderWidth = 0.5f;
            
                
         
         //COLUMNS ITERATION
         for (int i =0 ; i < numberOfColumns; i++) {
             UIView *columnView = [[UIView alloc] initWithFrame:CGRectMake(WIDTH_COL_STD * i, 0, WIDTH_COL_STD, CELL_HEIGHT)];
             columnView.tag = i + 1;
             columnView.backgroundColor = [UIColor whiteColor];
             columnView.layer.borderColor = [UIColor lightGrayColor].CGColor;
             columnView.layer.borderWidth = .5f;
             
             if(i==0){
                NSLog(@" FILE: %s : Iteration %i",__FILE__,i );
                //[columnView addSubview: thisComponent];
             
             }
             if(i==1){
                NSLog(@" FILE: %s : Iteration %i",__FILE__,i );
                //[columnView addSubview: thisComponent];
             }
             if(i==2){
                 NSLog(@" FILE: %s : Iteration %i",__FILE__,i );
                //[columnView addSubview: thisComponent];
             
             }
             if(i==3){
                NSLog(@" FILE: %s : Iteration %i",__FILE__,i );
                //[columnView addSubview: thisComponent];
             }
             if(i==4){
                 UISwitch *switchView = [[UISwitch alloc] initWithFrame:CGRectMake(15,15,WIDTH_COL_STD,CELL_HEIGHT)];
                 [switchView setOn:NO animated:NO];
                 [switchView addTarget:self action:@selector(switchRow2Changed:) forControlEvents:UIControlEventValueChanged];
                 [columnView addSubview: switchView];
             }
             
             [row2 addSubview:columnView];
         }      

         
        //---ROW--------------------->>>
        UIView *row3 = [[UIView alloc] initWithFrame:CGRectMake( 0, ROW_HEIGHT*2, grid.frame.size.width, ROW_HEIGHT )]; 
        row3.backgroundColor = [UIColor whiteColor];
        row3.layer.borderColor = [UIColor lightGrayColor].CGColor;
        row3.layer.borderWidth = 1.0f; // !!! This has to be at least 1.0f to make the bottom border visible.
           
            //DATA ARRAY
            NSArray  * array = [NSArray arrayWithObjects:@"text1",@"text2",@"text3",@"text4",@"text5",nil];
            
            for (int i =0 ; i < numberOfColumns; i++) {
                UIView *columnView = [[UIView alloc] initWithFrame:CGRectMake(WIDTH_COL_STD * i, 0, WIDTH_COL_STD, CELL_HEIGHT)];
                columnView.tag = i + 1;
                columnView.backgroundColor = [UIColor whiteColor];
                columnView.layer.borderColor = [UIColor lightGrayColor].CGColor;
                columnView.layer.borderWidth = .5f;
                
                    UITextField *textFieldStd = [[UITextField alloc] initWithFrame:CGRectMake(5,5,WIDTH_COL_STD,CELL_HEIGHT)];
                    textFieldStd.tag = i + 1;
                    textFieldStd.text = [array objectAtIndex: i];
                    [textFieldStd addTarget:self  action:@selector(hideKeyboard) forControlEvents:UIControlEventEditingDidEndOnExit];
                        
                [columnView addSubview: textFieldStd];
                [row3 addSubview:columnView];
            }
        
        //---END ROWS------------------------------------------------------------------------------------>>>
        
        //GRID : INSERT ROWS
        [grid addSubview:row1]; 
        [grid addSubview:row2];
        [grid addSubview:row3];
        
        //GRID : INSERT HEADER AND BODY
        [gridContainer addSubview:header];
        [gridContainer addSubview:grid];
        
        //[self.view addSubview:gridContainer];
        [viewContainer addSubview:gridContainer];
        //GRID ITERATIONS COMPLETED
        
        
        
        [self.view addSubview:viewContainer];
    }
    return self;
    //GRID COMPLETED