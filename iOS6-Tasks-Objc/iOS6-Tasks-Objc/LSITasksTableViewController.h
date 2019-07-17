//
//  LSITasksTableViewController.h
//  iOS6-Tasks-Objc
//
//  Created by Paul Solt on 7/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class LSITasksController;

@interface LSITasksTableViewController : UITableViewController

@property (nonatomic) LSITasksController *tasksController;


@end

NS_ASSUME_NONNULL_END
