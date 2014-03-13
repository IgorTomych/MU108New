//
//  AppDelegate.h
//  MU108
//
//  Created by Igor Tomych on 20/02/14.
//  Copyright (c) 2014 Igor Tomych. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) NSManagedObjectContext* context;
@property (strong, nonatomic) NSPersistentStoreCoordinator* coordinator; // -- > file
@property (strong, nonatomic) NSManagedObjectModel* model;


@end
