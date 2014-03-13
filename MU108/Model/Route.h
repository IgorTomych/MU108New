//
//  Route.h
//  MU108
//
//  Created by Igor Tomych on 13/03/14.
//  Copyright (c) 2014 Igor Tomych. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Bus;

@interface Route : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * price;
@property (nonatomic, retain) NSSet *buses;
@end

@interface Route (CoreDataGeneratedAccessors)

- (void)addBusesObject:(Bus *)value;
- (void)removeBusesObject:(Bus *)value;
- (void)addBuses:(NSSet *)values;
- (void)removeBuses:(NSSet *)values;

@end
