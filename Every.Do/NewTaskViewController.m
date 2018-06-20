//
//  NewTaskViewController.m
//  Every.Do
//
//  Created by Will Chew on 2018-06-19.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "NewTaskViewController.h"

@interface NewTaskViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (weak, nonatomic) IBOutlet UITextField *priorityTextField;

@end

@implementation NewTaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupKeyboard];
    
}

-(void)setupKeyboard {
    self.titleTextField.keyboardType = UIKeyboardTypeDefault;
    self.descriptionTextField.keyboardType = UIKeyboardTypeDefault;
    self.priorityTextField.keyboardType = UIKeyboardTypeNumberPad;
}

- (IBAction)submitButton:(id)sender {
    [self.titleTextField resignFirstResponder];
    
    NSLog(@"%@", self.titleTextField.text);
    NSLog(@"%@", self.descriptionTextField.text);
    NSLog(@"%@", self.priorityTextField.text);
    
    
    ToDo *task5 = [[ToDo alloc]initWithTitle:self.titleTextField.text toDoDescription:self.descriptionTextField.text
                              priorityNumber:self.priorityTextField.text
                                 isCompleted:NO];
    
    [self.delegate viewController:self addItem:task5];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}




@end
