//
//  LSITasksController.h
//  iOS6-Tasks-Objc
//
//  Created by Paul Solt on 7/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSITask.h"

NS_ASSUME_NONNULL_BEGIN

@interface LSITasksController : NSObject

// Add tasks
// Remove tasks
// Tasks

@property (nonatomic, readonly) NSArray *tasks;

//- (void)init;  // Defined by NSObject, we don't need to redeclare it

- (void)addTask:(LSITask *)task;

- (void)removeTask:(LSITask *)task;

- (void)cancelAllTasksNamed:(NSString *)taskName;

- (NSUInteger)countOfTasks;

@end

NS_ASSUME_NONNULL_END
