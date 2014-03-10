// build3by3GridForScrollView
// 
//
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: BEF7A30A-B2F1-4F47-9DF9-4B1B431A5641
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(void)build3by3GridForScrollView{
    
    //Use AppMemory
    AppMemory *theDataObject = [self theAppDataObject];
     
    pageCount = 1;
    //rowCount = 0;
    int numOfButtons = 0;
    numOfButtons = [theDataObject.buildingsArray count];//Test Data currently set on the splashViewController
    int numOfPages;
    numOfPages = round([theDataObject.buildingsArray count]/9 ) +1;
    NSLog(@"numOfPages:  %i",numOfPages);
    //layout parameters
    int Row1Y = 200;
    int RowX = 100;//starting X position for all rows...
    int ButtonWidth = 139;
    int ButtonHeight = 142;
    int PaddingRight = 75;
    int PaddingVertical = 50;
    int pageWidth = 800;
    
     NSString *backgoundImageName;
    for (int j = 1; j <= numOfPages; j++) {
        
        //but_btn_building1
        CGRect frame;
		frame.origin.x = 800 * j;
		frame.origin.y = 0;
		frame.size = CGSizeMake(800.0, 1024.0);
          
         if(elementCount < numOfButtons){
            for (int i = 1; i <= numOfButtons; i++) {
                elementCount++;
                //Row and Column Calculations
                 backgoundImageName = [NSMutableString stringWithFormat:@"but_btn_building%d%@",i,@"_off.png"];
                //Modulus Technique: to get the column type
                double remainderCol = fmod(i, 3);
                //convert double to integer
                double doublePosition = remainderCol;
                int columnType = (int)doublePosition;
                int column;
                switch (columnType) {
                    case 0:
                        column = 3;
                        break;
                    case 1:
                        column = 1;
                        rowCount = rowCount + 1;
                        break;
                    case 2:
                        column = 2;
                        break;
                    default:
                        break;
                }
                
                UIButton *tempButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                //UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
                [tempButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
                //[tempButton addGestureRecognizer:panGestureRecognizer];
                int xOrigin;
                
                
                //Define X value by rowCount and Column
                if(rowCount == 1   || rowCount == 2 || rowCount == 3 ){
                    //page 1
                     
                     
                     NSLog(@"\n (1)pageCount: %i",pageCount);
                    //int yOrigin = Row1Y * rowCount + PaddingVertical;
                    int yOrigin = Row1Y * (rowCount-0) +PaddingVertical ;
                    if(column ==1){
                         xOrigin =  RowX + (pageCount-1)* pageWidth;
                        tempButton.frame = CGRectMake(xOrigin, yOrigin, ButtonWidth, ButtonHeight);
                         
                    }
                    if(column ==2){
                        xOrigin= RowX + PaddingRight + ButtonWidth + (pageCount-1)* pageWidth;
                        tempButton.frame = CGRectMake(xOrigin, yOrigin, ButtonWidth, ButtonHeight);
                         
                    }
                    if(column ==3){
                        xOrigin = RowX + 2 * (PaddingRight + ButtonWidth) + (pageCount-1)* pageWidth;
                        tempButton.frame = CGRectMake(xOrigin, yOrigin, ButtonWidth, ButtonHeight);
                         
                        
                    }
                    //if(i==9){pageCount++;}
                    if(i==9*pageCount){pageCount++; }
                }
                
                //if(rowCount > 3 && rowCount < 7){
                    if(rowCount ==4   || rowCount == 5 || rowCount == 6 ){
                    //page 2
                    
                   NSLog(@"\n (2)pageCount: %i",pageCount);
                    int yOrigin = Row1Y * (rowCount-3) +PaddingVertical ;
                    if(column ==1){
                         xOrigin =  RowX + (pageCount-1)* pageWidth;
                         tempButton.frame = CGRectMake(xOrigin, yOrigin, ButtonWidth, ButtonHeight);
                    }
                    if(column ==2){
                         xOrigin  = RowX + PaddingRight + ButtonWidth +(pageCount-1)* pageWidth;
                        tempButton.frame = CGRectMake(xOrigin, yOrigin, ButtonWidth, ButtonHeight); 
                    
                    }
                    if(column ==3){
                         xOrigin = RowX + 2 * (PaddingRight + ButtonWidth)+(pageCount-1)* pageWidth;
                        tempButton.frame = CGRectMake(xOrigin, yOrigin, ButtonWidth, ButtonHeight);
                    }
                     //if(i==9*2){pageCount++;}
                        if(i==9*pageCount){pageCount++; }
                }
                
                if(rowCount == 7   || rowCount == 8 || rowCount == 9 ){
                    //page 3
                     
                    NSLog(@"\n (3)pageCount: %i",pageCount);
                   int yOrigin = Row1Y * (rowCount-6) +PaddingVertical ;
                    if(column ==1){
                         xOrigin =  RowX + (pageCount-1) * pageWidth;
                        tempButton.frame = CGRectMake(xOrigin, yOrigin, ButtonWidth, ButtonHeight);
                    }
                    if(column ==2){
                         xOrigin = RowX + PaddingRight + ButtonWidth + (pageCount-1) * pageWidth;
                    tempButton.frame = CGRectMake(xOrigin, yOrigin, ButtonWidth, ButtonHeight);
                    }
                    if(column ==3){
                         xOrigin = RowX + 2 * (PaddingRight + ButtonWidth)+(pageCount-1) * pageWidth;
                        tempButton.frame = CGRectMake(xOrigin, yOrigin, ButtonWidth, ButtonHeight);
                    }
                    if(i==9*pageCount){pageCount++;rowCount=0;}
                     
                    
                }
                   
                
                [tempButton setBackgroundImage:[UIImage imageNamed:backgoundImageName] forState:UIControlStateNormal];
                [tempButton setTag:i];
                 
                [scroll addSubview:tempButton];        
            }
        }
    }
    scroll.contentSize = CGSizeMake(800.0 * numOfPages, 424.0);
    pageControl.numberOfPages = numOfPages;
    
}
