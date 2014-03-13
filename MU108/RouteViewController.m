//
//  RouteViewController.m
//  MU108
//
//  Created by Igor Tomych on 03/03/14.
//  Copyright (c) 2014 Igor Tomych. All rights reserved.
//

#import "RouteViewController.h"
#import "Route.h"
#import <AFNetworking.h>
#import <MBProgressHUD.h>
#import "MUAPI.h"

@interface RouteViewController ()
@property NSArray* routeData;
@end


@implementation RouteViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[MUAPI sharedClient] getRoutes:^(NSArray *routes, NSError *error) {
        if (error) {
            NSLog(@"%@", error);
            return;
        }
        
        [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
        self.routeData = routes;
        [self.tableView reloadData];
    }];
    
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    
    [MBProgressHUD showHUDAddedTo:self.tableView animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.routeData.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"BasicCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    Route* routeItem = self.routeData[indexPath.row];
    
    cell.textLabel.text = routeItem.name;
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 20.f;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 20)];
    view.backgroundColor = [UIColor colorWithRed:0.42 green:0.75 blue:0.22 alpha:1];
    
    return view;
}

#pragma mark - Table view delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"selected row index %@", indexPath);
}
@end
