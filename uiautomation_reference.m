// uiautomation reference
// 
//
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: EFFFE6E0-B52D-498B-A0EA-48C90C2FC733
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Generic
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//http://blog.manbolo.com/2012/04/08/ios-automated-tests-with-uiautomation#1


-----
First Script:

var target = UIATarget.localTarget();
var app = target.frontMostApp();
var window = app.mainWindow();
target.logElementTree();


-----
Add Accessability:

myTextField.accessibilityEnabled = YES;
myTextField.accessibilityLabel = @"User Text";

---
tap on a tab bar
var tabBar = UIATarget.localTarget().frontMostApp().tabBar();
var tabButton = tabBar.buttons()["Second"];

// Tap the tab bar !
tabButton.tap();


---
other:
Taps:
UIATarget.localTarget().tap({x:100, y:200});
UIATarget.localTarget().doubleTap({x:100, y:200});
UIATarget.localTarget().twoFingerTap({x:100, y:200});
Pinches:
UIATarget.localTarget().pinchOpenFromToForDuration({x:20, y:200},{x:300, y:200},2);
UIATarget.localTarget().pinchCloseFromToForDuration({x:20, y:200}, {x:300, y:200},2);   
Drag and Flick:
UIATarget.localTarget().dragFromToForDuration({x:160, y:200},{x:160,y:400},1);
UIATarget.localTarget().flickFromTo({x:160, y:200},{x:160, y:400});

---

Tune Up Library:
https://github.com/alexvollmer/tuneup_js


----
Command Line :
instruments \
-w your_ios_udid \
-t "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Instruments/PlugIns/AutomationInstrument.bundle/Contents/Resources/Automation.tracetemplate" \
name_of_your_app \
-e UIASCRIPT absolute_path_to_the_test_file 


----
RECORD YOUR ACTIONS:
Launch Instruments (⌘I)
Create a new script
Select the Script editor Record interactions
In the bottom of the script editor, see that red button ? 
Record interactions 
Press-it!
Now, you can play with your app; 
you will see the captured interactions appearing in the script window 
(even rotation event). 
Press the square button to stop recording.

“When things don’t work, add UIATarget.delay(1);”

----
Errors and Exception Alerts
UIATarget.onAlert = function onAlert(alert){
    var title = alert.name();
    UIALogger.logWarning("Alert with title ’" + title + "’ encountered!");
    return false; // use default handler
}

----
Orientation:
var target = UIATarget.localTarget();
var app = target.frontMostApp();

// set landscape left
target.setDeviceOrientation(UIA_DEVICE_ORIENTATION_LANDSCAPELEFT);
UIALogger.logMessage("Current orientation is " + app.interfaceOrientation());

// portrait
target.setDeviceOrientation(UIA_DEVICE_ORIENTATION_PORTRAIT);
UIALogger.logMessage("Current orientation is " + app.interfaceOrientation()); 

----
Screen Shot
var target = UIATarget.localTarget();
target.captureScreenWithName( "screenshot1.png" ); 

----
Launching local script

Finally, you can launch any scripts (not only Javascript) that is on your local host. Combined with the capacity to take screenshots, you can imagine powerful automatic tests. You can use performTaskWithPathArgumentsTimeout(path, args, timeout)with path containing the full path of your script, args an array of arguments to pass to your script, and timeout a … timeout!
var target = UIATarget.localTarget();
var host = target.host();

var result = host.performTaskWithPathArgumentsTimeout("/usr/bin/echo", ["Hello World"], 5);

Useful links

This was a pretty long post but I hope that you see the power of UIAutomation and the potential burst in quality that your app can gained. There is not a lot of documentation on UIAutomation, but I’ve listed a bunch of links that may help you.
http://cocoamanifest.net/articles/2011/05/uiautomation-an-introduction.html, http://cocoamanifest.net/articles/2011/07/ui-automation-part-2-assertions-and-imports.html and http://cocoamanifest.net/articles/2011/11/changes-to-ui-automation-in-ios-5.html: very good series on UIAutomation
http://mobilecoder.wordpress.com/2010/11/08/iphoneipodipad-automation-basics: excellent tutorial on UIAutomation, worth the reading!
http://www.juddsolutions.com/downloads/UnitAndFunctionalTestingForiOSPlatform.pdf: superb and deepful presentation on unit testing and UIAutomation. You will appreciate the slide n°70 “When things don’t work, add UIATarget.delay(1);”!
http://guerratopia.com/en/introduction-to-automating-ui-testing-in-ios: Nice tutorial and very good introduction
http://jojitsoriano.wordpress.com/2011/06/03/references-on-unit-testing-ui-automation-for-ios-applications: a lot of links about unit testing and UIAutomation
And, of course
Apple documentation on UIAutomation
UIAutomation in Apple Instruments documentation
WWDC 2010 - Session 306 - ￼Automating User Interface Testing with Instruments




I NEED TO:
UIAutomation test for performing a search.

