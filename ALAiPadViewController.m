//
//  ALAiPadViewController.m
//  AudioList
//
//  Created by Austin Nolan on 5/8/14.
//  Copyright (c) 2014 Austin Nolan. All rights reserved.
//

#import "ALAiPadViewController.h"



//#import "ALAiPadTableViewController.h"

@interface ALAiPadViewController () //<ALAiPadTableViewControllerDelegate>

@end





@implementation ALAiPadViewController
{
    
UIView * detailView;

UILabel * detailName;

UIImageView * detailImage;

}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    detailView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    
//    detailView.backgroundColor = [UIColor yellowColor];
    
    
 
    
//    detailName = [[UILabel alloc]initWithFrame:CGRectMake(100, 175, 100, 20)];
//    detailName.backgroundColor = [UIColor blueColor];
//    [detailView addSubview:detailName];
//    
//    
//    detailImage =[[UIImageView alloc] initWithFrame:CGRectMake(100,200, 100, 100)];
//    detailImage.backgroundColor = [UIColor redColor];
//    [detailView addSubview:detailImage];
    
    
    
//    [self.view addSubview:detailView];
    
    
    // Do any additional setup after loading the view.
}




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
