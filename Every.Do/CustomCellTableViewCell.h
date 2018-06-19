//
//  CustomCellTableViewCell.h
//  Every.Do
//
//  Created by Will Chew on 2018-06-19.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@interface CustomCellTableViewCell : UITableViewCell

@property (nonatomic, strong) ToDo *info;

-(void)configureCellWithData:(ToDo*)info indexPath:(NSIndexPath*)indexPath;

@end
