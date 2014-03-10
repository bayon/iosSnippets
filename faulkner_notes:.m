// FAULKNER Notes:
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 2A463738-3358-4C68-9DF5-F710E28BC577
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
 //FAULKNER Notes:
 I.DATABASE: dev.surveys_faulkner
 A.Framework
 - button: ALL fields
 - method: ALL fields
 - survey_answer: ALL fields
 - survey_question: ALL fields
 
 B. App_Specific
 - property : property_id,property_name,user_id,property_image_url
 - user : user_id,user_title_id,user_pin
 - survey: survey_id,property_id,user_id,photograph_id
 +ADD  photograph_id
 
 C. Upload_Results

 
 
 II. IMAGES
 1.) need numbered images for buildings, like we had in fms "revised keypad/login button images."
 Building Key:
 1 - Suburban I
 2 - Suburban II
 3 - Suburban III
 4 - Ormsby I
 5 - Ormsby II
 6 - Ormsby III
 7 - Eagle
 8 - St. Joesephs
 
 
 For uploading the picture, just send the file to service http://172.16.104.108:8606/FMSBackendService/REST/UploadImage,
 
 
 
 it will return a string which you will use it as the picture’s name, we only save the name in the database table.
 
 I am gonna write and add two stored procedure: framework_read and appspecific_read to surveys_faulkner
 
 SERVICE:
 This is the two url for A and B
 A.
 http://172.16.104.108:8742/FaulknerBackendService/REST/get_Framework
 
 B.
 http://172.16.104.108:8742/FaulknerBackendService/REST/get_AppSpecific
 
 
 
 
 
 Pretty self explained.
 
 
 
 Let me know if you need for C.
 
 UPLOAD IMAGE:
 http://172.16.104.108:8606/FMSBackendService/REST/UploadImage
 
 
 FONT GUIDE on DC01.
 IMAGE GUIDE on dc01
 TO DO:
  
 - get the services working
 - remove unneeded elements
 - login topBar image
 - upload buttons from XML?
  
  */