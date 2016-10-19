//
//  IdolCell.m
//  CustomTableViewPractice1
//
//  Created by 노정우 on 2016. 10. 14..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "IdolCell.h"

@implementation IdolCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createView];
    }
    return self;
}
- (void)createView
{
    UIImageView *backgroundImage = [[UIImageView alloc] initWithFrame:self.bounds];
    backgroundImage.contentMode = UIViewContentModeScaleAspectFill;
    backgroundImage.clipsToBounds = YES;
    [self.contentView addSubview:backgroundImage];
    
    UIView *coverView = [[UIView alloc] init];
    coverView.backgroundColor = [[UIColor alloc] initWithRed:30.f/255 green:30.f/255 blue:30.f/255 alpha:0.5];
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
