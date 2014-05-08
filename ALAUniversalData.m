//
//  ALAUniversalData.m
//  AudioList
//
//  Created by Austin Nolan on 5/8/14.
//  Copyright (c) 2014 Austin Nolan. All rights reserved.
//

#import "ALAUniversalData.h"

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
//            soundFiles = [@[
//                            
//                            @{@"nameKey1":@"userName1",@"pictureKey1":@"picture1",@"audioKey1":@"audioFile1"},
//                            @{@"nameKey2":@"userName2",@"pictureKey2":@"picture2",@"audioKey2":@"audioFile2"},
//                            @{@"nameKey3":@"userName3",@"pictureKey3":@"picture3",@"audioKey3":@"audioFile3"},
//                            @{@"nameKey4":@"userName4",@"pictureKey4":@"picture4",@"audioKey4":@"audioFile4"},
//                            @{@"nameKey5":@"userName5",@"pictureKey5":@"picture5",@"audioKey5":@"audioFile5"},
//                            ]mutableCopy];
        
            //[self soundFiles];
        }
        return self;
    }
    
    
    
-(NSArray *) soundFilesCopy
{
    
    NSLog(@"Beforghjhtfe");

    
    return [self.soundFiles copy];


}






@end
