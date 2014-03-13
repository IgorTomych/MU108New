//
//  AppDelegate.m
//  MU108
//
//  Created by Igor Tomych on 20/02/14.
//  Copyright (c) 2014 Igor Tomych. All rights reserved.
//

#import "AppDelegate.h"
#import "User.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), ^{
        NSError* error;
        NSURL* url = [NSURL URLWithString:@"http://marshrutki.com.ua/mu/routes.php"];
        NSString* jsonData = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&error];
        
        NSLog(@"finish downloading json");
    });
    
    
    NSLog(@"after block");
    
    
//    __block int multiplayer = 2;
//    
//    int (^myBlock)(int) = ^(int num) {
//
//        int result = num * multiplayer;
//        
//        multiplayer = result;
//        
//        sleep(10);
//        
//        return result;
//    };
//    
//
//    
//    int result = myBlock(10);
//    
//    NSLog(@"%d", result);

    
    return YES;
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
