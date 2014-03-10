// EMAIL
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: F7618CCB-F332-4AF0-8A34-58F5DDF6A090
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
             //EMAIL
             NSString *emailAddress = [NSString stringWithFormat:@"bforte@indatus.com"];
             NSString *stringMessage = [NSString stringWithFormat:@"%@",overviewArray];
             Operation *op = [[Operation alloc]init];
             [op sendEmailToAddress:emailAddress :  stringMessage];

             
             -(void)sendEmailToAddress: (NSString *) emailAddress :(NSString *) dataString{
             NSURL *URL = [NSURL URLWithString:@"http://www.forteworks.com/jsonToCore/"];
             NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:URL];
             request.HTTPMethod = @"POST";
             NSString *params = [NSString stringWithFormat:@"message=%@&emailAddress=%@",dataString,emailAddress];
             
             NSData *data = [params dataUsingEncoding:NSUTF8StringEncoding];
             [request addValue:@"8bit" forHTTPHeaderField:@"Content-Transfer-Encoding"];
             [request addValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
             [request addValue:[NSString stringWithFormat:@"%i", [data length]] forHTTPHeaderField:@"Content-Length"];
             [request setHTTPBody:data];
             
             self.responseData = [NSMutableData data];
             self.myNSURLConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
             }

             
             */




/*
//PHP MAIL SERVICE
 <?php
 $api = new ServeMysqlToJson;
 $api->sendEmailOut();
 
 class ServeMysqlToJson {
 function sendEmailOut(){
 //----SEND EMAIL
 //$to = "bayon_forte@yahoo.com";
 $to = $_POST["emailAddress"];
 $subject = "Test mail";
 $message = "".$_POST["message"]."";
 $from = "admin@forteworks.com";
 $headers = "From:" . $from;
 mail($to,$subject,$message,$headers);
 //echo "Mail Sent.";
 
 //-----end email
 }
 }
 ?>
*/