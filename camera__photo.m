// CAMERA / PHOTO
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: B9DE1CB9-9C7E-447D-A152-2EEB71AFE19F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 //< CAMERA / PHOTO  >
 
 //NOTE: Viewing pictures from storage requires a (popover view)
 // .h
 //HEAD
 
 //@interface
 
 // 2 Delegate Protocols -->  <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
 UIImageView * imageView;
 UIButton * choosePhotoBtn;
 UIButton * takePhotoBtn;
 
 //post interface
 
 @property (nonatomic, retain) IBOutlet UIImageView * imageView;
 @property (nonatomic, retain) IBOutlet UIButton * choosePhotoBtn;
 @property (nonatomic, retain) IBOutlet UIButton * takePhotoBtn;
 -(IBAction) getPhoto:(id) sender;
 ---------------------
 // .m
 //IMPLEMENTATION
 
 
 //@implementation
 
 //@synthesize
 @synthesize imageView,choosePhotoBtn, takePhotoBtn;
 //METHODS
 
 -(IBAction) getPhoto:(id) sender {
 UIImagePickerController * picker = [[UIImagePickerController alloc] init];
 picker.delegate = self;
 
 if((UIButton *) sender == choosePhotoBtn) {
 picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
 } else {
 picker.sourceType = UIImagePickerControllerSourceTypeCamera;
 }
 
 [self presentModalViewController:picker animated:YES];
 }
 
 - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
 [picker dismissModalViewControllerAnimated:YES];
 imageView.image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
 }
 

 
 // .xib
 //VIEW(S)
 1.) Drag a UIImageView and 2 buttons onto the view
 2.) From The File's Owner
    A. Outlets:
        - choosePhotoBtn --> Button-choose
        - imageView     -->Image View
        - takePhotoBtn  --> Button take
    B. Received Actions
        - getPhoto  -->Button choose(touch up inside)
                    -->Button take(touch up inside)
 
 
 </ CAMERA / PHOTO >
 */