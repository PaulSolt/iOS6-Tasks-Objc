//
//  TaskCell.h
//  iOS6-Tasks-Objc
//
//  Created by Paul Solt on 7/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>


@class LSITask;

NS_ASSUME_NONNULL_BEGIN

@interface TaskCell : UITableViewCell

@property (nonatomic) LSITask *task;

@end

NS_ASSUME_NONNULL_END
