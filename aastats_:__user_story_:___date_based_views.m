// AAStats:  User Story:  Date based views
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 6DFF3698-D4D9-4032-808F-6B8D0D6C95C6
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
/*
   //  AAStats :  User Story :   Date based views
 #### Date based views
 
 The application will have buttons at the top for `Daily`, `Weekly` and `Monthly`.  These will correspond to the interval in the API request as `today`, `this_week`, and `this_month`.
 
 From view to view (daily, weekly, monthly) the date range indicator will change as well as the total message count and summary number data.
 
 **A new API request for the selected date interval will need to be made for each company shown in the list collection.  The list should be populated asynchronously as API requests return data.**
 
 When the user selects a different date interval, a modal should block the UI and show an activity indicator while new data is requested from the API.
 
 #### Report data interaction (swipe left and right)
 
 When swiping the metrics area left and right the pager at the bottom will change and the right side number column will change to a different comparison number set (i.e. industry, portfolio, management company).  The remainder of the screen will remain unchanged.
 
 **Interaction**: As the user swipes Left and Right, the right side column will move.  As this happens it should fade out in or out.  UI/UX department should be consulted for further details on the transition animation details.
 */
