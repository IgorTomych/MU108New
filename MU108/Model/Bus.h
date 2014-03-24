//
//  Bus.h
//  MU108
//
//  Created by Igor Tomych on 13/03/14.
//  Copyright (c) 2014 Igor Tomych. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>


@interface Bus : NSManagedObject<MKAnnotation>

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSManagedObject *route;


@end
