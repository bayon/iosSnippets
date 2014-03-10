// modern : json parsing
// 
//
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: C2ECF452-34D4-43CB-909D-82E5AD5279DE
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

/*
 
 modern : json parsing
 
 >>>JSON SNIPPET:
 "albums": [
 {
 "name": "Black Holes And Revelations",
 "popularity": "0.75",
 "external-ids": [
 {
 "type": "upc",
 "id": "825646911486"
 }
 ],
 "href": "spotify:album:0lw68yx3MhKflWFqCsGkIs",
 "artists": [
 {
 "href": "spotify:artist:12Chz98pHFMPJEknJQMWvI",
 "name": "Muse"
 }
 ],
 "availability": {
 "territories": "AD AR AT AU BE BG BO BR CA CH CL CO CR CY CZ DE DK DO EC EE ES FI FR GB GR GT HK HN HU IE IS IT LI LT LU LV MC MT MX MY NI NL NO NZ PA PE PH PL PT PY RO SE SG SI SK SV TR TW US UY"
 }
 },
 etc,etc,
 
 PARSE SURFACE:
 for (NSDictionary *item in dict) {
    NSLog(@"\nItem: %@", item);
 
 }
 
 
 PARSE DEEPER:
 //dict is based on "albums" for json.
 NSArray *artists        = dict[@"artists"];
 NSDictionary *artists0  = artists[0];
 NSString *name = artists0[@"name"];
 NSLog(@"%@",name);
 
 
 
 //this is what you are looking for...
 NSArray *albumName = dict[@"name"];
 self.album = (NSString *)albumName ;
 
 NSArray *thisPopularity = dict[@"popularity"];
 self.popularity =(NSString *)thisPopularity;
 
 NSArray *artists        = dict[@"artists"];
 NSDictionary *artists0  = artists[0];
 NSString *artistName = artists0[@"name"];
 self.artist = artistName;
 
 
 */