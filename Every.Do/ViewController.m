//
//  ViewController.m
//  Every.Do
//
//  Created by Will Chew on 2018-06-19.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "ViewController.h"
#import "ToDo.h"
#import "CustomCellTableViewCell.h"
#import "DetailViewController.h"


@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray<ToDo*> *tasksArray;
@property (nonatomic,copy) NSString *detail;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ToDo *task1 = [[ToDo alloc]initWithTitle:@"Go to Class" toDoDescription:@"Attend morning lecture" priorityNumber:1 isCompleted:YES];
    ToDo *task2 = [[ToDo alloc]initWithTitle:@"Grab lunch" toDoDescription:@"Eat lunch with friends" priorityNumber:3 isCompleted:NO];
    ToDo *task3 = [[ToDo alloc]initWithTitle:@"Do homework" toDoDescription:@"Do the readings for W3D2" priorityNumber:2 isCompleted:NO];
    ToDo *task4 = [[ToDo alloc]initWithTitle:@"Dinner" toDoDescription:@"Get dinner with family" priorityNumber:4 isCompleted:NO];
    
    self.tasksArray = @[task1,task2,task3,task4];
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tasksArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TasksCell"];
    ToDo *item = self.tasksArray[indexPath.row];

    [cell configureCellWithData:item indexPath:indexPath];


    return cell;
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"goToDetailSegue"]) {
        DetailViewController *dvc = segue.destinationViewController;
        CustomCellTableViewCell *cell = sender;
        
        ToDo *detailItem = cell.info;
        dvc.item = detailItem;
    }
}


//anther way to do : outlet to tableView..
// indexpathforselectedrow to tell me which row was selected and use that to look for data array

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

  
//        UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//        [self performSegueWithIdentifier:@"goToDetailSegue" sender:self.tasksArray[indexPath.row]];
//    ToDo *list = self.tasksArray[indexPath.row];
//    [self shouldPerformSegueWithIdentifier:@"goToDetailSegue" sender:list];
//    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
//}


@end
