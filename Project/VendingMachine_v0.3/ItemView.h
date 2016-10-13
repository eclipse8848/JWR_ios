//
//  ItemView.h
//  VendingMachine_v0.3
//
//  Created by 노정우 on 2016. 10. 13..
//  Copyright © 2016년 노정우. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ItemViewDelegate;

@interface ItemView : UIView

@property (nonatomic, weak) id <ItemViewDelegate> delegate;
- (instancetype)initWithData:(NSDictionary *)data;

- (NSInteger)getCost;
- (NSString *)getTitle;

@end


@protocol ItemViewDelegate <NSObject>

- (void)didSelectedItemView:(ItemView *)itemView;

@end
