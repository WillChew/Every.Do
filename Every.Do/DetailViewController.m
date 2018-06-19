//
//  DetailViewController.m
//  Every.Do
//
//  Created by Will Chew on 2018-06-19.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "DetailViewController.h"


@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.detailLabel.text = self.item.toDoDescription;
    [self.detailLabel clipsToBounds];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






@end
