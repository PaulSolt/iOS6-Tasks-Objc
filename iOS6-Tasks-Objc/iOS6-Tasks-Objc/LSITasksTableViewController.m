//
//  LSITasksTableViewController.m
//  iOS6-Tasks-Objc
//
//  Created by Paul Solt on 7/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITasksTableViewController.h"
#import "LSITasksController.h"
#import "LSITask.h"

@interface LSITasksTableViewController ()

@property (nonatomic, readonly) NSDateFormatter *dateFormatter;

@end

@implementation LSITasksTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

// Lazy property
- (LSITasksController *)tasksController {
//    if (_tasksController == nil) {
    if(!_tasksController) {
        // Initialize it
        _tasksController = [[LSITasksController alloc] init];
    }
    return _tasksController;
}

@synthesize dateFormatter = _dateFormatter;
- (NSDateFormatter *)dateFormatter {
    if (!_dateFormatter) {
        _dateFormatter = [[NSDateFormatter alloc] init];
        _dateFormatter.dateStyle = NSDateFormatterShortStyle;
        _dateFormatter.timeStyle = NSDateFormatterShortStyle;
    }
    return _dateFormatter;
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.tasksController.countOfTasks;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskCell" forIndexPath:indexPath];
    
    LSITask *task = self.tasksController.tasks[indexPath.row];
    cell.textLabel.text = task.name;
//    cell.detailTextLabel.text = task.dueDate.description;
    cell.detailTextLabel.text = [self.dateFormatter stringFromDate:task.dueDate];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        
        // Get the task and remove it
        LSITask *task = self.tasksController.tasks[indexPath.row];
        [self.tasksController removeTask:task];
        
        // TODO: Why do all animations look the same???
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }  
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
