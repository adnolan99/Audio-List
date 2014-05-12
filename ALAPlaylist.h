//
//  ALAPlaylist.h
//  AudioList
//
//  Created by Austin Nolan on 5/12/14.
//  Copyright (c) 2014 Austin Nolan. All rights reserved.
//

#import "ALADictionary.h"

@interface ALAPlaylist : ALADictionary

+(id)newPlaylist;

@property (nonatomic) NSMutableArray * tracks;


@end
