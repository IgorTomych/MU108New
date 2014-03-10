//
//  RoutesSidePanelController.m
//  MU108
//
//  Created by Igor Tomych on 06/03/14.
//  Copyright (c) 2014 Igor Tomych. All rights reserved.
//

#import "RoutesSidePanelController.h"

@interface RoutesSidePanelController ()

@end

@implementation RoutesSidePanelController


-(void)awakeFromNib {
    
    [self setLeftPanel:[self.storyboard instantiateViewControllerWithIdentifier:@"leftViewController"]];
    
    [self setCenterPanel:[self.storyboard instantiateViewControllerWithIdentifier:@"centerViewController"]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
