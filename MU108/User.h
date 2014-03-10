//
//  User.h
//  MU108
//
//  Created by Igor Tomych on 20/02/14.
//  Copyright (c) 2014 Igor Tomych. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject {
@public
    NSString* myPublicString;
@private
    NSString* myPrivateString;
    
}

@property (nonatomic, strong) NSString* name;
@property (nonatomic) int numberOfFriends;

- (void)logOut;

@end
