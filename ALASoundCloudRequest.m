//
//  ALASoundCloudRequest.m
//  AudioList
//
//  Created by Austin Nolan on 5/9/14.
//  Copyright (c) 2014 Austin Nolan. All rights reserved.
//

#import "ALASoundCloudRequest.h"

#import "ALAUniversalData.h"

#import "ALAArtist.h"


@implementation ALASoundCloudRequest


+ (NSDictionary *)getSongsWithSoundCloud //:(NSString *)songInfo

{
//NSMutableDictionary * artistInfo = [@{} mutableCopy];
NSString * soundCloud = [NSString stringWithFormat:@"http://api.soundcloud.com/users/user830624616/playlists.json?client_id=bb219d66478b96174ed1e762288e7f96"];
NSURL * url = [NSURL URLWithString:soundCloud];
NSURLRequest * request = [NSURLRequest requestWithURL:url];

    NSURLResponse * response = nil;
    NSError * error = nil;
    NSData * responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    NSError * jsonError = nil;
    NSArray * soundCloudProfile = [NSJSONSerialization JSONObjectWithData:responseData options:0 error:&jsonError];
    
//    NSLog(@"%@", soundCloudProfile);
    
//    if (soundCloudProfile[@"user"] != nil) userInfo[@"name"] = soundCloudProfile[@"user"];
//    if (soundCloudProfile[@"playlist"] != nil) userInfo[@"image"] = soundCloudProfile[@"avatar_url"];
//    if (soundCloudProfile[@"track"] != nil) userInfo[@"github"] = soundCloudProfile[@"html_url"];
//    
    
    //fast enumeration loop through the array, each item inside the array
    
    for (NSDictionary * playList in soundCloudProfile) {
        NSArray * tracks = playList[@"tracks"];
        
        for (NSDictionary * track in tracks) {
            NSLog(@"%@", track[@"title"]);

        }}

    
    return soundCloudProfile;
}
 
        
        
@end
