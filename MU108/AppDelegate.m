//
//  AppDelegate.m
//  MU108
//
//  Created by Igor Tomych on 20/02/14.
//  Copyright (c) 2014 Igor Tomych. All rights reserved.
//

#import "AppDelegate.h"
#import "User.h"
#import "Bus.h"
#import "Route.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    self.model = [NSManagedObjectModel mergedModelFromBundles:nil];
    self.coordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:self.model];
    
    NSString* homeDirectory = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString* filePath = [homeDirectory stringByAppendingPathComponent:@"MU108.sqlite"];
    
    NSURL* storeURL = [NSURL fileURLWithPath:filePath];
    
    NSError* error;
    [self.coordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error];
    
    if (error) {
        NSLog(@"%@", error);
    }
    
    self.context = [[NSManagedObjectContext alloc] init];
    self.context.persistentStoreCoordinator = self.coordinator;
    
    /*
    Bus* bus = [NSEntityDescription insertNewObjectForEntityForName:@"Bus" inManagedObjectContext:self.context];
    bus.name = @"415";
    
    Route* route = [NSEntityDescription insertNewObjectForEntityForName:@"Route" inManagedObjectContext:self.context];
    route.name = @"270";
    
    [route addBusesObject:bus];
    
    [self.context save:&error];
    
    if (error) {
        NSLog(@"%@", error);
    }
    */
    
    return YES;
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end
