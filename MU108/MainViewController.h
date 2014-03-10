//
//  MainViewController.h
//  MU108
//
//  Created by Igor Tomych on 20/02/14.
//  Copyright (c) 2014 Igor Tomych. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *welcomeLabel;
@property (weak, nonatomic) IBOutlet UIButton *clickMeButton;

- (IBAction)clickedAction:(UIButton *)sender;

@end
