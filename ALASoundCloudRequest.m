//
//  ALASoundCloudRequest.m
//  AudioList
//
//  Created by Austin Nolan on 5/9/14.
//  Copyright (c) 2014 Austin Nolan. All rights reserved.
//


#define CLIENT_ID @"client_id=bb219d66478b96174ed1e762288e7f96"

#define USER_NAME @"user830624616"

#define SC_API @"https://api.soundcloud.com"


//http://api.soundcloud.com/users/user830624616/playlists.json?client_id=bb219d66478b96174ed1e762288e7f96

#import "ALASoundCloudRequest.h"

#import "ALAUniversalData.h"

#import "ALAArtist.h"

#import "ALAPlaylist.h"

#import "ALAUser.h"


@implementation ALASoundCloudRequest


+(void) updateData
{
    //points to NSURL object "requestURL" with specified address
    NSURL * requestURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@/users/%@/playlists.json?%@",SC_API,USER_NAME,CLIENT_ID]];
    //points to NSURLRequest object "request" sets equal to requestURL object
    NSURLRequest * request = [NSURLRequest requestWithURL:requestURL];
    //??
    NSOperationQueue * queue = [[NSOperationQueue alloc]init];
    //??
    [NSURLConnection sendAsynchronousRequest:request queue:queue completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        
        NSArray * scInfo = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        
        for (NSDictionary * playlist1 in scInfo)
        {
            //create new playlist object and set things like playlist title
            
            ALAPlaylist * playlist = [[ALAPlaylist alloc]init];
            playlist [@"title"] =playlist1 [@"title"];
            [[ALAUniversalData sharedData] addNewPlaylist:playlist];
            
            for (NSDictionary * trackInfo in playlist1[@"tracks"])
            {
                
                if (![trackInfo[@"streamable"] boolValue]) continue;
//                if (![trackInfo[@"username"] boolValue]) continue;

                
                ALASong * track = [ALASong newTrack];
                track.playlist = playlist;
                track[@"title"] = trackInfo[@"title"];
                track[@"url"] = trackInfo[@"stream_url"];
                [playlist.tracks addObject:track];

                [[ALAUniversalData sharedData] addNewTrack:track];

                
                ALAUser * user = [ALAUser newUser];
                //track[@"username"] = trackInfo[@"user"];
                user[@"username"] = trackInfo[@"user"][@"username"];
                track.user = user;
                [[ALAUniversalData sharedData] addNewUser: user];
            }
        }
        
        
        NSLog(@"SCRequest pList%@",[[ALAUniversalData sharedData]allPlaylists]);

        
        NSLog(@"SCRequest track %@",[[ALAUniversalData sharedData]allTracks]);
        
        
        NSLog(@"SCRequest user %@",[[ALAUniversalData sharedData]allUsers]);

        
        
            NSNotificationCenter * nCenter = [NSNotificationCenter defaultCenter];
            
            [nCenter postNotificationName:@"dataUpdated" object:nil];
        
        
        
    }];
}


//+ (NSDictionary *)getSongsWithSoundCloud //:(NSString *)songInfo
//
//{
////NSMutableDictionary * artistInfo = [@{} mutableCopy];
//NSString * soundCloud = [NSString stringWithFormat:@"http://api.soundcloud.com/users/user830624616/playlists.json?client_id=bb219d66478b96174ed1e762288e7f96"];
//NSURL * url = [NSURL URLWithString:soundCloud];
//NSURLRequest * request = [NSURLRequest requestWithURL:url];
//
//    NSURLResponse * response = nil;
//    NSError * error = nil;
//    NSData * responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
//    NSError * jsonError = nil;
//    NSArray * soundCloudProfile = [NSJSONSerialization JSONObjectWithData:responseData options:0 error:&jsonError];
//    
////    NSLog(@"%@", soundCloudProfile);
//    
////    if (soundCloudProfile[@"user"] != nil) userInfo[@"name"] = soundCloudProfile[@"user"];
////    if (soundCloudProfile[@"playlist"] != nil) userInfo[@"image"] = soundCloudProfile[@"avatar_url"];
////    if (soundCloudProfile[@"track"] != nil) userInfo[@"github"] = soundCloudProfile[@"html_url"];
////    
//    
//    //fast enumeration loop through the array, each item inside the array
//    
//    for (NSDictionary * playList in soundCloudProfile) {
//        NSArray * tracks = playList[@"tracks"];
//        
//        for (NSDictionary * track in tracks) {
//            NSLog(@"%@", track[@"title"]);
//
//        }}
//
//    
//    return soundCloudProfile;
//}

        
        
@end
