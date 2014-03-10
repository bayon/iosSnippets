// TableViewCell
// 
//
// IDECodeSnippetCompletionScopes: [StringOrComment]
// IDECodeSnippetIdentifier: 1FCF6A4A-4939-410F-B759-46BA0DB0157C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C-Plus-Plus
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//
//  Cell1Cell.h
//  app
//
//  Created by frederick forte on 5/23/13.
//  Copyright (c) 2013 frederick forte. All rights reserved.
//
#import <UIKit/UIKit.h>

#import "Manager.h"

@interface Cell1Cell : UITableViewCell{
    
    UILabel *leftLabel;
    UILabel *rightLabel;
    UIImageView *imageView;
    UIImageView *backgroundImageView;
}
@property (nonatomic, retain) UILabel *leftLabel;
@property (nonatomic, retain) UILabel *rightLabel;
@property (nonatomic, retain) UIImageView *imageView;
@property (nonatomic, retain) UIImageView *backgroundImageView;
@end




//  app
//
//  Created by frederick forte on 5/23/13.
//  Copyright (c) 2013 frederick forte. All rights reserved.
//

#import "Cell1Cell.h"

@implementation Cell1Cell

@synthesize leftLabel,rightLabel,imageView,backgroundImageView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        Manager *sharedManager = [Manager sharedManager];
        // Initialization code
        
        CGFloat windowWidth = [UIScreen mainScreen].bounds.size.width;
        self.backgroundImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, windowWidth, 61)];
        // self.backgroundImageView.image = [UIImage imageNamed:sharedManager.search_searchTableRow_off ];
        [self.contentView addSubview:backgroundImageView];
        
        
        self.leftLabel = [[UILabel alloc] init];
        self.leftLabel.frame = CGRectMake(70, 20, 100, 20);
        self.leftLabel.font = [UIFont boldSystemFontOfSize:12];
        self.leftLabel.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:leftLabel];
        
        self.rightLabel = [[UILabel alloc] init];
        self.rightLabel.frame = CGRectMake(160, 20, 200, 20);
        self.rightLabel.font = [UIFont boldSystemFontOfSize:10];
        self.rightLabel.textColor = [UIColor grayColor];
        self.rightLabel.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:rightLabel];
        
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
        [self.contentView addSubview:imageView];
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}


@end




// AS USED:
// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    //our custom cell
    Cell1Cell *cell = (Cell1Cell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[Cell1Cell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    // Configure the cell.
    cell.leftLabel.text = @"Info";
    cell.rightLabel.text = @"info 2";
    return cell;
}

