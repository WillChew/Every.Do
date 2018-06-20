//
//  NewTaskViewController.h
//  Every.Do
//
//  Created by Will Chew on 2018-06-19.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@class NewTaskViewController;

@protocol NewTaskDelegate
//passing down todo frm child to parent
-(void)viewController:(NewTaskViewController*)vc addItem:(ToDo*)task;

@end

@interface NewTaskViewController : UIViewController

@property (nonatomic,weak)id<NewTaskDelegate>delegate;
@property (nonatomic, strong) ToDo *item;

@end
