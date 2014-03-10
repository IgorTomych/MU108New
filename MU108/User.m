//
//  User.m
//  MU108
//
//  Created by Igor Tomych on 20/02/14.
//  Copyright (c) 2014 Igor Tomych. All rights reserved.
//

#import "User.h"



@implementation User {
    NSString* _lastName;
}

- (id)init {
    self = [super init];
    
    if (self != nil) {
        self.name = @"Default name";
    }
    
    return self;
}

- (void)dealloc {
    NSLog(@"deallocating!");
}

- (void)logOut {
    NSLog(@"logout");
    [self add100point];
}

- (void)add100point {
    NSLog(@"adding 100 points");
}
@end
