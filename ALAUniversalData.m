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

            
            
            
        }
        return self;
    
    
    }
    
    
    
//-(NSArray *) soundFilesCopy
//{
//    
//    NSLog(@"Beforghjhtfe");
//
//    
//    return [self.soundFiles copy];
//
//
//}





//-(NSMutableDictionary *)allAlbumlists
//{
//    
//    
//}




-(NSMutableDictionary *)allAlbumInfo
{
    
    return _albumInfo;
}





@end
