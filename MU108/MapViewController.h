//
//  MapViewController.h
//  MU108
//
//  Created by Igor Tomych on 24/03/14.
//  Copyright (c) 2014 Igor Tomych. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "RouteViewController.h"

@interface MapViewController : UIViewController<MKMapViewDelegate, RouteViewDelegate>

@property (nonatomic, strong) NSManagedObjectContext* context;
@end
