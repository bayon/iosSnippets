//  Concurrency solutions: nested contexts
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 10B4786D-BFC5-40FD-8D8C-C99AA486F3EA
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 //--  --  --  Concurrency solutions: nested contexts  --  --  - 
  //--Queue Types:
 parentMoc = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
 [parentMoc setPersistentStoreCoordinator:coordinator];
 moc = [[NSManagedObjectContext alloc] initWIthConcurrencyType:NSPrivateQueueConcurrencyType];
 moc.parentContext = parentMoc;
 //--Thread Safe ?
 [context performBlockAndWait:^{
    for (Room *room in [ Room findAllInContext:context])
 {
    room.joinedUsers = [NSSet set];
    room.knowsAboutJoinedUsersValue = NO;
 room.unreadCountValue = 0;
 room.status = @"";
 
 
 }
 NSError *error = nil;
 [context save:&error];
 }];
 
 -(void)performBlock:(void (^)())block;
 //executes the block on the context dispatch queue asap
 //nonblocking call
 //code will NOT execute immediately
 // for actions which are "on their own" for long fetches use callbacks
 
 -(void)performBlockAndWait:(void (^)_block;
 //executes the block on the context dispatch queue immediately
 //blocks the current execution until block is done
 //can cause a deadlock (if you're already running code on the same queue)
 // for immediacy
 
  //--How to Nest Contexts:
 //2 Approaches
 root context = NSMainQueueConcurrencyType
 roo context = NSPrivateQueueConcurrencyType
 
 //-- Root = Private
 //root context with private queue
 //many child contents with private queues
 //context on main queue is child of root
 //actual persistence happens in the background(does NOT block the UI)
 
  //--Sharing Solution:
 // Pass only NSManagedObjectIDs to other threads, NOT objects.
 //Refetch the object on a different thread or queue to work with it.
 //Don't forget to save the original object first before working with it on the second thread or queue.
 
 //--Complex Queries
 //1. do the heavy lifting in the background
 //2. pass list of NSManagedObjectIDs to another thread (e.g. UI thread)
 //3. load objects as faults, and let Core Data fault them in when you need them(e.g. when accessing a property)
 // That's a lot of requests, but better in most cases.
 
 //-- Locking Solution:
 //Use child contexts with their own dispatch queues
 //Use performBlock: and performBlockAndWait: carefully.
 //Deadlocks still possible, especially with performBlockAndWait:
 
 // A word about NSManagedObjectIDs
 // 2 types
 //Temporary
    //when the object has not been persisted to a store
 //permanent
    //when the object has beeen persisted to a store
 
 // subtle bug:
 //temp IDs from a non-root context don't get updated to permenant when saving the root context.
 // the object is saved just fine, but the ID is not updated correctly
 //When passing these around to other contexts after saving: you won't find the object in another child context!
 
 // To The Rescue:
 -(bool)obtainPermanentIDsForObjects:
 (NSArray *)objects error:(NSError **)error;
    // transforms temp IDS to permanent
    // do this when creating a managed object and you're safe
 // obtaining permanent IDs is batched, so the performance hit is not that high.
 
 //Magical Record:
    // still good but...
 //don't use " automatic context handling " !!!
 
 
 */

