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

@interface RouteViewController ()
@property NSArray* routeData;
@end


@implementation RouteViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    AFHTTPRequestOperationManager* manager = [AFHTTPRequestOperationManager manager];
    
    

    [manager GET:@"http://marshrutki.com.ua/mu/routes.php" parameters:Nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        [MBProgressHUD hideAllHUDsForView:self.tableView animated:YES];
        self.routeData = (NSArray *)responseObject;
        [self.tableView reloadData];
        
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        [MBProgressHUD hideAllHUDsForView:self.tableView animated:YES];
        
        NSLog(@"%@", error);
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
    
    cell.textLabel.text = self.routeData[indexPath.row][@"route_title"];
    
    return cell;
}
#pragma mark - Table view delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"selected row index %@", indexPath);
}
@end
