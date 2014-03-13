//
//  MUAPI.m
//  MU108
//
//  Created by Igor Tomych on 10/03/14.
//  Copyright (c) 2014 Igor Tomych. All rights reserved.
//

#import "MUAPI.h"
#import <AFNetworking.h>
//#import "Route.h"

@implementation MUAPI

+(instancetype)sharedClient {
    static MUAPI* _sharedClient = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[MUAPI alloc] init];
    });
    
    return _sharedClient;
}


- (void)getRoutes:(void (^)(NSArray *, NSError *))block {
    AFHTTPRequestOperationManager* manager = [AFHTTPRequestOperationManager manager];
    
    void (^successBlock)(AFHTTPRequestOperation*, id) = ^(AFHTTPRequestOperation *operation, id responseObject) {
        NSArray* routeData = (NSArray *)responseObject;
//        NSMutableArray* resultData = [[NSMutableArray alloc] init];
//        
//        
//        for (NSDictionary* dictionary in routeData) {
//            [resultData addObject:[[Route alloc] initWithDictionary:dictionary]];
//        }
        
        block((NSArray *)routeData, nil);
    };
    
    void (^failBlock)(AFHTTPRequestOperation*, NSError*) = ^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@", error);
        
        block(nil, error);
        
    };
    
    [manager GET:[NSString stringWithFormat:@"%@%@", API_HOST, API_ROUTES_PATH] parameters:Nil success:successBlock failure:failBlock];
}

@end
