//
//  ALAUniversalData.h
//  AudioList
//
//  Created by Austin Nolan on 5/8/14.
//  Copyright (c) 2014 Austin Nolan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ALAUniversalData : NSObject

+(ALAUniversalData *)sharedData;


//SplitViewVC

//iPadVC
//-(void)displayDetailInfo;

//iPadTVCcontroller
//-(void)displayInfoInEachCell;

//iPhoneVC

//iPhoneTVC

//UITableViewCell

@property (nonatomic) NSMutableArray * soundFiles;

@property (nonatomic) NSMutableArray * albumsMutableArray;
@property (nonatomic) NSMutableArray * songsMutableArray;



@property (nonatomic) NSMutableArray * albumList;
@property (nonatomic) NSMutableDictionary * albumInfo;


-(NSMutableArray *)allAlbumLists;
-(NSMutableDictionary *)allAlbumInfo;



@end






