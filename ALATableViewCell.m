//
//  ALATableViewCell.m
//  AudioList
//
//  Created by Austin Nolan on 5/8/14.
//  Copyright (c) 2014 Austin Nolan. All rights reserved.
//

#import "ALATableViewCell.h"

#import "ALAUniversalData.h"

@implementation ALATableViewCell

{
    UILabel * songName;
    UIImageView * songImage;
    

    
}






- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
       
        
        songName = [[UILabel alloc]initWithFrame:CGRectMake(20, 20, 100, 25)];
        songName.backgroundColor = [UIColor blueColor];
        [self.contentView addSubview:songName];
        
        
        songImage =[[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
        songImage.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:songImage];

        
        
        
        
        // Initialization code
    }
    return self;
}



-(void)setIndex:(NSInteger)index
{
    _index = index;
    NSDictionary * profileInfo = [[ALAUniversalData sharedData] soundFiles][index];
    NSURL *imageUrl = [NSURL URLWithString:profileInfo[@"image"]];
    NSData * imageData = [NSData dataWithContentsOfURL:imageUrl];
    UIImage *image = [UIImage imageWithData:imageData];
    songImage.image = image;
    //songName.text = profileInfo[@"name"];
    //profileURL.text = profileInfo[@"github"];


}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
