//
//  ALAiPadViewController.m
//  AudioList
//
//  Created by Austin Nolan on 5/8/14.
//  Copyright (c) 2014 Austin Nolan. All rights reserved.
//

#import "ALAiPadSplitController.h"

#import "ALAiPadViewController.h"

#import "ALAiPadTableViewController.h"

#import "ALASoundCloudRequest.h"



@interface ALAiPadSplitController () <UISplitViewControllerDelegate, UITabBarControllerDelegate>

@end

@implementation ALAiPadSplitController
{
    
    
    ALAiPadTableViewController * listVC;
    
    
    ALAiPadViewController * detailVC;
    
    UINavigationController * nc;
    
    UILabel * detailName;
    
    UIImageView * detailImage;
    
    
    
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        detailVC = [[ALAiPadViewController alloc]initWithNibName:nil bundle:nil];
        
        nc = [[UINavigationController alloc]initWithRootViewController:detailVC];

        
        //listVC needs tab bar at bottom for tracks and playlists
        
        listVC = [[ALAiPadTableViewController alloc]initWithStyle:UITableViewStylePlain];
        listVC.detailVC = detailVC;
        
        self.viewControllers = @[listVC,nc];
        
       // self.presentsWithGesture = YES;

        self.delegate = self;
        
        [ALASoundCloudRequest updateData];
        
        listVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemTopRated tag:0];
        
        UITableViewController * playlistVC = [[UITableViewController alloc] initWithNibName:nil bundle:nil];
        playlistVC.title = @"Playlists";
        playlistVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemHistory tag:1];
        listVC.title = @"Songs";

        UITabBarController * tabBar = [[UITabBarController alloc]init];
        [tabBar setViewControllers:@[listVC,playlistVC]];
        tabBar.delegate = self;
        self.viewControllers = @[tabBar,nc];
        
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    detailVC.view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    detailVC.view.backgroundColor = [UIColor yellowColor];
    
    
    detailName = [[UILabel alloc]initWithFrame:CGRectMake(100, 175, 100, 20)];
    detailName.backgroundColor = [UIColor blueColor];
    [detailVC.view addSubview:detailName];
    
    
    detailImage =[[UIImageView alloc] initWithFrame:CGRectMake(100,200, 100, 100)];
    detailImage.backgroundColor = [UIColor redColor];
    [detailVC.view addSubview:detailImage];
    
    
    
    
    
    
    // Do any additional setup after loading the view.
}

-(void)splitViewController:(UISplitViewController *)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)pc
{
    
    NSLog(@"iPadSpliVC %@",nc);
    
    barButtonItem.title = @"Show List";
    detailVC.navigationItem.leftBarButtonItem = barButtonItem;
    nc.navigationBarHidden = NO;
    
    
    
//    
//    [UIBarButtonItem animateWithDuration:0.2 animations:^{
//        nc.navigationItem.leftBarButtonItem = CGRectMake(50, 0, 50, 50);
    
        
}

-(void)splitViewController:(UISplitViewController *)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    
    nc.navigationBarHidden = YES;
}


/* Need:
 
 
 make the list have a name, image, audio file, number of times played, like or dislike(can be one or two property),


*/






- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
