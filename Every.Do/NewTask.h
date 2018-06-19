//
//  NewTask.h
//  Every.Do
//
//  Created by Will Chew on 2018-06-19.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@class NewTask;

@protocol NewTaskDelegate

-(void)viewController:(NewTask*)vc changedStateOf:(ToDo*)newEntry;

@end


@interface NewTask : UIViewController

@property (nonatomic,weak)id<NewTaskDelegate>delegate;

@end
