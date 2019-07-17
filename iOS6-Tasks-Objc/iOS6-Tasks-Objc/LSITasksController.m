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
    }
    return self;
}

- (NSArray *)tasks {
    // We create a copy to make NSMutableArray into a
    // NSArray (immutable, aka: a let constant from Swift)
    return [_internalTasks copy];
}

@end
