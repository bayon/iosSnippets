// APNS Push Notification
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 9B7ED9E2-4E49-40B7-A464-8546090E8CB9
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Generic
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2



// iOS

// bundle id:


// appdelegate.m

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	// Let the device know we want to receive push notifications
	[[UIApplication sharedApplication] registerForRemoteNotificationTypes:
     (UIRemoteNotificationTypeBadge | UIRemoteNotificationTypeSound | UIRemoteNotificationTypeAlert)];
    
    return YES;
}

- (void)application:(UIApplication*)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData*)deviceToken
{
	NSLog(@"My token is: %@", deviceToken);
    // My token is: <d39c578b 8d9f9ae8 77897bf0 2baf4691 c705a79c 15b78a7b c9c9dbde 41da73bd>
}

- (void)application:(UIApplication*)application didFailToRegisterForRemoteNotificationsWithError:(NSError*)error
{
	NSLog(@"Failed to get token, error: %@", error);
}


// server PHP
simplepush.php
<?php

// Put your device token here (without spaces):
$deviceToken = "d39c578b8d9f9ae877897bf02baf4691c705a79c15b78a7bc9c9dbde41da73bd";

// Put your private key"s passphrase here:
$passphrase = "pushchat";

// Put your alert message here:
$message = "My first push notification!";

////////////////////////////////////////////////////////////////////////////////

$ctx = stream_context_create();
stream_context_set_option($ctx, "ssl", "local_cert", "ck.pem");
stream_context_set_option($ctx, "ssl", "passphrase", $passphrase);

// Open a connection to the APNS server
$fp = stream_socket_client(
	"ssl://gateway.sandbox.push.apple.com:2195", $err,
	$errstr, 60, STREAM_CLIENT_CONNECT|STREAM_CLIENT_PERSISTENT, $ctx);

if (!$fp)
	exit("Failed to connect: $err $errstr" . PHP_EOL);

echo "Connected to APNS" . PHP_EOL;

// Create the payload body
$body["aps"] = array(
	"alert" => $message,
	"sound" => "default"
	);

// Encode the payload as JSON
$payload = json_encode($body);

// Build the binary notification
$msg = chr(0) . pack("n", 32) . pack("H*", $deviceToken) . pack("n", strlen($payload)) . $payload;

// Send it to the server
$result = fwrite($fp, $msg, strlen($msg));

if (!$result)
	echo "Message not delivered" . PHP_EOL;
else
	echo "Message successfully delivered" . PHP_EOL;

// Close the connection to the server
fclose($fp);
?>


// ALSO HAVE "ck.pem" IN THE SAME DIRECTORY 



// THE HARD PART:
// getting the certification all lined up properly and the keys created with their own passwords and such...

http://www.raywenderlich.com/32960/apple-push-notification-services-in-ios-6-tutorial-part-1


//CSR create one of these for the app using the keychains "create ceritficate from certificate authority

<step one>
... If you go to the Keys section of Keychain Access, you will see that a new private key has appeared in your keychain. Right click it and choose Export.
Save the private key as PushChatKey.p12 and enter a passphrase.
For the convenience of this tutorial, I used the passphrase “pushchat” to protect the p12 file but you should really choose something that is less easy to guess. The private key needs to be a secret, remember? Do choose a passphrase that you can recall, or you won’t be able to use the private key later.
</step one>


<step two>
create an app id
WITH push notifications checkbox
once created, open it up again inside apples developer site.
EDIT it so as to create a Development SSL Certificate ( OR production if necessary)

upload the CSR you created earlier
GENERATE the ssl cert
download the SSL CERT
aps_development.cer

</step two>


<step 3>
Now you"ve got to use terminal and do some converting .pem and .p12 files.
navigate to your files...

Convert the .cer file into a .pem file:
$ openssl x509 -in aps_development.cer -inform der -out PushChatCert.pem
Convert the private key’s .p12 file into a .pem file:
$ openssl pkcs12 -nocerts -out PushChatKey.pem -in PushChatKey.p12
Enter Import Password: 
MAC verified OK
Enter PEM pass phrase: 
Verifying - Enter PEM pass phrase: 
You first need to enter the passphrase for the .p12 file so that openssl can read it. Then you need to enter a new passphrase that will be used to encrypt the PEM file. Again for this tutorial I used “pushchat” as the PEM passphrase. You should choose something more secure.
Note: if you don’t enter a PEM passphrase, openssl will not give an error message but the generated .pem file will not have the private key in it.
Finally, combine the certificate and key into a single .pem file:
$ cat PushChatCert.pem PushChatKey.pem > ck.pem
At this point it’s a good idea to test whether the certificate works. Execute the following command:
$ telnet gateway.sandbox.push.apple.com 2195
Trying 17.172.232.226...
Connected to gateway.sandbox.push-apple.com.akadns.net.
Escape character is "^]".
This tries to make a regular, unencrypted, connection to the APNS server. If you see the above response, then your Mac can reach APNS. Press Ctrl+C to close the connection. If you get an error message, then make sure your firewall allows outgoing connections on port 2195.
Let’s try connecting again, this time using our SSL certificate and private key to set up a secure connection:
$ openssl s_client -connect gateway.sandbox.push.apple.com:2195 
    -cert PushChatCert.pem -key PushChatKey.pem
Enter pass phrase for PushChatKey.pem: 
You should see a whole bunch of output, which is openssl letting you know what is going on under the hood.
If the connection is successful, you should be able to type a few characters. When you press enter, the server should disconnect. If there was a problem establishing the connection, openssl will give you an error message but you may have to scroll up through the output to find it.

</step 3>


<step 4>
generate a provisioning profile for the app.
make sure you"ve got the bundle id correct  and any of the normal stuff.
</step 4>


<step 5>
...And with the obj-c code above, and the altered PHP service code above,
you should be off to a nice start.
</step 5>
