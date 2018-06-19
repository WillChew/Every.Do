//
//  NewTaskViewController.h
//  Every.Do
//
//  Created by Will Chew on 2018-06-19.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"
@class ToDo;

@protocol NewTaskDelegate;

@interface NewTaskViewController : UIViewController

@property (nonatomic,weak)id<NewTaskDelegate>delegate;

@end
