//
//  ALASong.h
//  AudioList
//
//  Created by Austin Nolan on 5/9/14.
//  Copyright (c) 2014 Austin Nolan. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ALADictionary.h"

//@class ALAArtist;
//@class ALAAlbum;


@class ALAUser;
@class ALAPlaylist;


@interface ALASong : ALADictionary

//@property (nonatomic) ALAArtist * artist;
//
//@property (nonatomic) ALAAlbum * album;



@property (nonatomic) ALAUser * user;

@property (nonatomic) ALAPlaylist * playlist;

+(id)newTrack;

//
//-(id)objectForkey:(id)Key;
//
//-(void)setObject:(id)anObject forKey:(id < NSCopying>)aKey;
//
//-(void)removeObjectForKey:(id)aKey;


@end
