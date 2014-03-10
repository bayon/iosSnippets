// CREATE LABELS DYNAMICALLY
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 548F731A-926F-4FEB-87E9-B273552D4E20
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/* CREATE LABELS DYNAMICALLY---------------------------------
//1
 
-(void)createWordLabels:(int)wordSize
{
    int width = 0;
    //create a set of word labels
    int i = 0;
    for(i = 0; i < wordSize; i++)
    {
        //TO DO: create a set of labels for each of the letters -> connect them to variables
        UILabel *newLabel = [[UILabel alloc] initWithFrame:CGRectMake(20 + width, 150, 30, 50)];
        [newLabel setText:@"-"];
        newLabel.textAlignment = UITextAlignmentCenter;
        [self.view addSubview:newLabel];
        
        width += 30;
    }
}
  
//2
 
// #define LABEL_TAG 1000
 
 -(void)createWordLabels:(int)numberOfLetters
 {
     int width = 10;
     UIView *aux = [[UIView alloc] initWithFrame:CGRectMake(10, 10,500, 50)]; 

 //create a set of word labels
 int i = 0;
     for(i = 0; i < numberOfLetters; i++)
     {
     //create a set of labels for each of the letters -> connect them to variables
     //UILabel *label = [[UILabel......
      UILabel *newLabel = [[UILabel alloc] initWithFrame:CGRectMake(20 + width, 150, 30, 50)];
     [newLabel setTag:LABEL_TAG+i];
     [aux addSubview:newLabel];
     
     }
 }
//3
//UILabel *label = (UILabel*)[self viewWithTag:LABEL_TAG+10];

*/
