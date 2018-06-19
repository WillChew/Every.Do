//
//  ToDo.m
//  Every.Do
//
//  Created by Will Chew on 2018-06-19.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "ToDo.h"

@implementation ToDo

- (instancetype)initWithTitle:(NSString *)title toDoDescription:(NSString *)toDoDescription priorityNumber:(NSInteger)priority isCompleted:(BOOL)isCompleted {
    if (self = [super init]) {
    _title = title;
    _toDoDescription = toDoDescription;
    _priority = priority;
    _isCompleted = isCompleted;
    }
    return self;
}

@end
