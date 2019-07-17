//
//  ViewController.m
//  iOS6-Tasks-Objc
//
//  Created by Paul Solt on 7/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"
#import "LSITask.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Create a task
    // Print out the task "Please finish TASKNAME by DUEDATE"
    LSITask *task = [[LSITask alloc] initWithName:@"Walk the dog"
                                             note:@"Make sure that she walks 1 mile today"
                                          dueDate:[NSDate dateWithTimeIntervalSinceNow:60*5]];
    
    NSLog(@"Please %@ by %@", task.name, [task dueDate]);
    
    task.name = @"Walk Row";
    [task setName:@"Run 1 mile with Row"];
}


@end
