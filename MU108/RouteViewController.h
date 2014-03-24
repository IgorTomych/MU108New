//
//  RouteViewController.h
//  MU108
//
//  Created by Igor Tomych on 03/03/14.
//  Copyright (c) 2014 Igor Tomych. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RouteViewController : UITableViewController<NSFetchedResultsControllerDelegate>

@property (nonatomic, strong) NSManagedObjectContext* context;
@property (nonatomic, strong) NSFetchedResultsController* resultsController;

@end
