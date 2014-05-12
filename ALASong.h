//
//  ALASong.h
//  AudioList
//
//  Created by Austin Nolan on 5/9/14.
//  Copyright (c) 2014 Austin Nolan. All rights reserved.
//

#import <Foundation/Foundation.h>


@class ALAArtist;

@class ALAAlbum;

@interface ALASong : NSDictionary

@property (nonatomic) ALAArtist * artist;

@property (nonatomic) ALAAlbum * album;


@end
