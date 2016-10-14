//
//  IdolCell.m
//  CustomTableView
//
//  Created by 노정우 on 2016. 10. 14..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import "IdolCell.h"
@interface IdolCell()
@property UIImageView *backgroundImage;
@property UILabel *titleLabel;
@property UIView *coverView;
@end
@implementation IdolCell

//- (void)awakeFromNib {
//    [super awakeFromNib];
//    // Initialization code
//}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createView];
    }
    return self;
}

//call when frame size changed
-(void)layoutSubviews
{
    [super layoutSubviews];
    [self updateLayout];
}

- (void)createView
{
    self.backgroundImage = [[UIImageView alloc] init];
    self.backgroundImage.contentMode = UIViewContentModeScaleAspectFill;
    self.backgroundImage.clipsToBounds = YES;
    [self.contentView addSubview:self.backgroundImage];
    
    self.coverView = [[UIView alloc] init];
    self.coverView.backgroundColor = [[UIColor alloc] initWithRed:30.f/255.f green:30.f/255.f blue:30.f/255.f alpha:0.5];
    [self.backgroundImage addSubview:self.coverView];
    
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.font = [UIFont systemFontOfSize:40];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.textColor = [UIColor whiteColor];
    [self.coverView addSubview:self.titleLabel];
}

- (void)updateLayout
{
    self.backgroundImage.frame = self.bounds;
    self.coverView.frame = CGRectMake(10, 10, self.backgroundImage.frame.size.width-20, self.backgroundImage.frame.size.height-20);
    self.titleLabel.frame = CGRectMake(0, 20, self.coverView.frame.size.width, self.coverView.frame.size.height-40);
}

-(void)setBackGroundImageName:(NSString *)name
{
    self.backgroundImage.image = [UIImage imageNamed:name];
}

-(void)setTitle:(NSString *)title
{
    self.titleLabel.text = title;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
