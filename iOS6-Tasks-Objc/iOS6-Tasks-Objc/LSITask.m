//
//  LSITask.m
//  iOS6-Tasks-Objc
//
//  Created by Paul Solt on 7/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITask.h"

@implementation LSITask


- (instancetype)initWithName:(NSString *)name
                        note:(NSString *)note
                        dueDate:(NSDate *)dueDate {
//    self = [super init];
//    if (self) {
    if (self = [super init]) {
        _name = name;
        _note = note;
        _dueDate = dueDate;
    }
    return self;
}

// Setter (set)
@synthesize name = _name;   // The system will autocreate this using _variableName
- (void)setName:(NSString *)name {
    _name = name;
    NSLog(@"You set my name to: \"%@\"", name);
}

// Getter (get)
- (NSString *)name {
    return _name;
}





@end
