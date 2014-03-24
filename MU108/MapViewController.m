//
//  MapViewController.m
//  MU108
//
//  Created by Igor Tomych on 24/03/14.
//  Copyright (c) 2014 Igor Tomych. All rights reserved.
//

#import "MapViewController.h"
#import "AppDelegate.h"
#import "Bus.h"

@interface MapViewController ()
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation MapViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /*
    AppDelegate* appDelagate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    self.context = appDelagate.context;

    Bus* bus = [NSEntityDescription insertNewObjectForEntityForName:@"Bus" inManagedObjectContext:self.context];
    bus.name = @"415";
    
    [self.mapView addAnnotation:bus];
    
    MKCoordinateRegion newRegion;
    newRegion.center.latitude = 50.005791;
    newRegion.center.longitude = 36.230925;
    newRegion.span.latitudeDelta = 0.112872;
    newRegion.span.longitudeDelta = 0.109863;
    
    [self.mapView setRegion:newRegion animated:YES];
     */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - MapView delegate

//-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
//    NSLog(@"%@", annotation);
//    
//    return nil;
//}


#pragma mark - Route View Delegate

-(void)didSelectRoute {
    NSLog(@"Маршрут был выбран!");
}

@end
