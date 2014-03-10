// iOS Automation
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 351FCEE6-7D7E-4DC2-93EF-614B9B91DF0E
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.JavaScript
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 // iOS Automation
 //TEST PREPARATION
 1.) make sure all UI elements are "Enabled" and have a label for reference.
 
 
 //RUNNING THE TEST
 1.) run the app like normal
 2.) XCode menu:: Product > Profile
 3.) stop the profiler
 4.) add a new script
 5.) paste in your javascript
 6.) hit the "Red" record button in profile to run the automation.
 */


var target = UIATarget.localTarget();

target.frontMostApp().mainWindow().textFields()["input"].tap();
target.delay(1);
target.frontMostApp().keyboard().typeString("A u t o m a t i o n ");
target.delay(1);
target.frontMostApp().mainWindow().buttons()["button"].tap();

target.delay(1);

// set landscape left
target.setDeviceOrientation(UIA_DEVICE_ORIENTATION_LANDSCAPELEFT);
UIALogger.logMessage("Current orientation is landscape"  );
target.delay(1);
// portrait
target.setDeviceOrientation(UIA_DEVICE_ORIENTATION_PORTRAIT);
UIALogger.logMessage("Current orientation is portrait"  );