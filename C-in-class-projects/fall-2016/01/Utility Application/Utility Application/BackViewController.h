//
//  BackViewController.h
//  Utility Application
//
//  Created by Philip Dow on 8/27/15.
//  Copyright (c) 2015 Phil Dow. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BackViewController;

@protocol BackViewControllerDelegate <NSObject>

- (void) backViewControllerDidFinish:(BackViewController*)aController;

@end

#pragma mark -

@interface BackViewController : UIViewController

@property (weak, nonatomic) id<BackViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
