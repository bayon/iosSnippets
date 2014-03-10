// git: Changing a remote's URL
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: CEBB363B-30E9-4C7A-822F-F2D16F50E71B
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 // git: Changing a remote's URL
 To change an existing remote's URL, use the git remote set-url command:
 git remote -v
 # View existing remotes
 #
 origin  https://github.com/user/repo.git (fetch)
 #
 origin  https://github.com/user/repo.git (push)
 
 git remote set-url origin https://github.com/user/repo2.git
 # Change the 'origin' remote's URL
 
 git remote -v
 # Verify new remote URL
 #
 origin  https://github.com/user/repo2.git (fetch)
 #
 origin  https://github.com/user/repo2.git (push)

*/