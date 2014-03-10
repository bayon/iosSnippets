// Creeper Cam Camera
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: E74BE3D9-B20B-454E-838E-72FC35DF8E0D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
//< Creeper Cam Camera >
 // .h
 //HEAD
 
 //@interface
    //Creeper Cam
     AVCaptureSession *session;
     AVCaptureDeviceInput *input;
     AVCaptureStillImageOutput *stillImageOutput;
     
     NSString *imagePath;
     UIImage *image;
     NSError *error;
     NSString *imageName;
 //post interface
  //Creeper Cam
 @property (weak, nonatomic) IBOutlet UIButton *takePic;
 -(IBAction) takePic:(id)sender;
 ---------------------
 // .m
 //IMPLEMENTATION
 

 //@implementation
 
 //@synthesize
 @synthesize takePic;
 //METHODS
 
 -(IBAction) takePic:(id)sender
 {
 AVCaptureConnection *videoConnection = nil;
 for (AVCaptureConnection *connection in stillImageOutput.connections)
 {
 for (AVCaptureInputPort *port in [connection inputPorts])
 {
 if ([[port mediaType] isEqual:AVMediaTypeVideo] )
 {
 videoConnection = connection;
 
 break;
 }
 }
 if (videoConnection) { break; }
 }
 
 
 //CREATE A UNIQUE ID
 NSString *deviceName = [[UIDevice currentDevice] name];
 NSString* cleanedString = [deviceName stringByTrimmingCharactersInSet:[NSCharacterSet symbolCharacterSet]];
 NSCharacterSet *doNotWant = [NSCharacterSet characterSetWithCharactersInString:@"/:.,;@#$%^&*()!{}|<>?\\"];
 cleanedString = [[cleanedString componentsSeparatedByCharactersInSet: doNotWant] componentsJoinedByString: @""];
 deviceName = cleanedString;
 // Get current datetime
 NSDate *currentDateTime = [NSDate date];
 NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
 // Set the dateFormatter format
 [dateFormatter setDateFormat:@"yyyy_MM_dd_HH_mm_ss"];
 // Get the date time in NSString
 NSString *dateInString = [dateFormatter stringFromDate:currentDateTime];
 // Release the dateFormatter
 
 NSString *temp_img_name = [[deviceName stringByAppendingString:dateInString] stringByAppendingString:@".jpg"];
 
 [stillImageOutput captureStillImageAsynchronouslyFromConnection:videoConnection completionHandler: ^(CMSampleBufferRef imageSampleBuffer, NSError *error1)
 {
 NSData *imageData = [AVCaptureStillImageOutput jpegStillImageNSDataRepresentation:imageSampleBuffer];
 image = [[UIImage alloc] initWithData:imageData];
 imageName = temp_img_name;
 NSString *path = [@"Documents/" stringByAppendingString:imageName];
 imagePath = [NSHomeDirectory() stringByAppendingPathComponent:path];
 [UIImageJPEGRepresentation(image, 1.0) writeToFile:imagePath atomically:YES];
 NSLog(@"image info imageName: %@, imagePath: %@", imageName, imagePath);
 NSString *imageExtension = [[NSString alloc]initWithFormat:@"jpg"];
 UIImage *imageDownloaded = [UIImage imageWithData:imageData];
 NSString *documentsDirectory = [self getDocumentDirectory];
 //Save the downloaded image ....
 [self saveImageToDocuments:imageDownloaded withFileName:imageName ofType:imageExtension inDirectory:documentsDirectory];
 //Load Image From App Documents
 float imageWidth = 300.25;
 float imageHeight = 200.25;
 [self loadImageFromDocuments:imageName ofType:imageExtension width:imageWidth height:imageHeight];
 
 }];
 
 if (!input)
 {
 // Handle the error appropriately.
 NSLog(@"ERROR: trying to open camera: %@", error);
 }
 }
 //getDocumentDirectory
 -(NSString *)getDocumentDirectory{
 //return a NSString of document directory path
 NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
 return [paths objectAtIndex:0];
 }
 //Load Image From App Documents
 -(void) loadImageFromDocuments:(NSString *)imageName ofType:(NSString*)extension width:(float)width height:(float)height{
 NSLog(@"\n FILE->FUNCTION: %s",__FUNCTION__);
 //get documentsDirectory path
 NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
 NSString *documentsDirectory = [paths objectAtIndex:0];
 NSString *fullPath = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.%@", imageName,extension]];
 UIImageView *  myImageView =[[UIImageView alloc] initWithFrame:CGRectMake(30,100,width,height)];
 UIImage *myNewImage = [UIImage imageWithContentsOfFile:fullPath];
 myImageView.image= myNewImage;
 [self.view addSubview: myImageView];
 [self.view bringSubviewToFront:myImageView];
 
 }
 
 //saveImageToDocuments
 -(void) saveImageToDocuments:(UIImage *)image withFileName:(NSString *)imageName ofType:(NSString *)extension inDirectory:(NSString *)directoryPath {
 if ([[extension lowercaseString] isEqualToString:@"png"]) {
 [UIImagePNGRepresentation(image) writeToFile:[directoryPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.%@", imageName, @"png"]] options:NSAtomicWrite error:nil];
 } else if ([[extension lowercaseString] isEqualToString:@"jpg"] || [[extension lowercaseString] isEqualToString:@"jpeg"]) {
 [UIImageJPEGRepresentation(image, 1.0) writeToFile:[directoryPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.%@", imageName, @"jpg"]] options:NSAtomicWrite error:nil];
 } else {
 NSLog(@"Image Save Failed\nExtension: (%@) is not recognized, use (PNG/JPG)", extension);
 }
 }
 
 - (void)viewDidLoad
 {
 [super viewDidLoad];
 // Do any additional setup after loading the view, typically from a nib.
 session = [[AVCaptureSession alloc] init];
 
 session.sessionPreset = AVCaptureSessionPresetMedium;
 
 NSArray *devices = [AVCaptureDevice devices];
 
 for (AVCaptureDevice *device in devices)
 {
 NSLog(@"Device name: %@", [device localizedName]);
 
 if ([device hasMediaType:AVMediaTypeVideo])
 {
 if ([device position] == AVCaptureDevicePositionFront && [[device localizedName] isEqual:@"Front Camera" ])
 {
 NSLog(@"inside..");
 
 NSError *error1 = nil;
 
 input = [AVCaptureDeviceInput deviceInputWithDevice:device error:&error1];
 
 [session addInput:input];
 
 stillImageOutput = [[AVCaptureStillImageOutput alloc] init];
 
 NSDictionary *outputSettings = [[NSDictionary alloc] initWithObjectsAndKeys: AVVideoCodecJPEG, AVVideoCodecKey, nil];
 
 [stillImageOutput setOutputSettings:outputSettings];
 
 [session addOutput:stillImageOutput];
 
 break;
 }
 }
 }
 [session startRunning];
 }
 
 - (void)viewDidUnload
 {
 [self setTakePic:nil];
 
 [super viewDidUnload];
 // Release any retained subviews of the main view.
 }

 
 // .xib
 //VIEW(S)
 button that calls takePic
 
 
 </ Creeper Cam Camera >
*/