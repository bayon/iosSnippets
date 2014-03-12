// INVOCATION
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 7A17503F-9B0A-4F8C-A91C-FC125CAB67FC
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
 //INVOCATION http://stackoverflow.com/questions/313400/nsinvocation-for-dummies

The concept of messages is central to the objective-c philosophy. Any time you call a method, or access a variable of some object, you are sending it a message. NSInvocation comes in handy when you want to send a message to an object at a different point in time, or send the same message several times. NSInvocation allows you to describe the message you are going to send, and then invoke it (actually send it to the target object) later on.

For example, let's say you want to add a string to an array. You would normally send the addObject: message as follows:

[myArray addObject:myString];
Now, let's say you want to use NSInvocation to send this message at some other point in time:

First, you would prepare an NSInvocation object for use with NSMutableArray's addObject: selector:

NSMethodSignature * mySignature = [NSMutableArray
                                   instanceMethodSignatureForSelector:@selector(addObject:)];
NSInvocation * myInvocation = [NSInvocation
                               invocationWithMethodSignature:mySignature];
Next, you would specify which object to send the message to:

[myInvocation setTarget:myArray];
Specify the message you wish to send to that object:

[myInvocation setSelector:@selector(addObject:)];
And fill in any arguments for that method:

[myInvocation setArgument:&myString atIndex:2];
Note that object arguments must be passed by pointer. Thank you to Ryan McCuaig for pointing that out, and please see Apple's documentation for more details.

At this point, myInvocation is a complete object, describing a message that can be sent. To actually send the message, you would call:

[myInvocation invoke];
This final step will cause the message to be sent, essentially executing [myArray addObject:myString];.

Think of it like sending an email. You open up a new email (NSInvocation object), fill in the address of the person (object) who you want to send it to, type in a message for the recipient (specify a selector and arguments), and then click "send" (call invoke).
