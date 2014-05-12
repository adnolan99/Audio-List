//
//  ALAiPadTableViewController.m
//  AudioList
//
//  Created by Austin Nolan on 5/8/14.
//  Copyright (c) 2014 Austin Nolan. All rights reserved.
//

#import "ALAiPadTableViewController.h"

//#import "ALAiPadViewController.h"

#import "ALATableViewCell.h"

#import "ALAUniversalData.h"

#import "ALASoundCloudRequest.h"

@interface ALAiPadTableViewController ()

@end

@implementation ALAiPadTableViewController
{
    
    NSMutableArray * soundFiles;
    
    
}
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        
        
        
        
        
        NSLog(@"Sound Cloud Profile Austin %@", [ALASoundCloudRequest getSongsWithSoundCloud]);

        
        
        [ALAUniversalData sharedData].soundFiles = [@[
                                                      
                                                      @{@"nameKey":@"userName1",@"pictureKey":@"picture1",@"audioKey":@"audioFile1"},
                                                      @{@"nameKey":@"userName2",@"pictureKey":@"picture2",@"audioKey":@"audioFile2"},
                                                      @{@"nameKey":@"userName3",@"pictureKey":@"picture3",@"audioKey":@"audioFile3"},
                                                      @{@"nameKey":@"userName4",@"pictureKey":@"picture4",@"audioKey":@"audioFile4"},
                                                      @{@"nameKey":@"userName5",@"pictureKey":@"picture5",@"audioKey":@"audioFile5"},
                                                      ]mutableCopy];

        
        //self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        //self.tableView.contentInset = UIEdgeInsetsMake(50, 0, 0, 0);
        self.tableView.rowHeight = 50;
        
        // Custom initialization
    }
    return self;
}






- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    // Return the number of sections.
//    return 1;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    
    NSLog(@"Before");

    return [[[ALAUniversalData sharedData] soundFiles] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ALATableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil)
    {
        cell = [[ALATableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
        cell.textLabel.text = [ALAUniversalData sharedData].soundFiles[indexPath.row][@"nameKey"];
    }

    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

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
