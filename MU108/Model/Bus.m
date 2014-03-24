//
//  Bus.m
//  MU108
//
//  Created by Igor Tomych on 13/03/14.
//  Copyright (c) 2014 Igor Tomych. All rights reserved.
//

#import "Bus.h"


@implementation Bus

@dynamic name;
@dynamic route;


- (CLLocationCoordinate2D)coordinate {
    return CLLocationCoordinate2DMake(50.005791, 36.230925);
}

- (NSString*)title {
    return self.name;
}


@end
