//
//  Route.m
//  MU108
//
//  Created by Igor Tomych on 03/03/14.
//  Copyright (c) 2014 Igor Tomych. All rights reserved.
//

#import "Route.h"

@implementation Route

- (id)initWithDictionary:(NSDictionary *)dictionary {
    
    self = [super init];

    if(self) {
        self.name = dictionary[@"route_title"];
    }
    
    return self;
}

@end
