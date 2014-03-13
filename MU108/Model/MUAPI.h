//
//  MUAPI.h
//  MU108
//
//  Created by Igor Tomych on 10/03/14.
//  Copyright (c) 2014 Igor Tomych. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Config.h"

@interface MUAPI : NSObject

+(instancetype)sharedClient;

- (void)getRoutes:(void (^)(NSArray *routes, NSError *error))block;

@end
