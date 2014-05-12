//
//  ALAiPadTableViewController.h
//  AudioList
//
//  Created by Austin Nolan on 5/8/14.
//  Copyright (c) 2014 Austin Nolan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ALAiPadViewController;

@protocol ALAiPadTableViewControllerDelegate;


@interface ALAiPadTableViewController : UITableViewController
@property (nonatomic) UIViewController * detailVC; //id<ALAiPadTableViewControllerDelegate> delegate;
@end

//@protocol ALAiPadViewControllerDelegate <UIViewController>
//-(void)changeDetailDisplay;


//@end






