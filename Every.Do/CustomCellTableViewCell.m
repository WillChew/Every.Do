//
//  CustomCellTableViewCell.m
//  Every.Do
//
//  Created by Will Chew on 2018-06-19.
//  Copyright © 2018 Will Chew. All rights reserved.
//

#import "CustomCellTableViewCell.h"
@interface CustomCellTableViewCell()

@property (weak, nonatomic) IBOutlet UILabel *taskLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;


@end
@implementation CustomCellTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)configureCellWithData:(ToDo *)info indexPath:(NSIndexPath *)indexPath {
    self.info = info;
    self.taskLabel.text = info.title;
    self.descriptionLabel.text = info.toDoDescription;
    self.priorityLabel.text = info.priority;
}

@end
