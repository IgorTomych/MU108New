//
//  RoutesSidePanelController.m
//  MU108
//
//  Created by Igor Tomych on 06/03/14.
//  Copyright (c) 2014 Igor Tomych. All rights reserved.
//

#import "RoutesSidePanelController.h"
#import "RouteViewController.h"
#import "MapViewController.h"


@interface RoutesSidePanelController ()

@end

@implementation RoutesSidePanelController


-(void)awakeFromNib {
    
    RouteViewController* routeController = [self.storyboard instantiateViewControllerWithIdentifier:@"leftViewController"];
    
    UINavigationController* navigationController = [self.storyboard instantiateViewControllerWithIdentifier:@"centerViewController"];

    
    [self setLeftPanel:routeController];
    [self setCenterPanel:navigationController];
    
    routeController.routeDelegate = (MapViewController *)navigationController.topViewController;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}
@end
