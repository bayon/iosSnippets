// NSFetchController
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 639A73A6-CA1C-4798-9BC9-0F2988696967
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 NSFetchController 
 
 .h
 <NSFetchedResultsControllerDelegate>
 
 NSFetchedResultsController *fetchedResultsController;
 NSManagedObjectContext *managedObjectContext;
 
 @property (nonatomic, retain) NSFetchedResultsController *fetchedResultsController;
 @property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;
 
 - (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath;
 
 .m
 
 @synthesize fetchedResultsController, managedObjectContext;
 
 - (void)viewDidLoad {
 [super viewDidLoad];
 
 
 
 NSError *error;
 if (![[self fetchedResultsController] performFetch:&error]) {
 // Update to handle the error appropriately.
 NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
 exit(-1);  // Fail
 }
 }
 - (void)viewDidUnload {
 // Release any properties that are loaded in viewDidLoad or can be recreated lazily.
 self.fetchedResultsController = nil;
 }
 
 
 
 
 #pragma mark -
 #pragma mark Table view data source methods
 

 //The data source methods are handled primarily by the fetch results controller
 

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [[fetchedResultsController sections] count];
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	
	id <NSFetchedResultsSectionInfo> sectionInfo = [[fetchedResultsController sections] objectAtIndex:section];
	return [sectionInfo numberOfObjects];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
									   reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell.
	[self configureCell:cell atIndexPath:indexPath];
    return cell;
}


- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    // A date formatter for the time stamp
    static NSDateFormatter *dateFormatter = nil;
    if (dateFormatter == nil) {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    }
 	
    // Configure the cell to show the task's title
	Task *task = [fetchedResultsController objectAtIndexPath:indexPath];
	cell.textLabel.text = task.taskName;
	cell.detailTextLabel.text = [NSString stringWithFormat:@"Complete by: %@",
                                 [dateFormatter stringFromDate:task.deadline]];
 	
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	// Display the authors' names as section headings.
    return [[[fetchedResultsController sections] objectAtIndex:section] name];
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
		
		// Delete the managed object.
		NSManagedObjectContext *context = [fetchedResultsController managedObjectContext];
		[context deleteObject:[fetchedResultsController objectAtIndexPath:indexPath]];
		
		NSError *error;
		if (![context save:&error]) {
			// Update to handle the error appropriately.
			NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
			exit(-1);  // Fail
		}
    }
}


#pragma mark -
#pragma mark Selection and moving

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
    // Create and push a detail view controller.
	DetailViewController *detailViewController = [[DetailViewController alloc] initWithStyle:UITableViewStyleGrouped];
    Task *selectedTask = (Task *)[[self fetchedResultsController] objectAtIndexPath:indexPath];
    // Pass the selected task to the new view controller.
    detailViewController.task = selectedTask;
	[self.navigationController pushViewController:detailViewController animated:YES];
	[detailViewController release];
}


- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // The table view should not be re-orderable.
    return NO;
}


#pragma mark -
#pragma mark Fetched results controller


// Returns the fetched results controller. Creates and configures the controller if necessary.
 
- (NSFetchedResultsController *)fetchedResultsController {
    
    if (fetchedResultsController != nil) {
        return fetchedResultsController;
    }
    
	// Create and configure a fetch request with the Task entity.
	NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
	NSEntityDescription *entity = [NSEntityDescription entityForName:@"Task"
                                              inManagedObjectContext:managedObjectContext];
	[fetchRequest setEntity:entity];
	
	// Create the sort descriptors array.
	NSSortDescriptor *deadlineDescriptor = [[NSSortDescriptor alloc]
                                            initWithKey:@"deadline" ascending:YES];
	NSSortDescriptor *taskNameDescriptor = [[NSSortDescriptor alloc]
                                            initWithKey:@"taskName" ascending:YES];
	NSArray *sortDescriptors = [[NSArray alloc]
								initWithObjects:deadlineDescriptor, taskNameDescriptor, nil];
	[fetchRequest setSortDescriptors:sortDescriptors];
	
	// Create and initialize the fetch results controller.
	NSFetchedResultsController *aFetchedResultsController =
    [[NSFetchedResultsController alloc]
     initWithFetchRequest:fetchRequest
     managedObjectContext:managedObjectContext
     sectionNameKeyPath:nil cacheName:@"Root"];
	
	self.fetchedResultsController = aFetchedResultsController;
	fetchedResultsController.delegate = self;
	
	// Memory management.
	[aFetchedResultsController release];
	[fetchRequest release];
	[deadlineDescriptor release];
	[taskNameDescriptor release];
	[sortDescriptors release];
	
	return fetchedResultsController;
}


 
 //Delegate methods of NSFetchedResultsController to respond to additions, removals and so on.
  

- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller {
	// The fetch controller is about to start sending change notifications, so prepare the table view for updates.
	[self.tableView beginUpdates];
}


- (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(NSIndexPath *)newIndexPath {
	
	UITableView *tableView = self.tableView;
	
	switch(type) {
			
		case NSFetchedResultsChangeInsert:
			[tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
			break;
			
		case NSFetchedResultsChangeDelete:
			[tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
			break;
			
		case NSFetchedResultsChangeUpdate:
			[self configureCell:[tableView cellForRowAtIndexPath:indexPath] atIndexPath:indexPath];
			break;
			
		case NSFetchedResultsChangeMove:
			[tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
			// Reloading the section inserts a new row and ensures that titles are updated appropriately.
			[tableView reloadSections:[NSIndexSet indexSetWithIndex:newIndexPath.section] withRowAnimation:UITableViewRowAnimationFade];
			break;
	}
}


- (void)controller:(NSFetchedResultsController *)controller didChangeSection:(id <NSFetchedResultsSectionInfo>)sectionInfo atIndex:(NSUInteger)sectionIndex forChangeType:(NSFetchedResultsChangeType)type {
	
	switch(type) {
			
		case NSFetchedResultsChangeInsert:
			[self.tableView insertSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationFade];
			break;
			
		case NSFetchedResultsChangeDelete:
			[self.tableView deleteSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationFade];
			break;
	}
}


- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller {
	// The fetch controller has sent all current change notifications, so tell the table view to process all updates.
	[self.tableView endUpdates];
}



- - - - - - - - - - -
I. The Set Up
A. Define .h
B. Synthesize .m
C. ViewDidLoad and ViewDidUnload .m

II. With TableView Methods .m
A. All the standards { numberOfRows,numberOfSections,cellForRowAtIndex,didSelectRowAtIndexPath,…}
B. + configureCell, titleForHeaderInSection, commitEditingStyle , canMoveRowAtIndexPath

III. The constructor method .m

IV. Delegate Methods .m 
A. controllerWillChangeContent, didChangeObject, didChangeSection, didChangeContent 




 */