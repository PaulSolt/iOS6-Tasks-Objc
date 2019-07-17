//
//  LSITaskDetailViewController.m
//  iOS6-Tasks-Objc
//
//  Created by Paul Solt on 7/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSITaskDetailViewController.h"

@interface LSITaskDetailViewController ()

// Outlets
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UITextView *notesTextView;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation LSITaskDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

// Actions  (id = AnyObject)
- (IBAction)saveButtonPressed:(id)sender {
    
}


@end
