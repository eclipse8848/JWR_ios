//
//  IdolCell.h
//  CustomTableView
//
//  Created by 노정우 on 2016. 10. 14..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IdolCell : UITableViewCell
-(void)setBackGroundImageName:(NSString *)name;
-(void)setTitle:(NSString *)title;
- (void)updateLayout;
- (void)createView;
@end
