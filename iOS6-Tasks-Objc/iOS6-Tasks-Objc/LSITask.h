//
//  LSITask.h
//  iOS6-Tasks-Objc
//
//  Created by Paul Solt on 7/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSITask : NSObject

// name
// notes
// date

// A property creates a setter and a getter

@property NSString *name;
// 1. Backing store variable is sythesized: _name
// 2. Setter
//    - (void)setName:(NSString *)name
// 3. Getter
//    - (NSString *)name

@property NSString *note;
@property NSDate *dueDate;

- (instancetype)initWithName:(NSString *)name
                        note:(NSString *)note
                        dueDate:(NSDate *)dueDate;

// initWithName:note:dueDate:




@end

NS_ASSUME_NONNULL_END
