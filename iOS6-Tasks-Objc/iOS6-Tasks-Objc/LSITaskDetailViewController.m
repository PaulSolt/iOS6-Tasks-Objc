//
//  LSITaskDetailViewController.m
//  iOS6-Tasks-Objc
//
//  Created by Paul Solt on 7/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITaskDetailViewController.h"
#import "LSITask.h"
#import "LSITasksController.h"

@interface LSITaskDetailViewController ()

// Outlets
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextView *notesTextView;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation LSITaskDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateViews];
}

// custom setter for task (set)
- (void)setTask:(LSITask *)task {
    if (task != _task) {
        _task = task;
        [self updateViews];
    }
}

- (void)updateViews {
    if (!self.isViewLoaded || !self.task) { return; }
    
    self.title = self.task.name;
    
    self.nameTextField.text = self.task.name;
    self.notesTextView.text = self.task.note;
    self.datePicker.date = self.task.dueDate;
    
}



// Actions  (id = AnyObject)

/*- (IBAction)saveButtonPressed:(id)sender {
 BOOL isNewTask = self.task == nil;
 
 LSITask *task = isNewTask ? [[LSITask alloc] init] : self.task;
 
 //    LSITask *task = nil;
 //    if (isNewTask) {
 //        task = [[LSITask alloc] init];
 //    } else {
 //        task = self.task;
 //    }
 
 // Get the user's input
 task.name = self.nameTextField.text;
 task.note = self.notesTextView.text;
 task.dueDate = self.datePicker.date;
 
 if (isNewTask) {
 [self.tasksController addTask:task];
 }
 
 [self.navigationController popViewControllerAnimated:YES];
 } */

- (IBAction)saveButtonPressed:(id)sender {
    [self saveTask:self.task];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)saveTask:(LSITask *)task {
    BOOL isNewTask = !task;
    if (isNewTask) {
        task = [[LSITask alloc] init];
    }
    [self updateTaskFromUserInput:task];
    if (isNewTask) {
        [self.tasksController addTask:task];
    }
}

- (void)updateTaskFromUserInput:(LSITask *)task {
    task.name = self.nameTextField.text;
    task.note = self.notesTextView.text;
    task.dueDate = self.datePicker.date;
}


@end
