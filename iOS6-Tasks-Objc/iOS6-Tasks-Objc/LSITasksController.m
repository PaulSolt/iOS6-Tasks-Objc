//
//  LSITasksController.m
//  iOS6-Tasks-Objc
//
//  Created by Paul Solt on 7/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITasksController.h"

// Class Extension (Anonymous Category)

@interface LSITasksController () {
    // private variables in here
}

// Private properties

@property NSMutableArray *internalTasks;

// Private method declarations

@end


@implementation LSITasksController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalTasks = [[NSMutableArray alloc] init];
        
        [self addTestData];
    }
    return self;
}

- (void)addTestData {
    LSITask *task1 = [[LSITask alloc] initWithName:@"Take out the trash" note:@"It smells in here!" dueDate:[NSDate dateWithTimeIntervalSinceNow:60*60]];
    LSITask *task2 = [[LSITask alloc] initWithName:@"Buy produce" note:@"Go to the farmers market and get fresh veggies!" dueDate:[NSDate date]];
    [self addTask:task1];
    [self addTask:task2];
}

- (NSArray *)tasks {
    // We create a copy to make NSMutableArray into a
    // NSArray (immutable, aka: a let constant from Swift)
    return [_internalTasks copy];
}

- (void)addTask:(LSITask *)task {
    [_internalTasks addObject:task];
    
    // Upload to Firebase
}

- (void)removeTask:(LSITask *)task {
    [_internalTasks removeObject:task];
}

- (void)cancelAllTasksNamed:(NSString *)taskName {
    NSLog(@"Canceling all tasks named: %@", taskName);
    // TODO: cancel all the tasks
    // for loop and test each name and then remove it
    // if it matches
}

- (NSUInteger)countOfTasks {
    return [_internalTasks count];
}
@end
