//
//  LSITaskDetailViewController.h
//  iOS6-Tasks-Objc
//
//  Created by Paul Solt on 7/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// Use forward class declarations to improve build time performance
@class LSITasksController;
@class LSITask;

@interface LSITaskDetailViewController : UIViewController

@property LSITasksController *tasksController;
@property (nonatomic) LSITask *task;


@end

NS_ASSUME_NONNULL_END
