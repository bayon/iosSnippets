// SegmentedController: changing segment/button colors
// 
//
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: DF418F36-3FF2-4ECB-A9EC-07228A114E7D
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
/*
//SegmentedController: changing segment/button colors
    // Do any additional setup after loading the view.
    UIImage *segmentSelected = [[UIImage imageNamed:@"img_img_on.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 15, 0, 15)];
    UIImage *segmentUnselected = [[UIImage imageNamed:@"img_img_off.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 15, 0, 15)];
    UIImage *segmentSelectedUnselected = [UIImage imageNamed:@"img_img_buildings.png"];
    UIImage *segUnselectedSelected = [UIImage imageNamed:@"img_img_clients.png"];
    //UIImage *segmentUnselectedUnselected = [UIImage imageNamed:@"segcontrol_uns-uns.png"];
    
    //[segmentedControl setFrame:CGRectMake(20, 138, 280, 44)];
    [segmentedControl setBackgroundImage:segmentUnselected forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [segmentedControl setBackgroundImage:segmentSelected forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    //[aSegmentControl setDividerImage:segmentUnselectedUnselected forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [segmentedControl setDividerImage:segmentSelectedUnselected forLeftSegmentState:UIControlStateSelected rightSegmentState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [segmentedControl setDividerImage:segUnselectedSelected forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateSelected barMetrics:UIBarMetricsDefault];

*/