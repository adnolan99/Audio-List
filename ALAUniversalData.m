//
//  ALAUniversalData.m
//  AudioList
//
//  Created by Austin Nolan on 5/8/14.
//  Copyright (c) 2014 Austin Nolan. All rights reserved.
//

#import "ALAUniversalData.h"


#import "ALASoundCloudRequest.h"

@interface ALAUniversalData ()

@end



@implementation ALAUniversalData
{
    
    NSMutableArray * tracks;
    
    NSMutableArray * playlist2;

    NSMutableArray * users;

}




+(ALAUniversalData *)sharedData
{
    
    static dispatch_once_t create;
    static ALAUniversalData * singleton = nil;
    
    dispatch_once(&create, ^{
        singleton = [[ALAUniversalData alloc]init];
        
    });
    return singleton;
}



-(id)init
{
    
    self = [super init];
    if(self)
    {
        tracks = [@[] mutableCopy];
        
        playlist2 = [@[] mutableCopy];
        
        users = [@[] mutableCopy];

    }
    return self;
}


-(void)addNewTrack:(ALASong *)track
    {
        [tracks addObject:track];
    }



-(void)addNewPlaylist:(ALAPlaylist *)playlist
{
    [playlist2 addObject:playlist];
}


-(void)addNewUser:(ALAUser *)user
{
    [users addObject:user];
}




-(NSArray *)allTracks
{
                      
    return [tracks copy];
}

-(NSArray *)allPlaylists
{
    
    return [playlist2 copy];
}


-(NSArray *)allUsers
{
    
    return [users copy];
}










-(NSMutableDictionary *)allAlbumInfo
{
    
    return _albumInfo;
}





@end
