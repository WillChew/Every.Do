//
//  ToDo.h
//  Every.Do
//
//  Created by Will Chew on 2018-06-19.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDo : NSObject

@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *toDoDescription;
@property (nonatomic,assign) NSInteger priority;
@property (nonatomic) BOOL isCompleted;

-(instancetype)initWithTitle:(NSString*)title toDoDescription:(NSString*)toDodescription priorityNumber:(NSInteger)priority isCompleted:(BOOL)isCompleted;

@end
