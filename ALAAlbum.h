//
//  ALAAlbum.h
//  AudioList
//
//  Created by Austin Nolan on 5/9/14.
//  Copyright (c) 2014 Austin Nolan. All rights reserved.
//

#import <Foundation/Foundation.h>


@class ALAArtist;

@interface ALAAlbum : NSDictionary

@property (nonatomic) NSArray * songs;

@property (nonatomic) ALAArtist * artist;

@end
